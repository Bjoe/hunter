# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
include(hunter_cacheable)
include(hunter_cmake_args)
include(hunter_configuration_types)
include(hunter_download)
include(hunter_pick_scheme)

hunter_add_version(
    PACKAGE_NAME
    libtasn1
    VERSION
    4.13
    URL
    "https://ftp.gnu.org/gnu/libtasn1/libtasn1-4.13.tar.gz"
    SHA1
    a84afb4cd8187c1fa5901c6bc1cf1486eea66635
)

hunter_cmake_args(
   libtasn1
   CMAKE_ARGS
   PKGCONFIG_EXPORT_TARGETS=libtasn1
#   DEPENDS_ON_PACKAGES=foo;bar
#   EXTRA_FLAGS=--enable-bots
)

hunter_configuration_types(libtasn1 CONFIGURATION_TYPES Release)
hunter_pick_scheme(DEFAULT url_sha1_autotools)
hunter_cacheable(libtasn1)
hunter_download(
    PACKAGE_NAME libtasn1
    PACKAGE_INTERNAL_DEPS_ID "1"
     PACKAGE_UNRELOCATABLE_TEXT_FILES
#     "lib/libfoo.la"
     "lib/pkgconfig/libtasn1.pc"
)
