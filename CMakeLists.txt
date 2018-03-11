cmake_minimum_required(VERSION 3.5)
project(ClusLib)

set(CMAKE_EXPORT_COMPILE_COMMANDS ON)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11")

set(CMAKE_C_COMPILER /usr/local/opt/llvm/bin/clang)
set(CMAKE_CXX_COMPILER /usr/local/opt/llvm/bin/clang++)

set(CMAKE_BINARY_DIR ${CMAKE_SOURCE_DIR}/bin)
set(EXECUTABLE_OUTPUT_PATH ${CMAKE_BINARY_DIR})
set(LIBRARY_OUTPUT_PATH  ${CMAKE_BINARY_DIR})

# do not show warnings about override
add_definitions("-Wno-c++11-extensions")

include_directories("/usr/local/include/" )
include_directories("/usr/include")
include_directories("/Users/zw/code/C_and_C++_Projects/ClusLib")

add_subdirectory(cl/datasets)
add_subdirectory(cl/patterns)
add_subdirectory(cl/clusters)
add_subdirectory(examples)


file(GLOB cl_global_headers
        cl/errors.hpp
        cl/cldefines.h
        cl/types.h
        )

file(GLOB cl_global_sources
        cl/errors.cpp
        )


# create library for global sources
add_library(cluslib_global SHARED ${cl_global_headers} ${cl_global_sources})

# Install library
install(TARGETS cluslib_global DESTINATION lib/${PROJECT_NAME})

# Install library headers
install(FILES ${cl_global_headers} DESTINATION include/${PROJECT_NAME}/cl)