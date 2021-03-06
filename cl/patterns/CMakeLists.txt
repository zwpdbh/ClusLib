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

include_directories("/usr/local/include/")
include_directories("/usr/include")
include_directories("/usr/local/include/ClusLib")
include_directories("/Users/zw/code/C_and_C++_Projects/ClusLib")

link_directories("/usr/local/lib/ClusLib/")

file(GLOB cl_patterns_headers
    internalnode.hpp
        leafnode.hpp
        node.hpp
        nodevisitor.hpp
        joinvaluevisitor.hpp
        pcvisitor.hpp
        dendrogramvisitor.hpp
)

file(GLOB cl_patterns_sources
    leafnode.cpp
        internalnode.cpp
        pcvisitor.cpp
        joinvaluevisitor.cpp
        dendrogramvisitor.cpp
)

add_library(cluslib_patterns SHARED ${cl_patterns_headers} ${cl_patterns_sources})
target_link_libraries(cluslib_patterns cluslib_global cluslib_dataset cluslib_utilities)

# Install library
install(TARGETS cluslib_patterns DESTINATION lib/${PROJECT_NAME})

# Install library headers
install(FILES ${cl_patterns_headers} DESTINATION include/${PROJECT_NAME}/cl/patterns)
