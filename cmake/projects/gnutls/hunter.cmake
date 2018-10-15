# Copyright (c) 2016-2018, Ruslan Baratov
# All rights reserved.

# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
include(hunter_cacheable)
include(hunter_download)
include(hunter_pick_scheme)

hunter_add_version(
    PACKAGE_NAME
    gnutls
    VERSION
    3.5.19
    URL
    "https://www.gnupg.org/ftp/gcrypt/gnutls/v3.5/gnutls-3.5.19.tar.xz"
    SHA1
    51b29b7e37467a765378f3c8e546a5c1bb2a5054
)

hunter_pick_scheme(DEFAULT url_sha1_autotools)
hunter_cacheable(gnutls)
hunter_download(PACKAGE_NAME gnutls)
