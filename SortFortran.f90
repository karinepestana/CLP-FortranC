
C     Objetivo do exercício: Implementar o InsertSort


      program Sort
      implicit none

      dimension sorted(100)

      call random_seed(1000)
      integer i/1/
		do while (i<101)
   			call random_number(sorted(i))
   			i = i + 1
		end do

		call InsertionSort(sorted, 100)

		call ExibeVetor(sorted, 100)

C-----------------------------------------------------------------------
      subroutine InsertionSort(v, tam)
      implicit none

      integer i/1/
      integer j/1/
      integer aux

		do while (j<tam-1)

			do while (i <tam - (j+1))

				if (v(i)>v(i+1))
					aux = v(i+1)
					v(i+1)=v(i)
					v(i)=aux
				end if

			i = i +1
			end do

   			j=j+1
		end do

	return
    end subroutine InsertionSort

	
C-----------------------------------------------------------------------
      subroutine ExibeVetor(v, tam)
      implicit none

      integer i/1/
		do while (i<101)
   			write(*,*)sorted(i)
   			i = i + 1
		end do

	return
    end subroutine ExibeVetor

C-----------------------------------------------------------------------