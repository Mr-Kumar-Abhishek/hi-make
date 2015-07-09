IDIR =../inlcude
CC=gcc
CFLAGS=-I$(IDIR)

ODIR=obj
LDIR =../lib

LIBS=-lm

_DEPS = himake.h
DEPS = $(patsubst %, $(IDIR)/%,$(_DEPS))

_OBJ = himake.o printinghi.o
OBJ = $(patsubst %,$(ODIR)/%,$(_OBJ))

$(ODIR)/%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

himake: $(OBJ)
	$(CC) -o $@ $^ $(CFLAGS) $(LIBS)

.PHONY: clean

clean: rm -f $(ODIR)/*.o *~ core $(INCDIR)/ *~
