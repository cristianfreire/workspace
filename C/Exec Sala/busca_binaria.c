#include <stdio.h>

int preencher();
void mostrar();
int encontrar_x();

int main(){
	int n=10, vetor[n];
	preencher(vetor,n);
	mostrar(vetor,n);
	int num = encontrar_x(vetor,n,6);
	if (num >=0){
		printf("Numero encontrado");
	}
	else {
		printf("O numero nao encontrado");
	}
	

}	

int preencher(int v[], int t){
	int i=0, j=0;
	for (i=0 ;i<t; i++){
		 v[i] = j;
		 j=j+2;
	}
	return 0;
}
void mostrar(int v[], int t){
	for (int i=0; i<t; i++){
		printf("v[%d] = %d\n",i,v[i]);
	}
}	

int encontrar_x(int v[],int t,int x){
	int inicio=0, meio, fim=t-1;
	while (inicio <= fim){
		meio = (inicio + fim)/2;
		if (x < v[meio]){
			fim = meio-1;
		}else if (x > v[meio]){
			inicio = meio+1;
		} else {
			return meio;
		}
		
	}
	return -1;
	
}

