# Copyright (c) 2016-2018, Ruslan Baratov
# All rights reserved.

cmake_minimum_required(VERSION 3.2)

# Emulate HunterGate:
# * https://github.com/hunter-packages/gate
include("../common.cmake")

project(OpenSC)

# DOCUMENTATION_START {
hunter_add_package(OpenSC)
find_package(opensc-pkcs11 CONFIG REQUIRED)

add_executable(boo boo.cpp)
target_link_libraries(boo PUBLIC PkgConfig::opensc-pkcs11)
# DOCUMENTATION_END }
