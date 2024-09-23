#include<stdio.h>

int main(){
    int arr[7] = {2, 3, 10, 1, 4, 8, 6};
    int min = arr[0];
    int max_dif = 0;
    for(int i = 0; i < 7; i++){
        if(min > arr[i]){
            min = arr[i];
        }
        int cur_dif = arr[i] - min;
        if(max_dif < cur_dif){
            max_dif = cur_dif;
        }
    }
    printf("%d\n", max_dif);
}