#include <stdio.h>
#include <math.h>
int main(){
    float area, lado;
    printf("Informe o lado: ");
    scanf("%f",&lado);
    area = lado*lado;
    printf("Area: %.2f",area);
    return 0;
}
