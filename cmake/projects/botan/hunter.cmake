# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
include(hunter_cacheable)
include(hunter_download)
include(hunter_pick_scheme)
include(hunter_cmake_args)
include(hunter_configuration_types)

hunter_add_version(
    PACKAGE_NAME
    botan
    VERSION
    2.10.0-RC
    URL
    "https://codeload.github.com/randombit/botan/legacy.zip/57042ce13cd0d6bbb79a1885221b488cc214c17a"
    SHA1
    80a2e760b4d7346fe667b85143edf022a707072e
)

hunter_cmake_args(
    botan
    CMAKE_ARGS
      WITH_BZIP2=NO
      WITH_ZLIB=NO
      PKGCONFIG_EXPORT_TARGETS=botan-2
)

hunter_configuration_types(botan CONFIGURATION_TYPES Release)
hunter_pick_scheme(DEFAULT url_sha1_botan)
hunter_cacheable(botan)
hunter_download(PACKAGE_NAME botan
  PACKAGE_INTERNAL_DEPS_ID "1"  # Increment for each new pull request
  PACKAGE_UNRELOCATABLE_TEXT_FILES
  lib/pkgconfig/botan-2.pc
)
