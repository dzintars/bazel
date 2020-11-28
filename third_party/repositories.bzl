load("@bazel_gazelle//:deps.bzl", "go_repository")

def go_repositories():
    go_repository(
        name = "co_honnef_go_tools",
        importpath = "honnef.co/go/tools",
        sum = "h1:3JgtbtFHMiCmsznwGVTUWbgGov+pVqnlf1dEJTNAXeM=",
        version = "v0.0.1-2019.2.3",
    )
    go_repository(
        name = "com_github_bradfitz_gomemcache",
        importpath = "github.com/bradfitz/gomemcache",
        sum = "h1:7IjN4QP3c38xhg6wz8R3YjoU+6S9e7xBc0DAVLLIpHE=",
        version = "v0.0.0-20170208213004-1952afaa557d",
    )
    go_repository(
        name = "com_github_burntsushi_toml",
        importpath = "github.com/BurntSushi/toml",
        sum = "h1:WXkYYl6Yr3qBf1K79EBnL4mak0OimBfB0XUf9Vl28OQ=",
        version = "v0.3.1",
    )
    go_repository(
        name = "com_github_davecgh_go_spew",
        importpath = "github.com/davecgh/go-spew",
        sum = "h1:vj9j/u1bqnvCEfJOwUhtlOARqs3+rkHYY13jYWTU97c=",
        version = "v1.1.1",
    )
    go_repository(
        name = "com_github_fsnotify_fsnotify",
        importpath = "github.com/fsnotify/fsnotify",
        sum = "h1:omfZI1v/Bu4YEatmRAYKISWA95u6XiN4Zorz/JPKCZA=",
        version = "v1.4.3-0.20170329110642-4da3e2cfbabc",
    )
    go_repository(
        name = "com_github_garyburd_redigo",
        importpath = "github.com/garyburd/redigo",
        sum = "h1:Sk0u0gIncQaQD23zAoAZs2DNi2u2l5UTLi4CmCBL5v8=",
        version = "v1.1.1-0.20170914051019-70e1b1943d4f",
    )
    go_repository(
        name = "com_github_go_stack_stack",
        importpath = "github.com/go-stack/stack",
        sum = "h1:MmJCxYVKTJ0SplGKqFVX3SBnmaUhODHZrrFF6jMbpZk=",
        version = "v1.6.0",
    )
    go_repository(
        name = "com_github_golang_gddo",
        importpath = "github.com/golang/gddo",
        sum = "h1:5vu7C+63KTbsSNnLhrgB98Sqy8MNVSW8FdhkcWA/3Rk=",
        version = "v0.0.0-20200831202555-721e228c7686",
    )
    go_repository(
        name = "com_github_golang_lint",
        importpath = "github.com/golang/lint",
        sum = "h1:ior8LN6127GsA53E9mD9nH/oP/LVbJplmLH5V8o+/Uk=",
        version = "v0.0.0-20170918230701-e5d664eb928e",
    )
    go_repository(
        name = "com_github_golang_protobuf",
        importpath = "github.com/golang/protobuf",
        sum = "h1:YF8+flBXS5eO826T4nzqPrxfhQThhXl0YzfuUPu4SBg=",
        version = "v1.3.1",
    )
    go_repository(
        name = "com_github_golang_snappy",
        importpath = "github.com/golang/snappy",
        sum = "h1:K9KHZbXKpGydfDN0aZrsoHpLJlZsBrGMFWbgLDGnPZk=",
        version = "v0.0.0-20170215233205-553a64147049",
    )
    go_repository(
        name = "com_github_google_go_cmp",
        importpath = "github.com/google/go-cmp",
        sum = "h1:voz4XQjiyYyhlp7CjBDaTejOZGKv3R9+5PM5QrDgegQ=",
        version = "v0.1.1-0.20171103154506-982329095285",
    )
    go_repository(
        name = "com_github_google_renameio",
        importpath = "github.com/google/renameio",
        sum = "h1:GOZbcHa3HfsPKPlmyPyN2KEohoMXOhdMbHrvbpl2QaA=",
        version = "v0.1.0",
    )
    go_repository(
        name = "com_github_googleapis_gax_go",
        importpath = "github.com/googleapis/gax-go",
        sum = "h1:j0GKcs05QVmm7yesiZq2+9cxHkNK9YM6zKx4D2qucQU=",
        version = "v2.0.0+incompatible",
    )
    go_repository(
        name = "com_github_gorilla_mux",
        importpath = "github.com/gorilla/mux",
        sum = "h1:i40aqfkR1h2SlN9hojwV5ZA91wcXFOvkdNIeFDP5koI=",
        version = "v1.8.0",
    )
    go_repository(
        name = "com_github_gregjones_httpcache",
        importpath = "github.com/gregjones/httpcache",
        sum = "h1:vM1v1UTa2Ny7gGhGhzR4CdX2MPyisKM/fXoCZTunV6c=",
        version = "v0.0.0-20170920190843-316c5e0ff04e",
    )
    go_repository(
        name = "com_github_hashicorp_hcl",
        importpath = "github.com/hashicorp/hcl",
        sum = "h1:LFTfzwAUSKPijQbJrMWZm/CysECsF/U1UUniUeXxzFw=",
        version = "v0.0.0-20170914154624-68e816d1c783",
    )
    go_repository(
        name = "com_github_inconshreveable_log15",
        importpath = "github.com/inconshreveable/log15",
        sum = "h1:g/SJtZVYc1cxSB8lgrgqeOlIdi4MhqNNHYRAC8y+g4c=",
        version = "v0.0.0-20170622235902-74a0988b5f80",
    )
    go_repository(
        name = "com_github_kisielk_gotool",
        importpath = "github.com/kisielk/gotool",
        sum = "h1:AV2c/EiW3KqPNT9ZKl07ehoAGi4C5/01Cfbblndcapg=",
        version = "v1.0.0",
    )
    go_repository(
        name = "com_github_kr_pretty",
        importpath = "github.com/kr/pretty",
        sum = "h1:s5hAObm+yFO5uHYt5dYjxi2rXrsnmRpJx4OYvIWUaQs=",
        version = "v0.2.0",
    )
    go_repository(
        name = "com_github_kr_pty",
        importpath = "github.com/kr/pty",
        sum = "h1:VkoXIwSboBpnk99O/KFauAEILuNHv5DVFKZMBN/gUgw=",
        version = "v1.1.1",
    )
    go_repository(
        name = "com_github_kr_text",
        importpath = "github.com/kr/text",
        sum = "h1:45sCR5RtlFHMR4UwH9sdQ5TC8v0qDQCHnXt+kaKSTVE=",
        version = "v0.1.0",
    )
    go_repository(
        name = "com_github_lpar_gzipped",
        importpath = "github.com/lpar/gzipped",
        sum = "h1:FEQnBzF06KTMh8Wnse6wNJvGwe7+vILQIFzuTq6ipGs=",
        version = "v1.1.0",
    )
    go_repository(
        name = "com_github_magiconair_properties",
        importpath = "github.com/magiconair/properties",
        sum = "h1:SesWF0c8l/IKQX0NlsED38qoBhUpneg5HIHNdy5LyEE=",
        version = "v1.7.4-0.20170902060319-8d7837e64d3c",
    )
    go_repository(
        name = "com_github_mattn_go_colorable",
        importpath = "github.com/mattn/go-colorable",
        sum = "h1:Y4ZRx+RIPFlPL4gnD/I7bdqSNXHlNop1Q6NjQuHds00=",
        version = "v0.0.10-0.20170816031813-ad5389df28cd",
    )
    go_repository(
        name = "com_github_mattn_go_isatty",
        importpath = "github.com/mattn/go-isatty",
        sum = "h1:F+DnWktyadxnOrohKLNUC9/GjFii5RJgY4GFG6ilggw=",
        version = "v0.0.2",
    )
    go_repository(
        name = "com_github_mitchellh_mapstructure",
        importpath = "github.com/mitchellh/mapstructure",
        sum = "h1:W7VHAEVflA5/eTyRvQ53Lz5j8bhRd1myHZlI/IZFvbU=",
        version = "v0.0.0-20170523030023-d0303fe80992",
    )
    go_repository(
        name = "com_github_pelletier_go_toml",
        importpath = "github.com/pelletier/go-toml",
        sum = "h1:6P7XZEBu/ZWizC/liUX4UYm4nEAACofmSkOzY39RBxM=",
        version = "v1.0.1-0.20170904195809-1d6b12b7cb29",
    )
    go_repository(
        name = "com_github_pkg_errors",
        importpath = "github.com/pkg/errors",
        sum = "h1:iURUrRGxPUNPdy5/HRSm+Yj6okJ6UtLINN0Q9M4+h3I=",
        version = "v0.8.1",
    )
    go_repository(
        name = "com_github_pmezard_go_difflib",
        importpath = "github.com/pmezard/go-difflib",
        sum = "h1:4DBwDE0NGyQoBHbLQYPwSUPoCMWR5BEzIk/f1lZbAQM=",
        version = "v1.0.0",
    )
    go_repository(
        name = "com_github_rogpeppe_go_internal",
        importpath = "github.com/rogpeppe/go-internal",
        sum = "h1:RR9dF3JtopPvtkroDZuVD7qquD0bnHlKSqaQhgwt8yk=",
        version = "v1.3.0",
    )
    go_repository(
        name = "com_github_spf13_afero",
        importpath = "github.com/spf13/afero",
        sum = "h1:9YWfpAdlPISN1kBzsAokT9SbSipcgt/BBM0lI9lawmo=",
        version = "v0.0.0-20170901052352-ee1bd8ee15a1",
    )
    go_repository(
        name = "com_github_spf13_cast",
        importpath = "github.com/spf13/cast",
        sum = "h1:0Rhw4d6C8J9VPu6cjZLIhZ8+aAOHcDvGeKn+cq5Aq3k=",
        version = "v1.1.0",
    )
    go_repository(
        name = "com_github_spf13_jwalterweatherman",
        importpath = "github.com/spf13/jwalterweatherman",
        sum = "h1:zBoLErXXAvWnNsu+pWkRYl6Cx1KXmIfAVsIuYkPN6aY=",
        version = "v0.0.0-20170901151539-12bd96e66386",
    )
    go_repository(
        name = "com_github_spf13_pflag",
        importpath = "github.com/spf13/pflag",
        sum = "h1:eOB1Xq3T1JrZBdEhs4D+MhPROyvo149AJawmtL0SOA4=",
        version = "v1.0.1-0.20170901120850-7aff26db30c1",
    )
    go_repository(
        name = "com_github_spf13_viper",
        importpath = "github.com/spf13/viper",
        sum = "h1:RUA/ghS2i64rlnn4ydTfblY8Og8QzcPtCcHvgMn+w/I=",
        version = "v1.0.0",
    )
    go_repository(
        name = "com_github_stretchr_objx",
        importpath = "github.com/stretchr/objx",
        sum = "h1:4G4v2dO3VZwixGIRoQ5Lfboy6nUhCyYzaqnIAPPhYs4=",
        version = "v0.1.0",
    )
    go_repository(
        name = "com_github_stretchr_testify",
        importpath = "github.com/stretchr/testify",
        sum = "h1:2E4SXV/wtOkTonXsotYi4li6zVWxYlZuYNCXe9XRJyk=",
        version = "v1.4.0",
    )
    go_repository(
        name = "com_google_cloud_go",
        importpath = "cloud.google.com/go",
        sum = "h1:alV/SO2XpH+lrvqjDl94dYez7FfeT8ptayazgWwHPIU=",
        version = "v0.16.0",
    )
    go_repository(
        name = "in_gopkg_check_v1",
        importpath = "gopkg.in/check.v1",
        sum = "h1:YR8cESwS4TdDjEe65xsg0ogRM/Nc3DYOhEAlW+xobZo=",
        version = "v1.0.0-20190902080502-41f04d3bba15",
    )
    go_repository(
        name = "in_gopkg_errgo_v2",
        importpath = "gopkg.in/errgo.v2",
        sum = "h1:0vLT13EuvQ0hNvakwLuFZ/jYrLp5F3kcWHXdRggjCE8=",
        version = "v2.1.0",
    )
    go_repository(
        name = "in_gopkg_yaml_v2",
        importpath = "gopkg.in/yaml.v2",
        sum = "h1:ZCJp+EgiOT7lHqUV2J862kp8Qj64Jo6az82+3Td9dZw=",
        version = "v2.2.2",
    )
    go_repository(
        name = "org_golang_google_api",
        importpath = "google.golang.org/api",
        sum = "h1:PnusOQTCkaANR0CzYA+GpnwoTLc1uPzg10GAWxnrfyI=",
        version = "v0.0.0-20170921000349-586095a6e407",
    )
    go_repository(
        name = "org_golang_google_appengine",
        importpath = "google.golang.org/appengine",
        sum = "h1:tycE03LOZYQNhDpS27tcQdAzLCVMaj7QT2SXxebnpCM=",
        version = "v1.6.5",
    )
    go_repository(
        name = "org_golang_google_genproto",
        importpath = "google.golang.org/genproto",
        sum = "h1:kgfN7j3GYevqPqse0VojTFu/nJjf/Sv9T0TwRC5Vw08=",
        version = "v0.0.0-20170918111702-1e559d0a00ee",
    )
    go_repository(
        name = "org_golang_google_grpc",
        importpath = "google.golang.org/grpc",
        sum = "h1:kqLSgihd0A3Ou96/5dilYgsFqfzv6wp68EAp+s4/Qg4=",
        version = "v1.2.1-0.20170921194603-d4b75ebd4f9f",
    )
    go_repository(
        name = "org_golang_x_crypto",
        importpath = "golang.org/x/crypto",
        sum = "h1:iMGN4xG0cnqj3t+zOM8wUB0BiPKHEwSxEZCvzcbZuvk=",
        version = "v0.0.0-20190510104115-cbcb75029529",
    )
    go_repository(
        name = "org_golang_x_lint",
        importpath = "golang.org/x/lint",
        sum = "h1:5hukYrvBGR8/eNkX5mdUezrA6JiaEZDtJb9Ei+1LlBs=",
        version = "v0.0.0-20190930215403-16217165b5de",
    )
    go_repository(
        name = "org_golang_x_mod",
        importpath = "golang.org/x/mod",
        sum = "h1:JgcxKXxCjrA2tyDP/aNU9K0Ck5Czfk6C7e2tMw7+bSI=",
        version = "v0.0.0-20190513183733-4bf6d317e70e",
    )
    go_repository(
        name = "org_golang_x_net",
        importpath = "golang.org/x/net",
        sum = "h1:R/3boaszxrf1GEUWTVDzSKVwLmSJpwZ1yqXm8j0v2QI=",
        version = "v0.0.0-20190620200207-3b0461eec859",
    )
    go_repository(
        name = "org_golang_x_oauth2",
        importpath = "golang.org/x/oauth2",
        sum = "h1:NMHa8RdjXuWXQSB0fW0PAKkX9lHZCRu5FsmPI/IZuS4=",
        version = "v0.0.0-20170912212905-13449ad91cb2",
    )
    go_repository(
        name = "org_golang_x_sync",
        importpath = "golang.org/x/sync",
        sum = "h1:8gQV6CLnAEikrhgkHFbMAEhagSSnXWGV915qUMm9mrU=",
        version = "v0.0.0-20190423024810-112230192c58",
    )
    go_repository(
        name = "org_golang_x_sys",
        importpath = "golang.org/x/sys",
        sum = "h1:+R4KGOnez64A81RvjARKc4UT5/tI9ujCIVX+P5KiHuI=",
        version = "v0.0.0-20190412213103-97732733099d",
    )
    go_repository(
        name = "org_golang_x_text",
        importpath = "golang.org/x/text",
        sum = "h1:tW2bmiBqwgJj/UpqtC8EpXEZVYOwU0yG4iWbprSVAcs=",
        version = "v0.3.2",
    )
    go_repository(
        name = "org_golang_x_time",
        importpath = "golang.org/x/time",
        sum = "h1:bCMaBn7ph495H+x72gEvgcv+mDRd9dElbzo/mVCMxX4=",
        version = "v0.0.0-20170424234030-8be79e1e0910",
    )
    go_repository(
        name = "org_golang_x_tools",
        importpath = "golang.org/x/tools",
        sum = "h1:hKsoRgsbwY1NafxrwTs+k64bikrLBkAgPir1TNCj3Zs=",
        version = "v0.0.0-20191029190741-b9c20aec41a5",
    )
    go_repository(
        name = "org_golang_x_xerrors",
        importpath = "golang.org/x/xerrors",
        sum = "h1:9zdDQZ7Thm29KFXgAX/+yaf3eVbP7djjWp/dXAppNCc=",
        version = "v0.0.0-20190717185122-a985d3407aa7",
    )
    go_repository(
        name = "org_uber_go_atomic",
        importpath = "go.uber.org/atomic",
        sum = "h1:ADUqmZGgLDDfbSL9ZmPxKTybcoEYHgpYfELNoN+7hsw=",
        version = "v1.7.0",
    )
    go_repository(
        name = "org_uber_go_multierr",
        importpath = "go.uber.org/multierr",
        sum = "h1:y6IPFStTAIT5Ytl7/XYmHvzXQ7S3g/IeZW9hyZ5thw4=",
        version = "v1.6.0",
    )
    go_repository(
        name = "org_uber_go_tools",
        importpath = "go.uber.org/tools",
        sum = "h1:0mgffUl7nfd+FpvXMVz4IDEaUSmT1ysygQC7qYo7sG4=",
        version = "v0.0.0-20190618225709-2cfd321de3ee",
    )
    go_repository(
        name = "org_uber_go_zap",
        importpath = "go.uber.org/zap",
        sum = "h1:uFRZXykJGK9lLY4HtgSw44DnIcAM+kRBP7x5m+NpAOM=",
        version = "v1.16.0",
    )
