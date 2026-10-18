cmake_minimum_required(VERSION 3.17)

project(fp_add ASM)

set(SOURCE 
    ${CMAKE_CURRENT_SOURCE_DIR}/src/fp_add.S
)

set(TARGET_NAME fp_add.elf)

option(CUSTOM_UART "Use a custom uart_send_char()" ON)

set(SEMIHOSTING OFF)
set(UART ON)

add_executable(${TARGET_NAME} ${SOURCE})

include(${CMAKE_CURRENT_SOURCE_DIR}/../../common/Common.cmake)
