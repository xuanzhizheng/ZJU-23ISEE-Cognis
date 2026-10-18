cmake_minimum_required(VERSION 3.17)

project(DotProduct_C-Lang C ASM)

set(SOURCE ${CMAKE_CURRENT_SOURCE_DIR}/src/DotProduct_C-Lang.c)
set(TARGET_NAME DotProduct_C-Lang.elf)

add_executable(${TARGET_NAME} ${SOURCE})

include(${CMAKE_CURRENT_SOURCE_DIR}/../../common/Common.cmake)
