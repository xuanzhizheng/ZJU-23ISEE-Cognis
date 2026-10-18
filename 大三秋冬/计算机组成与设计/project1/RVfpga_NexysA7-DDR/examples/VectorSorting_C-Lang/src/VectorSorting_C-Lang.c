#define N 8

int A[N]={7,3,25,4,75,2,1,1};
int B[N]={0,0,0,0,0,0,0,0};

int main ( void )
{
    int max, ind, i, j;

    for(j=0; j<N; j++){
        max=0;
        for(i=0; i<N; i++){
            if(A[i]>max){
                max=A[i];
                ind=i;
            }
        }
        B[j]=A[ind];
        A[ind]=0;
    }

    while(1);
}
