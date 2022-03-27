package seekable

import (
	"fmt"
	"io"
	"sync"

	"go.uber.org/multierr"
)

// Environment can be used to inject a custom file reader that is different from normal ReadSeeker.
// This is useful when, for example there is a custom chunking code.
type WEnvironment interface {
	// WriteFrame is called each time frame is encoded and needs to be written upstream.
	WriteFrame(p []byte) (n int, err error)
	// WriteSeekTable is called on Close to flush the seek table.
	WriteSeekTable(p []byte) (n int, err error)
}

// writerEnvImpl is the environment implementation of for the underlying ReadSeeker.
type writerEnvImpl struct {
	w io.Writer
}

func (w *writerEnvImpl) WriteFrame(p []byte) (n int, err error) {
	return w.w.Write(p)
}

func (w *writerEnvImpl) WriteSeekTable(p []byte) (n int, err error) {
	return w.w.Write(p)
}

type writerImpl struct {
	enc          ZSTDEncoder
	frameEntries []SeekTableEntry

	o writerOptions

	once *sync.Once
}

var _ io.WriteCloser = (*writerImpl)(nil)

type Writer interface {
	io.WriteCloser
}

type ZSTDEncoder interface {
	EncodeAll(src, dst []byte) []byte
}

// NewWriter wraps the passed io.Writer and Encoder into and indexed ZSTD stream.
// Resulting stream then can be randomly accessed through the Reader and Decoder interfaces.
func NewWriter(w io.Writer, encoder ZSTDEncoder, opts ...WOption) (Writer, error) {
	sw := writerImpl{
		once: &sync.Once{},
		enc:  encoder,
	}

	sw.o.setDefault()
	for _, o := range opts {
		err := o(&sw.o)
		if err != nil {
			return nil, err
		}
	}

	if sw.o.env == nil {
		sw.o.env = &writerEnvImpl{
			w: w,
		}
	}

	return &sw, nil
}

// Write writes a chunk of data as a separate frame into the datastream.
//
// Note that Write does not do any coalescing nor splitting of data,
// so each write will map to a separate ZSTD Frame.
func (s *writerImpl) Write(src []byte) (int, error) {
	dst, err := s.Encode(src)
	if err != nil {
		return 0, err
	}

	n, err := s.o.env.WriteFrame(dst)
	if err != nil {
		return 0, err
	}
	if n != len(dst) {
		return 0, fmt.Errorf("partial write: %d out of %d", n, len(dst))
	}

	return len(src), nil
}

// Close implement io.Closer interface.  It writes the seek table footer
// and releases occupied memory.
//
// Caller is still responsible to Close the underlying writer.
func (s *writerImpl) Close() (err error) {
	s.once.Do(func() {
		err = multierr.Append(err, s.writeSeekTable())
	})
	return
}

func (s *writerImpl) writeSeekTable() error {
	seekTableBytes, err := s.EndStream()
	if err != nil {
		return err
	}

	_, err = s.o.env.WriteSeekTable(seekTableBytes)
	return err
}
