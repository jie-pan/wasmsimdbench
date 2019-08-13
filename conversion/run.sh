#rm test2.js
#rm test2.wasm

#emcc  -DSIMDLENGTH=128  -g -O3          -s SIMD=1 -std=c++11  -s WASM=1 -o tmp.js test.cpp
#emcc  -DSIMDLENGTH=128  -g -O3    -munimplemented-simd128  -s EXPORTED_FUNCTIONS='["threshold"]'   -std=c++11  -s WASM=1 -o test2.js test2.cpp
#emcc  -DSIMDLENGTH=128  -g -O3    -munimplemented-simd128  -Wpedantic -Werror -Wall -std=c++11  -s WASM=1 -o test2.js test2.cpp
 
#time ~/web/src/v8/v8/out.gn/x64.release/d8 --experimental-wasm-simd ./test2.js


echo "---conversion"
time conversion

echo -e "\n---conversion_sse"
time conversion_sse

echo -e "\n---conversion_wasm"
time ~/web/src/v8/v8/out.gn/x64.release/d8 --experimental-wasm-simd ./conversion_wasm.js

echo -e "\n---conversion_wasm_sse"
time ~/web/src/v8/v8/out.gn/x64.release/d8 --experimental-wasm-simd ./conversion_wasm_sse.js
