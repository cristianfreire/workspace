#include <stdio.h>
#include <stdlib.h>


void preencher();
void mostrar();
void maiorDif();

int main(){
    int t=10, v[t];
    preencher(v,t);
    mostrar(v,t);
    maiorDif(v,t);
    return 0;
}

void preencher(int v[],int t){
    for (int i=0; i<t; i++){
        v[i] = rand();
    }
    int aux,j,k;
    for (j=0; j<t;j++){
		for (k=0; k<t;k++){
            if (v[j] < v[k]){
                aux = v[j];
                v[j] = v[k];
                v[k] = aux;
            }
        }
    }
}

void mostrar(int v[], int t){
    for (int i=0; i<t;i++){
        printf("%d ",v[i]);
    }
}

void maiorDif(int v[], int t){
    int maior = 0,p1,p2;
    for (int i=0; i<t; i++){
        if ((v[i+1] - v[i]) > maior){
            maior = v[i+1] - v[i];
            p1 = i+1;
            p2 = i;
        }

    }
    printf("\nMaior diferenca %d (%d - %d) posicao %d e %d", maior,v[p1],v[p2],p1,p2);
}
