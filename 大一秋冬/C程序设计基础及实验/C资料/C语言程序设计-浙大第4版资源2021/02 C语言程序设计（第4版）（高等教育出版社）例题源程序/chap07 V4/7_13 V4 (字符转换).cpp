/* 【例7-13】输入一个以回车符为结束标志的字符串（少于10个字符），提取其中的所有数字字符（'0'……'9'），将其转换为一个十进制整数输出。*/

/* 字符转换 */ 
# include<stdio.h>
int main(void)
{
    int i, number;	
    char str[10];

    /* 输入字符串 */
    printf("Enter a string: ");    		/* 输入提示 */
    i = 0;
    while((str[i] = getchar( )) != '\n'){ 
        i++; 
    } 
    str[i] = '\0';                      /* 将结束符 '\0' 存入数组 */

    /* 逐个判断是否为数字字符，并进行转换 */
    number = 0;                          		/* 存放结果，先清0 */
    for(i = 0; str[i] != '\0'; i++){     		/* 循环条件：str[i]不等于 '\0' */
        if(str[i] >= '0' &&str[i] <= '9'){		/* 是数字字符 */
            number = number*10 + str[i] - '0';   /* 转换成数字 */
        } 
	} 

    printf("digit = %d\n", number);

    return 0;
}    

