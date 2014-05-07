CC=gcc
CCOPT=-fno-strict-aliasing -Wstrict-prototypes -g
CCOPTOPT=-O3
GLIBCGIX=-D_GNU_SOURCE
CFLAGS=$(CCOPTOPT) $(CCOPT) $(GLIBCFIX)
TARGETS =pid2 test
.PHONY:all clean
all:$(TARGETS)
%.s: %.c
	$(COMPILE.c) $< -S -o $@
%.o: %.c
	$(COMPILE.c) $< -o $@
$(TARGETS): %: %.o
	$(LINK.o) $^ -o $@
clean:
	rm pid2 pid2.o test test.o 
	
