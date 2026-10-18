// SPDX-License-Identifier: Apache-2.0
// Copyright 2019 Western Digital Corporation or its affiliates.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.


#ifndef __MEM_MAP_H
#define __MEM_MAP_H


#include <swerv_periph.h>
#include <reg_utils.h>


/******************************************************************************
 * Wrappers
 ******************************************************************************/
#define UART_TX_BUSY()      (read_reg(SWERV_UART_STAT_ADDR) & SWERV_UART_STAT_TX_FULL_MASK)
#define UART_RX_AVAIL()    !(read_reg(SWERV_UART_STAT_ADDR) & SWERV_UART_STAT_RX_AVAIL_MASK)
#define UART_TX_DATA(data)  write_reg(SWERV_UART_TXFIFO_ADDR, (data))
#define UART_RX_DATA()      read_reg(SWERV_UART_RXFIFO_ADDR)

#define SWERVOLF_UART_THR_ADDR (0x80002000)
#define SWERVOLF_UART_DIVISOR_LATCH_LSB_ADDR (0x80002000)
#define SWERVOLF_UART_DIVISOR_LATCH_MSB_ADDR (0x80002004)

#endif //__MEM_MAP_H
