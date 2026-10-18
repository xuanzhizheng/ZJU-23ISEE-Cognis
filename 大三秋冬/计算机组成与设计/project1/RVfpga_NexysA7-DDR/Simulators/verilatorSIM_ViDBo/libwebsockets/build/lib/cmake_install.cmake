# Install script for directory: /cygdrive/c/Users/Daniel/Desktop/RVfpga_ViDBo/libwebsockets/lib

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

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xcorex" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/cygdrive/c/Users/Daniel/Desktop/RVfpga_ViDBo/libwebsockets/build/lib/libwebsockets.a")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xcorex" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "/cygdrive/c/Users/Daniel/Desktop/RVfpga_ViDBo/libwebsockets/build/lib/libwebsockets.dll.a")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xcorex" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "/cygdrive/c/Users/Daniel/Desktop/RVfpga_ViDBo/libwebsockets/build/bin/cygwebsockets-19.dll")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/cygwebsockets-19.dll" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/cygwebsockets-19.dll")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip.exe" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/cygwebsockets-19.dll")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/cygdrive/c/Users/Daniel/Desktop/RVfpga_ViDBo/libwebsockets/build/libwebsockets.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/cygdrive/c/Users/Daniel/Desktop/RVfpga_ViDBo/libwebsockets/build/libwebsockets_static.pc")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/cygdrive/c/Users/Daniel/Desktop/RVfpga_ViDBo/libwebsockets/build/lib/plat/unix/cmake_install.cmake")
  include("/cygdrive/c/Users/Daniel/Desktop/RVfpga_ViDBo/libwebsockets/build/lib/tls/cmake_install.cmake")
  include("/cygdrive/c/Users/Daniel/Desktop/RVfpga_ViDBo/libwebsockets/build/lib/core/cmake_install.cmake")
  include("/cygdrive/c/Users/Daniel/Desktop/RVfpga_ViDBo/libwebsockets/build/lib/misc/cmake_install.cmake")
  include("/cygdrive/c/Users/Daniel/Desktop/RVfpga_ViDBo/libwebsockets/build/lib/system/cmake_install.cmake")
  include("/cygdrive/c/Users/Daniel/Desktop/RVfpga_ViDBo/libwebsockets/build/lib/core-net/cmake_install.cmake")
  include("/cygdrive/c/Users/Daniel/Desktop/RVfpga_ViDBo/libwebsockets/build/lib/roles/cmake_install.cmake")
  include("/cygdrive/c/Users/Daniel/Desktop/RVfpga_ViDBo/libwebsockets/build/lib/event-libs/cmake_install.cmake")
  include("/cygdrive/c/Users/Daniel/Desktop/RVfpga_ViDBo/libwebsockets/build/lib/secure-streams/cmake_install.cmake")
  include("/cygdrive/c/Users/Daniel/Desktop/RVfpga_ViDBo/libwebsockets/build/lib/secure-streams/serialized/client/cmake_install.cmake")

endif()

