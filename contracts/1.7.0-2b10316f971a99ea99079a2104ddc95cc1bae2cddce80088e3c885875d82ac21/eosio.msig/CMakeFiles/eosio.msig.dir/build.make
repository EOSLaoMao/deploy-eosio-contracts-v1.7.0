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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/eos/opt/eosio.contracts.laomao/contracts

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/eos/opt/eosio.contracts.laomao/build/contracts

# Include any dependencies generated for this target.
include eosio.msig/CMakeFiles/eosio.msig.dir/depend.make

# Include the progress variables for this target.
include eosio.msig/CMakeFiles/eosio.msig.dir/progress.make

# Include the compile flags for this target's objects.
include eosio.msig/CMakeFiles/eosio.msig.dir/flags.make

eosio.msig/CMakeFiles/eosio.msig.dir/src/eosio.msig.cpp.obj: eosio.msig/CMakeFiles/eosio.msig.dir/flags.make
eosio.msig/CMakeFiles/eosio.msig.dir/src/eosio.msig.cpp.obj: /home/eos/opt/eosio.contracts.laomao/contracts/eosio.msig/src/eosio.msig.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/eos/opt/eosio.contracts.laomao/build/contracts/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object eosio.msig/CMakeFiles/eosio.msig.dir/src/eosio.msig.cpp.obj"
	cd /home/eos/opt/eosio.contracts.laomao/build/contracts/eosio.msig && /usr/bin/eosio-cpp  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/eosio.msig.dir/src/eosio.msig.cpp.obj -c /home/eos/opt/eosio.contracts.laomao/contracts/eosio.msig/src/eosio.msig.cpp

eosio.msig/CMakeFiles/eosio.msig.dir/src/eosio.msig.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/eosio.msig.dir/src/eosio.msig.cpp.i"
	cd /home/eos/opt/eosio.contracts.laomao/build/contracts/eosio.msig && /usr/bin/eosio-cpp $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/eos/opt/eosio.contracts.laomao/contracts/eosio.msig/src/eosio.msig.cpp > CMakeFiles/eosio.msig.dir/src/eosio.msig.cpp.i

eosio.msig/CMakeFiles/eosio.msig.dir/src/eosio.msig.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/eosio.msig.dir/src/eosio.msig.cpp.s"
	cd /home/eos/opt/eosio.contracts.laomao/build/contracts/eosio.msig && /usr/bin/eosio-cpp $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/eos/opt/eosio.contracts.laomao/contracts/eosio.msig/src/eosio.msig.cpp -o CMakeFiles/eosio.msig.dir/src/eosio.msig.cpp.s

eosio.msig/CMakeFiles/eosio.msig.dir/src/eosio.msig.cpp.obj.requires:

.PHONY : eosio.msig/CMakeFiles/eosio.msig.dir/src/eosio.msig.cpp.obj.requires

eosio.msig/CMakeFiles/eosio.msig.dir/src/eosio.msig.cpp.obj.provides: eosio.msig/CMakeFiles/eosio.msig.dir/src/eosio.msig.cpp.obj.requires
	$(MAKE) -f eosio.msig/CMakeFiles/eosio.msig.dir/build.make eosio.msig/CMakeFiles/eosio.msig.dir/src/eosio.msig.cpp.obj.provides.build
.PHONY : eosio.msig/CMakeFiles/eosio.msig.dir/src/eosio.msig.cpp.obj.provides

eosio.msig/CMakeFiles/eosio.msig.dir/src/eosio.msig.cpp.obj.provides.build: eosio.msig/CMakeFiles/eosio.msig.dir/src/eosio.msig.cpp.obj


# Object files for target eosio.msig
eosio_msig_OBJECTS = \
"CMakeFiles/eosio.msig.dir/src/eosio.msig.cpp.obj"

# External object files for target eosio.msig
eosio_msig_EXTERNAL_OBJECTS =

eosio.msig/eosio.msig.wasm: eosio.msig/CMakeFiles/eosio.msig.dir/src/eosio.msig.cpp.obj
eosio.msig/eosio.msig.wasm: eosio.msig/CMakeFiles/eosio.msig.dir/build.make
eosio.msig/eosio.msig.wasm: eosio.msig/CMakeFiles/eosio.msig.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/eos/opt/eosio.contracts.laomao/build/contracts/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable eosio.msig.wasm"
	cd /home/eos/opt/eosio.contracts.laomao/build/contracts/eosio.msig && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/eosio.msig.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
eosio.msig/CMakeFiles/eosio.msig.dir/build: eosio.msig/eosio.msig.wasm

.PHONY : eosio.msig/CMakeFiles/eosio.msig.dir/build

eosio.msig/CMakeFiles/eosio.msig.dir/requires: eosio.msig/CMakeFiles/eosio.msig.dir/src/eosio.msig.cpp.obj.requires

.PHONY : eosio.msig/CMakeFiles/eosio.msig.dir/requires

eosio.msig/CMakeFiles/eosio.msig.dir/clean:
	cd /home/eos/opt/eosio.contracts.laomao/build/contracts/eosio.msig && $(CMAKE_COMMAND) -P CMakeFiles/eosio.msig.dir/cmake_clean.cmake
.PHONY : eosio.msig/CMakeFiles/eosio.msig.dir/clean

eosio.msig/CMakeFiles/eosio.msig.dir/depend:
	cd /home/eos/opt/eosio.contracts.laomao/build/contracts && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/eos/opt/eosio.contracts.laomao/contracts /home/eos/opt/eosio.contracts.laomao/contracts/eosio.msig /home/eos/opt/eosio.contracts.laomao/build/contracts /home/eos/opt/eosio.contracts.laomao/build/contracts/eosio.msig /home/eos/opt/eosio.contracts.laomao/build/contracts/eosio.msig/CMakeFiles/eosio.msig.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : eosio.msig/CMakeFiles/eosio.msig.dir/depend
