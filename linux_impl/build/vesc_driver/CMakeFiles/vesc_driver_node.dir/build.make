# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

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
CMAKE_SOURCE_DIR = /home/agreen/bldc_uart_comm_stm32f4_discovery/linux_impl/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/agreen/bldc_uart_comm_stm32f4_discovery/linux_impl/build

# Include any dependencies generated for this target.
include vesc_driver/CMakeFiles/vesc_driver_node.dir/depend.make

# Include the progress variables for this target.
include vesc_driver/CMakeFiles/vesc_driver_node.dir/progress.make

# Include the compile flags for this target's objects.
include vesc_driver/CMakeFiles/vesc_driver_node.dir/flags.make

vesc_driver/CMakeFiles/vesc_driver_node.dir/src/main.cpp.o: vesc_driver/CMakeFiles/vesc_driver_node.dir/flags.make
vesc_driver/CMakeFiles/vesc_driver_node.dir/src/main.cpp.o: /home/agreen/bldc_uart_comm_stm32f4_discovery/linux_impl/src/vesc_driver/src/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/agreen/bldc_uart_comm_stm32f4_discovery/linux_impl/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object vesc_driver/CMakeFiles/vesc_driver_node.dir/src/main.cpp.o"
	cd /home/agreen/bldc_uart_comm_stm32f4_discovery/linux_impl/build/vesc_driver && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/vesc_driver_node.dir/src/main.cpp.o -c /home/agreen/bldc_uart_comm_stm32f4_discovery/linux_impl/src/vesc_driver/src/main.cpp

vesc_driver/CMakeFiles/vesc_driver_node.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/vesc_driver_node.dir/src/main.cpp.i"
	cd /home/agreen/bldc_uart_comm_stm32f4_discovery/linux_impl/build/vesc_driver && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/agreen/bldc_uart_comm_stm32f4_discovery/linux_impl/src/vesc_driver/src/main.cpp > CMakeFiles/vesc_driver_node.dir/src/main.cpp.i

vesc_driver/CMakeFiles/vesc_driver_node.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/vesc_driver_node.dir/src/main.cpp.s"
	cd /home/agreen/bldc_uart_comm_stm32f4_discovery/linux_impl/build/vesc_driver && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/agreen/bldc_uart_comm_stm32f4_discovery/linux_impl/src/vesc_driver/src/main.cpp -o CMakeFiles/vesc_driver_node.dir/src/main.cpp.s

vesc_driver/CMakeFiles/vesc_driver_node.dir/src/main.cpp.o.requires:

.PHONY : vesc_driver/CMakeFiles/vesc_driver_node.dir/src/main.cpp.o.requires

vesc_driver/CMakeFiles/vesc_driver_node.dir/src/main.cpp.o.provides: vesc_driver/CMakeFiles/vesc_driver_node.dir/src/main.cpp.o.requires
	$(MAKE) -f vesc_driver/CMakeFiles/vesc_driver_node.dir/build.make vesc_driver/CMakeFiles/vesc_driver_node.dir/src/main.cpp.o.provides.build
.PHONY : vesc_driver/CMakeFiles/vesc_driver_node.dir/src/main.cpp.o.provides

vesc_driver/CMakeFiles/vesc_driver_node.dir/src/main.cpp.o.provides.build: vesc_driver/CMakeFiles/vesc_driver_node.dir/src/main.cpp.o


# Object files for target vesc_driver_node
vesc_driver_node_OBJECTS = \
"CMakeFiles/vesc_driver_node.dir/src/main.cpp.o"

# External object files for target vesc_driver_node
vesc_driver_node_EXTERNAL_OBJECTS =

/home/agreen/bldc_uart_comm_stm32f4_discovery/linux_impl/devel/lib/vesc_driver/vesc_driver_node: vesc_driver/CMakeFiles/vesc_driver_node.dir/src/main.cpp.o
/home/agreen/bldc_uart_comm_stm32f4_discovery/linux_impl/devel/lib/vesc_driver/vesc_driver_node: vesc_driver/CMakeFiles/vesc_driver_node.dir/build.make
/home/agreen/bldc_uart_comm_stm32f4_discovery/linux_impl/devel/lib/vesc_driver/vesc_driver_node: /opt/ros/kinetic/lib/libroscpp.so
/home/agreen/bldc_uart_comm_stm32f4_discovery/linux_impl/devel/lib/vesc_driver/vesc_driver_node: /usr/lib/x86_64-linux-gnu/libboost_signals.so
/home/agreen/bldc_uart_comm_stm32f4_discovery/linux_impl/devel/lib/vesc_driver/vesc_driver_node: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
/home/agreen/bldc_uart_comm_stm32f4_discovery/linux_impl/devel/lib/vesc_driver/vesc_driver_node: /opt/ros/kinetic/lib/librosconsole.so
/home/agreen/bldc_uart_comm_stm32f4_discovery/linux_impl/devel/lib/vesc_driver/vesc_driver_node: /opt/ros/kinetic/lib/librosconsole_log4cxx.so
/home/agreen/bldc_uart_comm_stm32f4_discovery/linux_impl/devel/lib/vesc_driver/vesc_driver_node: /opt/ros/kinetic/lib/librosconsole_backend_interface.so
/home/agreen/bldc_uart_comm_stm32f4_discovery/linux_impl/devel/lib/vesc_driver/vesc_driver_node: /usr/lib/x86_64-linux-gnu/liblog4cxx.so
/home/agreen/bldc_uart_comm_stm32f4_discovery/linux_impl/devel/lib/vesc_driver/vesc_driver_node: /usr/lib/x86_64-linux-gnu/libboost_regex.so
/home/agreen/bldc_uart_comm_stm32f4_discovery/linux_impl/devel/lib/vesc_driver/vesc_driver_node: /opt/ros/kinetic/lib/libxmlrpcpp.so
/home/agreen/bldc_uart_comm_stm32f4_discovery/linux_impl/devel/lib/vesc_driver/vesc_driver_node: /opt/ros/kinetic/lib/libserial.so
/home/agreen/bldc_uart_comm_stm32f4_discovery/linux_impl/devel/lib/vesc_driver/vesc_driver_node: /opt/ros/kinetic/lib/libroscpp_serialization.so
/home/agreen/bldc_uart_comm_stm32f4_discovery/linux_impl/devel/lib/vesc_driver/vesc_driver_node: /opt/ros/kinetic/lib/librostime.so
/home/agreen/bldc_uart_comm_stm32f4_discovery/linux_impl/devel/lib/vesc_driver/vesc_driver_node: /opt/ros/kinetic/lib/libcpp_common.so
/home/agreen/bldc_uart_comm_stm32f4_discovery/linux_impl/devel/lib/vesc_driver/vesc_driver_node: /usr/lib/x86_64-linux-gnu/libboost_system.so
/home/agreen/bldc_uart_comm_stm32f4_discovery/linux_impl/devel/lib/vesc_driver/vesc_driver_node: /usr/lib/x86_64-linux-gnu/libboost_thread.so
/home/agreen/bldc_uart_comm_stm32f4_discovery/linux_impl/devel/lib/vesc_driver/vesc_driver_node: /usr/lib/x86_64-linux-gnu/libboost_chrono.so
/home/agreen/bldc_uart_comm_stm32f4_discovery/linux_impl/devel/lib/vesc_driver/vesc_driver_node: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
/home/agreen/bldc_uart_comm_stm32f4_discovery/linux_impl/devel/lib/vesc_driver/vesc_driver_node: /usr/lib/x86_64-linux-gnu/libboost_atomic.so
/home/agreen/bldc_uart_comm_stm32f4_discovery/linux_impl/devel/lib/vesc_driver/vesc_driver_node: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/agreen/bldc_uart_comm_stm32f4_discovery/linux_impl/devel/lib/vesc_driver/vesc_driver_node: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so
/home/agreen/bldc_uart_comm_stm32f4_discovery/linux_impl/devel/lib/vesc_driver/vesc_driver_node: vesc_driver/CMakeFiles/vesc_driver_node.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/agreen/bldc_uart_comm_stm32f4_discovery/linux_impl/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable /home/agreen/bldc_uart_comm_stm32f4_discovery/linux_impl/devel/lib/vesc_driver/vesc_driver_node"
	cd /home/agreen/bldc_uart_comm_stm32f4_discovery/linux_impl/build/vesc_driver && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/vesc_driver_node.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
vesc_driver/CMakeFiles/vesc_driver_node.dir/build: /home/agreen/bldc_uart_comm_stm32f4_discovery/linux_impl/devel/lib/vesc_driver/vesc_driver_node

.PHONY : vesc_driver/CMakeFiles/vesc_driver_node.dir/build

vesc_driver/CMakeFiles/vesc_driver_node.dir/requires: vesc_driver/CMakeFiles/vesc_driver_node.dir/src/main.cpp.o.requires

.PHONY : vesc_driver/CMakeFiles/vesc_driver_node.dir/requires

vesc_driver/CMakeFiles/vesc_driver_node.dir/clean:
	cd /home/agreen/bldc_uart_comm_stm32f4_discovery/linux_impl/build/vesc_driver && $(CMAKE_COMMAND) -P CMakeFiles/vesc_driver_node.dir/cmake_clean.cmake
.PHONY : vesc_driver/CMakeFiles/vesc_driver_node.dir/clean

vesc_driver/CMakeFiles/vesc_driver_node.dir/depend:
	cd /home/agreen/bldc_uart_comm_stm32f4_discovery/linux_impl/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/agreen/bldc_uart_comm_stm32f4_discovery/linux_impl/src /home/agreen/bldc_uart_comm_stm32f4_discovery/linux_impl/src/vesc_driver /home/agreen/bldc_uart_comm_stm32f4_discovery/linux_impl/build /home/agreen/bldc_uart_comm_stm32f4_discovery/linux_impl/build/vesc_driver /home/agreen/bldc_uart_comm_stm32f4_discovery/linux_impl/build/vesc_driver/CMakeFiles/vesc_driver_node.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : vesc_driver/CMakeFiles/vesc_driver_node.dir/depend

