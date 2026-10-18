cmake_minimum_required(VERSION 3.17)

project(Test C ASM)

set(SOURCE 
	${CMAKE_CURRENT_SOURCE_DIR}/src/Test.c
    ${CMAKE_CURRENT_SOURCE_DIR}/src/TheScream_256.c
    ${CMAKE_CURRENT_SOURCE_DIR}/src/VanGogh_128.c
    ${CMAKE_CURRENT_SOURCE_DIR}/src/assemblySubroutines.S
)

set(TARGET_NAME Test.elf)

option(CUSTOM_UART "Use a custom uart_send_char()" ON)

set(SEMIHOSTING OFF)
set(UART ON)

add_executable(${TARGET_NAME} ${SOURCE})

include(${CMAKE_CURRENT_SOURCE_DIR}/common_tuned/Common.cmake)
