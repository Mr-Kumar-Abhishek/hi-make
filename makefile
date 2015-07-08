CC=gcc
CFLAGS=-I.
DEPS = himake.h
OBJ = himake.o printinghi.o

%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

himake: $(OBJ)
	$(CC) -o himake himake.o printinghi.o -I.
