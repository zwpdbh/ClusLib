# Install script for directory: /Users/zw/code/C_and_C++_Projects/ClusLib/cl/patterns

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
    set(CMAKE_INSTALL_CONFIG_NAME "")
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

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/ClusLib" TYPE SHARED_LIBRARY FILES "/Users/zw/code/C_and_C++_Projects/ClusLib/cl/patterns/bin/libcluslib_patterns.dylib")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/ClusLib/libcluslib_patterns.dylib" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/ClusLib/libcluslib_patterns.dylib")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/usr/local/lib/ClusLib"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/ClusLib/libcluslib_patterns.dylib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/ClusLib/libcluslib_patterns.dylib")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ClusLib/cl/patterns" TYPE FILE FILES
    "/Users/zw/code/C_and_C++_Projects/ClusLib/cl/patterns/internalnode.hpp"
    "/Users/zw/code/C_and_C++_Projects/ClusLib/cl/patterns/leafnode.hpp"
    "/Users/zw/code/C_and_C++_Projects/ClusLib/cl/patterns/node.hpp"
    "/Users/zw/code/C_and_C++_Projects/ClusLib/cl/patterns/nodevisitor.hpp"
    "/Users/zw/code/C_and_C++_Projects/ClusLib/cl/patterns/joinvaluevisitor.hpp"
    "/Users/zw/code/C_and_C++_Projects/ClusLib/cl/patterns/pcvisitor.hpp"
    "/Users/zw/code/C_and_C++_Projects/ClusLib/cl/patterns/dendrogramvisitor.hpp"
    )
endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/Users/zw/code/C_and_C++_Projects/ClusLib/cl/patterns/build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
