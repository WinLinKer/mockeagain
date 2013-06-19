CC=gcc

.PHONY: all clean

all: mockeagain.so

%.so: %.c
	$(CC) -g -Wall -Werror -fPIC -shared $< -o $@ -ldl || \
	$(CC) -g -Wall -Werror -fPIC -shared $< -o $@

clean:
	rm -rf *.so *.o *.lo

