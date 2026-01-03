PKG_CFLAGS := $(shell pkg-config --cflags libpng)
PKG_LIBS   := $(shell pkg-config --libs libpng)

SRC = src/main.c src/check_functions.c src/drawing_figures_functions.c src/drawing_line_functions.c src/input_functions.c src/mirror_function.c src/parse_functions.c src/png_functions.c src/outside_ornament.c
OBJ = $(SRC:.c=.o)

all: $(OBJ)
	gcc $(OBJ) -o cw $(PKG_LIBS) -lm

src/%.o: src/%.c
	gcc $(PKG_CFLAGS) -c $< -o $@

clean:
	rm src/*.o cw
