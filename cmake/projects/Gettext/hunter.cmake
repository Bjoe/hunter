# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
include(hunter_cacheable)
#include(hunter_cmake_args)
include(hunter_configuration_types)
include(hunter_download)
include(hunter_pick_scheme)

hunter_add_version(
    PACKAGE_NAME
    Gettext
    VERSION
    0.19.8
    URL
    "http://ftp.gnu.org/pub/gnu/gettext/gettext-0.19.8.tar.xz"
    SHA1
    dc551d4783edf691c1f0095ca927d3128b5093e8
)

#if (ANDROID OR IOS)
# hunter_cmake_args(
#    Gettext
#    CMAKE_ARGS
#    PKGCONFIG_EXPORT_TARGETS=libfoo;libbar
#    DEPENDS_ON_PACKAGES=foo;bar
#    EXTRA_FLAGS=--enable-bots
# )
#endif()

hunter_configuration_types(Gettext CONFIGURATION_TYPES Release)
hunter_pick_scheme(DEFAULT url_sha1_autotools)
hunter_cacheable(Gettext)
hunter_download(
    PACKAGE_NAME Gettext
    PACKAGE_INTERNAL_DEPS_ID "1"
     PACKAGE_UNRELOCATABLE_TEXT_FILES
     "lib/libasprintf.la"
     "lib/libgettextlib.la"
     "lib/libgettextpo.la"
     "lib/libgettextsrc.la"
#     "lib/pkgconfig/libfoo.pc"
#     "lib/pkgconfig/libpbar.pc"
)
