/*【例7-2】利用数组计算斐波那契数列的前n个数（1≤n≤46），即1, 1, 2, 3, 5, …,55，并按每行打印5个数的格式输出，如果最后一行的输出少于5个数，也需要换行。*/

/* 利用数组计算斐波那契数列 */
# include <stdio.h>
# define MAXN 46					/* 定义符号常量MAXN */

int main(void)
{
    int i, n;
    int fib[MAXN] = {1, 1};        	/* 数组初始化，生成斐波那契数列前两个数 */

    printf ("Enter n: ");           /* 提示输入n */
    scanf ("%d", &n); 
    if(n >= 1 && n <= 46 ){
        /* 计算斐波那契数列剩余的n-2个数 */
        for(i = 2; i < n; i++){   
            fib[i] = fib[i - 1] + fib[i - 2];
        } 

        /* 输出斐波那契数列 */
        for(i = 0; i < n; i++){ 
            printf("%11d", fib[i]);
            if((i + 1) % 5 == 0){  	/* 每输出5个数就换行 */
                printf("\n"); 
            }  
        }
        if(n % 5 != 0){      		/* 如果总数不是5的倍数，换行 */
            printf("\n");
        } 
    }else{
        printf("Invalid Value.\n");	/* 输出错误提示 */
    }

    return 0;
}  

