/* 【例4-8-2】求最值问题。输入一批学生的成绩，找出最高分。 */

/* 从输入的一批以负数结束的成绩中选出最高分，用while语句实现 */
#include <stdio.h>
int main(void)
{
    int mark, max;            	         /* max中放最高分 */

    printf("Enter marks:");    	         /* 输入提示 */
    scanf ("%d", &mark);     	         /* 读入第一个成绩 */
    max = mark;            	             /* 假设第一个成绩是最高分 */
    /*  当输入的成绩 mark 大于等于0时，执行循环 */
    while(mark >= 0){
        if(max < mark){      	         /* 如果读入的成绩比最高分高 */
            max = mark ;     	         /* 再假设该成绩为最高分 */
        } 
		scanf ("%d", &mark ) ; 	         /* 读入下一个成绩 */
    };
    printf("Max = %d\n", max);

    return 0;
}
