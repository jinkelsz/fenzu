all:pid2 test
pid2:pid2.o 
	gcc -o pid2 pid2.o
pid2.o:pid2.c 
	gcc -c pid.c
test:test.o student_info.h
	gcc -o test test.o
test.o:test.c
	gcc -c test.c

