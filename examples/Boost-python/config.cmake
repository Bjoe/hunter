# Note: PYTHON_VERSION is optional. Refer to Boost package documentation on how
# and when to use it: https://hunter.readthedocs.io/en/latest/packages/pkg/Boost.html#cmake-options
hunter_config(Boost VERSION ${HUNTER_Boost_VERSION} CMAKE_ARGS PYTHON_VERSION=${PYTHON_VERSION} USE_CONFIG_FROM_BOOST=ON)
