#include <stdio.h>
int potencia(int b, int e){
    int p = 1,i;
    for (i =1;i <=e;i++){
        p *=b;
    }
    return p;
}
int main(){
    int dsf = potencia(5,5);
    printf("%d",dsf);
    return 0;
}
