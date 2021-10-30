#include <stdio.h>
#include <stdlib.h>

int main(){
    int nums[1], sobra[1];
    nums[0] = 1;
    nums[1] = 2;
    printf("%d %d\n",nums[0], &nums[0]);
    printf("%d\n",&nums[1]);
    printf("%d\n",&nums[2]);
    printf("\n%d",&sobra[0]);  

}