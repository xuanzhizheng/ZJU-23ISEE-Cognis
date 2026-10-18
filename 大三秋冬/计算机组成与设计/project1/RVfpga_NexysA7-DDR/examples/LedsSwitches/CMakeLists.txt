cmake_minimum_required(VERSION 3.17)

project(LedsSwitches ASM)

set(SOURCE ${CMAKE_CURRENT_SOURCE_DIR}/src/LedsSwitches.S)
set(TARGET_NAME LedsSwitches.elf)

add_executable(${TARGET_NAME} ${SOURCE})

include(${CMAKE_CURRENT_SOURCE_DIR}/../../common/Common.cmake)
