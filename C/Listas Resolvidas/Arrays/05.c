#include <stdio.h>
#include <stdlib.h>

void preencher();
void encontrar();
void mostrar();

int main(){
    int num, t=10, v[t];
    preencher(v,t);
    mostrar(v,t);
    printf("\nInforme um numero: "); scanf("%d",&num);
    encontrar(v,t,num);
    

    return 0;
} 

void preencher(int v[], int t){
    for (int i=0;i<t;i++){
        v[i] = rand();
    }
}

void encontrar(int v[],int t, int x){
    int encontrado = 0, i;
    for (i=0; i<t;i++){
        if (x == v[i]){
            encontrado = 1;
            break;
        }else {
            encontrado = 0;
        }
    }

    if (encontrado == 1){
        printf("O numero está na posicao %d\n",i);
    }else {
        printf("O numero nao foi encontrado\n");
    }
}

void mostrar(int v[], int t){
    for (int i=0; i<t; i++){
        printf("%d ",v[i]);
    }
}
