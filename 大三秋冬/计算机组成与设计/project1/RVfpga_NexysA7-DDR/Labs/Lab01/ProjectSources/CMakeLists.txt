cmake_minimum_required(VERSION 3.17)

project(Test C)

set(SOURCE 
    ${CMAKE_CURRENT_SOURCE_DIR}/src/Test.c
)

set(TARGET_NAME Test.elf)

add_executable(${TARGET_NAME} ${SOURCE})

include(${CMAKE_CURRENT_SOURCE_DIR}/../../../common/Common.cmake)


