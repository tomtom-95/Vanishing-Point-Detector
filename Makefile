.RECIPEPREFIX = <
.PHONY = main run clean


CPP = clang++
CFLAGS = -Wall -Wextra -std=c++11 -g3 -O0

INCLUDE = -I.
INCLUDE += $(shell pkg-config --cflags armadillo opencv4)
LDFLAGS = -L.
LDFLAGS += $(shell pkg-config --libs armadillo opencv4)

main:
< ${CPP} ${CFLAGS} ${INCLUDE} ${LDFLAGS} -o build/main main.cpp

run:
< build/main

clean:
< rm -rf build/*
