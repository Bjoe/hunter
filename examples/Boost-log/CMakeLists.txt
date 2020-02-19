# Copyright (c) 2013-2017, Ruslan Baratov
# All rights reserved.

cmake_minimum_required(VERSION 3.0)

include(CMakePrintHelpers)
set(Boost_DEBUG ON)

# Emulate HunterGate:
# * https://github.com/hunter-packages/gate
include("../common.cmake")

project(download-boost)

hunter_add_package(Boost COMPONENTS log)
find_package(Boost CONFIG REQUIRED log)

cmake_print_properties(
        TARGETS Boost::log
        PROPERTIES INTERFACE_LINK_LIBRARIES
)

add_executable(foo foo.cpp)
target_link_libraries(foo PUBLIC Boost::log)
