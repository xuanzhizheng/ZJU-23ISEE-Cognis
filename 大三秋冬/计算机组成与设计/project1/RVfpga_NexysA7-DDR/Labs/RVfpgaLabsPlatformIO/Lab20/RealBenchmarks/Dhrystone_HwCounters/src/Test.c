#if defined(D_NEXYS_A7)
   #include <bsp_printf.h>
   #include <bsp_mem_map.h>
   #include <bsp_version.h>
#else
   PRE_COMPILED_MSG("no platform was defined")
#endif
#include <psp_api.h>

#define GPIO_SWs    0x80001400
#define GPIO_LEDs   0x80001404
#define GPIO_INOUT  0x80001408

#define READ_GPIO(dir) (*(volatile unsigned *)dir)
#define WRITE_GPIO(dir, value) { (*(volatile unsigned *)dir) = (value); }

extern void main_dhry(void);

int cyc_beg, cyc_end;
int instr_beg, instr_end;
int LdSt_beg, LdSt_end;
int Inst_beg, Inst_end;


int main(void)
{
   /* Initialize Uart */
   uartInit();

   pspMachinePerfMonitorEnableAll();

   pspMachinePerfCounterSet(D_PSP_COUNTER0, D_CYCLES_CLOCKS_ACTIVE);
   pspMachinePerfCounterSet(D_PSP_COUNTER1, D_INSTR_COMMITTED_ALL);
   pspMachinePerfCounterSet(D_PSP_COUNTER2, D_D_BUD_TRANSACTIONS_LD_ST);
   pspMachinePerfCounterSet(D_PSP_COUNTER3, D_I_BUS_TRANSACTIONS_INSTR);

   /* Modify core features as desired */
   __asm("li t2, 0x000");
   __asm("csrrs t1, 0x7F9, t2");

   /* Invert Switch to execute CoreMark*/ 
   int switches_value, switches_init;
   WRITE_GPIO(GPIO_INOUT, 0xFFFF);
   switches_init = (READ_GPIO(GPIO_SWs) >> 16);
   switches_value = switches_init;
   while (switches_value==switches_init) { 
        switches_value = (READ_GPIO(GPIO_SWs) >> 16);
        printfNexys("Invert any Switch to execute CoreMark");
   }

   main_dhry();

   printfNexys("Cycles = %d", cyc_end-cyc_beg);
   printfNexys("Instructions = %d", instr_end-instr_beg);
   printfNexys("Data Bus Transactions = %d", LdSt_end-LdSt_beg);
   printfNexys("Inst Bus Transactions = %d", Inst_end-Inst_beg);

   while(1);
}
