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

	CALL bubblesort(sorted, 100)

  print*, "Vetor depois da ordenacao:"

	CALL exibevetor(sorted, 100)

END PROGRAM sort

SUBROUTINE exibevetor(sorted, tam)
   IMPLICIT NONE

   INTEGER, INTENT(IN) :: tam
   INTEGER, INTENT(IN) :: sorted(100)
   
   INTEGER :: i= 1

   DO WHILE (i<=tam)
      write (*,'(2x,I5)',advance="no"), sorted(i)
      
      i = i +1
   END DO
   print *, ""
   
END SUBROUTINE exibevetor 