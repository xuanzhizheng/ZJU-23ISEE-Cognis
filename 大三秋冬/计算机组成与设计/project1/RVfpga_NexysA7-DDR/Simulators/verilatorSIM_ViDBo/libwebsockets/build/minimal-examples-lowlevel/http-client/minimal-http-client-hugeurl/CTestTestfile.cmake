# CMake generated Testfile for 
# Source directory: /cygdrive/c/Users/Daniel/Desktop/RVfpga_ViDBo/libwebsockets/minimal-examples-lowlevel/http-client/minimal-http-client-hugeurl
# Build directory: /cygdrive/c/Users/Daniel/Desktop/RVfpga_ViDBo/libwebsockets/build/minimal-examples-lowlevel/http-client/minimal-http-client-hugeurl
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(http-client-hugeurl-warmcat "/cygdrive/c/Users/Daniel/Desktop/RVfpga_ViDBo/libwebsockets/build/bin/lws-minimal-http-client-hugeurl.exe")
set_tests_properties(http-client-hugeurl-warmcat PROPERTIES  TIMEOUT "20" WORKING_DIRECTORY "/cygdrive/c/Users/Daniel/Desktop/RVfpga_ViDBo/libwebsockets/minimal-examples-lowlevel/http-client/minimal-http-client-hugeurl" _BACKTRACE_TRIPLES "/cygdrive/c/Users/Daniel/Desktop/RVfpga_ViDBo/libwebsockets/minimal-examples-lowlevel/http-client/minimal-http-client-hugeurl/CMakeLists.txt;27;add_test;/cygdrive/c/Users/Daniel/Desktop/RVfpga_ViDBo/libwebsockets/minimal-examples-lowlevel/http-client/minimal-http-client-hugeurl/CMakeLists.txt;0;")
add_test(http-client-hugeurl-warmcat-h1 "/cygdrive/c/Users/Daniel/Desktop/RVfpga_ViDBo/libwebsockets/build/bin/lws-minimal-http-client-hugeurl.exe" "--h1")
set_tests_properties(http-client-hugeurl-warmcat-h1 PROPERTIES  TIMEOUT "20" WORKING_DIRECTORY "/cygdrive/c/Users/Daniel/Desktop/RVfpga_ViDBo/libwebsockets/minimal-examples-lowlevel/http-client/minimal-http-client-hugeurl" _BACKTRACE_TRIPLES "/cygdrive/c/Users/Daniel/Desktop/RVfpga_ViDBo/libwebsockets/minimal-examples-lowlevel/http-client/minimal-http-client-hugeurl/CMakeLists.txt;28;add_test;/cygdrive/c/Users/Daniel/Desktop/RVfpga_ViDBo/libwebsockets/minimal-examples-lowlevel/http-client/minimal-http-client-hugeurl/CMakeLists.txt;0;")
