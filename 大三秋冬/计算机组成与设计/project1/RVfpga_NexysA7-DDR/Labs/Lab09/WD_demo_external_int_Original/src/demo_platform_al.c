/*
* SPDX-License-Identifier: Apache-2.0
* Copyright 2019-2021 Western Digital Corporation or its affiliates.
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
* http:*www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/
/**
* @file   demo_platform_al.c
* @author Nati Rapaport
* @date   23.10.2019
* @brief  initializations and api layer to the specific platform functions 
*/

/**
* include files
*/
#include <stdio.h>
#include <string.h>

#ifdef NO_SEMIHOSTING
#include "ee_printf.h"
#ifdef CUSTOM_UART
#include <uart.h>
#endif // CUSTOM_UART
#endif

#include "psp_api.h"
#include "bsp_external_interrupts.h"
#include "psp_ext_interrupts_eh1.h"
#include "bsp_timer.h"
#include "bsp_printf.h"
#include "demo_platform_al.h"
#include "bsp_mem_map.h"
#include "psp_csrs_eh1.h"

/**
* definitions
*/
#define D_DEMO_SWERVOLF    0xC1
#define D_IS_SWERV_BOARD   D_PSP_TRUE
#define D_NOT_SWERV_BOARD  D_PSP_FALSE

/**
* macros
*/

/**
* types
*/

/**
* local prototypes
*/

/**
* external prototypes
*/

/**
* global variables
*/

/**
* global variables
*/

/**
* internal functions
*/


/**
* demoLedsInit - LEDs initialization per board's specifications
*
* */
void demoLedsInit(void)
{
#ifdef D_HI_FIVE1
  GPIO_REG(GPIO_INPUT_EN)    &= ~((0x1<< RED_LED_OFFSET) | (0x1<< GREEN_LED_OFFSET) | (0x1 << BLUE_LED_OFFSET)) ;
  GPIO_REG(GPIO_OUTPUT_EN)   |=  ((0x1<< RED_LED_OFFSET)| (0x1<< GREEN_LED_OFFSET) | (0x1 << BLUE_LED_OFFSET)) ;
  GPIO_REG(GPIO_OUTPUT_VAL)  &= ~((0x1<< RED_LED_OFFSET) | (0x1<< GREEN_LED_OFFSET) | (0x1 << BLUE_LED_OFFSET)) ;
#endif
}



/**
* API functions
*/

/**
* @brief demoPlatformInit - Initialize board related stuff
*
* */
void demoPlatformInit(void)
{
#ifdef D_HI_FIVE1
  _init();
#elif defined(D_SWERV_EH1) || defined(D_SWERV_EH2) ||defined(D_SWERV_EL2)
  // Nada for now
#endif
  /* init LED GPIO*/
  demoLedsInit();

  /* init Uart for 115200 baud, 8 data bits, 1 stop bit, no parity */
  config_uart();


}

/**
* @brief demoOutputMsg - output (usually, but not necessarily - print it out) a given string,
*                 using the platform means for that.
*
* const void *pStr - pointer to a string to be printed out
*
* u32_t uiSize - number of characters to print
*
* */
#ifdef D_HI_FIVE1
void demoOutputMsg(const void *pStr, u32_t uiSize)
{
  write(1, pStr, uiSize);
}
#endif

/**
* @brief demoOutputToggelLed - sets LED output according input request.
*
*
* The "LED action" is defined per each platform, it is the led color
*
* */
void demoOutputToggelLed(void)
{
  static u08_t ucLedAct;
#ifdef D_HI_FIVE1
  switch (ucLedAct)
  {
    case D_LED_GREEN_ON:
       GPIO_REG(GPIO_OUTPUT_VAL)  ^=   (0x1 << GREEN_LED_OFFSET) ;
       break;
    case D_LED_BLUE_ON:
       GPIO_REG(GPIO_OUTPUT_VAL)  ^=   (0x1 << BLUE_LED_OFFSET) ;
       break;
    default:
       break;
  }
#elif defined(D_SWERV_EH1) || defined(D_SWERV_EH2) ||defined(D_SWERV_EL2)
  demoOutpuLed(ucLedAct);
#endif

  ucLedAct = !ucLedAct;
}

/**
* brief demoOutputLed - sets LED output on/off
*
* const uiOnOffMode = 0/1
*
*
* */
void demoOutpuLed(const u08_t ucOnOffMode)
{
#ifdef D_SWERV_EH1
  M_PSP_ASSERT(ucOnOffMode>1);
  M_PSP_WRITE_REGISTER_8(D_LED_BASE_ADDRESS, ucOnOffMode);
#endif
}

/**
*
* @brief Indicates whether the running target is Swerv board or Whisper Instruction-set simulator
*
* @return 1 if Swerv board , 0 otherwise
*/
u32_t demoIsSwervBoard(void)
{
  u32_t uiIsSwerv = D_NOT_SWERV_BOARD;
#ifndef D_HI_FIVE1
  volatile u32_t* pUartState;

  pUartState = (u32_t*)(D_UART_BASE_ADDRESS+0x8);

  if (D_DEMO_SWERVOLF == *pUartState)
  {
    uiIsSwerv = D_IS_SWERV_BOARD;
  }
#endif /* D_HI_FIVE1 */
  return (uiIsSwerv);
}
