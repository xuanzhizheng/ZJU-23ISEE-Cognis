# CMake generated Testfile for 
# Source directory: /cygdrive/c/Users/Daniel/Desktop/RVfpga_ViDBo/libwebsockets/minimal-examples/client/ws-echo
# Build directory: /cygdrive/c/Users/Daniel/Desktop/RVfpga_ViDBo/libwebsockets/build/minimal-examples/client/ws-echo
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(mssws_echo-warmcat "/cygdrive/c/Users/Daniel/Desktop/RVfpga_ViDBo/libwebsockets/build/bin/lws-minimal-ss-ws-echo.exe")
set_tests_properties(mssws_echo-warmcat PROPERTIES  TIMEOUT "40" WORKING_DIRECTORY "/cygdrive/c/Users/Daniel/Desktop/RVfpga_ViDBo/libwebsockets/minimal-examples/client/ws-echo" _BACKTRACE_TRIPLES "/cygdrive/c/Users/Daniel/Desktop/RVfpga_ViDBo/libwebsockets/minimal-examples/client/ws-echo/CMakeLists.txt;91;add_test;/cygdrive/c/Users/Daniel/Desktop/RVfpga_ViDBo/libwebsockets/minimal-examples/client/ws-echo/CMakeLists.txt;0;")
