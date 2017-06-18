#include <stdlib.h> 
#include <stdio.h>

//define o tamanho do vetor
#define TAM 100
void bubbleSort(int* v);
void ExibeVetor(int* vet, int n);
 
int main(int argc, char **argv)
{
    int *sorted, i;

    sorted = malloc(sizeof(int)*TAM);
 	//gera os números para preencher o vetor randomicamente
    for(i=0; i<TAM; i++){
        sorted[i] = rand()% 1000;
    }
    //ordena o vetor
    bubbleSort(sorted);
    //exibe o vetor ordenado na tela
	printf("Vetor depois de ser ordenado:\n");
    ExibeVetor(sorted, TAM);
    
    return 0;
}

//função que usa o algoritmo BubbleSort para ordenar o vetor
void bubbleSort(int* v){
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

//função que exibe o vetor na tela
void ExibeVetor(int* vet, int n){
    int i;
    for (i = 0; i < n; i++)
        printf("%d ", vet[i]);
    printf("\n\n");
}
