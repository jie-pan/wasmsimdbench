
CC=gcc
SSECFLAGS= -g -O3 -msse3 -std=c++11
CFLAGS= -g -O3 -std=c++11
LIBS=-lm

all: sum sum_sse  sum_wasm 
#sum_wasm_sse sum_asmjs

sum: sum.cpp main.cpp
	$(CC) -o  $@ $^  $(CFLAGS) $(LIBS)

sum_sse: sum.cpp main.cpp
	$(CC) -DTEST_SSE -o  $@ $^  $(SSECFLAGS) $(LIBS)

sum_asmjs: sum.cpp main.cpp
	emcc -DTEST_SSE -o  $@.js $^  $(SSECFLAGS) $(LIBS) -s WASM=0

#sum_sse_wasm: sum.cpp main.cpp
#EMCC_DEBUG=2 emcc -v -DTEST_SSE -o  $@.js $^  $(SSECFLAGS) $(LIBS) -s WASM=1

sum_wasm: sum.cpp main.cpp
#EMCC_DEBUG=2 emcc -v -o  $@.js $^  $(CFLAGS) $(LIBS) -s WASM=1
	emcc  -o  $@.js $^  $(CFLAGS) $(LIBS) -s WASM=1

clean:
	rm  sum
	rm  sum_sse
	rm  *.js
	rm *.map
	rm sum_wasm.wasm
	rm sum_wasm.wast
