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
CMAKE_SOURCE_DIR = /home/zimmerle/core-cin/abel/listas/lista2/questao5

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/zimmerle/core-cin/abel/listas/lista2/questao5/build

# Include any dependencies generated for this target.
include CMakeFiles/main.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/main.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/main.dir/flags.make

CMakeFiles/main.dir/main.c.obj: CMakeFiles/main.dir/flags.make
CMakeFiles/main.dir/main.c.obj: ../main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zimmerle/core-cin/abel/listas/lista2/questao5/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/main.dir/main.c.obj"
	/usr/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/main.dir/main.c.obj   -c /home/zimmerle/core-cin/abel/listas/lista2/questao5/main.c

CMakeFiles/main.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/main.dir/main.c.i"
	/usr/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/zimmerle/core-cin/abel/listas/lista2/questao5/main.c > CMakeFiles/main.dir/main.c.i

CMakeFiles/main.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/main.dir/main.c.s"
	/usr/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/zimmerle/core-cin/abel/listas/lista2/questao5/main.c -o CMakeFiles/main.dir/main.c.s

CMakeFiles/main.dir/main.c.obj.requires:

.PHONY : CMakeFiles/main.dir/main.c.obj.requires

CMakeFiles/main.dir/main.c.obj.provides: CMakeFiles/main.dir/main.c.obj.requires
	$(MAKE) -f CMakeFiles/main.dir/build.make CMakeFiles/main.dir/main.c.obj.provides.build
.PHONY : CMakeFiles/main.dir/main.c.obj.provides

CMakeFiles/main.dir/main.c.obj.provides.build: CMakeFiles/main.dir/main.c.obj


CMakeFiles/main.dir/rpi-gpio.c.obj: CMakeFiles/main.dir/flags.make
CMakeFiles/main.dir/rpi-gpio.c.obj: ../rpi-gpio.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zimmerle/core-cin/abel/listas/lista2/questao5/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/main.dir/rpi-gpio.c.obj"
	/usr/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/main.dir/rpi-gpio.c.obj   -c /home/zimmerle/core-cin/abel/listas/lista2/questao5/rpi-gpio.c

CMakeFiles/main.dir/rpi-gpio.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/main.dir/rpi-gpio.c.i"
	/usr/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/zimmerle/core-cin/abel/listas/lista2/questao5/rpi-gpio.c > CMakeFiles/main.dir/rpi-gpio.c.i

CMakeFiles/main.dir/rpi-gpio.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/main.dir/rpi-gpio.c.s"
	/usr/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/zimmerle/core-cin/abel/listas/lista2/questao5/rpi-gpio.c -o CMakeFiles/main.dir/rpi-gpio.c.s

CMakeFiles/main.dir/rpi-gpio.c.obj.requires:

.PHONY : CMakeFiles/main.dir/rpi-gpio.c.obj.requires

CMakeFiles/main.dir/rpi-gpio.c.obj.provides: CMakeFiles/main.dir/rpi-gpio.c.obj.requires
	$(MAKE) -f CMakeFiles/main.dir/build.make CMakeFiles/main.dir/rpi-gpio.c.obj.provides.build
.PHONY : CMakeFiles/main.dir/rpi-gpio.c.obj.provides

CMakeFiles/main.dir/rpi-gpio.c.obj.provides.build: CMakeFiles/main.dir/rpi-gpio.c.obj


CMakeFiles/main.dir/main-cstartup.c.obj: CMakeFiles/main.dir/flags.make
CMakeFiles/main.dir/main-cstartup.c.obj: ../main-cstartup.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zimmerle/core-cin/abel/listas/lista2/questao5/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/main.dir/main-cstartup.c.obj"
	/usr/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/main.dir/main-cstartup.c.obj   -c /home/zimmerle/core-cin/abel/listas/lista2/questao5/main-cstartup.c

CMakeFiles/main.dir/main-cstartup.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/main.dir/main-cstartup.c.i"
	/usr/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/zimmerle/core-cin/abel/listas/lista2/questao5/main-cstartup.c > CMakeFiles/main.dir/main-cstartup.c.i

CMakeFiles/main.dir/main-cstartup.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/main.dir/main-cstartup.c.s"
	/usr/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/zimmerle/core-cin/abel/listas/lista2/questao5/main-cstartup.c -o CMakeFiles/main.dir/main-cstartup.c.s

CMakeFiles/main.dir/main-cstartup.c.obj.requires:

.PHONY : CMakeFiles/main.dir/main-cstartup.c.obj.requires

CMakeFiles/main.dir/main-cstartup.c.obj.provides: CMakeFiles/main.dir/main-cstartup.c.obj.requires
	$(MAKE) -f CMakeFiles/main.dir/build.make CMakeFiles/main.dir/main-cstartup.c.obj.provides.build
.PHONY : CMakeFiles/main.dir/main-cstartup.c.obj.provides

CMakeFiles/main.dir/main-cstartup.c.obj.provides.build: CMakeFiles/main.dir/main-cstartup.c.obj


CMakeFiles/main.dir/main-cstubs.c.obj: CMakeFiles/main.dir/flags.make
CMakeFiles/main.dir/main-cstubs.c.obj: ../main-cstubs.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zimmerle/core-cin/abel/listas/lista2/questao5/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object CMakeFiles/main.dir/main-cstubs.c.obj"
	/usr/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/main.dir/main-cstubs.c.obj   -c /home/zimmerle/core-cin/abel/listas/lista2/questao5/main-cstubs.c

CMakeFiles/main.dir/main-cstubs.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/main.dir/main-cstubs.c.i"
	/usr/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/zimmerle/core-cin/abel/listas/lista2/questao5/main-cstubs.c > CMakeFiles/main.dir/main-cstubs.c.i

CMakeFiles/main.dir/main-cstubs.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/main.dir/main-cstubs.c.s"
	/usr/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/zimmerle/core-cin/abel/listas/lista2/questao5/main-cstubs.c -o CMakeFiles/main.dir/main-cstubs.c.s

CMakeFiles/main.dir/main-cstubs.c.obj.requires:

.PHONY : CMakeFiles/main.dir/main-cstubs.c.obj.requires

CMakeFiles/main.dir/main-cstubs.c.obj.provides: CMakeFiles/main.dir/main-cstubs.c.obj.requires
	$(MAKE) -f CMakeFiles/main.dir/build.make CMakeFiles/main.dir/main-cstubs.c.obj.provides.build
.PHONY : CMakeFiles/main.dir/main-cstubs.c.obj.provides

CMakeFiles/main.dir/main-cstubs.c.obj.provides.build: CMakeFiles/main.dir/main-cstubs.c.obj


CMakeFiles/main.dir/main-start.S.obj: CMakeFiles/main.dir/flags.make
CMakeFiles/main.dir/main-start.S.obj: ../main-start.S
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zimmerle/core-cin/abel/listas/lista2/questao5/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building ASM object CMakeFiles/main.dir/main-start.S.obj"
	/usr/bin/arm-none-eabi-gcc $(ASM_DEFINES) $(ASM_INCLUDES) $(ASM_FLAGS) -o CMakeFiles/main.dir/main-start.S.obj -c /home/zimmerle/core-cin/abel/listas/lista2/questao5/main-start.S

CMakeFiles/main.dir/main-start.S.obj.requires:

.PHONY : CMakeFiles/main.dir/main-start.S.obj.requires

CMakeFiles/main.dir/main-start.S.obj.provides: CMakeFiles/main.dir/main-start.S.obj.requires
	$(MAKE) -f CMakeFiles/main.dir/build.make CMakeFiles/main.dir/main-start.S.obj.provides.build
.PHONY : CMakeFiles/main.dir/main-start.S.obj.provides

CMakeFiles/main.dir/main-start.S.obj.provides.build: CMakeFiles/main.dir/main-start.S.obj


# Object files for target main
main_OBJECTS = \
"CMakeFiles/main.dir/main.c.obj" \
"CMakeFiles/main.dir/rpi-gpio.c.obj" \
"CMakeFiles/main.dir/main-cstartup.c.obj" \
"CMakeFiles/main.dir/main-cstubs.c.obj" \
"CMakeFiles/main.dir/main-start.S.obj"

# External object files for target main
main_EXTERNAL_OBJECTS =

main: CMakeFiles/main.dir/main.c.obj
main: CMakeFiles/main.dir/rpi-gpio.c.obj
main: CMakeFiles/main.dir/main-cstartup.c.obj
main: CMakeFiles/main.dir/main-cstubs.c.obj
main: CMakeFiles/main.dir/main-start.S.obj
main: CMakeFiles/main.dir/build.make
main: CMakeFiles/main.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/zimmerle/core-cin/abel/listas/lista2/questao5/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking C executable main"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/main.dir/link.txt --verbose=$(VERBOSE)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Convert the ELF output file to a binary image"
	arm-none-eabi-objcopy ./main -O binary ./kernel.img

# Rule to build all files generated by this target.
CMakeFiles/main.dir/build: main

.PHONY : CMakeFiles/main.dir/build

CMakeFiles/main.dir/requires: CMakeFiles/main.dir/main.c.obj.requires
CMakeFiles/main.dir/requires: CMakeFiles/main.dir/rpi-gpio.c.obj.requires
CMakeFiles/main.dir/requires: CMakeFiles/main.dir/main-cstartup.c.obj.requires
CMakeFiles/main.dir/requires: CMakeFiles/main.dir/main-cstubs.c.obj.requires
CMakeFiles/main.dir/requires: CMakeFiles/main.dir/main-start.S.obj.requires

.PHONY : CMakeFiles/main.dir/requires

CMakeFiles/main.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/main.dir/cmake_clean.cmake
.PHONY : CMakeFiles/main.dir/clean

CMakeFiles/main.dir/depend:
	cd /home/zimmerle/core-cin/abel/listas/lista2/questao5/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/zimmerle/core-cin/abel/listas/lista2/questao5 /home/zimmerle/core-cin/abel/listas/lista2/questao5 /home/zimmerle/core-cin/abel/listas/lista2/questao5/build /home/zimmerle/core-cin/abel/listas/lista2/questao5/build /home/zimmerle/core-cin/abel/listas/lista2/questao5/build/CMakeFiles/main.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/main.dir/depend

