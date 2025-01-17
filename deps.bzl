"""
@generated by: bazel run //:gazelle-update-repos
"""

load("@bazel_gazelle//:deps.bzl", "go_repository")

def go_dependencies():
    """
    Bazel dependencies from go.mod/go.sum.  Please user #keep comment to prevent changes from being overwritten.
    """
    go_repository(
        name = "com_github_benbjohnson_clock",
        build_directives = ["gazelle:exclude **/**_test.go", "gazelle:exclude testing", "gazelle:exclude **/testdata"],
        importpath = "github.com/benbjohnson/clock",
        sum = "h1:Q92kusRqC1XV2MjkWETPvjJVqKetz1OzxZB7mHJLju8=",
        version = "v1.1.0",
    )
    go_repository(
        name = "com_github_cespare_xxhash_v2",
        build_directives = ["gazelle:exclude **/**_test.go", "gazelle:exclude testing", "gazelle:exclude **/testdata"],
        importpath = "github.com/cespare/xxhash/v2",
        sum = "h1:YRXhKfTDauu4ajMg1TPgFO5jnlC2HCbmLXMcTG5cbYE=",
        version = "v2.1.2",
    )

    go_repository(
        name = "com_github_davecgh_go_spew",
        build_directives = ["gazelle:exclude **/**_test.go", "gazelle:exclude testing", "gazelle:exclude **/testdata"],
        importpath = "github.com/davecgh/go-spew",
        sum = "h1:vj9j/u1bqnvCEfJOwUhtlOARqs3+rkHYY13jYWTU97c=",
        version = "v1.1.1",
    )
    go_repository(
        name = "com_github_google_btree",
        build_directives = ["gazelle:exclude **/**_test.go", "gazelle:exclude testing", "gazelle:exclude **/testdata"],
        importpath = "github.com/google/btree",
        sum = "h1:gK4Kx5IaGY9CD5sPJ36FHiBJ6ZXl0kilRiiCj+jdYp4=",
        version = "v1.0.1",
    )

    go_repository(
        name = "com_github_klauspost_compress",
        build_directives = ["gazelle:exclude **/**_test.go", "gazelle:exclude testing", "gazelle:exclude **/testdata"],
        importpath = "github.com/klauspost/compress",
        sum = "h1:y9FcTHGyrebwfP0ZZqFiaxTaiDnUrGkJkI+f583BL1A=",
        version = "v1.15.1",
    )

    go_repository(
        name = "com_github_kr_pretty",
        build_directives = ["gazelle:exclude **/**_test.go", "gazelle:exclude testing", "gazelle:exclude **/testdata"],
        importpath = "github.com/kr/pretty",
        sum = "h1:L/CwN0zerZDmRFUapSPitk6f+Q3+0za1rQkzVuMiMFI=",
        version = "v0.1.0",
    )
    go_repository(
        name = "com_github_kr_pty",
        build_directives = ["gazelle:exclude **/**_test.go", "gazelle:exclude testing", "gazelle:exclude **/testdata"],
        importpath = "github.com/kr/pty",
        sum = "h1:VkoXIwSboBpnk99O/KFauAEILuNHv5DVFKZMBN/gUgw=",
        version = "v1.1.1",
    )
    go_repository(
        name = "com_github_kr_text",
        build_directives = ["gazelle:exclude **/**_test.go", "gazelle:exclude testing", "gazelle:exclude **/testdata"],
        importpath = "github.com/kr/text",
        sum = "h1:45sCR5RtlFHMR4UwH9sdQ5TC8v0qDQCHnXt+kaKSTVE=",
        version = "v0.1.0",
    )

    go_repository(
        name = "com_github_pkg_errors",
        build_directives = ["gazelle:exclude **/**_test.go", "gazelle:exclude testing", "gazelle:exclude **/testdata"],
        importpath = "github.com/pkg/errors",
        sum = "h1:iURUrRGxPUNPdy5/HRSm+Yj6okJ6UtLINN0Q9M4+h3I=",
        version = "v0.8.1",
    )
    go_repository(
        name = "com_github_pmezard_go_difflib",
        build_directives = ["gazelle:exclude **/**_test.go", "gazelle:exclude testing", "gazelle:exclude **/testdata"],
        importpath = "github.com/pmezard/go-difflib",
        sum = "h1:4DBwDE0NGyQoBHbLQYPwSUPoCMWR5BEzIk/f1lZbAQM=",
        version = "v1.0.0",
    )
    go_repository(
        name = "com_github_restic_chunker",
        build_directives = ["gazelle:exclude **/**_test.go", "gazelle:exclude testing", "gazelle:exclude **/testdata"],
        importpath = "github.com/restic/chunker",
        sum = "h1:YUPYCUn70MYP7VO4yllypp2SjmsRhRJaad3xKu1QFRw=",
        version = "v0.4.0",
    )

    go_repository(
        name = "com_github_stretchr_objx",
        build_directives = ["gazelle:exclude **/**_test.go", "gazelle:exclude testing", "gazelle:exclude **/testdata"],
        importpath = "github.com/stretchr/objx",
        sum = "h1:4G4v2dO3VZwixGIRoQ5Lfboy6nUhCyYzaqnIAPPhYs4=",
        version = "v0.1.0",
    )
    go_repository(
        name = "com_github_stretchr_testify",
        build_directives = ["gazelle:exclude **/**_test.go", "gazelle:exclude testing", "gazelle:exclude **/testdata"],
        importpath = "github.com/stretchr/testify",
        sum = "h1:5TQK59W5E3v0r2duFAb7P95B6hEeOyEnHRa8MjYSMTY=",
        version = "v1.7.1",
    )
    go_repository(
        name = "com_github_yuin_goldmark",
        build_directives = ["gazelle:exclude **/**_test.go", "gazelle:exclude testing", "gazelle:exclude **/testdata"],
        importpath = "github.com/yuin/goldmark",
        sum = "h1:dPmz1Snjq0kmkz159iL7S6WzdahUTHnHB5M56WFVifs=",
        version = "v1.3.5",
    )

    go_repository(
        name = "in_gopkg_check_v1",
        build_directives = ["gazelle:exclude **/**_test.go", "gazelle:exclude testing", "gazelle:exclude **/testdata"],
        importpath = "gopkg.in/check.v1",
        sum = "h1:qIbj1fsPNlZgppZ+VLlY7N33q108Sa+fhmuc+sWQYwY=",
        version = "v1.0.0-20180628173108-788fd7840127",
    )
    go_repository(
        name = "in_gopkg_yaml_v2",
        build_directives = ["gazelle:exclude **/**_test.go", "gazelle:exclude testing", "gazelle:exclude **/testdata"],
        importpath = "gopkg.in/yaml.v2",
        sum = "h1:obN1ZagJSUGI0Ek/LBmuj4SNLPfIny3KsKFopxRdj10=",
        version = "v2.2.8",
    )
    go_repository(
        name = "in_gopkg_yaml_v3",
        build_directives = ["gazelle:exclude **/**_test.go", "gazelle:exclude testing", "gazelle:exclude **/testdata"],
        importpath = "gopkg.in/yaml.v3",
        sum = "h1:h8qDotaEPuJATrMmW04NCwg7v22aHH28wwpauUhK9Oo=",
        version = "v3.0.0-20210107192922-496545a6307b",
    )
    go_repository(
        name = "org_golang_x_crypto",
        build_directives = ["gazelle:exclude **/**_test.go", "gazelle:exclude testing", "gazelle:exclude **/testdata"],
        importpath = "golang.org/x/crypto",
        sum = "h1:ObdrDkeb4kJdCP557AjRjq69pTHfNouLtWZG7j9rPN8=",
        version = "v0.0.0-20191011191535-87dc89f01550",
    )
    go_repository(
        name = "org_golang_x_lint",
        build_directives = ["gazelle:exclude **/**_test.go", "gazelle:exclude testing", "gazelle:exclude **/testdata"],
        importpath = "golang.org/x/lint",
        sum = "h1:5hukYrvBGR8/eNkX5mdUezrA6JiaEZDtJb9Ei+1LlBs=",
        version = "v0.0.0-20190930215403-16217165b5de",
    )
    go_repository(
        name = "org_golang_x_mod",
        build_directives = ["gazelle:exclude **/**_test.go", "gazelle:exclude testing", "gazelle:exclude **/testdata"],
        importpath = "golang.org/x/mod",
        sum = "h1:Gz96sIWK3OalVv/I/qNygP42zyoKp3xptRVCWRFEBvo=",
        version = "v0.4.2",
    )
    go_repository(
        name = "org_golang_x_net",
        build_directives = ["gazelle:exclude **/**_test.go", "gazelle:exclude testing", "gazelle:exclude **/testdata"],
        importpath = "golang.org/x/net",
        sum = "h1:4nGaVu0QrbjT/AK2PRLuQfQuh6DJve+pELhqTdAj3x0=",
        version = "v0.0.0-20210405180319-a5a99cb37ef4",
    )
    go_repository(
        name = "org_golang_x_sync",
        build_directives = ["gazelle:exclude **/**_test.go", "gazelle:exclude testing", "gazelle:exclude **/testdata"],
        importpath = "golang.org/x/sync",
        sum = "h1:5KslGYwFpkhGh+Q16bwMP3cOontH8FOep7tGV86Y7SQ=",
        version = "v0.0.0-20210220032951-036812b2e83c",
    )
    go_repository(
        name = "org_golang_x_sys",
        build_directives = ["gazelle:exclude **/**_test.go", "gazelle:exclude testing", "gazelle:exclude **/testdata"],
        importpath = "golang.org/x/sys",
        sum = "h1:gG67DSER+11cZvqIMb8S8bt0vZtiN6xWYARwirrOSfE=",
        version = "v0.0.0-20210510120138-977fb7262007",
    )
    go_repository(
        name = "org_golang_x_term",
        build_directives = ["gazelle:exclude **/**_test.go", "gazelle:exclude testing", "gazelle:exclude **/testdata"],
        importpath = "golang.org/x/term",
        sum = "h1:v+OssWQX+hTHEmOBgwxdZxK4zHq3yOs8F9J7mk0PY8E=",
        version = "v0.0.0-20201126162022-7de9c90e9dd1",
    )
    go_repository(
        name = "org_golang_x_text",
        build_directives = ["gazelle:exclude **/**_test.go", "gazelle:exclude testing", "gazelle:exclude **/testdata"],
        importpath = "golang.org/x/text",
        sum = "h1:cokOdA+Jmi5PJGXLlLllQSgYigAEfHXJAERHVMaCc2k=",
        version = "v0.3.3",
    )
    go_repository(
        name = "org_golang_x_tools",
        build_directives = ["gazelle:exclude **/**_test.go", "gazelle:exclude testing", "gazelle:exclude **/testdata"],
        importpath = "golang.org/x/tools",
        sum = "h1:ouewzE6p+/VEB31YYnTbEJdi8pFqKp4P4n85vwo3DHA=",
        version = "v0.1.5",
    )
    go_repository(
        name = "org_golang_x_xerrors",
        build_directives = ["gazelle:exclude **/**_test.go", "gazelle:exclude testing", "gazelle:exclude **/testdata"],
        importpath = "golang.org/x/xerrors",
        sum = "h1:go1bK/D/BFZV2I8cIQd1NKEZ+0owSTG1fDTci4IqFcE=",
        version = "v0.0.0-20200804184101-5ec99f83aff1",
    )
    go_repository(
        name = "org_uber_go_atomic",
        build_directives = ["gazelle:exclude **/**_test.go", "gazelle:exclude testing", "gazelle:exclude **/testdata"],
        importpath = "go.uber.org/atomic",
        sum = "h1:ECmE8Bn/WFTYwEW/bpKD3M8VtR/zQVbavAoalC1PYyE=",
        version = "v1.9.0",
    )
    go_repository(
        name = "org_uber_go_goleak",
        build_directives = ["gazelle:exclude **/**_test.go", "gazelle:exclude testing", "gazelle:exclude **/testdata"],
        importpath = "go.uber.org/goleak",
        sum = "h1:wy28qYRKZgnJTxGxvye5/wgWr1EKjmUDGYox5mGlRlI=",
        version = "v1.1.11",
    )
    go_repository(
        name = "org_uber_go_multierr",
        build_directives = ["gazelle:exclude **/**_test.go", "gazelle:exclude testing", "gazelle:exclude **/testdata"],
        importpath = "go.uber.org/multierr",
        sum = "h1:dg6GjLku4EH+249NNmoIciG9N/jURbDG+pFlTkhzIC8=",
        version = "v1.8.0",
    )
    go_repository(
        name = "org_uber_go_zap",
        build_directives = ["gazelle:exclude **/**_test.go", "gazelle:exclude testing", "gazelle:exclude **/testdata"],
        importpath = "go.uber.org/zap",
        sum = "h1:WefMeulhovoZ2sYXz7st6K0sLj7bBhpiFaud4r4zST8=",
        version = "v1.21.0",
    )
