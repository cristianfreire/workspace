#include <stdio.h>

void vetorA();
void vetorB();
void comuns();

int main(){
    int t=10, a[t], b[t], c[t]; 
    
    vetorA(a, t);
    vetorB(b, t);
    comuns(a, b, c, t);
    
    return 0;

}

void vetorA(int a[], int t){
    for (int i=0; i<t; i++){
        a[i] = i+2;
    }
}

void vetorB(int b[], int t){
    for (int i=0; i<t; i++){
        b[i] = i+5;
    }
}

void comuns(int a[], int b[], int c[], int t){
    int comuns =0,i,j;
    for (i=0; i<t; i++){
        for (j=0; j<t; j++){
            if (b[i] == a[j]){
                c[i] = a[j];
                comuns++;
            }
        }
    }
    for (int i=0; i<t; i++){
        printf("%d %d \n",a[i],b[i]);
    }
    printf("\n");
    if (comuns > 0){
        for (int x=0; x<comuns; x++){
            printf("%d ",c[x]);
        }
    }else {
        printf("Não há valores em comun");
    }
    
}

