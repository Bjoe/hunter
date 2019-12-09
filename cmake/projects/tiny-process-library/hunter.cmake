# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
include(hunter_cacheable)
#include(hunter_cmake_args)
#include(hunter_configuration_types)
include(hunter_download)
include(hunter_pick_scheme)

hunter_add_version(
    PACKAGE_NAME
    tiny-process-library
    VERSION
    1.0.0
    URL
    "https://github.com/hunter-packages/foo/archive/v1.0.0.tar.gz"
    SHA1
    1111111111111111111111111111111111111111
)

#if (ANDROID OR IOS)
# hunter_cmake_args(
#    tiny-process-library
#    CMAKE_ARGS
#    PKGCONFIG_EXPORT_TARGETS=libfoo;libbar
#    DEPENDS_ON_PACKAGES=foo;bar
#    EXTRA_FLAGS=--enable-bots
# )
#endif()

#hunter_configuration_types(tiny-process-library CONFIGURATION_TYPES Release)
hunter_pick_scheme(DEFAULT url_sha1_autotools)
hunter_cacheable(tiny-process-library)
hunter_download(
    PACKAGE_NAME tiny-process-library
    PACKAGE_INTERNAL_DEPS_ID "1"
#     PACKAGE_UNRELOCATABLE_TEXT_FILES
#     "lib/libfoo.la"
#     "lib/libpbar.la"
#     "lib/pkgconfig/libfoo.pc"
#     "lib/pkgconfig/libpbar.pc"
)
