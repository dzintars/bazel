# Bazel workspace created by @bazel/create 2.3.0

# Declares that this directory is the root of a Bazel workspace.
# See https://docs.bazel.build/versions/master/build-ref.html#workspace

# **********************************
# CH01 - Variables
# CH01 - Python
# CH02 - Skylib
# CH03 - NodeJS
# CH04 - Golang
# CH05 - Gazelle
# CH06 - Google Protobuf
# CH07 - TypeScript
# CH08 - SASS
# CH09 - Docker
# **********************************



workspace(
    # How this workspace would be referenced with absolute labels from another workspace
    name = "oswee",
    # Map the @npm bazel workspace to the node_modules directory.
    # This lets Bazel use the same node_modules as other local tooling.
    managed_directories = {"@npm": ["node_modules"]},
)



# **********************************
# Variables
# **********************************

NODEJS_VERSION = "15.2.1"
NODEJS_SHA256 = "a13dc3282312f8e862b02e5aacd93a7dffe5b01d55f60f3a6042b10523b5d7b3"
YARN_VERSION = "1.22.10"
YARN_SHA256 = "7e433d4a77e2c79e6a7ae4866782608a8e8bcad3ec6783580577c59538381a6e"

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:git.bzl", "git_repository")



# **********************************
# Python
# ----------------------------------
# Required for rules_docker to work properly
# **********************************

http_archive(
    name = "rules_python",
    url = "https://github.com/bazelbuild/rules_python/releases/download/0.1.0/rules_python-0.1.0.tar.gz",
    sha256 = "b6d46438523a3ec0f3cead544190ee13223a52f6a6765a29eae7b7cc24cc83a0",
)

# **********************************
# Skylib
# **********************************

http_archive(
    name = "bazel_skylib",
    urls = [
        "https://github.com/bazelbuild/bazel-skylib/releases/download/1.0.3/bazel-skylib-1.0.3.tar.gz",
        "https://mirror.bazel.build/github.com/bazelbuild/bazel-skylib/releases/download/1.0.3/bazel-skylib-1.0.3.tar.gz",
    ],
    sha256 = "1c531376ac7e5a180e0237938a2536de0c54d93f5c278634818e0efc952dd56c",
)
load("@bazel_skylib//:workspace.bzl", "bazel_skylib_workspace")

bazel_skylib_workspace()

load("@bazel_skylib//lib:versions.bzl", "versions")

versions.check(minimum_bazel_version = "3.7.0")



# **********************************
# NodeJS
# **********************************

# Install the nodejs "bootstrap" package
# This provides the basic tools for running and packaging nodejs programs in Bazel
http_archive(
    name = "build_bazel_rules_nodejs",
    sha256 = "452bef42c4b2fbe0f509a2699ffeb3ae2c914087736b16314dbd356f3641d7e5",
    urls = ["https://github.com/bazelbuild/rules_nodejs/releases/download/2.3.0/rules_nodejs-2.3.0.tar.gz"],
)

# The yarn_install rule runs yarn anytime the package.json or yarn.lock file changes.
# It also extracts and installs any Bazel rules distributed in an npm package.
load("@build_bazel_rules_nodejs//:index.bzl", "check_bazel_version", "node_repositories", "yarn_install")

# The minimum bazel version to use with this repo is v3.7.0.
check_bazel_version(
    minimum_bazel_version = "3.7.0",
)

node_repositories(
  # name = "nodejs", # This is build in name, included in this comment for the clarity
  node_version = NODEJS_VERSION,
  yarn_version = YARN_VERSION,
  # OPTIONAL
  yarn_repositories = {
    "%s" % YARN_VERSION: ("yarn-v%s.tar.gz" % YARN_VERSION, "yarn-v%s" % YARN_VERSION, "%s" % YARN_SHA256),
  },
  node_repositories = {
    "%s-linux_amd64" % NODEJS_VERSION: ("node-v%s-linux-x64.tar.xz" % NODEJS_VERSION, "node-v%s-linux-x64" % NODEJS_VERSION, "%s" % NODEJS_SHA256),
  },
  package_json = ["//:package.json"],
  preserve_symlinks = True,
)

yarn_install(
    # Name this npm so that Bazel Label references look like @npm//package
    name = "npm",
    package_json = "//:package.json",
    yarn_lock = "//:yarn.lock",
    symlink_node_modules = True,  # Expose installed packages for the IDE and the developer. See managed_directories.
)



# **********************************
# Golang
# **********************************

http_archive(
    name = "io_bazel_rules_go",
    sha256 = "207fad3e6689135c5d8713e5a17ba9d1290238f47b9ba545b63d9303406209c6",
    urls = [
        "https://mirror.bazel.build/github.com/bazelbuild/rules_go/releases/download/v0.24.7/rules_go-v0.24.7.tar.gz",
        "https://github.com/bazelbuild/rules_go/releases/download/v0.24.7/rules_go-v0.24.7.tar.gz",
    ],
)

load("@io_bazel_rules_go//go:deps.bzl", "go_register_toolchains", "go_rules_dependencies")

go_rules_dependencies()

go_register_toolchains(
  go_version = "1.15.5",
)

load("@io_bazel_rules_go//extras:embed_data_deps.bzl", "go_embed_data_dependencies")

go_embed_data_dependencies()

# Examples
# - https://github.com/buildbuddy-io/buildbuddy/blob/feeff7d86fc266c93f05c46f7dab5d9462cca7f7/WORKSPACE



# **********************************
# Gazelle
# **********************************

http_archive(
    name = "bazel_gazelle",
    sha256 = "b85f48fa105c4403326e9525ad2b2cc437babaa6e15a3fc0b1dbab0ab064bc7c",
    urls = [
        "https://mirror.bazel.build/github.com/bazelbuild/bazel-gazelle/releases/download/v0.22.2/bazel-gazelle-v0.22.2.tar.gz",
        "https://github.com/bazelbuild/bazel-gazelle/releases/download/v0.22.2/bazel-gazelle-v0.22.2.tar.gz",
    ],
)

load("@bazel_gazelle//:deps.bzl", "gazelle_dependencies")


gazelle_dependencies()

load("//:third_party/repositories.bzl", "go_repositories")

# gazelle:repository_macro third_party/repositories.bzl%go_repositories
go_repositories()



# **********************************
# Google Protobuf
# **********************************

http_archive(
    name = "com_google_protobuf",
    sha256 = "1c744a6a1f2c901e68c5521bc275e22bdc66256eeb605c2781923365b7087e5f",
    strip_prefix = "protobuf-3.13.0",
    urls = ["https://github.com/protocolbuffers/protobuf/archive/v3.13.0.zip"],
)

load("@com_google_protobuf//:protobuf_deps.bzl","protobuf_deps")

protobuf_deps()

http_archive(
    name = "rules_proto",
    sha256 = "602e7161d9195e50246177e7c55b2f39950a9cf7366f74ed5f22fd45750cd208",
    strip_prefix = "rules_proto-97d8af4dc474595af3900dd85cb3a29ad28cc313",
    urls = [
        "https://mirror.bazel.build/github.com/bazelbuild/rules_proto/archive/97d8af4dc474595af3900dd85cb3a29ad28cc313.tar.gz",
        "https://github.com/bazelbuild/rules_proto/archive/97d8af4dc474595af3900dd85cb3a29ad28cc313.tar.gz",
    ],
)

load("@rules_proto//proto:repositories.bzl", "rules_proto_dependencies", "rules_proto_toolchains")

rules_proto_dependencies()

rules_proto_toolchains()

# Install any Bazel rules which were extracted earlier by the yarn_install rule.
# load("@npm//:install_bazel_dependencies.bzl", "install_bazel_dependencies")

# install_bazel_dependencies()

# http_archive(
#     name = "googleapi",
#     sha256 = "51849d3ef693c88eb7692875eb444ef7131502e3fa200f25fc0a37b1e7e55ab5",
#     strip_prefix = "googleapis-a111a53c0c6722afcd793b64724ceef7862db5b9",
#     url = "https://github.com/googleapis/googleapis/archive/a111a53c0c6722afcd793b64724ceef7862db5b9.zip",
# )



# **********************************
# TypeScript
# **********************************

# load("@npm_bazel_typescript//:index.bzl", "ts_setup_workspace")

# ts_setup_workspace()

# Load labs dependencies. (for ts_proto_library)
load("@npm//@bazel/labs:package.bzl", "npm_bazel_labs_dependencies")

npm_bazel_labs_dependencies()



# **********************************
# SASS
# **********************************

# **********************************
# Docker
# **********************************

http_archive(
    name = "io_bazel_rules_docker",
    # patches = ["//:rules_docker.pr1650.patch"],
    sha256 = "1698624e878b0607052ae6131aa216d45ebb63871ec497f26c67455b34119c80",
    strip_prefix = "rules_docker-0.15.0",
    urls = ["https://github.com/bazelbuild/rules_docker/releases/download/v0.15.0/rules_docker-v0.15.0.tar.gz"],
)

load("@io_bazel_rules_docker//toolchains/docker:toolchain.bzl",
    docker_toolchain_configure="toolchain_configure"
)

docker_toolchain_configure(
  name = "docker_config",
  # OPTIONAL: Path to a directory which has a custom docker client config.json.
  # See https://docs.docker.com/engine/reference/commandline/cli/#configuration-files
  # for more details.
  #client_config="<enter absolute path to your docker config directory here>",
  # OPTIONAL: Path to the docker binary.
  # Should be set explicitly for remote execution.
  docker_path="/usr/bin/podman",
  # OPTIONAL: Path to the gzip binary.
  gzip_path="/usr/bin/gzip",
  # OPTIONAL: Bazel target for the gzip tool.
  #gzip_target="<enter absolute path (i.e., must start with repo name @...//:...) to an executable gzip target>",
  # OPTIONAL: Path to the xz binary.
  # Should be set explicitly for remote execution.
  xz_path="/usr/bin/xz",
  # OPTIONAL: List of additional flags to pass to the docker command.
  docker_flags = [
    # "--tls",
    "--log-level=info",
  ],

)

load(
    "@io_bazel_rules_docker//repositories:repositories.bzl",
    container_repositories = "repositories",
)

container_repositories()

load("@io_bazel_rules_docker//repositories:deps.bzl", container_deps = "deps")

container_deps()

load("@io_bazel_rules_docker//container:container.bzl", "container_pull")

container_pull(
    name = "alpine_linux_amd64",
    registry = "index.docker.io",
    repository = "library/alpine",
    tag = "3.8",
)

# load("@io_bazel_rules_docker//repositories:pip_repositories.bzl", "pip_deps")

# pip_deps()

# load("@io_bazel_rules_docker//go:image.bzl", _go_image_repos = "repositories")

# _go_image_repos()

