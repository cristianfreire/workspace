#include <stdio.h>
int main(){
    int num,cont=0;
    printf("Numero: "); scanf("%d",&num);
    for (int i=1;i!=0;i+=2){
        num-=i;
        cont++;
        if (num<=0){
            if (num!=0){
                cont-=1;
            }
            printf("%d",cont);break;
        }
    }

    return 0;
}
