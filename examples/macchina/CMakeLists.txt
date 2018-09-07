cmake_minimum_required(VERSION 2.8)

#include("cmake/HunterGate.cmake")ERNEUT VERSUC
#HunterGate(
#    URL "https://github.com/Bjoe/hunter/archive/026b81652febb03e3e6e2519868dc59d84de2dfe.zip"
#    SHA1 "fac046931de6f4762f2d9d321494af8b00aba1bf"
#    LOCAL
#)

# Emulate HunterGate:
# * https://github.com/hunter-packages/gate
include("../common.cmake")

project(macchina-example-bundle)

hunter_add_package(macchina)

#list(APPEND CMAKE_PREFIX_PATH "${MACCHINA_ROOT}/lib/cmake/macchina")
#find_package(MacchinaOSP)


include("${MACCHINA_ROOT}/lib/cmake/macchina/OSP.cmake")
include("${MACCHINA_ROOT}/lib/cmake/macchina/Web.cmake")
include("${MACCHINA_ROOT}/lib/cmake/macchina/MacchinaOSPConfig.cmake")



add_library(com.example.samples.service SHARED src/ServiceListener.cpp)
target_include_directories(com.example.samples.service PUBLIC include)
target_link_libraries(com.example.samples.service Poco::OSP)

create_bundle(TARGET com.example.samples.service SPEC_FILE ExampleService.bndlspec)
