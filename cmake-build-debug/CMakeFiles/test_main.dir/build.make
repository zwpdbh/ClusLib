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
include CMakeFiles/test_main.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/test_main.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/test_main.dir/flags.make

CMakeFiles/test_main.dir/examples/test_main.cpp.o: CMakeFiles/test_main.dir/flags.make
CMakeFiles/test_main.dir/examples/test_main.cpp.o: ../examples/test_main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/zw/code/C_and_C++_Projects/ClusLib/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/test_main.dir/examples/test_main.cpp.o"
	/usr/local/opt/llvm/bin/clang++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/test_main.dir/examples/test_main.cpp.o -c /Users/zw/code/C_and_C++_Projects/ClusLib/examples/test_main.cpp

CMakeFiles/test_main.dir/examples/test_main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_main.dir/examples/test_main.cpp.i"
	/usr/local/opt/llvm/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/zw/code/C_and_C++_Projects/ClusLib/examples/test_main.cpp > CMakeFiles/test_main.dir/examples/test_main.cpp.i

CMakeFiles/test_main.dir/examples/test_main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_main.dir/examples/test_main.cpp.s"
	/usr/local/opt/llvm/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/zw/code/C_and_C++_Projects/ClusLib/examples/test_main.cpp -o CMakeFiles/test_main.dir/examples/test_main.cpp.s

CMakeFiles/test_main.dir/examples/test_main.cpp.o.requires:

.PHONY : CMakeFiles/test_main.dir/examples/test_main.cpp.o.requires

CMakeFiles/test_main.dir/examples/test_main.cpp.o.provides: CMakeFiles/test_main.dir/examples/test_main.cpp.o.requires
	$(MAKE) -f CMakeFiles/test_main.dir/build.make CMakeFiles/test_main.dir/examples/test_main.cpp.o.provides.build
.PHONY : CMakeFiles/test_main.dir/examples/test_main.cpp.o.provides

CMakeFiles/test_main.dir/examples/test_main.cpp.o.provides.build: CMakeFiles/test_main.dir/examples/test_main.cpp.o


# Object files for target test_main
test_main_OBJECTS = \
"CMakeFiles/test_main.dir/examples/test_main.cpp.o"

# External object files for target test_main
test_main_EXTERNAL_OBJECTS =

../bin/test_main: CMakeFiles/test_main.dir/examples/test_main.cpp.o
../bin/test_main: CMakeFiles/test_main.dir/build.make
../bin/test_main: ../bin/libClusLib.dylib
../bin/test_main: CMakeFiles/test_main.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/zw/code/C_and_C++_Projects/ClusLib/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../bin/test_main"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test_main.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/test_main.dir/build: ../bin/test_main

.PHONY : CMakeFiles/test_main.dir/build

CMakeFiles/test_main.dir/requires: CMakeFiles/test_main.dir/examples/test_main.cpp.o.requires

.PHONY : CMakeFiles/test_main.dir/requires

CMakeFiles/test_main.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/test_main.dir/cmake_clean.cmake
.PHONY : CMakeFiles/test_main.dir/clean

CMakeFiles/test_main.dir/depend:
	cd /Users/zw/code/C_and_C++_Projects/ClusLib/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/zw/code/C_and_C++_Projects/ClusLib /Users/zw/code/C_and_C++_Projects/ClusLib /Users/zw/code/C_and_C++_Projects/ClusLib/cmake-build-debug /Users/zw/code/C_and_C++_Projects/ClusLib/cmake-build-debug /Users/zw/code/C_and_C++_Projects/ClusLib/cmake-build-debug/CMakeFiles/test_main.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/test_main.dir/depend

