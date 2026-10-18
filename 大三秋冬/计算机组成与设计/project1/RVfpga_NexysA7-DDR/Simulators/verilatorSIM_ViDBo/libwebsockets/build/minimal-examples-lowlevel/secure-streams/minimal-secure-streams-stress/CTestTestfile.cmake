# CMake generated Testfile for 
# Source directory: /cygdrive/c/Users/Daniel/Desktop/RVfpga_ViDBo/libwebsockets/minimal-examples-lowlevel/secure-streams/minimal-secure-streams-stress
# Build directory: /cygdrive/c/Users/Daniel/Desktop/RVfpga_ViDBo/libwebsockets/build/minimal-examples-lowlevel/secure-streams/minimal-secure-streams-stress
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(ssstress-warmcat "/cygdrive/c/Users/Daniel/Desktop/RVfpga_ViDBo/libwebsockets/build/bin/lws-minimal-secure-streams-stress.exe" "-c" "4" "--budget" "5" "--timeout_ms" "50000")
set_tests_properties(ssstress-warmcat PROPERTIES  TIMEOUT "80" WORKING_DIRECTORY "/cygdrive/c/Users/Daniel/Desktop/RVfpga_ViDBo/libwebsockets/minimal-examples-lowlevel/secure-streams/minimal-secure-streams-stress" _BACKTRACE_TRIPLES "/cygdrive/c/Users/Daniel/Desktop/RVfpga_ViDBo/libwebsockets/minimal-examples-lowlevel/secure-streams/minimal-secure-streams-stress/CMakeLists.txt;51;add_test;/cygdrive/c/Users/Daniel/Desktop/RVfpga_ViDBo/libwebsockets/minimal-examples-lowlevel/secure-streams/minimal-secure-streams-stress/CMakeLists.txt;0;")
