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
include CMakeFiles/ClusLib.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/ClusLib.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/ClusLib.dir/flags.make

CMakeFiles/ClusLib.dir/cl/errors.cpp.o: CMakeFiles/ClusLib.dir/flags.make
CMakeFiles/ClusLib.dir/cl/errors.cpp.o: ../cl/errors.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/zw/code/C_and_C++_Projects/ClusLib/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/ClusLib.dir/cl/errors.cpp.o"
	/usr/local/opt/llvm/bin/clang++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ClusLib.dir/cl/errors.cpp.o -c /Users/zw/code/C_and_C++_Projects/ClusLib/cl/errors.cpp

CMakeFiles/ClusLib.dir/cl/errors.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ClusLib.dir/cl/errors.cpp.i"
	/usr/local/opt/llvm/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/zw/code/C_and_C++_Projects/ClusLib/cl/errors.cpp > CMakeFiles/ClusLib.dir/cl/errors.cpp.i

CMakeFiles/ClusLib.dir/cl/errors.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ClusLib.dir/cl/errors.cpp.s"
	/usr/local/opt/llvm/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/zw/code/C_and_C++_Projects/ClusLib/cl/errors.cpp -o CMakeFiles/ClusLib.dir/cl/errors.cpp.s

CMakeFiles/ClusLib.dir/cl/errors.cpp.o.requires:

.PHONY : CMakeFiles/ClusLib.dir/cl/errors.cpp.o.requires

CMakeFiles/ClusLib.dir/cl/errors.cpp.o.provides: CMakeFiles/ClusLib.dir/cl/errors.cpp.o.requires
	$(MAKE) -f CMakeFiles/ClusLib.dir/build.make CMakeFiles/ClusLib.dir/cl/errors.cpp.o.provides.build
.PHONY : CMakeFiles/ClusLib.dir/cl/errors.cpp.o.provides

CMakeFiles/ClusLib.dir/cl/errors.cpp.o.provides.build: CMakeFiles/ClusLib.dir/cl/errors.cpp.o


CMakeFiles/ClusLib.dir/cl/datasets/attrinfo.cpp.o: CMakeFiles/ClusLib.dir/flags.make
CMakeFiles/ClusLib.dir/cl/datasets/attrinfo.cpp.o: ../cl/datasets/attrinfo.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/zw/code/C_and_C++_Projects/ClusLib/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/ClusLib.dir/cl/datasets/attrinfo.cpp.o"
	/usr/local/opt/llvm/bin/clang++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ClusLib.dir/cl/datasets/attrinfo.cpp.o -c /Users/zw/code/C_and_C++_Projects/ClusLib/cl/datasets/attrinfo.cpp

CMakeFiles/ClusLib.dir/cl/datasets/attrinfo.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ClusLib.dir/cl/datasets/attrinfo.cpp.i"
	/usr/local/opt/llvm/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/zw/code/C_and_C++_Projects/ClusLib/cl/datasets/attrinfo.cpp > CMakeFiles/ClusLib.dir/cl/datasets/attrinfo.cpp.i

CMakeFiles/ClusLib.dir/cl/datasets/attrinfo.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ClusLib.dir/cl/datasets/attrinfo.cpp.s"
	/usr/local/opt/llvm/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/zw/code/C_and_C++_Projects/ClusLib/cl/datasets/attrinfo.cpp -o CMakeFiles/ClusLib.dir/cl/datasets/attrinfo.cpp.s

CMakeFiles/ClusLib.dir/cl/datasets/attrinfo.cpp.o.requires:

.PHONY : CMakeFiles/ClusLib.dir/cl/datasets/attrinfo.cpp.o.requires

CMakeFiles/ClusLib.dir/cl/datasets/attrinfo.cpp.o.provides: CMakeFiles/ClusLib.dir/cl/datasets/attrinfo.cpp.o.requires
	$(MAKE) -f CMakeFiles/ClusLib.dir/build.make CMakeFiles/ClusLib.dir/cl/datasets/attrinfo.cpp.o.provides.build
.PHONY : CMakeFiles/ClusLib.dir/cl/datasets/attrinfo.cpp.o.provides

CMakeFiles/ClusLib.dir/cl/datasets/attrinfo.cpp.o.provides.build: CMakeFiles/ClusLib.dir/cl/datasets/attrinfo.cpp.o


CMakeFiles/ClusLib.dir/cl/datasets/cattrinfo.cpp.o: CMakeFiles/ClusLib.dir/flags.make
CMakeFiles/ClusLib.dir/cl/datasets/cattrinfo.cpp.o: ../cl/datasets/cattrinfo.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/zw/code/C_and_C++_Projects/ClusLib/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/ClusLib.dir/cl/datasets/cattrinfo.cpp.o"
	/usr/local/opt/llvm/bin/clang++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ClusLib.dir/cl/datasets/cattrinfo.cpp.o -c /Users/zw/code/C_and_C++_Projects/ClusLib/cl/datasets/cattrinfo.cpp

CMakeFiles/ClusLib.dir/cl/datasets/cattrinfo.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ClusLib.dir/cl/datasets/cattrinfo.cpp.i"
	/usr/local/opt/llvm/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/zw/code/C_and_C++_Projects/ClusLib/cl/datasets/cattrinfo.cpp > CMakeFiles/ClusLib.dir/cl/datasets/cattrinfo.cpp.i

CMakeFiles/ClusLib.dir/cl/datasets/cattrinfo.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ClusLib.dir/cl/datasets/cattrinfo.cpp.s"
	/usr/local/opt/llvm/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/zw/code/C_and_C++_Projects/ClusLib/cl/datasets/cattrinfo.cpp -o CMakeFiles/ClusLib.dir/cl/datasets/cattrinfo.cpp.s

CMakeFiles/ClusLib.dir/cl/datasets/cattrinfo.cpp.o.requires:

.PHONY : CMakeFiles/ClusLib.dir/cl/datasets/cattrinfo.cpp.o.requires

CMakeFiles/ClusLib.dir/cl/datasets/cattrinfo.cpp.o.provides: CMakeFiles/ClusLib.dir/cl/datasets/cattrinfo.cpp.o.requires
	$(MAKE) -f CMakeFiles/ClusLib.dir/build.make CMakeFiles/ClusLib.dir/cl/datasets/cattrinfo.cpp.o.provides.build
.PHONY : CMakeFiles/ClusLib.dir/cl/datasets/cattrinfo.cpp.o.provides

CMakeFiles/ClusLib.dir/cl/datasets/cattrinfo.cpp.o.provides.build: CMakeFiles/ClusLib.dir/cl/datasets/cattrinfo.cpp.o


CMakeFiles/ClusLib.dir/cl/datasets/dattrinfo.cpp.o: CMakeFiles/ClusLib.dir/flags.make
CMakeFiles/ClusLib.dir/cl/datasets/dattrinfo.cpp.o: ../cl/datasets/dattrinfo.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/zw/code/C_and_C++_Projects/ClusLib/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/ClusLib.dir/cl/datasets/dattrinfo.cpp.o"
	/usr/local/opt/llvm/bin/clang++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ClusLib.dir/cl/datasets/dattrinfo.cpp.o -c /Users/zw/code/C_and_C++_Projects/ClusLib/cl/datasets/dattrinfo.cpp

CMakeFiles/ClusLib.dir/cl/datasets/dattrinfo.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ClusLib.dir/cl/datasets/dattrinfo.cpp.i"
	/usr/local/opt/llvm/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/zw/code/C_and_C++_Projects/ClusLib/cl/datasets/dattrinfo.cpp > CMakeFiles/ClusLib.dir/cl/datasets/dattrinfo.cpp.i

CMakeFiles/ClusLib.dir/cl/datasets/dattrinfo.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ClusLib.dir/cl/datasets/dattrinfo.cpp.s"
	/usr/local/opt/llvm/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/zw/code/C_and_C++_Projects/ClusLib/cl/datasets/dattrinfo.cpp -o CMakeFiles/ClusLib.dir/cl/datasets/dattrinfo.cpp.s

CMakeFiles/ClusLib.dir/cl/datasets/dattrinfo.cpp.o.requires:

.PHONY : CMakeFiles/ClusLib.dir/cl/datasets/dattrinfo.cpp.o.requires

CMakeFiles/ClusLib.dir/cl/datasets/dattrinfo.cpp.o.provides: CMakeFiles/ClusLib.dir/cl/datasets/dattrinfo.cpp.o.requires
	$(MAKE) -f CMakeFiles/ClusLib.dir/build.make CMakeFiles/ClusLib.dir/cl/datasets/dattrinfo.cpp.o.provides.build
.PHONY : CMakeFiles/ClusLib.dir/cl/datasets/dattrinfo.cpp.o.provides

CMakeFiles/ClusLib.dir/cl/datasets/dattrinfo.cpp.o.provides.build: CMakeFiles/ClusLib.dir/cl/datasets/dattrinfo.cpp.o


CMakeFiles/ClusLib.dir/cl/datasets/dataset.cpp.o: CMakeFiles/ClusLib.dir/flags.make
CMakeFiles/ClusLib.dir/cl/datasets/dataset.cpp.o: ../cl/datasets/dataset.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/zw/code/C_and_C++_Projects/ClusLib/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/ClusLib.dir/cl/datasets/dataset.cpp.o"
	/usr/local/opt/llvm/bin/clang++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ClusLib.dir/cl/datasets/dataset.cpp.o -c /Users/zw/code/C_and_C++_Projects/ClusLib/cl/datasets/dataset.cpp

CMakeFiles/ClusLib.dir/cl/datasets/dataset.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ClusLib.dir/cl/datasets/dataset.cpp.i"
	/usr/local/opt/llvm/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/zw/code/C_and_C++_Projects/ClusLib/cl/datasets/dataset.cpp > CMakeFiles/ClusLib.dir/cl/datasets/dataset.cpp.i

CMakeFiles/ClusLib.dir/cl/datasets/dataset.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ClusLib.dir/cl/datasets/dataset.cpp.s"
	/usr/local/opt/llvm/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/zw/code/C_and_C++_Projects/ClusLib/cl/datasets/dataset.cpp -o CMakeFiles/ClusLib.dir/cl/datasets/dataset.cpp.s

CMakeFiles/ClusLib.dir/cl/datasets/dataset.cpp.o.requires:

.PHONY : CMakeFiles/ClusLib.dir/cl/datasets/dataset.cpp.o.requires

CMakeFiles/ClusLib.dir/cl/datasets/dataset.cpp.o.provides: CMakeFiles/ClusLib.dir/cl/datasets/dataset.cpp.o.requires
	$(MAKE) -f CMakeFiles/ClusLib.dir/build.make CMakeFiles/ClusLib.dir/cl/datasets/dataset.cpp.o.provides.build
.PHONY : CMakeFiles/ClusLib.dir/cl/datasets/dataset.cpp.o.provides

CMakeFiles/ClusLib.dir/cl/datasets/dataset.cpp.o.provides.build: CMakeFiles/ClusLib.dir/cl/datasets/dataset.cpp.o


CMakeFiles/ClusLib.dir/cl/datasets/record.cpp.o: CMakeFiles/ClusLib.dir/flags.make
CMakeFiles/ClusLib.dir/cl/datasets/record.cpp.o: ../cl/datasets/record.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/zw/code/C_and_C++_Projects/ClusLib/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/ClusLib.dir/cl/datasets/record.cpp.o"
	/usr/local/opt/llvm/bin/clang++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ClusLib.dir/cl/datasets/record.cpp.o -c /Users/zw/code/C_and_C++_Projects/ClusLib/cl/datasets/record.cpp

CMakeFiles/ClusLib.dir/cl/datasets/record.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ClusLib.dir/cl/datasets/record.cpp.i"
	/usr/local/opt/llvm/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/zw/code/C_and_C++_Projects/ClusLib/cl/datasets/record.cpp > CMakeFiles/ClusLib.dir/cl/datasets/record.cpp.i

CMakeFiles/ClusLib.dir/cl/datasets/record.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ClusLib.dir/cl/datasets/record.cpp.s"
	/usr/local/opt/llvm/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/zw/code/C_and_C++_Projects/ClusLib/cl/datasets/record.cpp -o CMakeFiles/ClusLib.dir/cl/datasets/record.cpp.s

CMakeFiles/ClusLib.dir/cl/datasets/record.cpp.o.requires:

.PHONY : CMakeFiles/ClusLib.dir/cl/datasets/record.cpp.o.requires

CMakeFiles/ClusLib.dir/cl/datasets/record.cpp.o.provides: CMakeFiles/ClusLib.dir/cl/datasets/record.cpp.o.requires
	$(MAKE) -f CMakeFiles/ClusLib.dir/build.make CMakeFiles/ClusLib.dir/cl/datasets/record.cpp.o.provides.build
.PHONY : CMakeFiles/ClusLib.dir/cl/datasets/record.cpp.o.provides

CMakeFiles/ClusLib.dir/cl/datasets/record.cpp.o.provides.build: CMakeFiles/ClusLib.dir/cl/datasets/record.cpp.o


CMakeFiles/ClusLib.dir/cl/datasets/schema.cpp.o: CMakeFiles/ClusLib.dir/flags.make
CMakeFiles/ClusLib.dir/cl/datasets/schema.cpp.o: ../cl/datasets/schema.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/zw/code/C_and_C++_Projects/ClusLib/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/ClusLib.dir/cl/datasets/schema.cpp.o"
	/usr/local/opt/llvm/bin/clang++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ClusLib.dir/cl/datasets/schema.cpp.o -c /Users/zw/code/C_and_C++_Projects/ClusLib/cl/datasets/schema.cpp

CMakeFiles/ClusLib.dir/cl/datasets/schema.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ClusLib.dir/cl/datasets/schema.cpp.i"
	/usr/local/opt/llvm/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/zw/code/C_and_C++_Projects/ClusLib/cl/datasets/schema.cpp > CMakeFiles/ClusLib.dir/cl/datasets/schema.cpp.i

CMakeFiles/ClusLib.dir/cl/datasets/schema.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ClusLib.dir/cl/datasets/schema.cpp.s"
	/usr/local/opt/llvm/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/zw/code/C_and_C++_Projects/ClusLib/cl/datasets/schema.cpp -o CMakeFiles/ClusLib.dir/cl/datasets/schema.cpp.s

CMakeFiles/ClusLib.dir/cl/datasets/schema.cpp.o.requires:

.PHONY : CMakeFiles/ClusLib.dir/cl/datasets/schema.cpp.o.requires

CMakeFiles/ClusLib.dir/cl/datasets/schema.cpp.o.provides: CMakeFiles/ClusLib.dir/cl/datasets/schema.cpp.o.requires
	$(MAKE) -f CMakeFiles/ClusLib.dir/build.make CMakeFiles/ClusLib.dir/cl/datasets/schema.cpp.o.provides.build
.PHONY : CMakeFiles/ClusLib.dir/cl/datasets/schema.cpp.o.provides

CMakeFiles/ClusLib.dir/cl/datasets/schema.cpp.o.provides.build: CMakeFiles/ClusLib.dir/cl/datasets/schema.cpp.o


CMakeFiles/ClusLib.dir/cl/clusters/centercluster.cpp.o: CMakeFiles/ClusLib.dir/flags.make
CMakeFiles/ClusLib.dir/cl/clusters/centercluster.cpp.o: ../cl/clusters/centercluster.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/zw/code/C_and_C++_Projects/ClusLib/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/ClusLib.dir/cl/clusters/centercluster.cpp.o"
	/usr/local/opt/llvm/bin/clang++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ClusLib.dir/cl/clusters/centercluster.cpp.o -c /Users/zw/code/C_and_C++_Projects/ClusLib/cl/clusters/centercluster.cpp

CMakeFiles/ClusLib.dir/cl/clusters/centercluster.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ClusLib.dir/cl/clusters/centercluster.cpp.i"
	/usr/local/opt/llvm/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/zw/code/C_and_C++_Projects/ClusLib/cl/clusters/centercluster.cpp > CMakeFiles/ClusLib.dir/cl/clusters/centercluster.cpp.i

CMakeFiles/ClusLib.dir/cl/clusters/centercluster.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ClusLib.dir/cl/clusters/centercluster.cpp.s"
	/usr/local/opt/llvm/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/zw/code/C_and_C++_Projects/ClusLib/cl/clusters/centercluster.cpp -o CMakeFiles/ClusLib.dir/cl/clusters/centercluster.cpp.s

CMakeFiles/ClusLib.dir/cl/clusters/centercluster.cpp.o.requires:

.PHONY : CMakeFiles/ClusLib.dir/cl/clusters/centercluster.cpp.o.requires

CMakeFiles/ClusLib.dir/cl/clusters/centercluster.cpp.o.provides: CMakeFiles/ClusLib.dir/cl/clusters/centercluster.cpp.o.requires
	$(MAKE) -f CMakeFiles/ClusLib.dir/build.make CMakeFiles/ClusLib.dir/cl/clusters/centercluster.cpp.o.provides.build
.PHONY : CMakeFiles/ClusLib.dir/cl/clusters/centercluster.cpp.o.provides

CMakeFiles/ClusLib.dir/cl/clusters/centercluster.cpp.o.provides.build: CMakeFiles/ClusLib.dir/cl/clusters/centercluster.cpp.o


CMakeFiles/ClusLib.dir/cl/clusters/hclustering.cpp.o: CMakeFiles/ClusLib.dir/flags.make
CMakeFiles/ClusLib.dir/cl/clusters/hclustering.cpp.o: ../cl/clusters/hclustering.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/zw/code/C_and_C++_Projects/ClusLib/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/ClusLib.dir/cl/clusters/hclustering.cpp.o"
	/usr/local/opt/llvm/bin/clang++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ClusLib.dir/cl/clusters/hclustering.cpp.o -c /Users/zw/code/C_and_C++_Projects/ClusLib/cl/clusters/hclustering.cpp

CMakeFiles/ClusLib.dir/cl/clusters/hclustering.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ClusLib.dir/cl/clusters/hclustering.cpp.i"
	/usr/local/opt/llvm/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/zw/code/C_and_C++_Projects/ClusLib/cl/clusters/hclustering.cpp > CMakeFiles/ClusLib.dir/cl/clusters/hclustering.cpp.i

CMakeFiles/ClusLib.dir/cl/clusters/hclustering.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ClusLib.dir/cl/clusters/hclustering.cpp.s"
	/usr/local/opt/llvm/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/zw/code/C_and_C++_Projects/ClusLib/cl/clusters/hclustering.cpp -o CMakeFiles/ClusLib.dir/cl/clusters/hclustering.cpp.s

CMakeFiles/ClusLib.dir/cl/clusters/hclustering.cpp.o.requires:

.PHONY : CMakeFiles/ClusLib.dir/cl/clusters/hclustering.cpp.o.requires

CMakeFiles/ClusLib.dir/cl/clusters/hclustering.cpp.o.provides: CMakeFiles/ClusLib.dir/cl/clusters/hclustering.cpp.o.requires
	$(MAKE) -f CMakeFiles/ClusLib.dir/build.make CMakeFiles/ClusLib.dir/cl/clusters/hclustering.cpp.o.provides.build
.PHONY : CMakeFiles/ClusLib.dir/cl/clusters/hclustering.cpp.o.provides

CMakeFiles/ClusLib.dir/cl/clusters/hclustering.cpp.o.provides.build: CMakeFiles/ClusLib.dir/cl/clusters/hclustering.cpp.o


CMakeFiles/ClusLib.dir/cl/clusters/pclustering.cpp.o: CMakeFiles/ClusLib.dir/flags.make
CMakeFiles/ClusLib.dir/cl/clusters/pclustering.cpp.o: ../cl/clusters/pclustering.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/zw/code/C_and_C++_Projects/ClusLib/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object CMakeFiles/ClusLib.dir/cl/clusters/pclustering.cpp.o"
	/usr/local/opt/llvm/bin/clang++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ClusLib.dir/cl/clusters/pclustering.cpp.o -c /Users/zw/code/C_and_C++_Projects/ClusLib/cl/clusters/pclustering.cpp

CMakeFiles/ClusLib.dir/cl/clusters/pclustering.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ClusLib.dir/cl/clusters/pclustering.cpp.i"
	/usr/local/opt/llvm/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/zw/code/C_and_C++_Projects/ClusLib/cl/clusters/pclustering.cpp > CMakeFiles/ClusLib.dir/cl/clusters/pclustering.cpp.i

CMakeFiles/ClusLib.dir/cl/clusters/pclustering.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ClusLib.dir/cl/clusters/pclustering.cpp.s"
	/usr/local/opt/llvm/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/zw/code/C_and_C++_Projects/ClusLib/cl/clusters/pclustering.cpp -o CMakeFiles/ClusLib.dir/cl/clusters/pclustering.cpp.s

CMakeFiles/ClusLib.dir/cl/clusters/pclustering.cpp.o.requires:

.PHONY : CMakeFiles/ClusLib.dir/cl/clusters/pclustering.cpp.o.requires

CMakeFiles/ClusLib.dir/cl/clusters/pclustering.cpp.o.provides: CMakeFiles/ClusLib.dir/cl/clusters/pclustering.cpp.o.requires
	$(MAKE) -f CMakeFiles/ClusLib.dir/build.make CMakeFiles/ClusLib.dir/cl/clusters/pclustering.cpp.o.provides.build
.PHONY : CMakeFiles/ClusLib.dir/cl/clusters/pclustering.cpp.o.provides

CMakeFiles/ClusLib.dir/cl/clusters/pclustering.cpp.o.provides.build: CMakeFiles/ClusLib.dir/cl/clusters/pclustering.cpp.o


CMakeFiles/ClusLib.dir/cl/clusters/subspacecluster.cpp.o: CMakeFiles/ClusLib.dir/flags.make
CMakeFiles/ClusLib.dir/cl/clusters/subspacecluster.cpp.o: ../cl/clusters/subspacecluster.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/zw/code/C_and_C++_Projects/ClusLib/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object CMakeFiles/ClusLib.dir/cl/clusters/subspacecluster.cpp.o"
	/usr/local/opt/llvm/bin/clang++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ClusLib.dir/cl/clusters/subspacecluster.cpp.o -c /Users/zw/code/C_and_C++_Projects/ClusLib/cl/clusters/subspacecluster.cpp

CMakeFiles/ClusLib.dir/cl/clusters/subspacecluster.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ClusLib.dir/cl/clusters/subspacecluster.cpp.i"
	/usr/local/opt/llvm/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/zw/code/C_and_C++_Projects/ClusLib/cl/clusters/subspacecluster.cpp > CMakeFiles/ClusLib.dir/cl/clusters/subspacecluster.cpp.i

CMakeFiles/ClusLib.dir/cl/clusters/subspacecluster.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ClusLib.dir/cl/clusters/subspacecluster.cpp.s"
	/usr/local/opt/llvm/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/zw/code/C_and_C++_Projects/ClusLib/cl/clusters/subspacecluster.cpp -o CMakeFiles/ClusLib.dir/cl/clusters/subspacecluster.cpp.s

CMakeFiles/ClusLib.dir/cl/clusters/subspacecluster.cpp.o.requires:

.PHONY : CMakeFiles/ClusLib.dir/cl/clusters/subspacecluster.cpp.o.requires

CMakeFiles/ClusLib.dir/cl/clusters/subspacecluster.cpp.o.provides: CMakeFiles/ClusLib.dir/cl/clusters/subspacecluster.cpp.o.requires
	$(MAKE) -f CMakeFiles/ClusLib.dir/build.make CMakeFiles/ClusLib.dir/cl/clusters/subspacecluster.cpp.o.provides.build
.PHONY : CMakeFiles/ClusLib.dir/cl/clusters/subspacecluster.cpp.o.provides

CMakeFiles/ClusLib.dir/cl/clusters/subspacecluster.cpp.o.provides.build: CMakeFiles/ClusLib.dir/cl/clusters/subspacecluster.cpp.o


# Object files for target ClusLib
ClusLib_OBJECTS = \
"CMakeFiles/ClusLib.dir/cl/errors.cpp.o" \
"CMakeFiles/ClusLib.dir/cl/datasets/attrinfo.cpp.o" \
"CMakeFiles/ClusLib.dir/cl/datasets/cattrinfo.cpp.o" \
"CMakeFiles/ClusLib.dir/cl/datasets/dattrinfo.cpp.o" \
"CMakeFiles/ClusLib.dir/cl/datasets/dataset.cpp.o" \
"CMakeFiles/ClusLib.dir/cl/datasets/record.cpp.o" \
"CMakeFiles/ClusLib.dir/cl/datasets/schema.cpp.o" \
"CMakeFiles/ClusLib.dir/cl/clusters/centercluster.cpp.o" \
"CMakeFiles/ClusLib.dir/cl/clusters/hclustering.cpp.o" \
"CMakeFiles/ClusLib.dir/cl/clusters/pclustering.cpp.o" \
"CMakeFiles/ClusLib.dir/cl/clusters/subspacecluster.cpp.o"

# External object files for target ClusLib
ClusLib_EXTERNAL_OBJECTS =

../bin/libClusLib.dylib: CMakeFiles/ClusLib.dir/cl/errors.cpp.o
../bin/libClusLib.dylib: CMakeFiles/ClusLib.dir/cl/datasets/attrinfo.cpp.o
../bin/libClusLib.dylib: CMakeFiles/ClusLib.dir/cl/datasets/cattrinfo.cpp.o
../bin/libClusLib.dylib: CMakeFiles/ClusLib.dir/cl/datasets/dattrinfo.cpp.o
../bin/libClusLib.dylib: CMakeFiles/ClusLib.dir/cl/datasets/dataset.cpp.o
../bin/libClusLib.dylib: CMakeFiles/ClusLib.dir/cl/datasets/record.cpp.o
../bin/libClusLib.dylib: CMakeFiles/ClusLib.dir/cl/datasets/schema.cpp.o
../bin/libClusLib.dylib: CMakeFiles/ClusLib.dir/cl/clusters/centercluster.cpp.o
../bin/libClusLib.dylib: CMakeFiles/ClusLib.dir/cl/clusters/hclustering.cpp.o
../bin/libClusLib.dylib: CMakeFiles/ClusLib.dir/cl/clusters/pclustering.cpp.o
../bin/libClusLib.dylib: CMakeFiles/ClusLib.dir/cl/clusters/subspacecluster.cpp.o
../bin/libClusLib.dylib: CMakeFiles/ClusLib.dir/build.make
../bin/libClusLib.dylib: CMakeFiles/ClusLib.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/zw/code/C_and_C++_Projects/ClusLib/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Linking CXX shared library ../bin/libClusLib.dylib"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ClusLib.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/ClusLib.dir/build: ../bin/libClusLib.dylib

.PHONY : CMakeFiles/ClusLib.dir/build

CMakeFiles/ClusLib.dir/requires: CMakeFiles/ClusLib.dir/cl/errors.cpp.o.requires
CMakeFiles/ClusLib.dir/requires: CMakeFiles/ClusLib.dir/cl/datasets/attrinfo.cpp.o.requires
CMakeFiles/ClusLib.dir/requires: CMakeFiles/ClusLib.dir/cl/datasets/cattrinfo.cpp.o.requires
CMakeFiles/ClusLib.dir/requires: CMakeFiles/ClusLib.dir/cl/datasets/dattrinfo.cpp.o.requires
CMakeFiles/ClusLib.dir/requires: CMakeFiles/ClusLib.dir/cl/datasets/dataset.cpp.o.requires
CMakeFiles/ClusLib.dir/requires: CMakeFiles/ClusLib.dir/cl/datasets/record.cpp.o.requires
CMakeFiles/ClusLib.dir/requires: CMakeFiles/ClusLib.dir/cl/datasets/schema.cpp.o.requires
CMakeFiles/ClusLib.dir/requires: CMakeFiles/ClusLib.dir/cl/clusters/centercluster.cpp.o.requires
CMakeFiles/ClusLib.dir/requires: CMakeFiles/ClusLib.dir/cl/clusters/hclustering.cpp.o.requires
CMakeFiles/ClusLib.dir/requires: CMakeFiles/ClusLib.dir/cl/clusters/pclustering.cpp.o.requires
CMakeFiles/ClusLib.dir/requires: CMakeFiles/ClusLib.dir/cl/clusters/subspacecluster.cpp.o.requires

.PHONY : CMakeFiles/ClusLib.dir/requires

CMakeFiles/ClusLib.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/ClusLib.dir/cmake_clean.cmake
.PHONY : CMakeFiles/ClusLib.dir/clean

CMakeFiles/ClusLib.dir/depend:
	cd /Users/zw/code/C_and_C++_Projects/ClusLib/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/zw/code/C_and_C++_Projects/ClusLib /Users/zw/code/C_and_C++_Projects/ClusLib /Users/zw/code/C_and_C++_Projects/ClusLib/cmake-build-debug /Users/zw/code/C_and_C++_Projects/ClusLib/cmake-build-debug /Users/zw/code/C_and_C++_Projects/ClusLib/cmake-build-debug/CMakeFiles/ClusLib.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/ClusLib.dir/depend
