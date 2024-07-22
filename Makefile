CC = g++
CPPFLAGS = -std=c++20 -g -Wall
SRCS = test.cpp
OBJS = $(SRCS:.cpp=.o)
BIN = test

.PHONY: depend clean

all:    $(BIN)

$(BIN): $(OBJS) 
	$(CC) $(CPPFLAGS) -o $(BIN) $(OBJS)

.cpp.o:
	$(CC) $(CPPFLAGS) -c $<  -o $@

clean:
	$(RM) *.o *~ $(BIN)

depend: $(SRCS)
	makedepend $(INCLUDES) $^

run:
	./$(BIN)
