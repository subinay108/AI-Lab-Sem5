// WAP in C to find Fibonacci Series

#include <stdio.h>

int fibonacci(int n){
    if(n <= 1){
        return n;
    }
    return fibonacci(n - 1) + fibonacci(n - 2);
}

int main(){
//     int a = 0, b = 1;
    int n;
    printf("Enter the number of terms: ");
    scanf("%d", &n);
//     int i, temp;
//     for(i = 0; i < n; i++){
//         printf("%d ", a);
//         temp = a;
//         a = a + b;
//         b = temp;
//     }
    // printf("\n");

    int i;
    for(i = 0; i < n; i++){
        printf("%d ", fibonacci(i));
    }

    printf("\n");

}
