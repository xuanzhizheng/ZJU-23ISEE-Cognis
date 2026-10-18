#include "psp_api.h"

#define SegEn_ADDR    0x80001038
#define SegDig_ADDR   0x8000103C

#define GPIO_SWs    0x80001400
#define GPIO_LEDs   0x80001404
#define GPIO_INOUT  0x80001408

int main ( void )
{
    int i, LED_state, Sw_current_state, Sw_next_state, count=0;

    /* Configure LEDs and Switches */
    M_PSP_WRITE_REGISTER_32(GPIO_INOUT, 0xFFFF);

    /* Configure 7-Seg Displays */
    M_PSP_WRITE_REGISTER_32(0x80001038, 0x0);

    /* Init states */
    LED_state = 0;
    M_PSP_WRITE_REGISTER_32(GPIO_LEDs, LED_state);
    Sw_current_state = (M_PSP_READ_REGISTER_32(GPIO_SWs) >> 16) & 0x1;

    while (1) {
        /* Invert LED-0 when SW-0 goes high */
        Sw_next_state = (M_PSP_READ_REGISTER_32(GPIO_SWs) >> 16) & 0x1;
        if(Sw_current_state==0 && Sw_next_state==1){
            LED_state = !LED_state;
            M_PSP_WRITE_REGISTER_32(GPIO_LEDs, LED_state);
        }
        Sw_current_state = Sw_next_state;

        /* Increase 7-Seg Displays */
        M_PSP_WRITE_REGISTER_32(SegDig_ADDR, count);
        count++;

        /* Delay */
        for(i=0;i<10000000;i++);
    }

    return(0);
}
