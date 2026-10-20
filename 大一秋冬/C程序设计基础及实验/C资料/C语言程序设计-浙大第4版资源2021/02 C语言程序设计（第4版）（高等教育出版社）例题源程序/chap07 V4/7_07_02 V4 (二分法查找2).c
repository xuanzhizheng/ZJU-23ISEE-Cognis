/* 【例7-7-2】二分查找法。输入一个正整数n (1<n≤10)，再输入n个整数，如果已按值从小到大有序排列，则继续输入一个整数x，然后在数组中查找x，如果找到，输出相应的下标，否则，输出"Not Found"。*/

/* 二分查找法 */
# include <stdio.h>
# define MAXN 10					/* 定义符号常量MAXN */
int main(void)   
{
    int i, low, high, mid, n, sorted, x;
    int a[MAXN];  

   	printf("Enter n: ");              	/* 提示输入n */
    scanf("%d", &n);
    printf("Enter %d integers: ", n);  	/* 提示输入n个数 */
    for(i = 0; i < n; i++){
        scanf("%d", &a[i]);
    }
    
    sorted = 1;
    for(i = 1; i < n; i++){
        if (a[i] < a[i-1]){
            sorted = 0;
            break;
        }
    }
    if(sorted == 0){
        printf("Invalid Value\n");
    }else{
	    printf("Enter x：");                /* 提示输入x */
	    scanf("%d",&x);                
	    low = 0; high = n - 1;             	/* 开始时查找区间为整个数组 */
	    while (low <= high)  {             	/* 循环条件 */
	        mid = (low + high) / 2;         /* 中间位置 */
	        if (x == a[mid])
	            break;                  	/* 查找成功，中止循环 */
	        else if (x < a[mid])
	            high = mid - 1;           	/* 前半段，high前移 */        
	        else       
	            low = mid + 1;           	/* 后半段，low后移 */
	    }    
	    if(low <= high){   					/* 找到，输出下标 */
	        printf("Index is %d \n",mid);
	    }else{								 /* x不在数组a中 */
	        printf( "Not Found\n");	
	    } 
	} 
	
    return 0;
}

