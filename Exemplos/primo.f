************************************************************************
*
* Testar se 'n' � n�mero primo
*
************************************************************************
*
      program ehprimo
      implicit none
* 
      integer*8 n, candidato, max
      logical restozero, naomaiscandidatos

      write( 0, * ) 'N eh primo? '
      read ( *, * ) n

      if( n .eq. 1 ) then
        write( 0, * ) '1 nao eh primo '
        stop
      end if

* Limite de busca
      max = int(sqrt(real(n)))
      candidato = 2
      restozero = .false.
      naomaiscandidatos = .false.
C
C Constru��o da repeti��o: Enquanto ainda n�o satisfizer condic��o de parada
C do while( .not. condi��o_de_parada )
C
      do while ( .not. (restozero .or. naomaiscandidatos ) )
        restozero = mod( n, candidato ) .eq. 0
        naomaiscandidatos = candidato .gt. max
        if( .not. restozero ) candidato = candidato+1
      end do
 
      write( 0, * ) 'Primo: ', .not.restozero
      if( restozero ) write(*,*) "Divisivel por ", candidato

      end program ehprimo

