#include <stdio.h>
#include <stdlib.h>

void preencher();
void repet();
void mostrar();

int main(){
    int t=10, a[t];

    preencher(a,t);
    mostrar(a,t);
    printf("\n");
    repet(a,t);
    
    return 0;
}

void preencher(int v[], int t){
    for (int i=0; i<t; i++){
        v[i] =1 + (rand() % 100);
    }
}

void mostrar(int v[], int t){
    for (int i=0; i<t; i++){
        printf("%d ",v[i]);
    }
}

void repet(int v[],int t){
    int rep, i, j;
    for (i=0; i<t; i++){
        rep=1;
        for (j=i+1; j<t;j++){
            if (v[i] == v[j]){
                v[j] = 0;
                rep++;
            }
        }
        if (v[i] > 0){
            printf("O valor %d aparece  %d vez(es)\n",v[i],rep);
        }
        
    }
    
}

