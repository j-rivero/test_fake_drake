list(APPEND CMAKE_PREFIX_PATH "opt/drake")
list(APPEND AMENT_PREFIX_PATH "opt/drake")

message(STATUS "FINDING DRAKE IN EXTRAS: ${CMAKE_PREFIX_PATH}")
find_package(drake PATHS /opt/drake)
