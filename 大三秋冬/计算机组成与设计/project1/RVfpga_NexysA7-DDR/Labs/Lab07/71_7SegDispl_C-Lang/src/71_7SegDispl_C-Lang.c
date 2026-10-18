#define SegEn_ADDR    0x80001038
#define SegDig_ADDR   0x8000103C

#define WRITE_7Seg(dir, value) { (*(volatile unsigned *)dir) = (value); }

#define N 8

int main ( void )
{
    WRITE_7Seg(SegEn_ADDR, 0xFC);
    WRITE_7Seg(SegDig_ADDR, 0x71);

    while (1);

    return(0);
}
