.PHONY: all

all: example-make-lib

install: example-make-lib
	install -D example-make-lib $(DESTDIR)/bin/example-make-lib

example-make-lib: main.c
	$(CC) -lwget -o $@ $<

clean: example-make-lib
	$(RM) $<
