#define DIM 3 

double dot; 

double dotproduct(int n, double a[], double b[]) { 
    volatile int i; 
    double sum=0; 

    for (i=0; i<n; i++) { 
        sum += a[i]*b[i]; 
    } 
    return sum; 
} 

int main(void) {
    double x[DIM] = {3.1, 4.3, 5.9}; // x is an array of size 3(DIM) 
    double y[DIM] = {1.4, 2.2, 3.7}; // same as x 

    dot = dotproduct(DIM, x, y);

    return(0);
} 
