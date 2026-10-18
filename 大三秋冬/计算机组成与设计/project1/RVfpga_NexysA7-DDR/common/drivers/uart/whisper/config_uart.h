/*
* Copyright (C) 2022 Imagination Technologies Limited. All Rights Reserved.
*
* Permission is hereby granted, free of charge, to any person obtaining a copy of
* this software and associated documentation files (the "Software"), to deal in
* the Software without restriction, including without limitation the rights to
* use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
* the Software, and to permit persons to whom the Software is furnished to do so,
* subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in all
* copies or substantial portions of the Software.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
* FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
* COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
* IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
* CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
*/


#ifndef __MEM_MAP_H
#define __MEM_MAP_H
#include <reg_utils.h>

/******************************************************************************
 * Wrappers
 ******************************************************************************/
#define UART_TX_BUSY()      (0)
#define UART_RX_AVAIL()     (0)
#define UART_TX_DATA(data)  write_reg(0x80002000, (data))
#define UART_RX_DATA()      (0)

#define SWERVOLF_UART_THR_ADDR (0x80002000)
#define SWERVOLF_UART_DIVISOR_LATCH_LSB_ADDR (0x80002000)
#define SWERVOLF_UART_DIVISOR_LATCH_MSB_ADDR (0x80002004)


/******************************************************************************
 * Function prototypes
 ******************************************************************************/
void config_uart(void);


#endif //__MEM_MAP_H

