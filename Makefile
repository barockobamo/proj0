HEADERS = inc/common.h

all: bin/s bin/c

obj:
	mkdir $@

bin:
	mkdir $@

obj/s.o: src/main_s.c obj
	gcc -c $< -o $@

obj/c.o: src/main_c.c obj
	gcc -c $< -o $@

bin/s: obj/s.o bin
	gcc $< -o $@

bin/c: obj/c.o bin
	gcc $< -o $@

clean: obj bin
	rmdir /S /Q $^
	




