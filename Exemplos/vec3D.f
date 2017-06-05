C
C     Objetivo do exerc�cio: Fun��es e Procedimentos
C     O programa principal serve apenas para testar as
C     fun��es e procedimentos implementados.
C     A sua tarefa: Implementa��o das fun��es e procedimentos
C     Autor: Thomas W. Rauber trauber@gmail.com


      program vetor
      implicit none
	
C Opera��es com vetores em 3-D
C
C Dimens�o do vetor = n�mero de elementos
      integer dim
      parameter (dim=3)

      real r(dim)  / 1.0, 2.0, 3.0 /
      real s(dim)  / 4.0, 3.0, 5.0 /
      real t(dim)
      logical identic
      real scalprod
C

C  em algumas vers�es mais antigas do Force a inicializa��o tem
C  que ser feita explicitamente:
      r(1) = 1.0; r(2) = 2.0; r(3) = 3.0;
      s(1) = 4.0; s(2) = 3.0; s(3) = 5.0;

      call mostravec( r, dim )
      call mostravec( s, dim )

      call soma( r, s, t, dim )
      write(*,*) "Soma:"
      call mostravec( t, dim )
      call subtra( r, s, t, dim )
      write(*,*) "Diferenca:"
      call mostravec( t, dim )
C
      call scalar( r, t, 2.0, dim )
      write(*,*) "Multiplicacao com escalar:"
      call mostravec( t, dim )
C
      write(*,*) 'Produto escalar entre os dois vetores'
      call mostravec( r, dim )
      call mostravec( s, dim )
      write(*,"(1x,A,F8.3)") 'eh ', scalprod( r, s, dim )
C
      write(*,*) "Teste de igualdade de dois vetores"
      call mostravec( r, dim )
      call mostravec( s, dim )

      if( identic( r, s, dim ) ) then
        write(*,*) 'Vetores identicos'
      else
        write(*,*) 'Vetores diferentes'
      end if
C
      end program vetor
C
C-----------------------------------------------------------------------
      subroutine mostravec( vec, dim )
      implicit none
C Imprime vetor de dimens�o 'dim' no terminal
      integer dim
      real vec(*)  ! Alternativa: Dimens�o n�o tem que ser declarada
C      real vec(dim)
C
      integer i

C Impress�o vertical
C      write (*,*) "( "
C      do i=1, dim
C       write (*,"(1X,F8.3,A)") vec(i), ' '
C      end do
C      write (*,*) ")"


C     A L T E R N A T I V A: Impress�o horizontal
      write( *, "(1X,'(',3F8.3,')')" )   (vec(i), i=1,dim)

      return
      end subroutine mostravec

C-----------------------------------------------------------------------
      subroutine soma( v1, v2, s, dim )
      implicit none
C Soma dois vetores
      integer dim
      real v1(*), v2(*), s(*)
C      real v1(dim), v2(dim), s(dim)
C
      integer i

      do i=1, dim
        s(i) = v1(i) + v2(i)
      end do
      return
      end subroutine soma

C-----------------------------------------------------------------------
      subroutine subtra( v1, v2, diff, dim )
      implicit none
C Subtrai dois vetores
      integer dim
      real v1(*), v2(*), diff(*)
C
      integer i

      do i=1, dim
        diff(i) = v1(i) - v2(i)
      end do
      return
      end subroutine subtra

C-----------------------------------------------------------------------
      real function scalprod( v1, v2, dim )
      implicit none
C Calcula produto escalar entre v1 e v2
      integer dim
      real v1(*), v2(*)
C
      integer i

      scalprod = 0.0
      do i=1, dim
       scalprod = scalprod + (v1(i) * v2(i))
      end do
      return
      end function scalprod

C-----------------------------------------------------------------------
      subroutine scalar( v1, v2, scal, dim )
      implicit none
C Multiplica v1 por 'scalar' e guarda resultado em v2
      integer dim
      real v1(*), v2(*), scal
C
      integer i

      do i=1, dim
        v2(i) = scal * v1(i)
      end do
      return
      end subroutine !scalar        ! Bug no Force, devia funcionar com 'construct'

C-----------------------------------------------------------------------
      logical function identic( v1, v2, dim )
      implicit none
C Testa se dois vetores s�o iguais
      integer dim
      real v1(*), v2(*)
C
      integer i  / 1 /
      logical diff / .false. /

      do while ( ( .not. diff) .and. (i .le. dim) )
        diff = v1(i) .ne. v2(i)
        i = i+1
      end do

      identic = .not. diff
      return
      end function identic

