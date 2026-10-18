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


#include "config_uart.h"


/*
 * UART initialisation wrapper
 */
void config_uart(void)
{
    /*
     * Enable access to the Divisor Latch registers by setting the bit 8 from
     * the Line Control
     */
    write_reg(SWERVOLF_UART_LINE_CTRL_ADDR, SWERVOLF_UART_LINE_CTRL_DIVISOR_LATCH_ACCESS_MASK);

    /*
     * Write Divisor Latch register to set baud rate
     *
     * div = (clk_freq + (bauds * 16 / 2)) / (bauds * 16)
     *
     * For 115200 bauds and a clock frequency of 50MHz, the divisor is 0x1B
     * For 115200 bauds and a clock frequency of 25MHz, the divisor is 0x0E
     */
    #define BAUDS 115200
    unsigned int div = (CPU_FREQ + (BAUDS * 16 / 2)) / (BAUDS * 16);

    write_reg(SWERVOLF_UART_DIVISOR_LATCH_MSB_ADDR, (div >> 8));   // MSB
    write_reg(SWERVOLF_UART_DIVISOR_LATCH_LSB_ADDR, (div & 0xFF)); // LSB

    /*
     * Configure LCR
     *
     * Disable parity (mask 0x0), 1 stop bit (mask 0x0), 8 bits per character
     * (mask 0x11) and disable Divisor Latch Access (set bit 7 to 0)
     */
    write_reg(SWERVOLF_UART_LINE_CTRL_ADDR, SWERVOLF_UART_LINE_CTRL_CHAR_BITS_MASK);
}
