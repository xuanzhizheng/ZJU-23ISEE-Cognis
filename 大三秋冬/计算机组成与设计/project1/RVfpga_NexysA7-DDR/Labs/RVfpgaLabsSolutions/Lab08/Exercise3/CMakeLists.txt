cmake_minimum_required(VERSION 3.17)

project(Switches_TriColorLEDs_C-Lang C)

set(SOURCE ${CMAKE_CURRENT_SOURCE_DIR}/src/Switches_TriColorLEDs_C-Lang.c)
set(TARGET_NAME Switches_TriColorLEDs_C-Lang.elf)

add_executable(${TARGET_NAME} ${SOURCE})

include(${CMAKE_CURRENT_SOURCE_DIR}/../../../../common/Common.cmake)
