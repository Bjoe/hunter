# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
include(hunter_cacheable)
include(hunter_cmake_args)
include(hunter_configuration_types)
include(hunter_download)
include(hunter_pick_scheme)

hunter_add_version(
    PACKAGE_NAME
    OpenSC
    VERSION
    0.19.0
    URL
    "https://codeload.github.com/Bjoe/OpenSC/legacy.zip/a4d3009ff36724b39bcb05a97a6d1f446ac26be2"
    SHA1
    b029fc1670b602ead9254932d0b6b1445edb48c0
)

hunter_cmake_args(
    OpenSC
    CMAKE_ARGS
    BOOTSTRAP=./bootstrap
    PKGCONFIG_EXPORT_TARGETS=opensc-pkcs11
    DEPENDS_ON_PACKAGES=openct
    EXTRA_FLAGS=--disable-zlib
      --disable-readline
      --disable-openssl
      --disable-openpace
      --enable-openct
      --disable-pcsc
      --disable-cryptotokenkit
      --disable-ctapi
      --disable-minidriver
      --disable-sm
      --disable-man
      --disable-doc
      --disable-dnie-ui
      --disable-notify
      --disable-tests
      --disable-assert
)

hunter_configuration_types(OpenSC CONFIGURATION_TYPES Release)
hunter_pick_scheme(DEFAULT url_sha1_opensc_autotools)
hunter_cacheable(OpenSC)
hunter_download(
    PACKAGE_NAME OpenSC
    PACKAGE_INTERNAL_DEPS_ID "1"
     PACKAGE_UNRELOCATABLE_TEXT_FILES
     "lib/libopensc.la"
     "lib/onepin-opensc-pkcs11.la"
     "lib/opensc-pkcs11.la"
     "lib/pkcs11-spy.la"
     "lib/pkgconfig/opensc-pkcs11.pc"
)
