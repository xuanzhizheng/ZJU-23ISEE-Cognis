cmake_minimum_required(VERSION 3.17)

project(Blinky ASM)

set(SOURCE ${CMAKE_CURRENT_SOURCE_DIR}/src/Blinky.S)

set(TARGET_NAME Blinky.elf)

add_executable(${TARGET_NAME} ${SOURCE})

include(${CMAKE_CURRENT_SOURCE_DIR}/../../common/Common.cmake)
