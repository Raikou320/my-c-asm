all: program

program: main.c utils.o
	gcc main.c utils.o -o program

utils.o: utils.asm
	nasm -f elf64 utils.asm -o utils.o

clean:
	rm -f *.o program