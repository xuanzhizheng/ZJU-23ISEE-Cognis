cmake_minimum_required(VERSION 3.17)

project(LedsButtons_C-Lang C ASM)

set(SOURCE ${CMAKE_CURRENT_SOURCE_DIR}/src/LedsButtons_C-Lang.c)
set(TARGET_NAME LedsButtons.elf)

add_executable(${TARGET_NAME} ${SOURCE})

include(${CMAKE_CURRENT_SOURCE_DIR}/../../../../common/Common.cmake)
