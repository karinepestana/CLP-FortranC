
!Objetivo do exercício: Implementar a ordenação de um vetor

PROGRAM sort 

   IMPLICIT NONE !Todas as variáveis terão seus tipos definidos de modo explicito obrigatoriamente

   REAL aux
   INTEGER :: sorted(100)
   INTEGER i, min, max, k

   !define o range dos valores aleatórios
   min = 0 
   max = 1000

   !chama a subrotina randomica para ser usada depois
   CALL RANDOM_SEED()

	DO i=0, SIZE(sorted)-1
      !a subrotina random só rgera valores entre [0,1]
      CALL RANDOM_NUMBER(aux)
      !uso a formula abaixo para transformar os valores reais em inteiro com um range definido por mim
      k = min + FLOOR((max+1-min)*aux) 
      sorted(i)= k
	END DO
  	!chama a subrotina para ordenar o vetor
	CALL insertionsort(sorted, 100)
  print *, "Vetor depois de ordenar:"
	CALL exibevetor(sorted, 100)

END PROGRAM sort

!subrotina que faz a ordenação do vetor
SUBROUTINE insertionsort(sorted, tam)   
   
   INTEGER, INTENT(IN) :: tam
   INTEGER, INTENT(OUT):: sorted(100)
   
   INTEGER i, k, aux
   i = 0
   k = 0
   aux = 0  

    DO i = 0, SIZE(sorted)-1
       k = MINLOC(sorted(i:), 1) + i - 1
       IF (sorted(i) > sorted(k)) THEN
          aux = sorted(i)
          sorted(i) = sorted(k)
          sorted(k) = aux
       END IF
    END DO  

END SUBROUTINE insertionsort

!suboritna que exibe o vetor na tela
SUBROUTINE exibevetor(sorted, tam)
   IMPLICIT NONE

   INTEGER, INTENT(IN) :: tam
   INTEGER, INTENT(IN) :: sorted(100)
   
   INTEGER :: i= 1

   DO WHILE (i<=100)
      write (*,'(2x,I5)',advance="no"), sorted(i)
      i = i +1
   END DO
   print *, ""
   
END SUBROUTINE exibevetor 
