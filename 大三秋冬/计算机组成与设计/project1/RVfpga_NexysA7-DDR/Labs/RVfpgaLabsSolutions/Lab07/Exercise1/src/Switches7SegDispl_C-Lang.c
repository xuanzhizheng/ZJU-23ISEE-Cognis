#define SegEn_ADDR    0x80001038
#define SegDig_ADDR   0x8000103C

#define GPIO_SWs      0x80001400
#define GPIO_LEDs     0x80001404
#define GPIO_INOUT    0x80001408

#define WRITE_7Seg(dir, value) { (*(volatile unsigned *)dir) = (value); }

#define READ_GPIO(dir) (*(volatile unsigned *)dir)
#define WRITE_GPIO(dir, value) { (*(volatile unsigned *)dir) = (value); }

int main ( void )
{
    int i, switches_value;

    WRITE_7Seg(SegEn_ADDR, 0xF0);

    WRITE_GPIO(GPIO_INOUT, 0xFFFF);

    while (1) {
        switches_value = READ_GPIO(GPIO_SWs);
        switches_value = switches_value >> 16;

        WRITE_7Seg(SegDig_ADDR, switches_value);

        for(i=0;i<100000;i++);
    }

    return(0);
}
