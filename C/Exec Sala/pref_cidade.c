#include <stdio.h>
#include <locale.h>
int main(){
	float sal, somaSal=0, cont=0, somaFilho, maiorSal, perc=0;
	int filhos;
	do {
		printf("Salário: "); scanf("%f",&sal); if (sal==0) {break;}
		printf("Filhos: "); scanf("%d",&filhos);
		somaSal += sal; cont++;
		somaFilho += filhos;
		if (cont==1){ maiorSal = sal;}
		if (sal > maiorSal) {maiorSal = sal;}
		if (sal <= 500){
			perc++;
		}
		
	}while (sal!=0);
	perc = (100*perc)/cont;
	printf("Média do salário da população: %g\n",somaSal/cont);
	printf("Média de filhos: %g\n",somaFilho/cont);
	printf("Percentual que ganha até R$500,00: %g\n",perc);
	return 0;
}	
