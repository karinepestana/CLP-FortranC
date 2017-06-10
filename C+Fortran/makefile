#C com Fortran
inicio:
	gfortran -c insertionsortFortran.f90 -fno-underscoring 
	gcc -c CeFortran.c 
	gcc insertionsortFortran.o CeFortran.o -o codigoCcomFortran -lgfortran
	
	./codigoCcomFortran 
