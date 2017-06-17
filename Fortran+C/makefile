#EDITAR MAKEFILEEEEE
#C com Fortran


all: start clean 

start:
	@gcc -c bubbleSortC.c 
	@gfortran -c FortraneC.f90 -fno-underscoring 
	@gcc FortraneC.o bubbleSortC.o -o codigoFortrancomC -lgfortran	
	@./codigoFortrancomC
	
clean:
	@rm -rf *.o
	@rm -rf codigoFortrancomC
