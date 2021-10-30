#include <stdio.h>
void preencher();
int main(){
    int matriz[3][3], i, j;
    for ( i=0; i<3; i++ ){
		for ( j=0; j<3; j++ ){
			printf ("\nElemento[%d][%d] = ", i, j);
			scanf ("%d", &matriz[ i ][ j ]);
    }
}
    
    
  
  for ( i=0; i<3; i++ ){
    for ( j=0; j<3; j++ ){
      printf ("\nElemento[%d][%d] = %d\n", i, j,matriz[ i ][ j ]);
    }
    printf("\n");
  }
  
  return(0);
}

