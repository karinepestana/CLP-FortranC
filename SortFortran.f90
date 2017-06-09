
!Objetivo do exercício: Implementar o InsertSort

PROGRAM sort 

   IMPLICIT NONE !Todas as variáveis terão seus tipos definidos de modo explicito obrigatoriamente

   !REAL, EXTERNAL :: insertionsort !Função que faz a ordenação

   !INTEGER sorted(100)
   REAL aux
   INTEGER, DIMENSION(100) :: sorted
   INTEGER i, n, m, j
   i = 0
   n = 0
   m = 1000

   CALL RANDOM_SEED() !dúvidas em relação ao parametro passado

   print *, "Chamou a semente e vai comecar o random"

	DO WHILE(i < 100)
      CALL RANDOM_NUMBER(aux)
      j = n + FLOOR((m+1-n)*aux)
      sorted(i)=j
   	i = i + 1
	END DO

   print *, "Terminou de preencher o vetor"

	CALL insertionsort(sorted, 100)

   print *, "Terminou o insertion sort"

	!CALL exibevetor(sorted, 100)

   print *, "Terminou tudo"

END PROGRAM sort

SUBROUTINE insertionsort(sorted, tam)
   
   
   INTEGER, INTENT(IN) :: tam
   INTEGER, INTENT(OUT), DIMENSION(tam) :: sorted
   
   INTEGER i, j, aux
   i = 0
   j = 0
   aux = 0
  

   print *, "oi"

   DO WHILE (j < (tam-1))
      DO WHILE (i < (tam-j+1))
         IF(sorted(i) > sorted(i+1)) THEN
            aux = sorted(i+1)
            sorted(i+1) = sorted(i)
            sorted(i) = aux
            print *, aux
         END IF
         i = i+1
      END DO
      j = j +1
   END DO

   i=0
   print *, "PRINTA"
   DO WHILE (i<100)
      print *, sorted(i)
      i = i +1
   END DO


END SUBROUTINE insertionsort


SUBROUTINE exibevetor(sorted, tam)
   IMPLICIT NONE

   INTEGER, INTENT(IN) :: tam
   INTEGER, INTENT(IN), DIMENSION(tam) :: sorted
   
   INTEGER :: i= 0

   DO WHILE (i<100)
      print *, sorted(i)
      i = i +1
   END DO
   
END SUBROUTINE exibevetor 