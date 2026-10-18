cmake_minimum_required(VERSION 3.17)

project(Test ASM)

set(SOURCE 
    ${CMAKE_CURRENT_SOURCE_DIR}/src/Test.S
)

set(TARGET_NAME Test.elf)

option(CUSTOM_UART "Use a custom uart_send_char()" ON)

set(SEMIHOSTING OFF)
set(UART ON)

add_executable(${TARGET_NAME} ${SOURCE})

include(${CMAKE_CURRENT_SOURCE_DIR}/common_tuned/Common.cmake)
