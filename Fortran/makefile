#Fortran

all: compile clean 

compile:
	@gfortran -c SortFortran.f90
	@gfortran SortFortran.o -o SortFortran
	@./SortFortran
clean:
	@rm -rf *.o
	@rm -rf SortFortran
