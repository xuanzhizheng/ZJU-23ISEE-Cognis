#include <bsp_printf.h>
#include <bsp_mem_map.h>
#include <bsp_version.h>
#include <psp_api.h>
#include "ee_printf.h"
#include <uart.h>

extern void main_cmark(void);

int cyc_beg, cyc_end;
int instr_beg, instr_end;
int LdSt_beg, LdSt_end;
int Inst_beg, Inst_end;

int main(void)
{

   /* Initialize Uart */
   config_uart();

   pspMachinePerfMonitorEnableAll();

   pspMachinePerfCounterSet(D_PSP_COUNTER0, D_CYCLES_CLOCKS_ACTIVE);
   pspMachinePerfCounterSet(D_PSP_COUNTER1, D_INSTR_COMMITTED_ALL);
   pspMachinePerfCounterSet(D_PSP_COUNTER2, D_D_BUD_TRANSACTIONS_LD_ST);
   pspMachinePerfCounterSet(D_PSP_COUNTER3, D_I_BUS_TRANSACTIONS_INSTR);

   /* Modify core features as desired */
   __asm("li t2, 0x000");
   __asm("csrrs t1, 0x7F9, t2");

   main_cmark();

   ee_printf("Cycles = %d\n", cyc_end-cyc_beg);
   ee_printf("Instructions = %d\n", instr_end-instr_beg);
   ee_printf("Data Bus Transactions = %d\n", LdSt_end-LdSt_beg);
   ee_printf("Inst Bus Transactions = %d\n", Inst_end-Inst_beg);


   while(1);
}