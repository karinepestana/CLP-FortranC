# CLP-FortranC

Objetivo: Desenvolver habilidades para combinar o uso de diferentes linguagens em um projeto único.
Assunto: Ordenação de vetor
Metodologia:

Passo 1: Implementar em C e em Fortran a ordenação de um vetor de inteiros (tamanho 100, valores gerados randomicamente) e imprima, ao final, o vetor ordenado.
Passo 2: Implementar um versão da aplicação na qual o vetor é criado em um programa C, ordenado no subprograma desenvolvido em Fortran e o resultado da ordenação impresso em C.
Passo 3:Implementar um versão da aplicação na qual o vetor é criado em um programa Fortran, ordenado no subprograma desenvolvido em C e o resultado da ordenação impresso em Fortran.

Material a ser entregue:
Um arquivo zip comprimido com um PDF, um Makefile e os arquivos fontes. São esperados seis arquivos fontes:

    Implementação em C
    Implementação em Fortran
    Modulo main C
    Modulo ordenação Fortran
    Módulo main Fortran
    Módulo ordenação C

O Makefile deve gerar todos os executáveis. 
O PDF deve conter a documentação da implementação, explicando como foi resolvido o problema de desenvolver um programa com duas linguagens distintas.

Dicas:
- O problema envolve compilação separada dos arquivos.
- Em tempo de compilação, gfortran adiciona um caracter sublinha no início dos identificadores (o que modifica o nome deles em um processo de ligação interlinguagens adicionando um caracter "_", veja a opção -fno-underscoring do gfortran) (exemplo, se a função se chama "toto" em Fortran, o nome visível em C será "_toto")
