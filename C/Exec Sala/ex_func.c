#include <stdio.h>
int numPerfect(int num){
    int perfect = 0;
    for (int i=1; i<num;i++){
        if (num%i == 0){
            perfect += i;
        }
    }
    if (perfect==num){
        printf("Perfect!\n");
    } else {printf("Not perfect!\n");}

}
int main(){
    numPerfect(6);
    return 0;
}
