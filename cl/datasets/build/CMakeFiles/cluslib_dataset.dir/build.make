# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

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
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.10.2/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.10.2/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/zw/code/C_and_C++_Projects/ClusLib/cl/datasets

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/zw/code/C_and_C++_Projects/ClusLib/cl/datasets/build

# Include any dependencies generated for this target.
include CMakeFiles/cluslib_dataset.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/cluslib_dataset.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/cluslib_dataset.dir/flags.make

CMakeFiles/cluslib_dataset.dir/attrinfo.cpp.o: CMakeFiles/cluslib_dataset.dir/flags.make
CMakeFiles/cluslib_dataset.dir/attrinfo.cpp.o: ../attrinfo.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/zw/code/C_and_C++_Projects/ClusLib/cl/datasets/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/cluslib_dataset.dir/attrinfo.cpp.o"
	/usr/local/opt/llvm/bin/clang++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/cluslib_dataset.dir/attrinfo.cpp.o -c /Users/zw/code/C_and_C++_Projects/ClusLib/cl/datasets/attrinfo.cpp

CMakeFiles/cluslib_dataset.dir/attrinfo.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cluslib_dataset.dir/attrinfo.cpp.i"
	/usr/local/opt/llvm/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/zw/code/C_and_C++_Projects/ClusLib/cl/datasets/attrinfo.cpp > CMakeFiles/cluslib_dataset.dir/attrinfo.cpp.i

CMakeFiles/cluslib_dataset.dir/attrinfo.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cluslib_dataset.dir/attrinfo.cpp.s"
	/usr/local/opt/llvm/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/zw/code/C_and_C++_Projects/ClusLib/cl/datasets/attrinfo.cpp -o CMakeFiles/cluslib_dataset.dir/attrinfo.cpp.s

CMakeFiles/cluslib_dataset.dir/attrinfo.cpp.o.requires:

.PHONY : CMakeFiles/cluslib_dataset.dir/attrinfo.cpp.o.requires

CMakeFiles/cluslib_dataset.dir/attrinfo.cpp.o.provides: CMakeFiles/cluslib_dataset.dir/attrinfo.cpp.o.requires
	$(MAKE) -f CMakeFiles/cluslib_dataset.dir/build.make CMakeFiles/cluslib_dataset.dir/attrinfo.cpp.o.provides.build
.PHONY : CMakeFiles/cluslib_dataset.dir/attrinfo.cpp.o.provides

CMakeFiles/cluslib_dataset.dir/attrinfo.cpp.o.provides.build: CMakeFiles/cluslib_dataset.dir/attrinfo.cpp.o


CMakeFiles/cluslib_dataset.dir/cattrinfo.cpp.o: CMakeFiles/cluslib_dataset.dir/flags.make
CMakeFiles/cluslib_dataset.dir/cattrinfo.cpp.o: ../cattrinfo.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/zw/code/C_and_C++_Projects/ClusLib/cl/datasets/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/cluslib_dataset.dir/cattrinfo.cpp.o"
	/usr/local/opt/llvm/bin/clang++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/cluslib_dataset.dir/cattrinfo.cpp.o -c /Users/zw/code/C_and_C++_Projects/ClusLib/cl/datasets/cattrinfo.cpp

CMakeFiles/cluslib_dataset.dir/cattrinfo.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cluslib_dataset.dir/cattrinfo.cpp.i"
	/usr/local/opt/llvm/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/zw/code/C_and_C++_Projects/ClusLib/cl/datasets/cattrinfo.cpp > CMakeFiles/cluslib_dataset.dir/cattrinfo.cpp.i

CMakeFiles/cluslib_dataset.dir/cattrinfo.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cluslib_dataset.dir/cattrinfo.cpp.s"
	/usr/local/opt/llvm/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/zw/code/C_and_C++_Projects/ClusLib/cl/datasets/cattrinfo.cpp -o CMakeFiles/cluslib_dataset.dir/cattrinfo.cpp.s

CMakeFiles/cluslib_dataset.dir/cattrinfo.cpp.o.requires:

.PHONY : CMakeFiles/cluslib_dataset.dir/cattrinfo.cpp.o.requires

CMakeFiles/cluslib_dataset.dir/cattrinfo.cpp.o.provides: CMakeFiles/cluslib_dataset.dir/cattrinfo.cpp.o.requires
	$(MAKE) -f CMakeFiles/cluslib_dataset.dir/build.make CMakeFiles/cluslib_dataset.dir/cattrinfo.cpp.o.provides.build
.PHONY : CMakeFiles/cluslib_dataset.dir/cattrinfo.cpp.o.provides

CMakeFiles/cluslib_dataset.dir/cattrinfo.cpp.o.provides.build: CMakeFiles/cluslib_dataset.dir/cattrinfo.cpp.o


CMakeFiles/cluslib_dataset.dir/dataset.cpp.o: CMakeFiles/cluslib_dataset.dir/flags.make
CMakeFiles/cluslib_dataset.dir/dataset.cpp.o: ../dataset.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/zw/code/C_and_C++_Projects/ClusLib/cl/datasets/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/cluslib_dataset.dir/dataset.cpp.o"
	/usr/local/opt/llvm/bin/clang++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/cluslib_dataset.dir/dataset.cpp.o -c /Users/zw/code/C_and_C++_Projects/ClusLib/cl/datasets/dataset.cpp

CMakeFiles/cluslib_dataset.dir/dataset.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cluslib_dataset.dir/dataset.cpp.i"
	/usr/local/opt/llvm/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/zw/code/C_and_C++_Projects/ClusLib/cl/datasets/dataset.cpp > CMakeFiles/cluslib_dataset.dir/dataset.cpp.i

CMakeFiles/cluslib_dataset.dir/dataset.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cluslib_dataset.dir/dataset.cpp.s"
	/usr/local/opt/llvm/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/zw/code/C_and_C++_Projects/ClusLib/cl/datasets/dataset.cpp -o CMakeFiles/cluslib_dataset.dir/dataset.cpp.s

CMakeFiles/cluslib_dataset.dir/dataset.cpp.o.requires:

.PHONY : CMakeFiles/cluslib_dataset.dir/dataset.cpp.o.requires

CMakeFiles/cluslib_dataset.dir/dataset.cpp.o.provides: CMakeFiles/cluslib_dataset.dir/dataset.cpp.o.requires
	$(MAKE) -f CMakeFiles/cluslib_dataset.dir/build.make CMakeFiles/cluslib_dataset.dir/dataset.cpp.o.provides.build
.PHONY : CMakeFiles/cluslib_dataset.dir/dataset.cpp.o.provides

CMakeFiles/cluslib_dataset.dir/dataset.cpp.o.provides.build: CMakeFiles/cluslib_dataset.dir/dataset.cpp.o


CMakeFiles/cluslib_dataset.dir/dattrinfo.cpp.o: CMakeFiles/cluslib_dataset.dir/flags.make
CMakeFiles/cluslib_dataset.dir/dattrinfo.cpp.o: ../dattrinfo.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/zw/code/C_and_C++_Projects/ClusLib/cl/datasets/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/cluslib_dataset.dir/dattrinfo.cpp.o"
	/usr/local/opt/llvm/bin/clang++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/cluslib_dataset.dir/dattrinfo.cpp.o -c /Users/zw/code/C_and_C++_Projects/ClusLib/cl/datasets/dattrinfo.cpp

CMakeFiles/cluslib_dataset.dir/dattrinfo.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cluslib_dataset.dir/dattrinfo.cpp.i"
	/usr/local/opt/llvm/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/zw/code/C_and_C++_Projects/ClusLib/cl/datasets/dattrinfo.cpp > CMakeFiles/cluslib_dataset.dir/dattrinfo.cpp.i

CMakeFiles/cluslib_dataset.dir/dattrinfo.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cluslib_dataset.dir/dattrinfo.cpp.s"
	/usr/local/opt/llvm/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/zw/code/C_and_C++_Projects/ClusLib/cl/datasets/dattrinfo.cpp -o CMakeFiles/cluslib_dataset.dir/dattrinfo.cpp.s

CMakeFiles/cluslib_dataset.dir/dattrinfo.cpp.o.requires:

.PHONY : CMakeFiles/cluslib_dataset.dir/dattrinfo.cpp.o.requires

CMakeFiles/cluslib_dataset.dir/dattrinfo.cpp.o.provides: CMakeFiles/cluslib_dataset.dir/dattrinfo.cpp.o.requires
	$(MAKE) -f CMakeFiles/cluslib_dataset.dir/build.make CMakeFiles/cluslib_dataset.dir/dattrinfo.cpp.o.provides.build
.PHONY : CMakeFiles/cluslib_dataset.dir/dattrinfo.cpp.o.provides

CMakeFiles/cluslib_dataset.dir/dattrinfo.cpp.o.provides.build: CMakeFiles/cluslib_dataset.dir/dattrinfo.cpp.o


CMakeFiles/cluslib_dataset.dir/record.cpp.o: CMakeFiles/cluslib_dataset.dir/flags.make
CMakeFiles/cluslib_dataset.dir/record.cpp.o: ../record.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/zw/code/C_and_C++_Projects/ClusLib/cl/datasets/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/cluslib_dataset.dir/record.cpp.o"
	/usr/local/opt/llvm/bin/clang++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/cluslib_dataset.dir/record.cpp.o -c /Users/zw/code/C_and_C++_Projects/ClusLib/cl/datasets/record.cpp

CMakeFiles/cluslib_dataset.dir/record.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cluslib_dataset.dir/record.cpp.i"
	/usr/local/opt/llvm/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/zw/code/C_and_C++_Projects/ClusLib/cl/datasets/record.cpp > CMakeFiles/cluslib_dataset.dir/record.cpp.i

CMakeFiles/cluslib_dataset.dir/record.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cluslib_dataset.dir/record.cpp.s"
	/usr/local/opt/llvm/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/zw/code/C_and_C++_Projects/ClusLib/cl/datasets/record.cpp -o CMakeFiles/cluslib_dataset.dir/record.cpp.s

CMakeFiles/cluslib_dataset.dir/record.cpp.o.requires:

.PHONY : CMakeFiles/cluslib_dataset.dir/record.cpp.o.requires

CMakeFiles/cluslib_dataset.dir/record.cpp.o.provides: CMakeFiles/cluslib_dataset.dir/record.cpp.o.requires
	$(MAKE) -f CMakeFiles/cluslib_dataset.dir/build.make CMakeFiles/cluslib_dataset.dir/record.cpp.o.provides.build
.PHONY : CMakeFiles/cluslib_dataset.dir/record.cpp.o.provides

CMakeFiles/cluslib_dataset.dir/record.cpp.o.provides.build: CMakeFiles/cluslib_dataset.dir/record.cpp.o


CMakeFiles/cluslib_dataset.dir/schema.cpp.o: CMakeFiles/cluslib_dataset.dir/flags.make
CMakeFiles/cluslib_dataset.dir/schema.cpp.o: ../schema.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/zw/code/C_and_C++_Projects/ClusLib/cl/datasets/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/cluslib_dataset.dir/schema.cpp.o"
	/usr/local/opt/llvm/bin/clang++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/cluslib_dataset.dir/schema.cpp.o -c /Users/zw/code/C_and_C++_Projects/ClusLib/cl/datasets/schema.cpp

CMakeFiles/cluslib_dataset.dir/schema.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cluslib_dataset.dir/schema.cpp.i"
	/usr/local/opt/llvm/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/zw/code/C_and_C++_Projects/ClusLib/cl/datasets/schema.cpp > CMakeFiles/cluslib_dataset.dir/schema.cpp.i

CMakeFiles/cluslib_dataset.dir/schema.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cluslib_dataset.dir/schema.cpp.s"
	/usr/local/opt/llvm/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/zw/code/C_and_C++_Projects/ClusLib/cl/datasets/schema.cpp -o CMakeFiles/cluslib_dataset.dir/schema.cpp.s

CMakeFiles/cluslib_dataset.dir/schema.cpp.o.requires:

.PHONY : CMakeFiles/cluslib_dataset.dir/schema.cpp.o.requires

CMakeFiles/cluslib_dataset.dir/schema.cpp.o.provides: CMakeFiles/cluslib_dataset.dir/schema.cpp.o.requires
	$(MAKE) -f CMakeFiles/cluslib_dataset.dir/build.make CMakeFiles/cluslib_dataset.dir/schema.cpp.o.provides.build
.PHONY : CMakeFiles/cluslib_dataset.dir/schema.cpp.o.provides

CMakeFiles/cluslib_dataset.dir/schema.cpp.o.provides.build: CMakeFiles/cluslib_dataset.dir/schema.cpp.o


# Object files for target cluslib_dataset
cluslib_dataset_OBJECTS = \
"CMakeFiles/cluslib_dataset.dir/attrinfo.cpp.o" \
"CMakeFiles/cluslib_dataset.dir/cattrinfo.cpp.o" \
"CMakeFiles/cluslib_dataset.dir/dataset.cpp.o" \
"CMakeFiles/cluslib_dataset.dir/dattrinfo.cpp.o" \
"CMakeFiles/cluslib_dataset.dir/record.cpp.o" \
"CMakeFiles/cluslib_dataset.dir/schema.cpp.o"

# External object files for target cluslib_dataset
cluslib_dataset_EXTERNAL_OBJECTS =

../bin/libcluslib_dataset.dylib: CMakeFiles/cluslib_dataset.dir/attrinfo.cpp.o
../bin/libcluslib_dataset.dylib: CMakeFiles/cluslib_dataset.dir/cattrinfo.cpp.o
../bin/libcluslib_dataset.dylib: CMakeFiles/cluslib_dataset.dir/dataset.cpp.o
../bin/libcluslib_dataset.dylib: CMakeFiles/cluslib_dataset.dir/dattrinfo.cpp.o
../bin/libcluslib_dataset.dylib: CMakeFiles/cluslib_dataset.dir/record.cpp.o
../bin/libcluslib_dataset.dylib: CMakeFiles/cluslib_dataset.dir/schema.cpp.o
../bin/libcluslib_dataset.dylib: CMakeFiles/cluslib_dataset.dir/build.make
../bin/libcluslib_dataset.dylib: CMakeFiles/cluslib_dataset.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/zw/code/C_and_C++_Projects/ClusLib/cl/datasets/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Linking CXX shared library ../bin/libcluslib_dataset.dylib"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/cluslib_dataset.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/cluslib_dataset.dir/build: ../bin/libcluslib_dataset.dylib

.PHONY : CMakeFiles/cluslib_dataset.dir/build

CMakeFiles/cluslib_dataset.dir/requires: CMakeFiles/cluslib_dataset.dir/attrinfo.cpp.o.requires
CMakeFiles/cluslib_dataset.dir/requires: CMakeFiles/cluslib_dataset.dir/cattrinfo.cpp.o.requires
CMakeFiles/cluslib_dataset.dir/requires: CMakeFiles/cluslib_dataset.dir/dataset.cpp.o.requires
CMakeFiles/cluslib_dataset.dir/requires: CMakeFiles/cluslib_dataset.dir/dattrinfo.cpp.o.requires
CMakeFiles/cluslib_dataset.dir/requires: CMakeFiles/cluslib_dataset.dir/record.cpp.o.requires
CMakeFiles/cluslib_dataset.dir/requires: CMakeFiles/cluslib_dataset.dir/schema.cpp.o.requires

.PHONY : CMakeFiles/cluslib_dataset.dir/requires

CMakeFiles/cluslib_dataset.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/cluslib_dataset.dir/cmake_clean.cmake
.PHONY : CMakeFiles/cluslib_dataset.dir/clean

CMakeFiles/cluslib_dataset.dir/depend:
	cd /Users/zw/code/C_and_C++_Projects/ClusLib/cl/datasets/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/zw/code/C_and_C++_Projects/ClusLib/cl/datasets /Users/zw/code/C_and_C++_Projects/ClusLib/cl/datasets /Users/zw/code/C_and_C++_Projects/ClusLib/cl/datasets/build /Users/zw/code/C_and_C++_Projects/ClusLib/cl/datasets/build /Users/zw/code/C_and_C++_Projects/ClusLib/cl/datasets/build/CMakeFiles/cluslib_dataset.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/cluslib_dataset.dir/depend

