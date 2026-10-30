CC      ?= gcc
CFLAGS  ?= -std=c99 -O2 -Wall -Wextra -pedantic
ROM     ?= ../../fe6re.gba

fe6extract: main.c fe6.c fe6.h
	$(CC) $(CFLAGS) -o $@ main.c fe6.c

.PHONY: test clean
test: fe6extract
	./fe6extract info $(ROM)
	./fe6extract pinfo $(ROM) --verify --limit 5

clean:
	rm -f fe6extract fe6extract.exe
