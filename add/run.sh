
echo -e "---add"
time add

echo -e "\n---add_sse"
time add_sse

echo -e "\n---add_avx"
time add_avx

#echo -e "\n---v8 latest---"
#echo -e "---add_wasm"
#time ~/web/src/v8/v8/out.gn/x64.release/d8 --experimental-wasm-simd ./add_wasm.js

#echo -e "\n---add_wasm_sse"
#time ~/web/src/v8/v8/out.gn/x64.release/d8 --experimental-wasm-simd ./add_wasm_sse.js


echo -e "\n---v8 7.6.160---"
echo -e "---add_wasm"
time ~/web/src/v82/v8/out.gn/x64.release_org/d8 --experimental-wasm-simd ./add_wasm.js

#echo -e "\n---add_wasm_sse org"
#time ~/web/src/v82/v8/out.gn/x64.release_org/d8 --experimental-wasm-simd ./add_wasm_sse.js

echo -e "\n---add_wasm_sse --no-wasm-revec"
time ~/web/src/v82/v8/out.gn/x64.release/d8 --experimental-wasm-simd --no-wasm-revec ./add_wasm_sse.js

echo -e "\n---add_wasm_sse opt"
time ~/web/src/v82/v8/out.gn/x64.release/d8 --experimental-wasm-simd --wasm-revec ./add_wasm_sse.js
