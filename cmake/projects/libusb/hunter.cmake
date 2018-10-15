# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
include(hunter_cacheable)
include(hunter_configuration_types)
include(hunter_cmake_args)
include(hunter_download)
include(hunter_pick_scheme)

hunter_add_version(
    PACKAGE_NAME
    libusb
    VERSION
    1.0.22
    URL
    "https://github.com/libusb/libusb/archive/v1.0.22.zip"
    SHA1
    b63501d30f7699ed2a9c85c5ddd0ed2a71d775cd
)

hunter_configuration_types(libusb CONFIGURATION_TYPES Release)
hunter_pick_scheme(DEFAULT url_sha1_autotools)
hunter_cmake_args(
    libusb
    CMAKE_ARGS
    BOOTSTRAP=./bootstrap.sh
    EXTRA_FLAGS=--disable-udev
    PKGCONFIG_EXPORT_TARGETS=libusb-1.0
)
hunter_cacheable(libusb)
hunter_download(
  PACKAGE_NAME libusb
  PACKAGE_INTERNAL_DEPS_ID "1"
  PACKAGE_UNRELOCATABLE_TEXT_FILES
  "lib/libusb-1.0.la"
  "lib/pkgconfig/libusb-1.0.pc"
)
