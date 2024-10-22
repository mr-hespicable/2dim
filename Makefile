GCC=gcc -Wall
BIN=3dim
FILES=$(**/*.c)
all:
	${GCC} -o ${BIN} ${FILES} `pkg-config sdl3 --cflags --libs`


