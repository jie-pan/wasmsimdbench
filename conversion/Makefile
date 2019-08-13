
CC=gcc
CFLAGS= -g -O2 -std=c++11
SSECFLAGS= -g -O2 -msse4.2 -std=c++11
AVXCFLAGS= -g -O2 -mavx -std=c++11

EMCCFLAGS= -g -O3 -msimd128 -s SIMD=1 -std=c++11
#EMCCFLAGS= -g -O3   -munimplemented-simd128 -std=c++11
#EMCCFLAGS= -g -O3  -std=c++11

LIBS=

all: conversion conversion_sse conversion_wasm conversion_wasm_sse
#conversion_wasm conversion_wasm_sse
#conversion_avx  conversion_wasm  conversion_wasm_sse
#conversion_wasm_sse conversion_asmjs

conversion: conversion.cpp main.cpp
	$(CC) -o  $@ $^  $(CFLAGS) $(LIBS)

conversion_sse: conversion.cpp main.cpp
	$(CC) -DSIMDLENGTH=128 -o  $@ $^  $(SSECFLAGS) $(LIBS)

conversion_avx: conversion.cpp main.cpp
	$(CC) -DSIMDLENGTH=256 -o  $@ $^  $(AVXCFLAGS) $(LIBS)

#conversion_asmjs: conversion.cpp main.cpp
#	emcc -DTEST_SSE -o  $@.js $^  $(SSECFLAGS) $(LIBS) -s WASM=0

conversion_wasm_sse: conversion.cpp main.cpp
	emcc  -DSIMDLENGTH=128  $(EMCCFLAGS) $(LIBS) -s WASM=1 -o  $@.js $^ 
#emcc -v -DSIMDLENGTH=128  $(EMCCFLAGS) $(LIBS) -s WASM=1 -o  $@.js $^ 

conversion_wasm: conversion.cpp main.cpp
#EMCC_DEBUG=2 emcc -v -o  $@.js $^  $(CFLAGS) $(LIBS) -s WASM=1
	emcc -o  $@.js $^  $(CFLAGS) $(LIBS) -s WASM=1

run:
	./run.sh
clean:
	rm  conversion
	rm  conversion_sse
	rm  *.js
	rm *.map
	rm *.wasm
	rm *.wast
