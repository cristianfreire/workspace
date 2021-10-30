#include <stdio.h>

void ordenar();


int main(){
	int vetor[] = {32,46,56,21,15,5};
	int t=5; 
	ordenar(vetor,t);
	return 0;
}

void ordenar(int v[], int t){
	int i,j,aux=0;
	for (i=0; i<=t; i++){
		for (j=0; j<=t; j++){
			if (v[i] < v[j]){
				aux = v[i];
                v[i] = v[j];
                v[j] = aux;

			}	
		}
		
	}
	for (int a=0; a<=t; a++){
		printf("v[%d] = %d\n",a,v[a]);
	}

}
