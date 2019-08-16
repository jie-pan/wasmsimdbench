
echo -e "---threshold"
time threshold

echo -e "\n---threshold_sse"
time threshold_sse

#echo -e "\n---v8 latest---"
#echo -e "---threshold_wasm"
#time ~/web/src/v8/v8/out.gn/x64.release/d8 --experimental-wasm-simd ./threshold_wasm.js
#
#echo -e "\n---threshold_wasm_sse"
#time ~/web/src/v8/v8/out.gn/x64.release/d8 --experimental-wasm-simd ./threshold_wasm_sse.js


echo -e "\n---v8 7.6.160---"
echo -e "---threshold_wasm org"
time ~/web/src/v82/v8/out.gn/x64.release_org/d8 --experimental-wasm-simd ./threshold_wasm.js

echo -e "\n---threshold_wasm_sse org"
time ~/web/src/v82/v8/out.gn/x64.release_org/d8 --experimental-wasm-simd ./threshold_wasm_sse.js

echo -e "\n---threshold_wasm_sse --no-wasm-revec"
time ~/web/src/v82/v8/out.gn/x64.release/d8 --experimental-wasm-simd --no-wasm-revec ./threshold_wasm_sse.js

echo -e "\n---threshold_wasm_sse opt"
time ~/web/src/v82/v8/out.gn/x64.release/d8 --experimental-wasm-simd ./threshold_wasm_sse.js
