cmake_minimum_required(VERSION 3.5)

set(PROJECT_NAME "ClusLib")

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
include_directories("/usr/local/include/ClusLib")

file(GLOB cl_global_headers
        ../errors.hpp
)

file(GLOB cl_global_sources
        ../errors.cpp
        )

file(GLOB cl_clusters_headers
    centercluster.hpp
        hclustering.hpp
        pclustering.hpp
        subspacecluster.hpp
)

file(GLOB cl_clusters_sources
    centercluster.cpp
        hclustering.cpp
        pclustering.cpp
        subspacecluster.cpp
)

add_library(cluslib_cluster SHARED ${cl_global_headers} ${cl_global_sources} ${cl_clusters_headers} ${cl_clusters_sources})


# Install library
install(TARGETS cluslib_cluster DESTINATION lib/${PROJECT_NAME})

# Install library headers
install(FILES ${cl_clusters_headers} DESTINATION include/${PROJECT_NAME}/cl/clusters)
