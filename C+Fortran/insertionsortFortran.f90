SUBROUTINE insertionsort(sorted, tam)   
   
    INTEGER, INTENT(IN) :: tam
    INTEGER, DIMENSION(tam), INTENT(INOUT) :: sorted
    !INTEGER, INTENT(OUT):: sorted(100)
   
    INTEGER :: i, k, aux
    i = 0
    k = 0
    aux = 0

    print *, "Ordenando Fortran"

    DO i = 0, SIZE(sorted)-1
       k = MINLOC(sorted(i:), 1) + i - 1
       IF (sorted(i) > sorted(k)) THEN
          aux = sorted(i)
          sorted(i) = sorted(k)
          sorted(k) = aux
       END IF
    END DO  
    
END SUBROUTINE insertionsort