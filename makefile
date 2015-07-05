CC=gcc
CFLAGS=-I.

himake: himake.o printinghi.o
	$(CC) -o himake himake.o printinghi.o -I.
