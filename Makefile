# https://stackoverflow.com/questions/23494088/makefile-generic-target-rule

HEADERS = inc/common.h

SOURCES = src/*.c
OBJECTS = $(SOURCES:src/.c=.o)
EXECUTABLE = $(OBJECTS:.o=)

all: $(EXECUTABLE)

obj:
	mkdir $@

bin:
	mkdir $@

obj/%.o: src/%.c obj
	gcc -c $< -o $@

bin/%: obj/%.o bin
	gcc $< -o $@

clean: obj bin
	rmdir /S /Q $^
	




