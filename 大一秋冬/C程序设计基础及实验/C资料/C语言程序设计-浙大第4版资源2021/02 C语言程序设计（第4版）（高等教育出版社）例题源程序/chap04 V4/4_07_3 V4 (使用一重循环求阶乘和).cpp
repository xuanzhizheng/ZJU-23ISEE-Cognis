/* 【例4-7-3】计算1! + 2! + 3! + … + n!，使用一重循环 */

/* 计算 1! + 2! + 3! + … + n! */
# include <stdio.h>
int main(void)
{
    int i, n;
    double item, sum;           /* 变量 item 中存放阶乘的值 */

    printf("Enter n: ");        /* 输入提示 */
    scanf("%d", &n);
    sum = 0;
    item = 1; 
    for(i = 1; i <= n; i++){    /* 循环执行n次，求累加和 */     
        item = item * i;        /* 算出item = i! */
        sum = sum + item;       /* 把 i! 累加到sum中 */
    }
    printf("1! + 2! + ... + %d! = %.0f\n", n, sum);   

    return 0;
}

