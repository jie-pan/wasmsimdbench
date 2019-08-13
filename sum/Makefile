
CC=gcc
CFLAGS= -g -O2 -std=c++11
SSECFLAGS= -g -O2 -msse3 -std=c++11
AVXCFLAGS= -g -O2 -mavx -std=c++11
EMCCFLAGS= -g -O2 -msse3 -std=c++11
LIBS=

all: sum sum_sse  sum_wasm 
#sum_wasm_sse sum_asmjs

sum: sum.cpp main.cpp
	$(CC) -o  $@ $^  $(CFLAGS) $(LIBS)

sum_sse: sum.cpp main.cpp
	$(CC) -DSIMDLENGTH=128 -o  $@ $^  $(SSECFLAGS) $(LIBS)

sum_asmjs: sum.cpp main.cpp
	emcc -DSIMDLENGTH=128 -o  $@.js $^  $(SSECFLAGS) $(LIBS) -s WASM=0

#sum_wasm_sse: sum.cpp main.cpp
#EMCC_DEBUG=2 emcc -v -DSIMDLENGTH=128 -o  $@.js $^  $(SSECFLAGS) $(LIBS) -s WASM=1

sum_wasm: sum.cpp main.cpp
#EMCC_DEBUG=2 emcc -v -o  $@.js $^  $(CFLAGS) $(LIBS) -s WASM=1
	emcc  -o  $@.js $^  $(CFLAGS) $(LIBS) -s WASM=1

clean:
	rm  sum
	rm  sum_sse
	rm  *.js
	rm *.map
	rm *.wasm
	rm *.wast
