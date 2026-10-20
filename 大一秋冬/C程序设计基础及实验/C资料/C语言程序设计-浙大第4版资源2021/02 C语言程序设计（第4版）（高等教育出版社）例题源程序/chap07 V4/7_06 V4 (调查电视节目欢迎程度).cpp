/*【例7-6】调查电视节目欢迎程度。某电视台要调查观众对该台8个栏目（设相应栏目编号为1~8）的受欢迎情况，共调查了n位观众（1≤n≤1000），现要求编写程序，输入每一位观众的投票情况（每位观众只能选择一个最喜欢的栏目投票），统计输出各栏目的得票情况。*/

/* 投票情况统计 */
# include<stdio.h>
# define MAXN 8					/* 定义符号常量MAXN */
int main( ) 
{
    int i, n, response;
    int count[MAXN+1];             /*数组下标对应栏目编号，不使用count[0] */

    printf ("Enter n: ");           	/* 提示输入n */
    scanf ("%d", &n); 
    for(i = 1; i <= MAXN; i++){
        count[i] = 0;              	/* 各栏目计数器清0 */
    }
    for( i = 1; i <= n; i++) {          	/* 输入并统计投票数据 */
        printf("Enter your response: ");       /* 输入提示 */
        scanf("%d", &response);
        if(response >= 1 && response <= MAXN){  /* 检查投票是否有效*/
            count[response]++;             /* 对应栏目得票加1 */
        }else{
            printf("invalid: %d\n", response);
        }
    }
    printf("result:\n");                   /* 输出得票数不为零的栏目得票情况 */
    for(i = 1; i <= MAXN; i++){
    	if(count[i] != 0){
        	printf("%4d%4d\n", i, count[i]);    
    	}
    }

    return 0;
}


