cmake_minimum_required(VERSION 3.17)

project(MovingString7SegDispl_C-Lang C)

set(SOURCE ${CMAKE_CURRENT_SOURCE_DIR}/src/MovingString7SegDispl_C-Lang.c)
set(TARGET_NAME MovingString7SegDispl_C-Lang.elf)

add_executable(${TARGET_NAME} ${SOURCE})

include(${CMAKE_CURRENT_SOURCE_DIR}/../../../../common/Common.cmake)
