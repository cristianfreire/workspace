#include <stdio.h>

int inserir();
void mostrar();
int apagar();
void alterar();

int main(){
	int t=10, vetor[t], qtdEl=0; 
	qtdEl = inserir(vetor,1,qtdEl); 
	qtdEl = inserir(vetor,2,qtdEl); 
	qtdEl = inserir(vetor,6,qtdEl); 
	qtdEl = inserir(vetor,4,qtdEl);
	
	qtdEl = apagar(vetor,qtdEl,3);
	
	alterar(vetor,4,3,qtdEl);
	mostrar(vetor,qtdEl); 

	return 0;
}

int inserir(int v[],int x,int qtd){
	if(qtd == 0){
    	v[0] = x;
    	return qtd+=1;
    } else{
		int aux = -1;
        for(int i = 0; i < qtd; i++){
            if(x < v[i]){
				aux = i;
				break;             
            }
		}
		if (aux >=0){
			for (int i=qtd; i>=aux; i--){
				v[i+1] = v[i];
			} 
			v[aux] = x;
			return qtd+=1;
		}else{
			v[qtd] = x;
			return qtd+=1;
		}	
       
    }
}

void alterar(int v[], int x, int y, qtd){
		if (qtd == 0){
			return qtd;
		}else {
			int aux = 1;
			for (int i = 0; i < qtd; i++){
				if (y < 
			}
		}

}

int apagar(int v[], int qtd, int x){
	if (qtd == 0){
		return qtd;
	} else {
		int aux = -1;
        for(int i = 0; i <qtd; i++){
            if(x == v[i]){
				aux = i;
				break;             
            }
		}
		if (aux >=0){
			for (int i=aux; i<qtd; i++){
				v[i] = v[i+1];
			} 
			return qtd -=1;
		}else{
			printf("\nNumero n encontrado\n");
			return qtd;
		}
	}
}



void mostrar(int v[],int qtd){
	for (int i=0; i<qtd; i++){
		printf("%d ",v[i]);
	}
}
