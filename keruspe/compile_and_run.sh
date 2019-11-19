#!/bin/sh

# compile main.c with the clang compiler driver specified as the cmdline arg
${1} -xc -fsanitize=address -o main-${1} main.c || exit
./main-${1}
echo "ldd output:"
ldd ./main-${1}
