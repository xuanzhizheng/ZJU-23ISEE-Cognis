#define SegDig1_ADDR   0x80001038
#define SegDig2_ADDR   0x8000103C

#define WRITE_7Seg(dir, value) { (*(volatile unsigned *)dir) = (value); }

#define N 8

int main ( void )
{
    WRITE_7Seg(SegDig2_ADDR, 0xCFFF2408);
    WRITE_7Seg(SegDig1_ADDR, 0x44FF48CF);

    while (1);

    return(0);
}
