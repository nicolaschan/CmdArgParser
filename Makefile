CC     = g++
CFLAGS = -std=c++14
OBJS   = Parser.o main.o
TARGET = target

.PHONY: all

all: $(OBJS)
	$(CC) $(CFLAGS) $(OBJS) -o $(TARGET) 
	 
Parser.o: Parser.cpp
	$(CC) -c $(CFLAGS) Parser.cpp -o Parser.o

main.o: main.cpp
	$(CC) -c $(CFLAGS) main.cpp -o main.o

run: all
	./$(TARGET)