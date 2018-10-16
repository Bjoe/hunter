# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
include(hunter_cacheable)
#include(hunter_cmake_args)
#include(hunter_configuration_types)
include(hunter_download)
include(hunter_pick_scheme)

hunter_add_version(
    PACKAGE_NAME
    gmp
    VERSION
    6.1.2
    URL
    "https://gmplib.org/download/gmp/gmp-6.1.2.tar.bz2"
    SHA1
    366ded6a44cd108ba6b3f5b9a252eab3f3a95cdf
)

#if (ANDROID OR IOS)
# hunter_cmake_args(
#    gmp
#    CMAKE_ARGS
#    PKGCONFIG_EXPORT_TARGETS=libfoo;libbar
#    DEPENDS_ON_PACKAGES=foo;bar
#    EXTRA_FLAGS=--enable-bots
# )
#endif()

#hunter_configuration_types(gmp CONFIGURATION_TYPES Release)
hunter_pick_scheme(DEFAULT url_sha1_autotools)
hunter_cacheable(gmp)
hunter_download(
    PACKAGE_NAME gmp
    PACKAGE_INTERNAL_DEPS_ID "1"
#     PACKAGE_UNRELOCATABLE_TEXT_FILES
#     "lib/libfoo.la"
#     "lib/libpbar.la"
#     "lib/pkgconfig/libfoo.pc"
#     "lib/pkgconfig/libpbar.pc"
)
