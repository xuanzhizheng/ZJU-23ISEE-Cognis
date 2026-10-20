/* 【例10-10】请在例9-1、例9-2和例9-3的基础上，分模块设计一个学生信息库系统。该系统包含学生基本信息的建立和输出、计算学生平均成绩、按照学生的平均成绩排序以及查询、修改学生的成绩等功能。*/ 

#include<stdio.h>
#include<string.h>

struct student{     				/*学生信息结构定义*/
    int num;            			/*学号*/
	char name[10];      			/* 姓名 */
	int computer, english, math;   	/* 三门课程成绩 */
	double average;          		/* 个人平均成绩 */
};  
int Count = 0;            			/* 全局变量，记录当前学生总数 */

#define MaxSize 50
#include "input_output.c"			/*  用文件包含连接各程序文件模块  */
#include "computing.c"
#include "update.c"
#include "search.c"

int main(void)
{
    struct student students[MaxSize]; 	/* 定义学生信息结构数组 */
  
    new_student (students);		/* 输入学生信息结构数组 */
    average(students);			/* 计算每一个学生的平均成绩 */
    sort(students);				/* 按学生的平均成绩排序 */
    output_student(students);	/* 显示排序后的结构数组 */
    modify(students); 			/* 修改指定输入的学生信息 */
	output_student(students); 	/* 显示修改后的结构数组 */

	return 0;
}

