#include <stdio.h>
#include <stdlib.h>

void preencher();
void mostrar();
void pares();
void impares();

int main(){
    int t=10, v[t], p[t], i[t];

    preencher(v,t);
    mostrar(v,t);
    printf("\nPares: "); pares(v,p,t);
    printf("\nImpares: ");impares(v,i,t);
    return 0;
}

void preencher(int v[],int t){
    for (int i=0; i<t; i++){
        v[i] = 1 +  rand() % 50;
    }
}

void mostrar(int v[], int t){
    for (int i=0; i<t; i++){
        printf("%d ",v[i]);
    }
}

void pares(int v[],int p[], int t){
    int pares=0;
    for (int i=pares; i<t; i++){
        if (v[i]%2 == 0){
            p[pares] = v[i];
			pares++;     
        }
        
    }
    printf("\n");   
    for (int i=0; i<pares; i++){
        printf("%d ",p[i]);
    }

}

void impares(int v[],int impar[], int t){
    int impares=0;
    for (int i=impares; i<t; i++){
        if (v[i]%2 == 1){
            impar[impares] = v[i];
			impares++;     
        }
        
    }
    printf("\n");   
    for (int i=0; i<impares; i++){
        printf("%d ",impar[i]);
    }

}
