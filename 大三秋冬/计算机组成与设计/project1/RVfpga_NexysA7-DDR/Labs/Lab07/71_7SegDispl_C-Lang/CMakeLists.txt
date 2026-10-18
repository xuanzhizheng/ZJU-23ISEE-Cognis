cmake_minimum_required(VERSION 3.17)

project(71_7SegDispl_C-Lang C ASM)

set(SOURCE ${CMAKE_CURRENT_SOURCE_DIR}/src/71_7SegDispl_C-Lang.c)

set(TARGET_NAME 71_7SegDispl_C-Lang.elf)

option(CUSTOM_UART "Use a custom uart_send_char()" ON)

set(SEMIHOSTING OFF)
set(UART ON)

add_executable(${TARGET_NAME} ${SOURCE} ${SOURCE_PspBsp})

include(${CMAKE_CURRENT_SOURCE_DIR}/../../../common/Common.cmake)
