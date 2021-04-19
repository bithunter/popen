CFLAGS += -Wall -Wextra -pedantic -Werror
CC = gcc

%.o: %.c
	$(CC) -c $^


proj3: mypopen.o util.o defs.h
	$(CC) $(CFLAGS) $(LIBS) -o mypopen mypopen.o util.o defs.h

clean:
	rm -f mypopen *.o

docs:
	@doxygen mypopendoxy


.PHONY: clean docs
