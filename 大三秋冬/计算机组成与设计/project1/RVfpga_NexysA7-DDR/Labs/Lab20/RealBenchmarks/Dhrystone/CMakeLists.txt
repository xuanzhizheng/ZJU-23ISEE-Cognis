cmake_minimum_required(VERSION 3.17)

project(Test ASM C)

set(SOURCE 
    ${CMAKE_CURRENT_SOURCE_DIR}/src/Test.c
    ${CMAKE_CURRENT_SOURCE_DIR}/src/dhry_1.c
    ${CMAKE_CURRENT_SOURCE_DIR}/src/dhry_2.c

    ${CMAKE_CURRENT_SOURCE_DIR}/common_tuned/drivers/uart/uart_send_char.c

    ${CMAKE_CURRENT_SOURCE_DIR}/common_tuned/drivers/bsp/bsp_external_interrupts.c
    ${CMAKE_CURRENT_SOURCE_DIR}/common_tuned/drivers/bsp/bsp_timer.c
    ${CMAKE_CURRENT_SOURCE_DIR}/common_tuned/drivers/psp/psp_corr_err_cnt_eh1.c
    ${CMAKE_CURRENT_SOURCE_DIR}/common_tuned/drivers/psp/psp_ext_interrupts_eh1.c
    ${CMAKE_CURRENT_SOURCE_DIR}/common_tuned/drivers/psp/psp_int_vect_eh1.S
    ${CMAKE_CURRENT_SOURCE_DIR}/common_tuned/drivers/psp/psp_interrupts_el2.c
    ${CMAKE_CURRENT_SOURCE_DIR}/common_tuned/drivers/psp/psp_nmi_el2.c
    ${CMAKE_CURRENT_SOURCE_DIR}/common_tuned/drivers/psp/psp_performance_monitor_el2.c
    ${CMAKE_CURRENT_SOURCE_DIR}/common_tuned/drivers/psp/psp_pmc_eh1.c
    ${CMAKE_CURRENT_SOURCE_DIR}/common_tuned/drivers/psp/psp_version.c
    ${CMAKE_CURRENT_SOURCE_DIR}/common_tuned/drivers/psp/psp_timers.c
)

set(TARGET_NAME Test.elf)

option(CUSTOM_UART "Use a custom uart_send_char()" ON)

set(SEMIHOSTING OFF)
set(UART ON)

add_executable(${TARGET_NAME} ${SOURCE})

include(${CMAKE_CURRENT_SOURCE_DIR}/common_tuned/Common.cmake)
