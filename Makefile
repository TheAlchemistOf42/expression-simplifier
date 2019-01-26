all: expression-simplifier

WARNINGS = -Wall
DEBUG = -ggdb -fno-omit-frame-pointer
OPTIMIZE = -O2

expression-simplifier: Makefile expression-simplifier.c
	$(CC) -o $@ $(WARNINGS) $(DEBUG) $(OPTIMIZE) expression-simplifier.c

clean:
	rm -f expression-simplifier

# Builder will call this to install the application before running.
install:
	echo "Installing is not supported"

# Builder uses this target to run your application.
run:
	./expression-simplifier

