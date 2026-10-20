#include<stdio.h>
int f(char op){
	if(op=='+'||op=='-'||op=='*'||op=='/'||op=='=')
		return 1;
	else
		return 0;
}



int main(){
    int a,b,flag;
    char op;
    scanf("%d",&a);
    scanf("%c",&op);
    if(f(op))
        flag=1;
    else{
        printf("ERROR");
        return 0;
    }
            
    while(op!='='){
        scanf("%d",&b);
        if(op=='+')
            a=a+b;
        else if(op=='-')
            a=a-b;
        else if(op=='*')
            a=a*b;
        else if(op=='%')
            a=a%b;
        else if(op=='/'){
            if(b==0){
                flag=0;
                break;
            }
            else
                a=a/b;
            }
        scanf("%c",&op);
        if(f(op))
            flag=1;
        else{
            flag=0;
            break;
        }
    }
    if(flag==1){
        printf("%d",a);
    }
    else
        printf("ERROR");
    return 0;
}


