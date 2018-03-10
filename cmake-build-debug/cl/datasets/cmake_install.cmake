# Install script for directory: /Users/zw/code/C_and_C++_Projects/ClusLib/cl/datasets

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Debug")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/ClusLib" TYPE SHARED_LIBRARY FILES "/Users/zw/code/C_and_C++_Projects/ClusLib/bin/libcluslib_dataset.dylib")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/ClusLib/libcluslib_dataset.dylib" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/ClusLib/libcluslib_dataset.dylib")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/zw/code/C_and_C++_Projects/ClusLib/bin"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/ClusLib/libcluslib_dataset.dylib")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/usr/local/lib/ClusLib"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/ClusLib/libcluslib_dataset.dylib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/ClusLib/libcluslib_dataset.dylib")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ClusLib/cl/datasets" TYPE FILE FILES
    "/Users/zw/code/C_and_C++_Projects/ClusLib/cl/datasets/attrinfo.hpp"
    "/Users/zw/code/C_and_C++_Projects/ClusLib/cl/datasets/attrvalue.h"
    "/Users/zw/code/C_and_C++_Projects/ClusLib/cl/datasets/cattrinfo.hpp"
    "/Users/zw/code/C_and_C++_Projects/ClusLib/cl/datasets/dataset.hpp"
    "/Users/zw/code/C_and_C++_Projects/ClusLib/cl/datasets/dattrinfo.hpp"
    "/Users/zw/code/C_and_C++_Projects/ClusLib/cl/datasets/record.hpp"
    "/Users/zw/code/C_and_C++_Projects/ClusLib/cl/datasets/schema.hpp"
    )
endif()

