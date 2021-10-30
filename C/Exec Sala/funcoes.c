#include <stdio.h>
//Se a função tiver tipo ela tem q ter 'return', se tiver tipo 'void' sem retorno;
//Deve iniciar a função em cima do 'main', senão deve declarar antes;
//Se tiver retorno tem que armazena-la em uma variável, se for 'void' não precisa;
int soma(int a, int b){
    return a+b;

}
int main(){
    int x,y;
    printf("X: "); scanf("%d",&x);
    printf("Y: "); scanf("%d",&y);
    int d = soma(x,y);
    printf("%d",d);
    return 0;
}

