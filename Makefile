cc = gcc
CFLAGS = -std=c11 -Wall -g
SRCS = test.c
OBJS = $(SRCS:.c=.o)
BIN = test

.PHONY: depend clean

all: $(BIN)

$(BIN): $(OBJS)
	$(CC) $(CFLAGS) -o $(BIN) $(OBJS)

.c.o:
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm *.o $(BIN)
run:
	./$(BIN)
