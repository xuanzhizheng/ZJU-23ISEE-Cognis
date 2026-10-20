/* 【例7-5】选择排序法。输入一个正整数n (1<n≤10)，再输入n个整数，用选择法将它们从小到大排序后输出。 */

/* 选择法排序 */
# include <stdio.h>
# define MAXN 10					/* 定义符号常量MAXN */
int main(void)
{
    int i, index, k, n, temp;
    int a[MAXN];    

    printf("Enter n: ");              	/* 提示输入n */
    scanf("%d", &n);
    printf("Enter %d integers: ", n);  	/* 提示输入n 个数 */
    for(i = 0; i < n; i++){
        scanf("%d", &a[i]);
    }
    /* 对n个数排序 */
    for(k = 0; k < n-1; k++){
        index = k;                		/* index存放最小值所在的下标 */
        for(i = k + 1; i < n; i++){  	/* 寻找最小值所在下标 */
            if(a[i] < a[index]){
  				index = i;   
            }
        } 
        temp = a[index];          		/* 最小元素与下标为k的元素交换 */
        a[index] = a[k];
        a[k] = temp;
    }

    printf("After sorted: ", n);         /* 输出n个数组元素的值 */
    for(i = 0; i < n; i++){       
        printf("%d ", a[i]);
    }
    printf("\n");

    return 0;
}   

