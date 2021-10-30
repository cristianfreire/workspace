#include <stdio.h>
#include <stdio.h>
#include <stdlib.h>

void preencher();
void mostrar();
void difMenorMaior();

int main(){
    int t=10, v[t];

    preencher(v,t);
    mostrar(v,t);
    printf("\n");
    difMenorMaior(v,t);

    return 0;
}

void preencher(int vetor[], int t){
    for (int i=0; i<t;i++){
        vetor[i] = rand();
    }
}



void mostrar(int vetor[],int t){
    for (int i=0;i<t;i++){
        printf("%d ",vetor[i]);
    }
}

void difMenorMaior(int vetor[], int t){
    int menor, maior, pMaior, pMenor, diferenca;
    menor = vetor[0];
    maior = vetor[0];
    for (int i=0;i<t;i++){
        if (vetor[i] > maior){
            maior = vetor[i];
            pMaior = i;
        }else if (vetor[i] < menor){
            maior = vetor[i];
            pMenor = i;
        } 
    }
    diferenca = maior - menor;
    printf("\nDiferença entre o maior e o menor é: %d\nPosição do Maior: %d\nPosição do Menor: %d",diferenca,pMaior,pMenor);
}