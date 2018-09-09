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

hunter_add_package(PocoCpp)
hunter_add_package(macchina)

list(APPEND CMAKE_PREFIX_PATH "${MACCHINA_ROOT}/lib/cmake/macchina")
include("${MACCHINA_ROOT}/lib/cmake/macchina/OSP.cmake") # TODO(BJoe) Include into MacchinaOSP
include("${MACCHINA_ROOT}/lib/cmake/macchina/Web.cmake") # TODO(BJoe) Include into MacchinaOSP
find_package(Poco REQUIRED Foundation Data Crypto JSON Net NetSSL   Util XML Zip) # TODO(BJoe) Include into MacchinaOSP

find_package(MacchinaOSP)

add_library(com.example.samples.service SHARED src/ServiceListener.cpp)
target_include_directories(com.example.samples.service PUBLIC include)
target_link_libraries(com.example.samples.service PUBLIC Poco::OSP)

create_bundle(TARGET com.example.samples.service SPEC_FILE ExampleService.bndlspec)
