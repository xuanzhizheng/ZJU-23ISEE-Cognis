# Install script for directory: /cygdrive/c/Users/Daniel/Desktop/RVfpga_ViDBo/libwebsockets/test-apps

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

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xexamplesx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "/cygdrive/c/Users/Daniel/Desktop/RVfpga_ViDBo/libwebsockets/build/bin/libwebsockets-test-server.exe")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/libwebsockets-test-server.exe" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/libwebsockets-test-server.exe")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip.exe" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/libwebsockets-test-server.exe")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xexamplesx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "/cygdrive/c/Users/Daniel/Desktop/RVfpga_ViDBo/libwebsockets/build/bin/libwebsockets-test-server-extpoll.exe")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/libwebsockets-test-server-extpoll.exe" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/libwebsockets-test-server-extpoll.exe")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip.exe" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/libwebsockets-test-server-extpoll.exe")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xexamplesx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "/cygdrive/c/Users/Daniel/Desktop/RVfpga_ViDBo/libwebsockets/build/bin/libwebsockets-test-lejp.exe")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/libwebsockets-test-lejp.exe" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/libwebsockets-test-lejp.exe")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip.exe" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/libwebsockets-test-lejp.exe")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xexamplesx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "/cygdrive/c/Users/Daniel/Desktop/RVfpga_ViDBo/libwebsockets/build/bin/libwebsockets-test-client.exe")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/libwebsockets-test-client.exe" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/libwebsockets-test-client.exe")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip.exe" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/libwebsockets-test-client.exe")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xexamplesx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/libwebsockets-test-server" TYPE FILE FILES
    "/cygdrive/c/Users/Daniel/Desktop/RVfpga_ViDBo/libwebsockets/build/libwebsockets-test-server.key.pem"
    "/cygdrive/c/Users/Daniel/Desktop/RVfpga_ViDBo/libwebsockets/build/libwebsockets-test-server.pem"
    "/cygdrive/c/Users/Daniel/Desktop/RVfpga_ViDBo/libwebsockets/test-apps/favicon.ico"
    "/cygdrive/c/Users/Daniel/Desktop/RVfpga_ViDBo/libwebsockets/test-apps/leaf.jpg"
    "/cygdrive/c/Users/Daniel/Desktop/RVfpga_ViDBo/libwebsockets/test-apps/candide.zip"
    "/cygdrive/c/Users/Daniel/Desktop/RVfpga_ViDBo/libwebsockets/test-apps/candide-uncompressed.zip"
    "/cygdrive/c/Users/Daniel/Desktop/RVfpga_ViDBo/libwebsockets/test-apps/libwebsockets.org-logo.svg"
    "/cygdrive/c/Users/Daniel/Desktop/RVfpga_ViDBo/libwebsockets/test-apps/http2.png"
    "/cygdrive/c/Users/Daniel/Desktop/RVfpga_ViDBo/libwebsockets/test-apps/wss-over-h2.png"
    "/cygdrive/c/Users/Daniel/Desktop/RVfpga_ViDBo/libwebsockets/test-apps/lws-common.js"
    "/cygdrive/c/Users/Daniel/Desktop/RVfpga_ViDBo/libwebsockets/test-apps/test.html"
    "/cygdrive/c/Users/Daniel/Desktop/RVfpga_ViDBo/libwebsockets/test-apps/test.css"
    "/cygdrive/c/Users/Daniel/Desktop/RVfpga_ViDBo/libwebsockets/test-apps/test.js"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xexamplesx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/libwebsockets-test-server/private" TYPE FILE FILES "/cygdrive/c/Users/Daniel/Desktop/RVfpga_ViDBo/libwebsockets/test-apps/private/index.html")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xexamplesx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/libwebsockets-test-server" TYPE FILE FILES
    "/cygdrive/c/Users/Daniel/Desktop/RVfpga_ViDBo/libwebsockets/test-apps/lws-ssh-test-keys"
    "/cygdrive/c/Users/Daniel/Desktop/RVfpga_ViDBo/libwebsockets/test-apps/lws-ssh-test-keys.pub"
    )
endif()

