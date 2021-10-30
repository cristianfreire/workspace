#include <stdio.h>
#include <stdlib.h>

void preencher();
void mostrar();
void encontrar_x();
void ordenar();
int busca_binaria();

int main(){
	int n=10, vetor[n], x;
	preencher(vetor, n);
	mostrar(vetor,n);
	printf("\nInforme o numero a ser encontrado: "); scanf("%d",&x);
	encontrar_x(vetor, n, x);
	ordenar(vetor,n);
	int num  = busca_binaria(vetor, n, x);
	if (num >=0){
		printf("\nNumero encontrado");
	} else {printf("\nNumero n encontrado");}
	return 0;
}

void preencher(int v[], int t){
	int i;
	for (i=0; i<=t; i++){
		v[i] = 1 + rand() % 100;
	}
		
}
void mostrar(int v[], int t){
	int i;
	for (i=0; i<=t; i++){
		printf("%d ",v[i]); 
	}
		
}

void encontrar_x(int v[], int t, int x){
	int i, encontrado;
	for (i=0; i<=10; i++){
		if (v[i] == x){
			encontrado = 1;
			break;
		} else {
			encontrado = 0;
		}
	}
	if (encontrado == 1){
		printf("Numero encontrado");
	}else {
		printf("Numero n encontrado");
		
	}
}

void ordenar(int v[], int t){
	int i,j, aux;
	for (i=0; i<=t; i++){
		for (j=0; j<=t; j++){
			if (v[i] < v[j]){
				aux = v[i];
				v[i] = v[j];
				v[j] = aux;
				 			
			}
		}
	}
	printf("\n");
	for (int a=0; a<=t; a++){
		printf("%d ",v[a]); 
	}
}

int busca_binaria(int v[], int t, int x){
	int inicio=0, fim=t-1, meio;
	while (inicio <= fim){
		meio = (inicio+fim)/2;
		if (x < v[meio]){
			fim = meio - 1;
		} else if (x > v[meio]){
			inicio = meio + 1;
		} else {
			return meio;
		}
	
	}
	
	return -1;	
	
}
