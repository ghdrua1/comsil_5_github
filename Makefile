

CC = gcc
CFLAGS = -c
TARGET = animal.exe
OBJS = dog.o blackcow.o turtle.o main.o

$(TARGET) : $(OBJS)
	$(CC) -o $(TARGET) $(OBJS)

dog.o : dog.c animal.h
	$(CC) $(CFLAGS) -o dog.o dog.c

blackcow.o : blackcow.c animal.h
	$(CC) $(CFLAGS) -o blackcow.o blackcow.c

turtle.o : turtle.c animal.h
	$(CC) $(CFLAGS) -o turtle.o turtle.c
main.o : main.c animal.h
	$(CC) $(CFLAGS) -o main.o main.c

.PHONY: clean

clean:
	
	rm -f *.o
	rm -f $(TARGET)
