# Install script for directory: /cygdrive/c/Users/Daniel/Desktop/RVfpga_ViDBo/libwebsockets/minimal-examples

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

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump.exe")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/cygdrive/c/Users/Daniel/Desktop/RVfpga_ViDBo/libwebsockets/build/minimal-examples/client/binance/cmake_install.cmake")
  include("/cygdrive/c/Users/Daniel/Desktop/RVfpga_ViDBo/libwebsockets/build/minimal-examples/client/hello_world/cmake_install.cmake")
  include("/cygdrive/c/Users/Daniel/Desktop/RVfpga_ViDBo/libwebsockets/build/minimal-examples/client/hello_world-policy/cmake_install.cmake")
  include("/cygdrive/c/Users/Daniel/Desktop/RVfpga_ViDBo/libwebsockets/build/minimal-examples/client/http-post/cmake_install.cmake")
  include("/cygdrive/c/Users/Daniel/Desktop/RVfpga_ViDBo/libwebsockets/build/minimal-examples/client/ws-echo/cmake_install.cmake")
  include("/cygdrive/c/Users/Daniel/Desktop/RVfpga_ViDBo/libwebsockets/build/minimal-examples/server/hello_world/cmake_install.cmake")
  include("/cygdrive/c/Users/Daniel/Desktop/RVfpga_ViDBo/libwebsockets/build/minimal-examples/sink/hello_world/cmake_install.cmake")
  include("/cygdrive/c/Users/Daniel/Desktop/RVfpga_ViDBo/libwebsockets/build/minimal-examples/ssproxy/ssproxy-custom-transport-uart/cmake_install.cmake")
  include("/cygdrive/c/Users/Daniel/Desktop/RVfpga_ViDBo/libwebsockets/build/minimal-examples/ssproxy/ssproxy-socket/cmake_install.cmake")

endif()

