# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
include(hunter_cacheable)
include(hunter_cmake_args)
include(hunter_configuration_types)
include(hunter_download)
include(hunter_pick_scheme)

hunter_add_version(
    PACKAGE_NAME
    openct
    VERSION
    0.6.20
    URL
    "https://github.com/OpenSC/openct/archive/openct-0.6.20.zip"
    SHA1
    872453a35c12b161015a8eca9f670d16b24e0fec
)

hunter_cmake_args(
   openct
   CMAKE_ARGS
      BOOTSTRAP=./bootstrap
    PKGCONFIG_EXPORT_TARGETS=libopenct
#    DEPENDS_ON_PACKAGES=foo;bar
#    EXTRA_FLAGS=--sysconfdir=.
)

hunter_configuration_types(openct CONFIGURATION_TYPES Release)
hunter_pick_scheme(DEFAULT url_sha1_openct_autotools)
hunter_cacheable(openct)
hunter_download(
    PACKAGE_NAME openct
    PACKAGE_INTERNAL_DEPS_ID "1"
     PACKAGE_UNRELOCATABLE_TEXT_FILES
     "lib/libopenctapi.la"
     "lib/libopenct.la"
     "lib/pkgconfig/libopenct.pc"
)
