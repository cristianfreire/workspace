#include <stdio.h>

void preencher();
void mostrar();
void multiplicar();

int main(){
    int t=10, a[t], b[t], x;
    printf("Informe um valor: "); scanf("%d",&x);

    preencher(a,t);
    multiplicar(a,b,t,x);
    mostrar(a,b,t);


    return 0;
}


void preencher(int v[],int t){
    for (int i=0; i<t; i++){
        v[i] = i;
    }
}



void multiplicar(int va[],int vb[],  int t, int x){
	for (int i=0; i<t; i++){
        vb[i] = va[i] *x;
    }
}

void mostrar(int va[],int vb[],int t){
    for (int a=0; a<t; a++){
        printf("%d ",va[a]);
    }
    printf("\n");
    for (int b=0; b<t; b++){
        printf("%d ",vb[b]);
    }
}