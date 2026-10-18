# CMake generated Testfile for 
# Source directory: /cygdrive/c/Users/Daniel/Desktop/RVfpga_ViDBo/libwebsockets/minimal-examples-lowlevel/secure-streams/minimal-secure-streams-perf
# Build directory: /cygdrive/c/Users/Daniel/Desktop/RVfpga_ViDBo/libwebsockets/build/minimal-examples-lowlevel/secure-streams/minimal-secure-streams-perf
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(ssperf-warmcat "/cygdrive/c/Users/Daniel/Desktop/RVfpga_ViDBo/libwebsockets/build/bin/lws-minimal-secure-streams-perf.exe")
set_tests_properties(ssperf-warmcat PROPERTIES  TIMEOUT "40" WORKING_DIRECTORY "/cygdrive/c/Users/Daniel/Desktop/RVfpga_ViDBo/libwebsockets/minimal-examples-lowlevel/secure-streams/minimal-secure-streams" _BACKTRACE_TRIPLES "/cygdrive/c/Users/Daniel/Desktop/RVfpga_ViDBo/libwebsockets/minimal-examples-lowlevel/secure-streams/minimal-secure-streams-perf/CMakeLists.txt;50;add_test;/cygdrive/c/Users/Daniel/Desktop/RVfpga_ViDBo/libwebsockets/minimal-examples-lowlevel/secure-streams/minimal-secure-streams-perf/CMakeLists.txt;0;")
