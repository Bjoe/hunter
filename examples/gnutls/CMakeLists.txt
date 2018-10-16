# Copyright (c) 2016-2018, Ruslan Baratov
# All rights reserved.

cmake_minimum_required(VERSION 3.2)

# Emulate HunterGate:
# * https://github.com/hunter-packages/gate
include("../common.cmake")

project(gnults)

# DOCUMENTATION_START {
hunter_add_package(gnutls)
hunter_add_package(nettle)
find_package(nettle CONFIG REQUIRED)
find_package(gnutls CONFIG REQUIRED)

add_executable(boo boo.cpp)
target_link_libraries(boo PUBLIC PkgConfig::gnutls)
# DOCUMENTATION_END }
