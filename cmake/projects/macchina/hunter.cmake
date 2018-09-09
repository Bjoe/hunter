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
	"https://github.com/Bjoe/macchina.io/archive/13d3358bfea50d07e4e24a7d3b1dc44571250706.zip"
    SHA1
	b0ee95f8dcba7f9f962afa14b348a74578f90340
)

#hunter_cmake_args(
#    macchina
#)

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(macchina)
hunter_download(PACKAGE_NAME macchina)

