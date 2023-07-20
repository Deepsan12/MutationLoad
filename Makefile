CC = gcc
INCLUDES = -I/home/u32/sandeepb/tskit/c -I/home/u32/sandeepb/tskit/c/subprojects/kastore/
CFLAGS = $(INCLUDES) -O3 -frounding-math
mutationload: main.o dependencies/pcg_basic.o sharedfunc_flag.o relative_functions.o absolute_functions.o /home/u32/sandeepb/tskit/c/tskit/tables.o /home/u32/sandeepb/tskit/c/subprojects/kastore/kastore.o /home/u32/sandeepb/tskit/c/tskit/core.o /home/u32/sandeepb/tskit/c/tskit/trees.o
    $(CC) -O3 -frounding-math dependencies/pcg_basic.o main.o sharedfunc_flag.o relative_functions.o absolute_functions.o tables.o kastore.o core.o trees.o -lm -lgsl -lgslcblas -o mutationload
main.o: main.c
    $(CC) $(CFLAGS) -c main.c
dependencies/pcg_basic.o: dependencies/pcg_basic.c
    $(CC) $(CFLAGS) -c dependencies/pcg_basic.c
sharedfunc_flag.o: sharedfunc_flag.c
    $(CC) $(CFLAGS) -c sharedfunc_flag.c
relative_functions.o: relative_functions.c
    $(CC) $(CFLAGS) -c relative_functions.c
absolute_functions.o: absolute_functions.c
    $(CC) $(CFLAGS) -c absolute_functions.c
/home/u32/sandeepb/tskit/c/tskit/tables.o: /home/u32/sandeepb/tskit/c/tskit/tables.c
    $(CC) $(CFLAGS) -c -std=c99 /home/u32/sandeepb/tskit/c/tskit/tables.c
/home/u32/sandeepb/tskit/c/subprojects/kastore/kastore.o: /home/u32/sandeepb/tskit/c/subprojects/kastore/kastore.c
    $(CC) $(CFLAGS) -c -std=c99 /home/u32/sandeepb/tskit/c/subprojects/kastore/kastore.c
/home/u32/sandeepb/tskit/c/tskit/core.o: /home/u32/sandeepb/tskit/c/tskit/core.c
    $(CC) $(CFLAGS) -c -std=c99 /home/u32/sandeepb/tskit/c/tskit/core.c
/home/u32/sandeepb/tskit/c/tskit/trees.o: /home/u32/sandeepb/tskit/c/tskit/trees.c
	$(CC) $(CFLAGS) -c -std=c99 /home/u32/sandeepb/tskit/c/tskit/trees.c
