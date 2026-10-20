/*【例2-9】从键盘输入一个正整数n，计算 n! 。*/

/*  输入一个正整数n，求 n!  */
#include <stdio.h>
int main(void)
{    
    int i, n;
    double product;			    /* 变量product中存放阶乘的值 */

    printf("Enter n: ");  	    /* 输入提示 */
    scanf("%d", &n);
    product = 1;         	    /* 置阶乘product的初值为1 */
    for (i = 1; i <= n; i++){  	/* 循环执行n次，计算n! */
        product = product * i;
    }
    printf("product = %.0f\n", product);/* %.0f指定输出时不要小数部分 */

    return 0;
}


