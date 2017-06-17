#include <stdlib.h> 
#include <stdio.h>

#define TAM 100

extern int* insertionsort(int *sorted, int *tam) ;
void ExibeVetor(int* vet, int n);
 
int main(int argc, char **argv)
{
    int *sorted, i, tam;
 
    sorted = malloc(sizeof(int)*TAM);
 
    for(i=0; i<TAM; i++){
        sorted[i] = rand()% 1000;
    }
    printf("\n");
    printf("Vetor antes de ser ordenado\n");
    ExibeVetor(sorted, TAM);
   
    tam = 100;
    insertionsort(sorted, &tam);
    printf("Vetor depois de ser ordenado:\n");
    ExibeVetor(sorted, TAM);
    
    return 0;
}
 
void ExibeVetor(int* vet, int n){
    int i;
    for (i = 0; i < n; i++)
        printf("%d ", vet[i]);
    printf("\n\n");
}