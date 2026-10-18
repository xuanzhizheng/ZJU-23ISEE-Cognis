cmake_minimum_required(VERSION 3.17)

project(Test ASM)

set(SOURCE 
    ${CMAKE_CURRENT_SOURCE_DIR}/src/Test.S
)

set(TARGET_NAME Test.elf)

add_executable(${TARGET_NAME} ${SOURCE})

include(${CMAKE_CURRENT_SOURCE_DIR}/../../../common/Common.cmake)
