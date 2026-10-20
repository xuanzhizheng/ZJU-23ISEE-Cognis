/* 【例4-4】逆序输出一个整数的各位数字。输入一个整数，将其逆序输出。*/ 

/* 逆序输出一个整数的各位数字 */
#include <stdio.h>
int main(void)
{
    int number; 

    printf("Enter a number: ");           /* 输入提示 */
    scanf ("%d", &number);
    do{
        printf("%d ", number % 10);
        number = number / 10;
    } while(number != 0);

    return 0;
}


