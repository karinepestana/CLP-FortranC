#include <stdio.h>
#include <stdlib.h>

void bubblesort(int * v, int * tam)
{
	int i, j, aux; 
    for (j = 1; j<(*tam); j++){
        for (i = 0; i < (*tam)-1; i++){
            if(v[i]>v[i+1]){
                aux = v[i+1];
                v[i+1]=v[i];
                v[i] = aux;
            }
        }                               
    } 
}