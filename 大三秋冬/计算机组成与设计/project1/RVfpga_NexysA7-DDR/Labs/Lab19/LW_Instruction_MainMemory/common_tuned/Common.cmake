#
# Copyright (C) 2020 Imagination Technologies Limited. All Rights Reserved.
#
# Permission is hereby granted, free of charge, to any person obtaining a copy of
# this software and associated documentation files (the "Software"), to deal in
# the Software without restriction, including without limitation the rights to
# use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
# the Software, and to permit persons to whom the Software is furnished to do so,
# subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
# FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
# COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
# IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
# CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
#

cmake_minimum_required(VERSION 3.17)

get_property(languages GLOBAL PROPERTY ENABLED_LANGUAGES)

set(CMAKE_SYSTEM_NAME Generic)
set(CMAKE_SYSTEM_PROCESSOR riscv)

target_include_directories(${TARGET_NAME} PRIVATE ${CMAKE_CURRENT_LIST_DIR})

option(SEMIHOSTING "Use semi-hosting" ON)
option(UART "Print through UART" OFF)
option(LDGEN "Use ldgen" ON)

# Set default platform
if(NOT PLATFORM)
  set(PLATFORM RVFPGANEXYS)
endif()

# Get path to the build directory and use it to assemble the path to the
# platform directory
get_filename_component(BUILD_DIR ${CMAKE_TOOLCHAIN_FILE} DIRECTORY)
set(PLATFORM_DIR "${BUILD_DIR}/platform")
set(UART_DRIVER_DIR ${CMAKE_CURRENT_LIST_DIR}/drivers/uart)
set(PSP_DRIVER_DIR ${CMAKE_CURRENT_LIST_DIR}/drivers/psp)
set(BSP_DRIVER_DIR ${CMAKE_CURRENT_LIST_DIR}/drivers/bsp)

# Set all platform dependant flags
if(PLATFORM MATCHES "ALPINEB")
    add_definitions(-DPLATFORM_H="alpine_csr.h")
    set(ARCH_FLAGS -march=rv32imc_zicsr_zifencei -mabi=ilp32)
    set(CPU_LINK_FLAG --cpu=alpine)
    set(CLANG_CPU swerv)
    set(PLATFORM_ARG -DALPINEB)
    set(DEFAULT_YAML_FILE "${PLATFORM_DIR}/alpineB/alpineB.YAML")
    if(UART)
        message(FATAL_ERROR "Target CPU ALPINEB does not support UART")
    endif()

elseif(PLATFORM MATCHES "RVFPGANEXYS_EL2_DDR")
    add_definitions(-DPLATFORM_H="swerv_csr.h")
    add_definitions(-DPERIPH_H="RVfpgaNexys_periph.h")
    set(ARCH_FLAGS -march=rv32im_zicsr_zifencei -mabi=ilp32)
    set(CPU_LINK_FLAG --cpu=swerv)
    set(CLANG_CPU swerv)
    set(PLATFORM_ARG -DRVFPGANEXYS)
    set(DEFAULT_YAML_FILE "${PLATFORM_DIR}/RVfpga/RVfpgaNexysEL2_DDR.YAML")
    set(DEFAULT_CPU_FREQ 13000000)
    set(UART_INCLUDE_DIRS ${UART_DRIVER_DIR}/RVfpga PRIVATE ${PLATFORM_DIR}/RVfpga)
    set(UART_SOURCES ${UART_DRIVER_DIR}/RVfpga/config_uart.c)
    set(PSP_INCLUDE_DIRS ${PSP_DRIVER_DIR}/api_inc)
    set(BSP_INCLUDE_DIRS ${BSP_DRIVER_DIR})
    # Printing should be via UART. Force this to be the case.
    set(SEMIHOSTING OFF)
    set(UART ON)

elseif(PLATFORM MATCHES "RVFPGANEXYS_EL2_NODDR")
    add_definitions(-DPLATFORM_H="swerv_csr.h")
    add_definitions(-DPERIPH_H="RVfpgaNexys_periph.h")
    set(ARCH_FLAGS -march=rv32im_zicsr_zifencei -mabi=ilp32)
    set(CPU_LINK_FLAG --cpu=swerv)
    set(CLANG_CPU swerv)
    set(PLATFORM_ARG -DRVFPGANEXYS)
    set(DEFAULT_YAML_FILE "${PLATFORM_DIR}/RVfpga/RVfpgaNexysEL2_NoDDR.YAML")
    set(DEFAULT_CPU_FREQ 13000000)
    set(UART_INCLUDE_DIRS ${UART_DRIVER_DIR}/RVfpga PRIVATE ${PLATFORM_DIR}/RVfpga)
    set(UART_SOURCES ${UART_DRIVER_DIR}/RVfpga/config_uart.c)
    set(PSP_INCLUDE_DIRS ${PSP_DRIVER_DIR}/api_inc)
    set(BSP_INCLUDE_DIRS ${BSP_DRIVER_DIR})
    # Printing should be via UART. Force this to be the case.
    set(SEMIHOSTING OFF)
    set(UART ON)

elseif(PLATFORM MATCHES "RVFPGABASYS3")
    add_definitions(-DPLATFORM_H="swerv_csr.h")
    add_definitions(-DPERIPH_H="RVfpgaBasys3_periph.h")
    set(ARCH_FLAGS -march=rv32im_zicsr_zifencei -mabi=ilp32)
    set(CPU_LINK_FLAG --cpu=swerv)
    set(CLANG_CPU swerv)
    set(PLATFORM_ARG -DRVFPGABASYS3)
    set(DEFAULT_YAML_FILE "${PLATFORM_DIR}/RVfpga/RVfpgaBasys3.YAML")
    set(DEFAULT_CPU_FREQ 13000000)
    set(UART_INCLUDE_DIRS ${UART_DRIVER_DIR}/RVfpga PRIVATE ${PLATFORM_DIR}/RVfpga)
    set(UART_SOURCES ${UART_DRIVER_DIR}/RVfpga/config_uart.c)
    set(PSP_INCLUDE_DIRS ${PSP_DRIVER_DIR}/api_inc)
    set(BSP_INCLUDE_DIRS ${BSP_DRIVER_DIR})
    # Printing should be via UART. Force this to be the case.
    set(SEMIHOSTING OFF)
    set(UART ON)

elseif(PLATFORM MATCHES "RVFPGABOOLEAN")
    add_definitions(-DPLATFORM_H="swerv_csr.h")
    add_definitions(-DPERIPH_H="RVfpgaBoolean_periph.h")
    set(ARCH_FLAGS -march=rv32im_zicsr_zifencei -mabi=ilp32)
    set(CPU_LINK_FLAG --cpu=swerv)
    set(CLANG_CPU swerv)
    set(PLATFORM_ARG -DRVFPGABOOLEAN)
    set(DEFAULT_YAML_FILE "${PLATFORM_DIR}/RVfpga/RVfpgaBoolean.YAML")
    set(DEFAULT_CPU_FREQ 13000000)
    set(UART_INCLUDE_DIRS ${UART_DRIVER_DIR}/RVfpga PRIVATE ${PLATFORM_DIR}/RVfpga)
    set(UART_SOURCES ${UART_DRIVER_DIR}/RVfpga/config_uart.c)
    set(PSP_INCLUDE_DIRS ${PSP_DRIVER_DIR}/api_inc)
    set(BSP_INCLUDE_DIRS ${BSP_DRIVER_DIR})
    # Printing should be via UART. Force this to be the case.
    set(SEMIHOSTING OFF)
    set(UART ON)

elseif(PLATFORM MATCHES "RVFPGAWHISPER_EL2")
    add_definitions(-DPLATFORM_H="swerv_csr.h")
    add_definitions(-DPERIPH_H="RVfpgaBasys3_periph.h")
    set(ARCH_FLAGS -march=rv32im_zicsr_zifencei -mabi=ilp32)
    set(CPU_LINK_FLAG --cpu=swerv)
    set(CLANG_CPU swerv)
    set(PLATFORM_ARG -DRVFPGABASYS3)
    set(DEFAULT_YAML_FILE "${PLATFORM_DIR}/RVfpga/RVfpgaBasys3.YAML")
    set(DEFAULT_CPU_FREQ 13000000)
    set(UART_INCLUDE_DIRS ${UART_DRIVER_DIR}/whisper PRIVATE ${PLATFORM_DIR}/RVfpga)
    set(UART_SOURCES ${UART_DRIVER_DIR}/whisper/config_uart.c)
    # Semihosting does not work on Whisper. Instead, printing should be via UART. Force this to be the case.
    set(SEMIHOSTING OFF)
    set(UART ON)
    
elseif(PLATFORM MATCHES "RVFPGAWHISPER_EH1")
    add_definitions(-DPLATFORM_H="swerv_csr.h")
    add_definitions(-DPERIPH_H="RVfpgaNexys_periph.h")
    set(ARCH_FLAGS -march=rv32im_zicsr_zifencei -mabi=ilp32)
    set(CPU_LINK_FLAG --cpu=swerv)
    set(CLANG_CPU swerv)
    set(PLATFORM_ARG -DRVFPGANEXYS)
    set(DEFAULT_YAML_FILE "${PLATFORM_DIR}/RVfpga/RVfpgaNexys.YAML")
    set(DEFAULT_CPU_FREQ 50000000)
    set(UART_INCLUDE_DIRS ${UART_DRIVER_DIR}/whisper PRIVATE ${PLATFORM_DIR}/RVfpga)
    set(UART_SOURCES ${UART_DRIVER_DIR}/whisper/config_uart.c)
    # Semihosting does not work on Whisper. Instead, printing should be via UART. Force this to be the case.
    set(SEMIHOSTING OFF)
    set(UART ON)

else()
    message(FATAL_ERROR "Unknown CPU target ${PLATFORM}")
endif()

# Set platform default options if not specified
if(NOT CPU_FREQ AND DEFAULT_CPU_FREQ)
  set(CPU_FREQ ${DEFAULT_CPU_FREQ})
endif()
if(CPU_FREQ)
  add_definitions(-DCPU_FREQ=${CPU_FREQ})
endif()

if(NOT YAML_FILE)
  set(YAML_FILE ${DEFAULT_YAML_FILE})
endif()

# Set non-standard printing options
if(NOT (SEMIHOSTING OR LINUX OR RTL))
    add_definitions(-DHAS_PRINTF=0)
    add_definitions(-DNO_SEMIHOSTING=1)
    target_sources(${TARGET_NAME} PRIVATE ${CMAKE_CURRENT_LIST_DIR}/ee_printf/ee_printf.c)
    target_include_directories(${TARGET_NAME} PRIVATE ${CMAKE_CURRENT_LIST_DIR}/ee_printf)

    if(UART)
        message("Print through UART")
        add_definitions(-DUART)
        if(UART_INCLUDE_DIRS)
            add_definitions(-DCUSTOM_UART)
            target_include_directories(${TARGET_NAME} PRIVATE ${UART_INCLUDE_DIRS})
            target_sources(${TARGET_NAME} PRIVATE ${UART_SOURCES})
        endif()
        target_sources(${TARGET_NAME} PRIVATE ${CMAKE_CURRENT_LIST_DIR}/drivers/uart/uart_send_char.c)
        target_include_directories(${TARGET_NAME} PRIVATE ${CMAKE_CURRENT_LIST_DIR}/drivers/uart)
    else()
        message("Print to circular buffer")
    endif()
elseif(UART)
    message(FATAL_ERROR "UART cannot be defined with SEMIHOSTING, LINUX or RTL")
endif()

# Set PSP options
    target_include_directories(${TARGET_NAME} PRIVATE ${PSP_INCLUDE_DIRS})

# Set BSP options
    target_include_directories(${TARGET_NAME} PRIVATE ${BSP_INCLUDE_DIRS})


# Set all compiler and link options
if(CMAKE_BUILD_TYPE MATCHES "Debug")
    target_compile_options(${TARGET_NAME} PRIVATE -O0 -g)
else()
    target_compile_options(${TARGET_NAME} PRIVATE -O3 -g)
endif()

# Include the semihost library for C++ even when semihosting is disabled, as
# exception handling requires it
if(SEMIHOSTING OR ("${languages}" MATCHES "CXX"))
    target_link_options(${TARGET_NAME} PUBLIC --oslib=semihost)
endif()

target_compile_options(${TARGET_NAME} PRIVATE ${ARCH_FLAGS})
target_link_options(${TARGET_NAME} PUBLIC ${ARCH_FLAGS})
target_link_options(${TARGET_NAME} PUBLIC ${CPU_LINK_FLAG})

# In order to generate a custom linker script with user placements, add the
# following to the command line:
#
#     [-DYAML_FILE=<YAML_FILE>] [-DPLACEMENTS_FILE=<PLACEMENTS_FILE>]
#
# Where the <YAML_FILE> is the platform specific configuration file, and the
# <PLACEMENTS_FILE> is a Python script with the user placements, as described
# in the linker script generator user's guide
function(add_ldgen_command LINKER_SCRIPT)
    if(NOT EXISTS ${YAML_FILE})
        message(FATAL_ERROR "YAML file ${YAML_FILE} not found")
    endif()

    if(CMAKE_HOST_WIN32)
        set(LDGEN_BIN "ldgen.bat")
    else()
        set(LDGEN_BIN  "ldgen.sh")
    endif()

    if(PLACEMENTS_FILE)
        set(PLACEMENTS_PARAM -l ${PLACEMENTS_FILE})
    endif()

    if("${languages}" MATCHES "CXX")
        set(CPP_FLAG "-cpp")
    endif()

    add_custom_command(
        TARGET ${TARGET_NAME}
        PRE_LINK
        COMMAND ${LDGEN_BIN} -c ${YAML_FILE} ${PLACEMENTS_PARAM} -o ${LINKER_SCRIPT} ${CPP_FLAG} $<TARGET_OBJECTS:${TARGET_NAME}>
        COMMENT "Generating linker script"
        COMMAND_EXPAND_LISTS
        )

    target_link_options(${TARGET_NAME} PUBLIC -T../common_tuned/Ldscript.ld)
endfunction()

if(LDGEN)
  add_ldgen_command(${TARGET_NAME}.ld)
endif()

#add_custom_command(
#    TARGET ${TARGET_NAME}
#    POST_BUILD
#    COMMAND python3 ${CMAKE_CURRENT_LIST_DIR}/makehex.py
#    COMMENT "Generating .vh file"
#)
