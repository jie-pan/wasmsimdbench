
echo -e "---add"
time add

echo -e "\n---add_sse"
time add_sse

echo -e "\n---add_avx"
time add_avx

echo -e "---v8 latest---"
echo -e "\n---add_wasm"
time ~/web/src/v8/v8/out.gn/x64.release/d8 --experimental-wasm-simd ./add_wasm.js

echo -e "\n---add_wasm_sse"
time ~/web/src/v8/v8/out.gn/x64.release/d8 --experimental-wasm-simd ./add_wasm_sse.js


echo -e "---v8 7.6.160---"
echo -e "\n---add_wasm"
time ~/web/src/v82/v8/out.gn/x64.release/d8 --experimental-wasm-simd ./add_wasm.js

echo -e "\n---add_wasm_sse org"
time ~/web/src/v82/v8/out.gn/x64.release_org/d8 --experimental-wasm-simd ./add_wasm_sse.js

echo -e "\n---add_wasm_sse --no-wasm-revec"
time ~/web/src/v82/v8/out.gn/x64.release/d8 --experimental-wasm-simd --no-wasm-revec ./add_wasm_sse.js

echo -e "\n---add_wasm_sse opt"
time ~/web/src/v82/v8/out.gn/x64.release/d8 --experimental-wasm-simd ./add_wasm_sse.js
