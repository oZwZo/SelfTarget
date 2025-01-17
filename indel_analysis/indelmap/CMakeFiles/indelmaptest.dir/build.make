# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /var/lib/snapd/snap/cmake/1000/bin/cmake

# The command to remove a file.
RM = /var/lib/snapd/snap/cmake/1000/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/wergillius/Project/SelfTarget/indel_analysis/indelmap

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/wergillius/Project/SelfTarget/indel_analysis/indelmap

# Include any dependencies generated for this target.
include CMakeFiles/indelmaptest.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/indelmaptest.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/indelmaptest.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/indelmaptest.dir/flags.make

CMakeFiles/indelmaptest.dir/indel.cpp.o: CMakeFiles/indelmaptest.dir/flags.make
CMakeFiles/indelmaptest.dir/indel.cpp.o: indel.cpp
CMakeFiles/indelmaptest.dir/indel.cpp.o: CMakeFiles/indelmaptest.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wergillius/Project/SelfTarget/indel_analysis/indelmap/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/indelmaptest.dir/indel.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/indelmaptest.dir/indel.cpp.o -MF CMakeFiles/indelmaptest.dir/indel.cpp.o.d -o CMakeFiles/indelmaptest.dir/indel.cpp.o -c /home/wergillius/Project/SelfTarget/indel_analysis/indelmap/indel.cpp

CMakeFiles/indelmaptest.dir/indel.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/indelmaptest.dir/indel.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wergillius/Project/SelfTarget/indel_analysis/indelmap/indel.cpp > CMakeFiles/indelmaptest.dir/indel.cpp.i

CMakeFiles/indelmaptest.dir/indel.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/indelmaptest.dir/indel.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wergillius/Project/SelfTarget/indel_analysis/indelmap/indel.cpp -o CMakeFiles/indelmaptest.dir/indel.cpp.s

CMakeFiles/indelmaptest.dir/oligo.cpp.o: CMakeFiles/indelmaptest.dir/flags.make
CMakeFiles/indelmaptest.dir/oligo.cpp.o: oligo.cpp
CMakeFiles/indelmaptest.dir/oligo.cpp.o: CMakeFiles/indelmaptest.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wergillius/Project/SelfTarget/indel_analysis/indelmap/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/indelmaptest.dir/oligo.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/indelmaptest.dir/oligo.cpp.o -MF CMakeFiles/indelmaptest.dir/oligo.cpp.o.d -o CMakeFiles/indelmaptest.dir/oligo.cpp.o -c /home/wergillius/Project/SelfTarget/indel_analysis/indelmap/oligo.cpp

CMakeFiles/indelmaptest.dir/oligo.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/indelmaptest.dir/oligo.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wergillius/Project/SelfTarget/indel_analysis/indelmap/oligo.cpp > CMakeFiles/indelmaptest.dir/oligo.cpp.i

CMakeFiles/indelmaptest.dir/oligo.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/indelmaptest.dir/oligo.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wergillius/Project/SelfTarget/indel_analysis/indelmap/oligo.cpp -o CMakeFiles/indelmaptest.dir/oligo.cpp.s

CMakeFiles/indelmaptest.dir/readmap.cpp.o: CMakeFiles/indelmaptest.dir/flags.make
CMakeFiles/indelmaptest.dir/readmap.cpp.o: readmap.cpp
CMakeFiles/indelmaptest.dir/readmap.cpp.o: CMakeFiles/indelmaptest.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wergillius/Project/SelfTarget/indel_analysis/indelmap/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/indelmaptest.dir/readmap.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/indelmaptest.dir/readmap.cpp.o -MF CMakeFiles/indelmaptest.dir/readmap.cpp.o.d -o CMakeFiles/indelmaptest.dir/readmap.cpp.o -c /home/wergillius/Project/SelfTarget/indel_analysis/indelmap/readmap.cpp

CMakeFiles/indelmaptest.dir/readmap.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/indelmaptest.dir/readmap.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wergillius/Project/SelfTarget/indel_analysis/indelmap/readmap.cpp > CMakeFiles/indelmaptest.dir/readmap.cpp.i

CMakeFiles/indelmaptest.dir/readmap.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/indelmaptest.dir/readmap.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wergillius/Project/SelfTarget/indel_analysis/indelmap/readmap.cpp -o CMakeFiles/indelmaptest.dir/readmap.cpp.s

CMakeFiles/indelmaptest.dir/gen.cpp.o: CMakeFiles/indelmaptest.dir/flags.make
CMakeFiles/indelmaptest.dir/gen.cpp.o: gen.cpp
CMakeFiles/indelmaptest.dir/gen.cpp.o: CMakeFiles/indelmaptest.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wergillius/Project/SelfTarget/indel_analysis/indelmap/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/indelmaptest.dir/gen.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/indelmaptest.dir/gen.cpp.o -MF CMakeFiles/indelmaptest.dir/gen.cpp.o.d -o CMakeFiles/indelmaptest.dir/gen.cpp.o -c /home/wergillius/Project/SelfTarget/indel_analysis/indelmap/gen.cpp

CMakeFiles/indelmaptest.dir/gen.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/indelmaptest.dir/gen.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wergillius/Project/SelfTarget/indel_analysis/indelmap/gen.cpp > CMakeFiles/indelmaptest.dir/gen.cpp.i

CMakeFiles/indelmaptest.dir/gen.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/indelmaptest.dir/gen.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wergillius/Project/SelfTarget/indel_analysis/indelmap/gen.cpp -o CMakeFiles/indelmaptest.dir/gen.cpp.s

CMakeFiles/indelmaptest.dir/test.cpp.o: CMakeFiles/indelmaptest.dir/flags.make
CMakeFiles/indelmaptest.dir/test.cpp.o: test.cpp
CMakeFiles/indelmaptest.dir/test.cpp.o: CMakeFiles/indelmaptest.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wergillius/Project/SelfTarget/indel_analysis/indelmap/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/indelmaptest.dir/test.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/indelmaptest.dir/test.cpp.o -MF CMakeFiles/indelmaptest.dir/test.cpp.o.d -o CMakeFiles/indelmaptest.dir/test.cpp.o -c /home/wergillius/Project/SelfTarget/indel_analysis/indelmap/test.cpp

CMakeFiles/indelmaptest.dir/test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/indelmaptest.dir/test.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wergillius/Project/SelfTarget/indel_analysis/indelmap/test.cpp > CMakeFiles/indelmaptest.dir/test.cpp.i

CMakeFiles/indelmaptest.dir/test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/indelmaptest.dir/test.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wergillius/Project/SelfTarget/indel_analysis/indelmap/test.cpp -o CMakeFiles/indelmaptest.dir/test.cpp.s

# Object files for target indelmaptest
indelmaptest_OBJECTS = \
"CMakeFiles/indelmaptest.dir/indel.cpp.o" \
"CMakeFiles/indelmaptest.dir/oligo.cpp.o" \
"CMakeFiles/indelmaptest.dir/readmap.cpp.o" \
"CMakeFiles/indelmaptest.dir/gen.cpp.o" \
"CMakeFiles/indelmaptest.dir/test.cpp.o"

# External object files for target indelmaptest
indelmaptest_EXTERNAL_OBJECTS =

indelmaptest: CMakeFiles/indelmaptest.dir/indel.cpp.o
indelmaptest: CMakeFiles/indelmaptest.dir/oligo.cpp.o
indelmaptest: CMakeFiles/indelmaptest.dir/readmap.cpp.o
indelmaptest: CMakeFiles/indelmaptest.dir/gen.cpp.o
indelmaptest: CMakeFiles/indelmaptest.dir/test.cpp.o
indelmaptest: CMakeFiles/indelmaptest.dir/build.make
indelmaptest: CMakeFiles/indelmaptest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/wergillius/Project/SelfTarget/indel_analysis/indelmap/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking CXX executable indelmaptest"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/indelmaptest.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/indelmaptest.dir/build: indelmaptest
.PHONY : CMakeFiles/indelmaptest.dir/build

CMakeFiles/indelmaptest.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/indelmaptest.dir/cmake_clean.cmake
.PHONY : CMakeFiles/indelmaptest.dir/clean

CMakeFiles/indelmaptest.dir/depend:
	cd /home/wergillius/Project/SelfTarget/indel_analysis/indelmap && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/wergillius/Project/SelfTarget/indel_analysis/indelmap /home/wergillius/Project/SelfTarget/indel_analysis/indelmap /home/wergillius/Project/SelfTarget/indel_analysis/indelmap /home/wergillius/Project/SelfTarget/indel_analysis/indelmap /home/wergillius/Project/SelfTarget/indel_analysis/indelmap/CMakeFiles/indelmaptest.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/indelmaptest.dir/depend

