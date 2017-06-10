
!Objetivo do exercício: Implementar o InsertSort

PROGRAM sort 

   IMPLICIT NONE !Todas as variáveis terão seus tipos definidos de modo explicito obrigatoriamente

   REAL aux
   INTEGER :: sorted(100)
   INTEGER i, min, max, k

   !define o range dos valores aleatórios
   min = 0 
   max = 1000

   CALL RANDOM_SEED()

	DO i=0, SIZE(sorted)-1
      !função random só retorna valores entre [0,1]
      CALL RANDOM_NUMBER(aux)
      !uso a formula abaixo para transformar os valores reais em inteiro com um range definido por mim
      k = min + FLOOR((max+1-min)*aux) 
      sorted(i)= k
	END DO

	CALL insertionsort(sorted, 100)
	CALL exibevetor(sorted, 100)

END PROGRAM sort

SUBROUTINE insertionsort(sorted, tam)   
   
   INTEGER, INTENT(IN) :: tam
   INTEGER, INTENT(OUT):: sorted(100)
   
   INTEGER i, k, aux
   i = 0
   k = 0
   aux = 0

   !DO WHILE (j < (tam-1))
      !DO WHILE (i < (tam-j+1))
         !k = i +1
         !IF(sorted(i) > sorted(k)) THEN
            !aux = sorted(k)
            !sorted(k) = sorted(i)
            !sorted(i) = aux
            !print *, "IF"
            !print *, sorted(i)
            !print *, sorted(k)
         !END IF
         !i = i+1
      !END DO
      !j = j +1
   !END DO

    DO i = 0, SIZE(sorted)-1
       k = MINLOC(sorted(i:), 1) + i - 1
       IF (sorted(i) > sorted(k)) THEN
          aux = sorted(i)
          sorted(i) = sorted(k)
          sorted(k) = aux
       END IF
    END DO  

END SUBROUTINE insertionsort


SUBROUTINE exibevetor(sorted, tam)
   IMPLICIT NONE

   INTEGER, INTENT(IN) :: tam
   INTEGER, INTENT(IN) :: sorted(100)
   
   INTEGER :: i= 0

   DO WHILE (i<100)
      print *, sorted(i)
      i = i +1
   END DO
   
END SUBROUTINE exibevetor 