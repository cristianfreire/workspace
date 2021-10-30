#include <stdio.h>
#include <stdlib.h>
#define T 100

void inserir();
void mostrar();
int apagar();
void encontrar_x();
void vazia();
void cheia();

int main(){
    int v[T], x, qtd=0, op,num;

   do{
       printf("\nEscolha a opcao: \n1 - Inserir\n2 - Apagar\n3 - Mostrar\n4 - Buscar\n5 - Ver. Vazia\n6 - Ver. Cheia\n0 - Sair\n"); scanf("%d",&op);
       if (op == 1){
           //Create
            if (qtd>=10){
                printf("Nao e possivel inserir mais elementos\n");
            }else {
                printf("\nNumero: "); scanf("%d",&x);
                inserir(v, T, qtd, x);
                qtd++;
            }           
       } else if (op == 2){
           //Delete
          printf("apagar numero do vetor: ");
          scanf("%d", &num);
          qtd = apagar(v, T, qtd, num);
       } else if (op == 3){
           //Read
           mostrar(v,qtd);
       }else if (op == 4){
           int encontra;
           printf("Numero a encontrar: "); scanf("%d",&encontra);
           encontrar_x(v,qtd,encontra);
        }else if (op == 5){
              vazia(qtd);          
        } else if (op == 6){
            cheia(qtd, T);
        }
   }while(op!=0);
   
    return 0;
}

void vazia(int qtd){
    if (qtd == 0){
        printf("Lista vazia\n");
    } else {
        printf("Lista possui elementos\n");
    }
    
}

void cheia(int qtd, int t){
    if (qtd == t){
        printf("Lista cheia\n");
    }else {
        printf("A lista nao esta cheia\n");
    }
}

void inserir(int v[],int t,int qtd, int x){
    int pos;
    if (qtd == 0){
        v[0] = x;
    }else if(qtd>=10){
        printf("Impossivel adicionar mais elementos!\n");    
    }else{
        v[qtd] = x;
        for (int i=0; i<qtd; i++){
            if (v[i] > x){
                pos = i;
                int k =qtd;
                while (k != i){
                    v[k] = v[k-1];
                    k--;
                }
                v[pos] = x;
                break;    
            }
        }
        
    }
  

}


void mostrar(int v[], int t){
    if (t ==0 ){
        printf("Lista vazia");
    }else {
        for (int i=0; i<t; i++){
            printf("%d ",v[i]);
        }
    }
}

int apagar(int v[], int t, int qtd, int x){
    if(qtd == 0){
        return qtd;
    } else{
        int aux = -1;
        for(int i = 0; i < qtd; i++){
            if(v[i] == x){
                aux = i;
                i = qtd + i;
            }
        }
        if(aux >= 0){
            for(int i = aux; i < qtd; i++){
                v[i] = v[i + 1];
            }
            return qtd -= 1;
        } else{
            printf("numero nao existe\n");
            return qtd;
        }
    }
}

void encontrar_x(int v[],int t,int x){
	int inicio=0, meio, fim=t-1,encontrado=1;
	while (inicio <= fim){
		meio = (inicio + fim)/2;
		if (x < v[meio]){
			fim = meio-1;
		}else if (x > v[meio]){
			inicio = meio+1;
		} else {
			encontrado = 0;
            break;
		}
		
	}
    if (encontrado == 0){
        printf("Numero encontrado no indice %d\n",meio);
    }else {
        printf("Numero nao encontrado\n");
	}
}

