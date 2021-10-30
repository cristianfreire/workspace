#include <stdio.h>
#include <stdlib.h>

void rodarDado();
void repete();

int main(){
    int t=5000, v[t];
    rodarDado(v,t);
    repete(v,t);
    return 0;
}

void rodarDado(int v[], int t){
    for (int i = 0; i < t; i++){    
        v[i] = 1 + rand() % 6;
    }
    
}
void repete(int v[], int t){
    int rep, i, j;
    for (i=0; i<t; i++){
        rep=1;
        for (j=i+1; j<t;j++){
            if (v[i] == v[j]){
                v[j] = 0;
                rep++;
            }
        }
        if (v[i] > 0){
            printf("O valor %d ocorre %d vez(es)\n",v[i],rep);
        }
        
    }
}



