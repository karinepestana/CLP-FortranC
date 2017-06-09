
!Objetivo do exercício: Implementar o InsertSort

PROGRAM sort 

   IMPLICIT NONE !Todas as variáveis terão seus tipos definidos de modo explicito obrigatoriamente

   INTEGER, EXTERNAL :: insertionsort !Função que faz a ordenação

   !INTEGER sorted(100)
   REAL, DIMENSION(100) :: sorted
   INTEGER i
   i = 0

   !CALL RANDOM_SEED(1000) !dúvidas em relação ao parametro passado
     
	DO WHILE(i < 100)
      CALL RANDOM_NUMBER(sorted(i))
   	i = i + 1
	END DO

	sorted = insertionsort(sorted, 100)

	exibevetor(sorted, 100)

END PROGRAM sort

FUNCTION insertionsort(sorted, tam)

   INTEGER i, j
   REAL aux
   i = 0
   j = 0
   aux = 0

   DO WHILE (j < (tam-1))
      DO WHILE (i < (tam-j+1))
         IF(sorted(i) > sorted(i+1))
            aux = sorted(i+1)
            sorted(i+1) = sorted(i)
            sorted(i) = aux
         END IF
         i = i+1
      END DO
      j = j +1
   END DO

END FUNCTION sorted


FUNCTION exibevetor(sorted, tam)
   INTEGER i
   i = 0

   DO WHILE (i<100)
      print *, sorted(i)
      i = i +1
   END DO

END FUNCTION