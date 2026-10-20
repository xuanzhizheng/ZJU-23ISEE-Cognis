#include<stdio.h>
int main(){
    char s1[]={'1','2'};
    char s2[]={'1','2'};
    char s3[]={'1','2',0};
    char s4[]="12";
    char *s5="12";
    /*char *s6={'1','2','\0'};  incorrect*/
    char *s6=s3;
    char s7[]={'1','2','\0'};
    
    s3[0]='2';
    *s7='2';
    
	printf("%p\n",s1);
    printf("%p\n",s2);
    printf("%p\n",s3);
    printf("%p\n",s4);
   	printf("%p\n",s5);
   	printf("%p\n",s6);
	printf("%p\n",s7);
	
	/*int i;
	for(i=0;i<=2;i++)
		printf("%c",s3[i]);
	for(i=0;i<=2;i++)
		printf("%c",s7[i]);*/
	return 0;
}
