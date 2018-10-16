# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
include(hunter_cacheable)
include(hunter_cmake_args)
include(hunter_configuration_types)
include(hunter_download)
include(hunter_pick_scheme)

hunter_add_version(
    PACKAGE_NAME
    nettle
    VERSION
    3.1
    URL
    "https://ftp.gnu.org/gnu/nettle/nettle-3.1.tar.gz"
    SHA1
    57ad2aff231ba625c35f77b2bf80d29dfb136ce1
)

hunter_cmake_args(
   nettle
   CMAKE_ARGS
   DEPENDS_ON_PACKAGES=gmp
   PKGCONFIG_EXPORT_TARGETS=nettle;hogweed
   EXTRA_FLAGS=--enable-public-key
)

hunter_configuration_types(nettle CONFIGURATION_TYPES Release)
hunter_pick_scheme(DEFAULT url_sha1_autotools)
hunter_cacheable(nettle)
hunter_download(
    PACKAGE_NAME nettle
    PACKAGE_INTERNAL_DEPS_ID "1"
     PACKAGE_UNRELOCATABLE_TEXT_FILES
     "lib/pkgconfig/nettle.pc"
     "lib/pkgconfig/hogweed.pc"
)
