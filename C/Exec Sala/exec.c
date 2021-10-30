#include <stdio.h>
int main(){
	int voltas=1, melhorVolta=1,i;
	float tempo, melhorTempo, tempoMedio;
	
	while (voltas !=0){
		printf("Volta: "); scanf("%d",&voltas);
		if (voltas==0) {break;}
		printf("Tempo: "); scanf("%f",&tempo);
		melhorTempo =tempo;
		tempoMedio=tempo;
		for (i=2;i<=voltas;i++){
			printf("Tempo: "); scanf("%f",&tempo);
			if (tempo<melhorTempo){
				melhorTempo = tempo;
				melhorVolta = i;
			}
			tempoMedio += tempo;

		}
		printf("Melhor tempo %g\n",melhorTempo);
		printf("Melhor volta %d\n",melhorVolta);
		printf("Media %g\n", tempoMedio/(i-1));
	}
		
	
	return 0;
}
