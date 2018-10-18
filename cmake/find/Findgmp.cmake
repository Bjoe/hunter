# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

#.rst:
# Findgmp
# -------
#
# Finds the Foo library
#
# This will define the following variables::
#
#   gmp_FOUND    - True if the system has the gmp library
#   gmp_VERSION  - The version of the gmp library which was found
#
# and the following imported targets::
#
#   gmp::gmp   - The gmp library

find_path(gmp_INCLUDE_DIR
  NAMES gmp.h
  PATHS ${gmp_ROOT}/include
)
find_library(gmp_LIBRARY
  NAMES gmp
  PATHS ${gmp_ROOT}/lib
)

#set(gmp_VERSION ${PC_gmp_VERSION})

include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(gmp
  FOUND_VAR gmp_FOUND
  REQUIRED_VARS
    gmp_LIBRARY
    gmp_INCLUDE_DIR
#  VERSION_VAR gmp_VERSION
)

if(gmp_FOUND)
  set(gmp_LIBRARIES ${gmp_LIBRARY})
  set(gmp_INCLUDE_DIRS ${gmp_INCLUDE_DIR})
#  set(gmp_DEFINITIONS ${PC_gmp_CFLAGS_OTHER})
endif()

if(gmp_FOUND AND NOT TARGET gmp::gmp)
  add_library(gmp::gmp UNKNOWN IMPORTED)
  set_target_properties(gmp::gmp PROPERTIES
    IMPORTED_LOCATION "${gmp_LIBRARY}"
#    INTERFACE_COMPILE_OPTIONS "${PC_gmp_CFLAGS_OTHER}"
    INTERFACE_INCLUDE_DIRECTORIES "${gmp_INCLUDE_DIR}"
  )
endif()

mark_as_advanced(
  gmp_INCLUDE_DIR
  gmp_LIBRARY
)
