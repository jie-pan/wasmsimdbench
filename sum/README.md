  d8 --experimental-wasm-simd  xxx.js

~/src/wasmsimdbench$ time ./sum
./sum: sum = 1104622080.000000

real	0m8.347s
user	0m8.347s
sys	0m0.000s
~/src/wasmsimdbench$ time ./sum_sse 
./sum_sse: sum = 1111505152.000000

real	0m1.919s
user	0m1.915s
sys	0m0.004s
~/src/wasmsimdbench/bench_sum_wasm$ time ~/src/v8/v8/out.gn/x64.release/d8 ./sum_wasm.js
./this.program: sum = 1104622080.000000

real	0m8.731s
user	0m8.753s
sys	0m0.020s
~/src/wasmsimdbench/bench_sum_sse_wasm$ time ~/src/v8/v8/out.gn/x64.release/d8  --experimental-wasm-simd  ./sum_wasm.js
./this.program: sum = 1111505152.000000

real	0m2.293s
user	0m2.311s
sys	0m0.029s
