# Copyright (c) 2016-2018, Ruslan Baratov
# All rights reserved.

cmake_minimum_required(VERSION 3.2)

# Emulate HunterGate:
# * https://github.com/hunter-packages/gate
include("../common.cmake")

project(openct)

# DOCUMENTATION_START {
hunter_add_package(openct)
find_package(libopenct CONFIG REQUIRED)

add_executable(boo boo.cpp)
target_link_libraries(boo PUBLIC PkgConfig::libopenct)
# DOCUMENTATION_END }
