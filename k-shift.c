// WA C-program to k-times right shift an array
#include<stdio.h>

void shift_one(int *arr, int size){
    int i;
    int last = arr[size - 1];
    for(i = size - 1; i > 0; i--){
        arr[i] = arr[i - 1];
    }
    arr[0] = last;
}
void k_shift(int *arr, int size, int k){
    int i;
    for(i = 0; i < k; i++){
        shift_one(arr, size);
    }
}

int main(){
    int arr[5] = {1, 2, 3, 4, 5};
    k_shift(arr,5, 3);

    int i;
    for(i = 0; i < 5; i++){
        printf("%d ", arr[i]);
    }
}