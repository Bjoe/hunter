# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
include(hunter_cacheable)
#include(hunter_cmake_args)
include(hunter_download)
include(hunter_pick_scheme)

hunter_add_version(
    PACKAGE_NAME
    neopg
    VERSION
    0.0.5
    URL
    "https://github.com/Bjoe/neopg/archive/v0.0.5.zip"
    SHA1
    67b70f64cf29fad52013fbf1b218a5f0882c3525
)

# hunter_cmake_args(
#    neopg
#    CMAKE_ARGS
# )

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(neopg)
hunter_download(
    PACKAGE_NAME neopg
    PACKAGE_INTERNAL_DEPS_ID "1"
)
