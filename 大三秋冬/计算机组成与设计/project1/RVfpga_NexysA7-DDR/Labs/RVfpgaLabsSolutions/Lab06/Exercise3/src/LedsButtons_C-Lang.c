/* 
Delay Factor:
    RVfpga-ViDBo = 1 
    RVfpga-Nexys = 100
*/
#define DelayFactor 1

#define GPIO_SWs    0x80001400
#define GPIO_LEDs   0x80001404
#define GPIO_INOUT  0x80001408

#define GPIO2_BTNs  0x80001800
#define GPIO2_INOUT 0x80001808

#define GPIO3_BTNs  0x8000101C

#define READ_GPIO(dir) (*(volatile unsigned *)dir)
#define WRITE_GPIO(dir, value) { (*(volatile unsigned *)dir) = (value); }

int main ( void )
{
    int i, count=0, buttons2_value, buttons3_value, leds_value, delay;

    WRITE_GPIO(GPIO_INOUT, 0xFFFF);
    WRITE_GPIO(GPIO2_INOUT, 0x0);

    while (1) { 
        buttons2_value = READ_GPIO(GPIO2_BTNs);
        buttons2_value = buttons2_value & 0x1;
        if (buttons2_value==0x1) delay = 1000*DelayFactor;
        else delay = 3000*DelayFactor;

        buttons3_value = READ_GPIO(GPIO2_BTNs);
        buttons3_value = buttons3_value & 0x2;
        if (buttons3_value==0x2) count = 0;

        count++;

		WRITE_GPIO(GPIO_LEDs, count);

		for (i=0; i<delay; i++);
    }

    return(0);
}
