all: main.o check_functions.o drawing_figures_functions.o drawing_line_functions.o input_functions.o mirror_function.o parse_functions.o png_functions.o outside_ornament.o
	gcc  src/main.o src/check_functions.o src/drawing_figures_functions.o src/drawing_line_functions.o src/input_functions.o src/mirror_function.o src/parse_functions.o src/png_functions.o src/outside_ornament.o -o cw -lpng -lm

main.o: src/main.c
	gcc -c src/main.c -o src/main.o

check_functions.o: src/check_functions.c src/check_functions.h
	gcc -c src/check_functions.c -o src/check_functions.o

drawing_figures_functions.o: src/drawing_figures_functions.c src/drawing_line_functions.h
	gcc -c src/drawing_figures_functions.c -o src/drawing_figures_functions.o

drawing_line_functions.o: src/drawing_line_functions.c src/drawing_line_functions.h
	gcc -c src/drawing_line_functions.c -o src/drawing_line_functions.o

input_functions.o: src/input_functions.c src/input_functions.h
	gcc -c src/input_functions.c -o src/input_functions.o

mirror_function.o: src/mirror_function.c src/mirror_function.h
	gcc -c src/mirror_function.c -o src/mirror_function.o

parse_functions.o: src/parse_functions.c src/parse_functions.h
	gcc -c src/parse_functions.c -o src/parse_functions.o

outside_ornament.o: src/outside_ornament.c src/outside_ornament.h
	gcc -c src/outside_ornament.c -o src/outside_ornament.o

png_functions.o: src/png_functions.c src/png_functions.h
	gcc -c src/png_functions.c -o src/png_functions.o

clean:
	rm src/*.o cw
