# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.9

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = "/Users/zw/Library/Application Support/JetBrains/Toolbox/apps/CLion/ch-0/173.4548.31/CLion.app/Contents/bin/cmake/bin/cmake"

# The command to remove a file.
RM = "/Users/zw/Library/Application Support/JetBrains/Toolbox/apps/CLion/ch-0/173.4548.31/CLion.app/Contents/bin/cmake/bin/cmake" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/zw/code/C_and_C++_Projects/ClusLib

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/zw/code/C_and_C++_Projects/ClusLib/cmake-build-debug

# Include any dependencies generated for this target.
include cl/clusters/CMakeFiles/cluslib_clusters.dir/depend.make

# Include the progress variables for this target.
include cl/clusters/CMakeFiles/cluslib_clusters.dir/progress.make

# Include the compile flags for this target's objects.
include cl/clusters/CMakeFiles/cluslib_clusters.dir/flags.make

cl/clusters/CMakeFiles/cluslib_clusters.dir/centercluster.cpp.o: cl/clusters/CMakeFiles/cluslib_clusters.dir/flags.make
cl/clusters/CMakeFiles/cluslib_clusters.dir/centercluster.cpp.o: ../cl/clusters/centercluster.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/zw/code/C_and_C++_Projects/ClusLib/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object cl/clusters/CMakeFiles/cluslib_clusters.dir/centercluster.cpp.o"
	cd /Users/zw/code/C_and_C++_Projects/ClusLib/cmake-build-debug/cl/clusters && /usr/local/opt/llvm/bin/clang++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/cluslib_clusters.dir/centercluster.cpp.o -c /Users/zw/code/C_and_C++_Projects/ClusLib/cl/clusters/centercluster.cpp

cl/clusters/CMakeFiles/cluslib_clusters.dir/centercluster.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cluslib_clusters.dir/centercluster.cpp.i"
	cd /Users/zw/code/C_and_C++_Projects/ClusLib/cmake-build-debug/cl/clusters && /usr/local/opt/llvm/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/zw/code/C_and_C++_Projects/ClusLib/cl/clusters/centercluster.cpp > CMakeFiles/cluslib_clusters.dir/centercluster.cpp.i

cl/clusters/CMakeFiles/cluslib_clusters.dir/centercluster.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cluslib_clusters.dir/centercluster.cpp.s"
	cd /Users/zw/code/C_and_C++_Projects/ClusLib/cmake-build-debug/cl/clusters && /usr/local/opt/llvm/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/zw/code/C_and_C++_Projects/ClusLib/cl/clusters/centercluster.cpp -o CMakeFiles/cluslib_clusters.dir/centercluster.cpp.s

cl/clusters/CMakeFiles/cluslib_clusters.dir/centercluster.cpp.o.requires:

.PHONY : cl/clusters/CMakeFiles/cluslib_clusters.dir/centercluster.cpp.o.requires

cl/clusters/CMakeFiles/cluslib_clusters.dir/centercluster.cpp.o.provides: cl/clusters/CMakeFiles/cluslib_clusters.dir/centercluster.cpp.o.requires
	$(MAKE) -f cl/clusters/CMakeFiles/cluslib_clusters.dir/build.make cl/clusters/CMakeFiles/cluslib_clusters.dir/centercluster.cpp.o.provides.build
.PHONY : cl/clusters/CMakeFiles/cluslib_clusters.dir/centercluster.cpp.o.provides

cl/clusters/CMakeFiles/cluslib_clusters.dir/centercluster.cpp.o.provides.build: cl/clusters/CMakeFiles/cluslib_clusters.dir/centercluster.cpp.o


cl/clusters/CMakeFiles/cluslib_clusters.dir/hclustering.cpp.o: cl/clusters/CMakeFiles/cluslib_clusters.dir/flags.make
cl/clusters/CMakeFiles/cluslib_clusters.dir/hclustering.cpp.o: ../cl/clusters/hclustering.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/zw/code/C_and_C++_Projects/ClusLib/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object cl/clusters/CMakeFiles/cluslib_clusters.dir/hclustering.cpp.o"
	cd /Users/zw/code/C_and_C++_Projects/ClusLib/cmake-build-debug/cl/clusters && /usr/local/opt/llvm/bin/clang++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/cluslib_clusters.dir/hclustering.cpp.o -c /Users/zw/code/C_and_C++_Projects/ClusLib/cl/clusters/hclustering.cpp

cl/clusters/CMakeFiles/cluslib_clusters.dir/hclustering.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cluslib_clusters.dir/hclustering.cpp.i"
	cd /Users/zw/code/C_and_C++_Projects/ClusLib/cmake-build-debug/cl/clusters && /usr/local/opt/llvm/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/zw/code/C_and_C++_Projects/ClusLib/cl/clusters/hclustering.cpp > CMakeFiles/cluslib_clusters.dir/hclustering.cpp.i

cl/clusters/CMakeFiles/cluslib_clusters.dir/hclustering.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cluslib_clusters.dir/hclustering.cpp.s"
	cd /Users/zw/code/C_and_C++_Projects/ClusLib/cmake-build-debug/cl/clusters && /usr/local/opt/llvm/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/zw/code/C_and_C++_Projects/ClusLib/cl/clusters/hclustering.cpp -o CMakeFiles/cluslib_clusters.dir/hclustering.cpp.s

cl/clusters/CMakeFiles/cluslib_clusters.dir/hclustering.cpp.o.requires:

.PHONY : cl/clusters/CMakeFiles/cluslib_clusters.dir/hclustering.cpp.o.requires

cl/clusters/CMakeFiles/cluslib_clusters.dir/hclustering.cpp.o.provides: cl/clusters/CMakeFiles/cluslib_clusters.dir/hclustering.cpp.o.requires
	$(MAKE) -f cl/clusters/CMakeFiles/cluslib_clusters.dir/build.make cl/clusters/CMakeFiles/cluslib_clusters.dir/hclustering.cpp.o.provides.build
.PHONY : cl/clusters/CMakeFiles/cluslib_clusters.dir/hclustering.cpp.o.provides

cl/clusters/CMakeFiles/cluslib_clusters.dir/hclustering.cpp.o.provides.build: cl/clusters/CMakeFiles/cluslib_clusters.dir/hclustering.cpp.o


cl/clusters/CMakeFiles/cluslib_clusters.dir/pclustering.cpp.o: cl/clusters/CMakeFiles/cluslib_clusters.dir/flags.make
cl/clusters/CMakeFiles/cluslib_clusters.dir/pclustering.cpp.o: ../cl/clusters/pclustering.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/zw/code/C_and_C++_Projects/ClusLib/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object cl/clusters/CMakeFiles/cluslib_clusters.dir/pclustering.cpp.o"
	cd /Users/zw/code/C_and_C++_Projects/ClusLib/cmake-build-debug/cl/clusters && /usr/local/opt/llvm/bin/clang++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/cluslib_clusters.dir/pclustering.cpp.o -c /Users/zw/code/C_and_C++_Projects/ClusLib/cl/clusters/pclustering.cpp

cl/clusters/CMakeFiles/cluslib_clusters.dir/pclustering.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cluslib_clusters.dir/pclustering.cpp.i"
	cd /Users/zw/code/C_and_C++_Projects/ClusLib/cmake-build-debug/cl/clusters && /usr/local/opt/llvm/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/zw/code/C_and_C++_Projects/ClusLib/cl/clusters/pclustering.cpp > CMakeFiles/cluslib_clusters.dir/pclustering.cpp.i

cl/clusters/CMakeFiles/cluslib_clusters.dir/pclustering.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cluslib_clusters.dir/pclustering.cpp.s"
	cd /Users/zw/code/C_and_C++_Projects/ClusLib/cmake-build-debug/cl/clusters && /usr/local/opt/llvm/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/zw/code/C_and_C++_Projects/ClusLib/cl/clusters/pclustering.cpp -o CMakeFiles/cluslib_clusters.dir/pclustering.cpp.s

cl/clusters/CMakeFiles/cluslib_clusters.dir/pclustering.cpp.o.requires:

.PHONY : cl/clusters/CMakeFiles/cluslib_clusters.dir/pclustering.cpp.o.requires

cl/clusters/CMakeFiles/cluslib_clusters.dir/pclustering.cpp.o.provides: cl/clusters/CMakeFiles/cluslib_clusters.dir/pclustering.cpp.o.requires
	$(MAKE) -f cl/clusters/CMakeFiles/cluslib_clusters.dir/build.make cl/clusters/CMakeFiles/cluslib_clusters.dir/pclustering.cpp.o.provides.build
.PHONY : cl/clusters/CMakeFiles/cluslib_clusters.dir/pclustering.cpp.o.provides

cl/clusters/CMakeFiles/cluslib_clusters.dir/pclustering.cpp.o.provides.build: cl/clusters/CMakeFiles/cluslib_clusters.dir/pclustering.cpp.o


cl/clusters/CMakeFiles/cluslib_clusters.dir/subspacecluster.cpp.o: cl/clusters/CMakeFiles/cluslib_clusters.dir/flags.make
cl/clusters/CMakeFiles/cluslib_clusters.dir/subspacecluster.cpp.o: ../cl/clusters/subspacecluster.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/zw/code/C_and_C++_Projects/ClusLib/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object cl/clusters/CMakeFiles/cluslib_clusters.dir/subspacecluster.cpp.o"
	cd /Users/zw/code/C_and_C++_Projects/ClusLib/cmake-build-debug/cl/clusters && /usr/local/opt/llvm/bin/clang++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/cluslib_clusters.dir/subspacecluster.cpp.o -c /Users/zw/code/C_and_C++_Projects/ClusLib/cl/clusters/subspacecluster.cpp

cl/clusters/CMakeFiles/cluslib_clusters.dir/subspacecluster.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cluslib_clusters.dir/subspacecluster.cpp.i"
	cd /Users/zw/code/C_and_C++_Projects/ClusLib/cmake-build-debug/cl/clusters && /usr/local/opt/llvm/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/zw/code/C_and_C++_Projects/ClusLib/cl/clusters/subspacecluster.cpp > CMakeFiles/cluslib_clusters.dir/subspacecluster.cpp.i

cl/clusters/CMakeFiles/cluslib_clusters.dir/subspacecluster.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cluslib_clusters.dir/subspacecluster.cpp.s"
	cd /Users/zw/code/C_and_C++_Projects/ClusLib/cmake-build-debug/cl/clusters && /usr/local/opt/llvm/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/zw/code/C_and_C++_Projects/ClusLib/cl/clusters/subspacecluster.cpp -o CMakeFiles/cluslib_clusters.dir/subspacecluster.cpp.s

cl/clusters/CMakeFiles/cluslib_clusters.dir/subspacecluster.cpp.o.requires:

.PHONY : cl/clusters/CMakeFiles/cluslib_clusters.dir/subspacecluster.cpp.o.requires

cl/clusters/CMakeFiles/cluslib_clusters.dir/subspacecluster.cpp.o.provides: cl/clusters/CMakeFiles/cluslib_clusters.dir/subspacecluster.cpp.o.requires
	$(MAKE) -f cl/clusters/CMakeFiles/cluslib_clusters.dir/build.make cl/clusters/CMakeFiles/cluslib_clusters.dir/subspacecluster.cpp.o.provides.build
.PHONY : cl/clusters/CMakeFiles/cluslib_clusters.dir/subspacecluster.cpp.o.provides

cl/clusters/CMakeFiles/cluslib_clusters.dir/subspacecluster.cpp.o.provides.build: cl/clusters/CMakeFiles/cluslib_clusters.dir/subspacecluster.cpp.o


# Object files for target cluslib_clusters
cluslib_clusters_OBJECTS = \
"CMakeFiles/cluslib_clusters.dir/centercluster.cpp.o" \
"CMakeFiles/cluslib_clusters.dir/hclustering.cpp.o" \
"CMakeFiles/cluslib_clusters.dir/pclustering.cpp.o" \
"CMakeFiles/cluslib_clusters.dir/subspacecluster.cpp.o"

# External object files for target cluslib_clusters
cluslib_clusters_EXTERNAL_OBJECTS =

../bin/libcluslib_clusters.dylib: cl/clusters/CMakeFiles/cluslib_clusters.dir/centercluster.cpp.o
../bin/libcluslib_clusters.dylib: cl/clusters/CMakeFiles/cluslib_clusters.dir/hclustering.cpp.o
../bin/libcluslib_clusters.dylib: cl/clusters/CMakeFiles/cluslib_clusters.dir/pclustering.cpp.o
../bin/libcluslib_clusters.dylib: cl/clusters/CMakeFiles/cluslib_clusters.dir/subspacecluster.cpp.o
../bin/libcluslib_clusters.dylib: cl/clusters/CMakeFiles/cluslib_clusters.dir/build.make
../bin/libcluslib_clusters.dylib: ../bin/libcluslib_global.dylib
../bin/libcluslib_clusters.dylib: cl/clusters/CMakeFiles/cluslib_clusters.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/zw/code/C_and_C++_Projects/ClusLib/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX shared library ../../../bin/libcluslib_clusters.dylib"
	cd /Users/zw/code/C_and_C++_Projects/ClusLib/cmake-build-debug/cl/clusters && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/cluslib_clusters.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
cl/clusters/CMakeFiles/cluslib_clusters.dir/build: ../bin/libcluslib_clusters.dylib

.PHONY : cl/clusters/CMakeFiles/cluslib_clusters.dir/build

cl/clusters/CMakeFiles/cluslib_clusters.dir/requires: cl/clusters/CMakeFiles/cluslib_clusters.dir/centercluster.cpp.o.requires
cl/clusters/CMakeFiles/cluslib_clusters.dir/requires: cl/clusters/CMakeFiles/cluslib_clusters.dir/hclustering.cpp.o.requires
cl/clusters/CMakeFiles/cluslib_clusters.dir/requires: cl/clusters/CMakeFiles/cluslib_clusters.dir/pclustering.cpp.o.requires
cl/clusters/CMakeFiles/cluslib_clusters.dir/requires: cl/clusters/CMakeFiles/cluslib_clusters.dir/subspacecluster.cpp.o.requires

.PHONY : cl/clusters/CMakeFiles/cluslib_clusters.dir/requires

cl/clusters/CMakeFiles/cluslib_clusters.dir/clean:
	cd /Users/zw/code/C_and_C++_Projects/ClusLib/cmake-build-debug/cl/clusters && $(CMAKE_COMMAND) -P CMakeFiles/cluslib_clusters.dir/cmake_clean.cmake
.PHONY : cl/clusters/CMakeFiles/cluslib_clusters.dir/clean

cl/clusters/CMakeFiles/cluslib_clusters.dir/depend:
	cd /Users/zw/code/C_and_C++_Projects/ClusLib/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/zw/code/C_and_C++_Projects/ClusLib /Users/zw/code/C_and_C++_Projects/ClusLib/cl/clusters /Users/zw/code/C_and_C++_Projects/ClusLib/cmake-build-debug /Users/zw/code/C_and_C++_Projects/ClusLib/cmake-build-debug/cl/clusters /Users/zw/code/C_and_C++_Projects/ClusLib/cmake-build-debug/cl/clusters/CMakeFiles/cluslib_clusters.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : cl/clusters/CMakeFiles/cluslib_clusters.dir/depend
