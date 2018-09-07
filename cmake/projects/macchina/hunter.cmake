include(hunter_add_version)
include(hunter_cmake_args)
include(hunter_pick_scheme)
include(hunter_cacheable)
include(hunter_download)

hunter_add_version(
    PACKAGE_NAME
    macchina
    VERSION
    0.9.0
    URL
    "https://github.com/Bjoe/macchina.io/archive/4817d23c39108f0987d9c5c76263b6d0c1ff8dcb.zip"
    SHA1
    6a7d5c43508ed49c425deb57899fffbd6d11cf61
)

#hunter_cmake_args(
#    macchina
#)

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(macchina)
hunter_download(PACKAGE_NAME macchina)

