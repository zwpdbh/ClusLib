cmake_minimum_required(VERSION 3.9)
project(ClusLib)

set(CMAKE_CXX_STANDARD 11)

set(CMAKE_C_COMPILER /usr/local/opt/llvm/bin/clang)
set(CMAKE_CXX_COMPILER /usr/local/opt/llvm/bin/clang++)

#set(CMAKE_C_COMPILER /usr/local/bin/gcc-7)
#set(CMAKE_CXX_COMPILER /usr/local/bin/g++-7)

set(CMAKE_BINARY_DIR ${CMAKE_SOURCE_DIR}/bin)
set(EXECUTABLE_OUTPUT_PATH ${CMAKE_BINARY_DIR})
set(LIBRARY_OUTPUT_PATH  ${CMAKE_BINARY_DIR})

# do not show warnings about override
add_definitions("-Wno-c++11-extensions")

include_directories("/usr/local/include/" )
include_directories("/usr/include")
include_directories("/Users/zw/code/C_and_C++_Projects/ClusLib")

link_directories("/Users/zw/code/C_and_C++_Projects/ClusLib/cmake-build-debug")
link_directories("/Users/zw/code/C_and_C++_Projects/ClusLib/bin")
#link_libraries(ClusLib)

#add_executable(
#        test_main
#        examples/test_main.cpp
#)
#target_link_libraries(test_main ClusLib)


add_executable(
        dataset_example
        examples/dataset_example_main.cpp
)
target_link_libraries(dataset_example ClusLib)

#add_library(ClusLib SHARED
#        library.cpp
#        library.h
#        )

add_library(
        ClusLib SHARED
        cl/cldefines.h
        cl/errors.cpp
        cl/errors.hpp
        cl/types.h
        cl/utilities/container.h
        cl/utilities/nnmap.h
        cl/utilities/null.h
        cl/datasets/attrvalue.h
        cl/datasets/attrinfo.cpp
        cl/datasets/attrinfo.hpp
        cl/datasets/cattrinfo.hpp
        cl/datasets/cattrinfo.cpp
        cl/datasets/dattrinfo.hpp
        cl/datasets/dattrinfo.cpp
        cl/datasets/dataset.hpp
        cl/datasets/dataset.cpp
        cl/datasets/record.hpp
        cl/datasets/record.cpp
        cl/datasets/schema.hpp
        cl/datasets/schema.cpp
        cl/clusters/cluster.h
        cl/clusters/centercluster.cpp
        cl/clusters/centercluster.hpp
        cl/clusters/hclustering.cpp
        cl/clusters/hclustering.hpp
        cl/clusters/pclustering.cpp
        cl/clusters/pclustering.hpp
        cl/clusters/subspacecluster.hpp
        cl/clusters/subspacecluster.cpp
        cl/patterns/node.hpp
        cl/patterns/nodevisitor.hpp
        
)