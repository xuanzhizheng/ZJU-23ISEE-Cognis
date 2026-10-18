cmake_minimum_required(VERSION 3.17)

project(AL_Operations ASM)

set(SOURCE ${CMAKE_CURRENT_SOURCE_DIR}/src/AL_Operations.S)

set(TARGET_NAME AL_Operations.elf)

option(CUSTOM_UART "Use a custom uart_send_char()" ON)

set(SEMIHOSTING OFF)
set(UART ON)

add_executable(${TARGET_NAME} ${SOURCE})

include(${CMAKE_CURRENT_SOURCE_DIR}/../../common/Common.cmake)
