cmake_minimum_required(VERSION 3.10)
project(drake_vendor CXX)

find_package(ament_cmake REQUIRED)

# Set the location where the target file will be installed
set(DRAKE_TARGET_INSTALL_DIR "opt/drake/lib/cmake/drake")

# Generate the content of the drake-config.cmake file
set(DRAKE_CONFIG_CONTENT "
# Configuration file for the Drake package

message(STATUS 'Drake found!')
")

# Create the drake-config.cmake file
file(WRITE ${CMAKE_CURRENT_BINARY_DIR}/drake-config.cmake ${DRAKE_CONFIG_CONTENT})

# Install the drake-config.cmake file
install(FILES ${CMAKE_CURRENT_BINARY_DIR}/drake-config.cmake DESTINATION ${DRAKE_TARGET_INSTALL_DIR})
ament_package(CONFIG_EXTRAS "drake-extras.cmake")
