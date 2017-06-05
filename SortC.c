#include <stdlib.h> 
#include <stdio.h>

#define TAM 100
void InsertionSort(int* v);
void ExibeVetor(int* vet, int n);
 
int main(int argc, char **argv)
{
    int *sorted, i;
 
    sorted = malloc(sizeof(int)*TAM);
 
    for(i=0; i<TAM; i++){
        sorted[i] = rand()% 1000;
    }
    InsertionSort(sorted);
    ExibeVetor(sorted, TAM);
    return 0;
}
 
void InsertionSort(int* v){
    int i, j, aux; 
    for (j = 0; j<TAM-1; j++){
        for (i = 0; i < TAM-(j + 1); i++){
            if(v[i]>v[i+1]){
                aux = v[i+1];
                v[i+1]=v[i];
                v[i] = aux;
            }
        }                               
    } 
}

 
void ExibeVetor(int* vet, int n){
    int i;
    for (i = 0; i < n; i++)
        printf("%d ", vet[i]);
}