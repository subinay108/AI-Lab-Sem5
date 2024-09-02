#include<stdio.h>

int main(){
    int lb = 1, ub = 100;
    int isPrime[ub - lb + 1];
    for(int i = 0; i < (ub - lb + 1); i++){
        isPrime[i] = 0;
    }
    for(int n = lb; n <= ub; n++){
        
    }
    printf("List of primes: \n");
    for(int i = 0; i < (ub - lb + 1); i++){
        if(isPrime[i]){
            printf("%d\n", i + lb);
        }
    }
    return 0;
}