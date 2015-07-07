CC=gcc
CFLAGS=-I.
DEPS = himake.h

%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

himake: himake.o printinghi.o
	$(CC) -o himake himake.o printinghi.o -I.
