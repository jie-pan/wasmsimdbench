(module
  (type (;0;) (func (param i32 i32 i32) (result i32)))
  (type (;1;) (func (param i32 f64 i32 i32 i32 i32) (result i32)))
  (type (;2;) (func (param i32 i32)))
  (type (;3;) (func (param i32) (result i32)))
  (type (;4;) (func (param i32 i64 i32) (result i64)))
  (type (;5;) (func (param i32)))
  (type (;6;) (func (param i32 i32) (result i32)))
  (type (;7;) (func))
  (type (;8;) (func (result i32)))
  (type (;9;) (func (param i32 i32 i32) (result f32)))
  (type (;10;) (func (param f64 i32) (result f64)))
  (type (;11;) (func (param i32 i32 i32 i32) (result i32)))
  (type (;12;) (func (param i32 i32 i32)))
  (type (;13;) (func (param i64 i32 i32) (result i32)))
  (type (;14;) (func (param i64 i32) (result i32)))
  (type (;15;) (func (param i32 i32 i32 i32 i32)))
  (type (;16;) (func (param i32 i32 f64 i32 i32 i32 i32) (result i32)))
  (type (;17;) (func (param i32 i32 i32 i32 i32) (result i32)))
  (import "env" "abort" (func $abort (type 5)))
  (import "env" "___setErrNo" (func $___setErrNo (type 5)))
  (import "env" "___syscall140" (func $___syscall140 (type 6)))
  (import "env" "___syscall146" (func $___syscall146 (type 6)))
  (import "env" "___syscall54" (func $___syscall54 (type 6)))
  (import "env" "___syscall6" (func $___syscall6 (type 6)))
  (import "env" "_abort" (func $_abort (type 7)))
  (import "env" "_emscripten_get_heap_size" (func $_emscripten_get_heap_size (type 8)))
  (import "env" "_emscripten_memcpy_big" (func $_emscripten_memcpy_big (type 0)))
  (import "env" "_emscripten_resize_heap" (func $_emscripten_resize_heap (type 3)))
  (import "env" "abortOnCannotGrowMemory" (func $abortOnCannotGrowMemory (type 3)))
  (import "env" "setTempRet0" (func $setTempRet0 (type 5)))
  (import "env" "__table_base" (global (;0;) i32))
  (import "env" "DYNAMICTOP_PTR" (global (;1;) i32))
  (import "env" "memory" (memory (;0;) 256 256))
  (import "env" "table" (table (;0;) 12 12 funcref))
  (func $stackAlloc (type 3) (param i32) (result i32)
    (local i32)
    (local.set 1
      (global.get 2))
    (global.set 2
      (i32.add
        (local.get 0)
        (global.get 2)))
    (global.set 2
      (i32.and
        (i32.add
          (global.get 2)
          (i32.const 15))
        (i32.const -16)))
    (local.get 1))
  (func $stackSave (type 8) (result i32)
    (global.get 2))
  (func $stackRestore (type 5) (param i32)
    (global.set 2
      (local.get 0)))
  (func $establishStackSpace (type 2) (param i32 i32)
    (global.set 2
      (local.get 0))
    (global.set 3
      (local.get 1)))
  (func $__Z7sumfuncPfS_S_i (type 9) (param i32 i32 i32) (result f32)
    (local i32)
    (loop  ;; label = @1
      (v128.store
        (i32.add
          (i32.shl
            (local.get 3)
            (i32.const 2))
          (local.get 2))
        (f32x4.add
          (v128.load
            (i32.add
              (i32.shl
                (local.get 3)
                (i32.const 2))
              (local.get 0)))
          (v128.load
            (i32.add
              (i32.shl
                (local.get 3)
                (i32.const 2))
              (local.get 1)))))
      (br_if 0 (;@1;)
        (i32.ne
          (local.tee 3
            (i32.add
              (local.get 3)
              (i32.const 4)))
          (i32.const 1000))))
    (f32.const 0x1p+0 (;=1;)))
  (func $_main (type 6) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 f32 f32 f64)
    (local.set 2
      (global.get 2))
    (global.set 2
      (i32.add
        (global.get 2)
        (i32.const 12016)))
    (local.set 3
      (i32.add
        (local.get 2)
        (i32.const 12000)))
    (local.set 5
      (i32.add
        (local.get 2)
        (i32.const 8000)))
    (local.set 6
      (i32.add
        (local.get 2)
        (i32.const 4000)))
    (local.set 7
      (local.get 2))
    (local.set 0
      (i32.const 0))
    (loop  ;; label = @1
      (local.set 4
        (i32.add
          (i32.shl
            (local.get 0)
            (i32.const 2))
          (local.get 5)))
      (f32.store
        (local.get 4)
        (f32.const 0x1.99999ap-4 (;=0.1;)))
      (local.set 4
        (i32.add
          (i32.shl
            (local.get 0)
            (i32.const 2))
          (local.get 6)))
      (f32.store
        (local.get 4)
        (f32.const 0x1.99999ap-4 (;=0.1;)))
      (local.set 0
        (i32.add
          (local.get 0)
          (i32.const 1)))
      (br_if 0 (;@1;)
        (i32.ne
          (local.get 0)
          (i32.const 1000))))
    (local.set 0
      (i32.const 0))
    (loop  ;; label = @2
      (local.set 9
        (call $__Z7sumfuncPfS_S_i
          (local.get 5)
          (local.get 6)
          (local.get 7)))
      (local.set 8
        (f32.add
          (local.get 8)
          (local.get 9)))
      (local.set 0
        (i32.add
          (local.get 0)
          (i32.const 1)))
      (br_if 0 (;@2;)
        (i32.ne
          (local.get 0)
          (i32.const 10000000))))
    (local.set 0
      (i32.load
        (local.get 1)))
    (local.set 10
      (f64.promote_f32
        (local.get 8)))
    (i32.store
      (local.get 3)
      (local.get 0))
    (local.set 0
      (i32.add
        (local.get 3)
        (i32.const 8)))
    (f64.store
      (local.get 0)
      (local.get 10))
    (call $_printf
      (local.get 3))
    (global.set 2
      (local.get 2))
    (i32.const 0))
  (func $___stdio_close (type 3) (param i32) (result i32)
    (local i32)
    (local.set 1
      (global.get 2))
    (global.set 2
      (i32.add
        (global.get 2)
        (i32.const 16)))
    (i32.store
      (local.get 1)
      (i32.load offset=60
        (local.get 0)))
    (local.set 0
      (call $___syscall_ret
        (call $___syscall6
          (i32.const 6)
          (local.get 1))))
    (global.set 2
      (local.get 1))
    (local.get 0))
  (func $___stdout_write (type 0) (param i32 i32 i32) (result i32)
    (local i32 i32 i32)
    (local.set 4
      (global.get 2))
    (global.set 2
      (i32.add
        (global.get 2)
        (i32.const 32)))
    (local.set 5
      (i32.add
        (local.tee 3
          (local.get 4))
        (i32.const 16)))
    (i32.store
      (i32.add
        (local.get 0)
        (i32.const 36))
      (i32.const 2))
    (if  ;; label = @1
      (i32.eqz
        (i32.and
          (i32.load
            (local.get 0))
          (i32.const 64)))
      (then
        (i32.store
          (local.get 3)
          (i32.load
            (i32.add
              (local.get 0)
              (i32.const 60))))
        (i32.store
          (i32.add
            (local.get 3)
            (i32.const 4))
          (i32.const 21523))
        (i32.store
          (i32.add
            (local.get 3)
            (i32.const 8))
          (local.get 5))
        (if  ;; label = @2
          (call $___syscall54
            (i32.const 54)
            (local.get 3))
          (then
            (i32.store8
              (i32.add
                (local.get 0)
                (i32.const 75))
              (i32.const -1))))))
    (local.set 0
      (call $___stdio_write
        (local.get 0)
        (local.get 1)
        (local.get 2)))
    (global.set 2
      (local.get 4))
    (local.get 0))
  (func $___stdio_seek (type 4) (param i32 i64 i32) (result i64)
    (local i32 i32)
    (local.set 4
      (global.get 2))
    (global.set 2
      (i32.add
        (global.get 2)
        (i32.const 32)))
    (i32.store
      (local.tee 3
        (i32.add
          (local.get 4)
          (i32.const 8)))
      (i32.load
        (i32.add
          (local.get 0)
          (i32.const 60))))
    (i64.store32
      (i32.add
        (local.get 3)
        (i32.const 4))
      (i64.shr_u
        (local.get 1)
        (i64.const 32)))
    (i64.store32
      (i32.add
        (local.get 3)
        (i32.const 8))
      (local.get 1))
    (i32.store
      (i32.add
        (local.get 3)
        (i32.const 12))
      (local.tee 0
        (local.get 4)))
    (i32.store
      (i32.add
        (local.get 3)
        (i32.const 16))
      (local.get 2))
    (local.set 1
      (if (result i64)  ;; label = @1
        (i32.lt_s
          (call $___syscall_ret
            (call $___syscall140
              (i32.const 140)
              (local.get 3)))
          (i32.const 0))
        (then
          (i64.store
            (local.get 0)
            (i64.const -1))
          (i64.const -1))
        (else
          (i64.load
            (local.get 0)))))
    (global.set 2
      (local.get 4))
    (local.get 1))
  (func $___syscall_ret (type 3) (param i32) (result i32)
    (if (result i32)  ;; label = @1
      (i32.gt_u
        (local.get 0)
        (i32.const -4096))
      (then
        (i32.store
          (i32.const 3072)
          (i32.sub
            (i32.const 0)
            (local.get 0)))
        (i32.const -1))
      (else
        (local.get 0))))
  (func $___errno_location (type 8) (result i32)
    (i32.const 3072))
  (func $___stdio_write (type 0) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    (local.set 6
      (global.get 2))
    (global.set 2
      (i32.add
        (global.get 2)
        (i32.const 48)))
    (local.set 5
      (i32.add
        (local.get 6)
        (i32.const 32)))
    (i32.store
      (local.tee 3
        (local.get 6))
      (local.tee 4
        (i32.load
          (local.tee 9
            (i32.add
              (local.get 0)
              (i32.const 28))))))
    (i32.store
      (i32.add
        (local.get 3)
        (i32.const 4))
      (local.tee 4
        (i32.sub
          (i32.load
            (local.tee 10
              (i32.add
                (local.get 0)
                (i32.const 20))))
          (local.get 4))))
    (i32.store
      (i32.add
        (local.get 3)
        (i32.const 8))
      (local.get 1))
    (i32.store
      (i32.add
        (local.get 3)
        (i32.const 12))
      (local.get 2))
    (i32.store
      (local.tee 1
        (i32.add
          (local.get 3)
          (i32.const 16)))
      (i32.load
        (local.tee 12
          (i32.add
            (local.get 0)
            (i32.const 60)))))
    (i32.store
      (i32.add
        (local.get 1)
        (i32.const 4))
      (local.get 3))
    (i32.store
      (i32.add
        (local.get 1)
        (i32.const 8))
      (i32.const 2))
    (block  ;; label = @1
      (block  ;; label = @2
        (br_if 0 (;@2;)
          (i32.eq
            (local.tee 4
              (i32.add
                (local.get 2)
                (local.get 4)))
            (local.tee 1
              (call $___syscall_ret
                (call $___syscall146
                  (i32.const 146)
                  (local.get 1))))))
        (local.set 7
          (i32.const 2))
        (loop  ;; label = @3
          (if  ;; label = @4
            (i32.ge_s
              (local.get 1)
              (i32.const 0))
            (then
              (local.set 4
                (i32.sub
                  (local.get 4)
                  (local.get 1)))
              (i32.store
                (local.tee 3
                  (select
                    (i32.add
                      (local.get 3)
                      (i32.const 8))
                    (local.get 3)
                    (local.tee 11
                      (i32.gt_u
                        (local.get 1)
                        (local.tee 8
                          (i32.load
                            (i32.add
                              (local.get 3)
                              (i32.const 4))))))))
                (i32.add
                  (local.tee 1
                    (i32.sub
                      (local.get 1)
                      (select
                        (local.get 8)
                        (i32.const 0)
                        (local.get 11))))
                  (i32.load
                    (local.get 3))))
              (i32.store
                (local.tee 8
                  (i32.add
                    (local.get 3)
                    (i32.const 4)))
                (i32.sub
                  (i32.load
                    (local.get 8))
                  (local.get 1)))
              (i32.store
                (local.get 5)
                (i32.load
                  (local.get 12)))
              (i32.store
                (i32.add
                  (local.get 5)
                  (i32.const 4))
                (local.get 3))
              (i32.store
                (i32.add
                  (local.get 5)
                  (i32.const 8))
                (local.tee 7
                  (i32.add
                    (i32.shr_s
                      (i32.shl
                        (local.get 11)
                        (i32.const 31))
                      (i32.const 31))
                    (local.get 7))))
              (br_if 2 (;@2;)
                (i32.eq
                  (local.tee 1
                    (call $___syscall_ret
                      (call $___syscall146
                        (i32.const 146)
                        (local.get 5))))
                  (local.get 4)))
              (br 1 (;@3;)))))
        (i32.store
          (i32.add
            (local.get 0)
            (i32.const 16))
          (i32.const 0))
        (i32.store
          (local.get 9)
          (i32.const 0))
        (i32.store
          (local.get 10)
          (i32.const 0))
        (i32.store
          (local.get 0)
          (i32.or
            (i32.load
              (local.get 0))
            (i32.const 32)))
        (local.set 2
          (if (result i32)  ;; label = @5
            (i32.eq
              (local.get 7)
              (i32.const 2))
            (then
              (i32.const 0))
            (else
              (i32.sub
                (local.get 2)
                (i32.load
                  (i32.add
                    (local.get 3)
                    (i32.const 4)))))))
        (br 1 (;@4;)))
      (i32.store
        (i32.add
          (local.get 0)
          (i32.const 16))
        (i32.add
          (local.tee 1
            (i32.load
              (i32.add
                (local.get 0)
                (i32.const 44))))
          (i32.load
            (i32.add
              (local.get 0)
              (i32.const 48)))))
      (i32.store
        (local.get 9)
        (local.get 1))
      (i32.store
        (local.get 10)
        (local.get 1)))
    (global.set 2
      (local.get 6))
    (local.get 2))
  (func $_frexp (type 10) (param f64 i32) (result f64)
    (local i32 i64 i64)
    (block  ;; label = @1
      (block  ;; label = @2
        (if  ;; label = @3
          (local.tee 2
            (i32.and
              (i32.wrap_i64
                (local.tee 4
                  (i64.shr_u
                    (local.tee 3
                      (i64.reinterpret_f64
                        (local.get 0)))
                    (i64.const 52))))
              (i32.const 2047)))
          (then
            (if  ;; label = @4
              (i32.eq
                (local.get 2)
                (i32.const 2047))
              (then
                (br 3 (;@1;)))
              (else
                (br 2 (;@2;))))
            (unreachable)))
        (i32.store
          (local.get 1)
          (if (result i32)  ;; label = @5
            (f64.ne
              (local.get 0)
              (f64.const 0x0p+0 (;=0;)))
            (then
              (local.set 0
                (call $_frexp
                  (f64.mul
                    (local.get 0)
                    (f64.const 0x1p+64 (;=1.84467e+19;)))
                  (local.get 1)))
              (i32.add
                (i32.load
                  (local.get 1))
                (i32.const -64)))
            (else
              (i32.const 0))))
        (br 1 (;@4;)))
      (i32.store
        (local.get 1)
        (i32.add
          (i32.and
            (i32.wrap_i64
              (local.get 4))
            (i32.const 2047))
          (i32.const -1022)))
      (local.set 0
        (f64.reinterpret_i64
          (i64.or
            (i64.and
              (local.get 3)
              (i64.const -9218868437227405313))
            (i64.const 4602678819172646912)))))
    (local.get 0))
  (func $_memchr (type 6) (param i32 i32) (result i32)
    (local i32)
    (block  ;; label = @1
      (block  ;; label = @2
        (block  ;; label = @3
          (if  ;; label = @4
            (i32.and
              (local.tee 2
                (i32.ne
                  (local.get 1)
                  (i32.const 0)))
              (i32.ne
                (i32.and
                  (local.get 0)
                  (i32.const 3))
                (i32.const 0)))
            (then
              (loop  ;; label = @5
                (br_if 2 (;@3;)
                  (i32.eqz
                    (i32.load8_u
                      (local.get 0))))
                (br_if 0 (;@5;)
                  (i32.and
                    (local.tee 2
                      (i32.ne
                        (local.tee 1
                          (i32.add
                            (local.get 1)
                            (i32.const -1)))
                        (i32.const 0)))
                    (i32.ne
                      (i32.and
                        (local.tee 0
                          (i32.add
                            (local.get 0)
                            (i32.const 1)))
                        (i32.const 3))
                      (i32.const 0)))))))
          (br_if 1 (;@4;)
            (i32.eqz
              (local.get 2))))
        (if  ;; label = @6
          (i32.eqz
            (i32.load8_u
              (local.get 0)))
          (then
            (br_if 1 (;@5;)
              (i32.eqz
                (local.get 1)))
            (br 2 (;@4;))))
        (block  ;; label = @7
          (block  ;; label = @8
            (br_if 0 (;@8;)
              (i32.le_u
                (local.get 1)
                (i32.const 3)))
            (loop  ;; label = @9
              (if  ;; label = @10
                (i32.eqz
                  (i32.and
                    (i32.xor
                      (i32.and
                        (local.tee 2
                          (i32.load
                            (local.get 0)))
                        (i32.const -2139062144))
                      (i32.const -2139062144))
                    (i32.add
                      (local.get 2)
                      (i32.const -16843009))))
                (then
                  (local.set 0
                    (i32.add
                      (local.get 0)
                      (i32.const 4)))
                  (br_if 1 (;@9;)
                    (i32.gt_u
                      (local.tee 1
                        (i32.add
                          (local.get 1)
                          (i32.const -4)))
                      (i32.const 3)))
                  (br 2 (;@8;)))))
            (br 1 (;@9;)))
          (br_if 1 (;@9;)
            (i32.eqz
              (local.get 1))))
        (loop  ;; label = @11
          (br_if 2 (;@9;)
            (i32.eqz
              (i32.load8_u
                (local.get 0))))
          (br_if 1 (;@10;)
            (i32.eqz
              (local.tee 1
                (i32.add
                  (local.get 1)
                  (i32.const -1)))))
          (local.set 0
            (i32.add
              (local.get 0)
              (i32.const 1)))
          (br 0 (;@11;))
          (unreachable))
        (unreachable))
      (local.set 0
        (i32.const 0)))
    (local.get 0))
  (func $_fmt_fp (type 1) (param i32 f64 i32 i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i64 i64 f64)
    (local.set 21
      (global.get 2))
    (global.set 2
      (i32.add
        (global.get 2)
        (i32.const 560)))
    (local.set 6
      (i32.add
        (local.get 21)
        (i32.const 32)))
    (local.set 17
      (local.tee 12
        (local.get 21)))
    (i32.store
      (local.tee 9
        (i32.add
          (local.get 12)
          (i32.const 536)))
      (i32.const 0))
    (local.set 16
      (i32.add
        (local.tee 8
          (i32.add
            (local.get 12)
            (i32.const 540)))
        (i32.const 12)))
    (local.set 20
      (if (result i32)  ;; label = @1
        (i64.lt_s
          (local.tee 25
            (i64.reinterpret_f64
              (local.get 1)))
          (i64.const 0))
        (then
          (local.set 25
            (i64.reinterpret_f64
              (local.tee 1
                (f64.neg
                  (local.get 1)))))
          (local.set 19
            (i32.const 1927))
          (i32.const 1))
        (else
          (local.set 19
            (select
              (i32.const 1930)
              (select
                (i32.const 1933)
                (i32.const 1928)
                (i32.and
                  (local.get 4)
                  (i32.const 1)))
              (i32.and
                (local.get 4)
                (i32.const 2048))))
          (i32.ne
            (i32.and
              (local.get 4)
              (i32.const 2049))
            (i32.const 0)))))
    (local.set 0
      (if (result i32)  ;; label = @2
        (i64.eq
          (i64.and
            (local.get 25)
            (i64.const 9218868437227405312))
          (i64.const 9218868437227405312))
        (then
          (local.set 5
            (select
              (select
                (i32.const 1954)
                (i32.const 1958)
                (local.tee 3
                  (i32.ne
                    (i32.and
                      (local.get 5)
                      (i32.const 32))
                    (i32.const 0))))
              (select
                (i32.const 1946)
                (i32.const 1950)
                (local.get 3))
              (f64.ne
                (local.get 1)
                (local.get 1))))
          (call $_pad_524
            (local.get 0)
            (i32.const 32)
            (local.get 2)
            (local.tee 3
              (i32.add
                (local.get 20)
                (i32.const 3)))
            (i32.and
              (local.get 4)
              (i32.const -65537)))
          (call $_out
            (local.get 0)
            (local.get 19)
            (local.get 20))
          (call $_out
            (local.get 0)
            (local.get 5)
            (i32.const 3))
          (call $_pad_524
            (local.get 0)
            (i32.const 32)
            (local.get 2)
            (local.get 3)
            (i32.xor
              (local.get 4)
              (i32.const 8192)))
          (local.get 3))
        (else
          (block (result i32)  ;; label = @3
            (if  ;; label = @4
              (local.tee 7
                (f64.ne
                  (local.tee 1
                    (f64.mul
                      (call $_frexp
                        (local.get 1)
                        (local.get 9))
                      (f64.const 0x1p+1 (;=2;))))
                  (f64.const 0x0p+0 (;=0;))))
              (then
                (i32.store
                  (local.get 9)
                  (i32.add
                    (i32.load
                      (local.get 9))
                    (i32.const -1)))))
            (if  ;; label = @5
              (i32.eq
                (local.tee 15
                  (i32.or
                    (local.get 5)
                    (i32.const 32)))
                (i32.const 97))
              (then
                (local.set 13
                  (select
                    (i32.add
                      (local.get 19)
                      (i32.const 9))
                    (local.get 19)
                    (local.tee 11
                      (i32.and
                        (local.get 5)
                        (i32.const 32)))))
                (if  ;; label = @6
                  (i32.eqz
                    (i32.or
                      (i32.eqz
                        (local.tee 7
                          (i32.sub
                            (i32.const 12)
                            (local.get 3))))
                      (i32.gt_u
                        (local.get 3)
                        (i32.const 11))))
                  (then
                    (local.set 28
                      (f64.const 0x1p+3 (;=8;)))
                    (loop  ;; label = @7
                      (local.set 28
                        (f64.mul
                          (local.get 28)
                          (f64.const 0x1p+4 (;=16;))))
                      (br_if 0 (;@7;)
                        (local.tee 7
                          (i32.add
                            (local.get 7)
                            (i32.const -1)))))
                    (local.set 1
                      (if (result f64)  ;; label = @8
                        (i32.eq
                          (i32.load8_s
                            (local.get 13))
                          (i32.const 45))
                        (then
                          (f64.neg
                            (f64.add
                              (local.get 28)
                              (f64.sub
                                (f64.neg
                                  (local.get 1))
                                (local.get 28)))))
                        (else
                          (f64.sub
                            (f64.add
                              (local.get 1)
                              (local.get 28))
                            (local.get 28)))))))
                (local.set 10
                  (i32.or
                    (local.get 20)
                    (i32.const 2)))
                (if  ;; label = @9
                  (i32.eq
                    (local.get 16)
                    (local.tee 7
                      (call $_fmt_u
                        (i64.extend_i32_s
                          (select
                            (i32.sub
                              (i32.const 0)
                              (local.tee 6
                                (i32.load
                                  (local.get 9))))
                            (local.get 6)
                            (i32.lt_s
                              (local.get 6)
                              (i32.const 0))))
                        (local.get 16))))
                  (then
                    (i32.store8
                      (local.tee 7
                        (i32.add
                          (local.get 8)
                          (i32.const 11)))
                      (i32.const 48))))
                (i32.store8
                  (i32.add
                    (local.get 7)
                    (i32.const -1))
                  (i32.add
                    (i32.and
                      (i32.shr_s
                        (local.get 6)
                        (i32.const 31))
                      (i32.const 2))
                    (i32.const 43)))
                (i32.store8
                  (local.tee 7
                    (i32.add
                      (local.get 7)
                      (i32.const -2)))
                  (i32.add
                    (local.get 5)
                    (i32.const 15)))
                (local.set 8
                  (i32.lt_s
                    (local.get 3)
                    (i32.const 1)))
                (local.set 9
                  (i32.eqz
                    (i32.and
                      (local.get 4)
                      (i32.const 8))))
                (local.set 5
                  (local.get 12))
                (loop  ;; label = @10
                  (i32.store8
                    (local.get 5)
                    (i32.or
                      (local.get 11)
                      (i32.load8_u
                        (i32.add
                          (local.tee 6
                            (i32.trunc_f64_s
                              (local.get 1)))
                          (i32.const 1488)))))
                  (local.set 1
                    (f64.mul
                      (f64.sub
                        (local.get 1)
                        (f64.convert_i32_s
                          (local.get 6)))
                      (f64.const 0x1p+4 (;=16;))))
                  (local.set 5
                    (if (result i32)  ;; label = @11
                      (i32.eq
                        (i32.sub
                          (local.tee 6
                            (i32.add
                              (local.get 5)
                              (i32.const 1)))
                          (local.get 17))
                        (i32.const 1))
                      (then
                        (if (result i32)  ;; label = @12
                          (i32.and
                            (i32.and
                              (local.get 8)
                              (f64.eq
                                (local.get 1)
                                (f64.const 0x0p+0 (;=0;))))
                            (local.get 9))
                          (then
                            (local.get 6))
                          (else
                            (i32.store8
                              (local.get 6)
                              (i32.const 46))
                            (i32.add
                              (local.get 5)
                              (i32.const 2)))))
                      (else
                        (local.get 6))))
                  (f64.ne
                    (local.get 1)
                    (f64.const 0x0p+0 (;=0;)))
                  (br_if 0 (;@12;)))
                (local.set 3
                  (block (result i32)  ;; label = @13
                    (block  ;; label = @14
                      (br_if 0 (;@14;)
                        (i32.eqz
                          (local.get 3)))
                      (br_if 0 (;@14;)
                        (i32.ge_s
                          (i32.add
                            (local.get 5)
                            (i32.sub
                              (i32.const -2)
                              (local.get 17)))
                          (local.get 3)))
                      (local.set 8
                        (i32.sub
                          (i32.add
                            (local.get 16)
                            (i32.add
                              (local.get 3)
                              (i32.const 2)))
                          (local.get 7)))
                      (br 1 (;@13;)
                        (local.get 7)))
                    (local.set 8
                      (i32.add
                        (local.get 5)
                        (i32.sub
                          (i32.sub
                            (local.get 16)
                            (local.get 17))
                          (local.get 7))))
                    (local.get 7)))
                (call $_pad_524
                  (local.get 0)
                  (i32.const 32)
                  (local.get 2)
                  (local.tee 6
                    (i32.add
                      (local.get 8)
                      (local.get 10)))
                  (local.get 4))
                (call $_out
                  (local.get 0)
                  (local.get 13)
                  (local.get 10))
                (call $_pad_524
                  (local.get 0)
                  (i32.const 48)
                  (local.get 2)
                  (local.get 6)
                  (i32.xor
                    (local.get 4)
                    (i32.const 65536)))
                (call $_out
                  (local.get 0)
                  (local.get 12)
                  (local.tee 5
                    (i32.sub
                      (local.get 5)
                      (local.get 17))))
                (call $_pad_524
                  (local.get 0)
                  (i32.const 48)
                  (i32.sub
                    (local.get 8)
                    (i32.add
                      (local.get 5)
                      (local.tee 3
                        (i32.sub
                          (local.get 16)
                          (local.get 3)))))
                  (i32.const 0)
                  (i32.const 0))
                (call $_out
                  (local.get 0)
                  (local.get 7)
                  (local.get 3))
                (call $_pad_524
                  (local.get 0)
                  (i32.const 32)
                  (local.get 2)
                  (local.get 6)
                  (i32.xor
                    (local.get 4)
                    (i32.const 8192)))
                (br 1 (;@13;)
                  (local.get 6))))
            (if  ;; label = @15
              (local.get 7)
              (then
                (i32.store
                  (local.get 9)
                  (local.tee 7
                    (i32.add
                      (i32.load
                        (local.get 9))
                      (i32.const -28))))
                (local.set 1
                  (f64.mul
                    (local.get 1)
                    (f64.const 0x1p+28 (;=2.68435e+08;)))))
              (else
                (local.set 7
                  (i32.load
                    (local.get 9)))))
            (local.set 6
              (local.tee 13
                (select
                  (local.get 6)
                  (i32.add
                    (local.get 6)
                    (i32.const 288))
                  (i32.lt_s
                    (local.get 7)
                    (i32.const 0)))))
            (loop  ;; label = @16
              (i32.store
                (local.get 6)
                (local.tee 8
                  (i32.trunc_f64_u
                    (local.get 1))))
              (local.set 6
                (i32.add
                  (local.get 6)
                  (i32.const 4)))
              (br_if 0 (;@16;)
                (f64.ne
                  (local.tee 1
                    (f64.mul
                      (f64.sub
                        (local.get 1)
                        (f64.convert_i32_u
                          (local.get 8)))
                      (f64.const 0x1.dcd65p+29 (;=1e+09;))))
                  (f64.const 0x0p+0 (;=0;)))))
            (if  ;; label = @17
              (i32.gt_s
                (local.get 7)
                (i32.const 0))
              (then
                (local.set 8
                  (local.get 7))
                (local.set 7
                  (local.get 13))
                (loop  ;; label = @18
                  (local.set 11
                    (select
                      (local.get 8)
                      (i32.const 29)
                      (i32.lt_s
                        (local.get 8)
                        (i32.const 29))))
                  (if  ;; label = @19
                    (i32.ge_u
                      (local.tee 8
                        (i32.add
                          (local.get 6)
                          (i32.const -4)))
                      (local.get 7))
                    (then
                      (local.set 26
                        (i64.extend_i32_u
                          (local.get 11)))
                      (local.set 10
                        (i32.const 0))
                      (loop  ;; label = @20
                        (local.set 25
                          (i64.div_u
                            (local.tee 27
                              (i64.add
                                (i64.extend_i32_u
                                  (local.get 10))
                                (i64.shl
                                  (i64.extend_i32_u
                                    (i32.load
                                      (local.get 8)))
                                  (local.get 26))))
                            (i64.const 1000000000)))
                        (i64.store32
                          (local.get 8)
                          (i64.sub
                            (local.get 27)
                            (i64.mul
                              (local.get 25)
                              (i64.const 1000000000))))
                        (local.set 10
                          (i32.wrap_i64
                            (local.get 25)))
                        (br_if 0 (;@20;)
                          (i32.ge_u
                            (local.tee 8
                              (i32.add
                                (local.get 8)
                                (i32.const -4)))
                            (local.get 7))))
                      (if  ;; label = @21
                        (local.get 10)
                        (then
                          (i32.store
                            (local.tee 7
                              (i32.add
                                (local.get 7)
                                (i32.const -4)))
                            (local.get 10))))))
                  (if  ;; label = @22
                    (i32.gt_u
                      (local.get 6)
                      (local.get 7))
                    (then
                      (block  ;; label = @23
                        (local.set 6
                          (loop (result i32)  ;; label = @24
                            (br_if 1 (;@23;)
                              (i32.load
                                (local.tee 8
                                  (i32.add
                                    (local.get 6)
                                    (i32.const -4)))))
                            (if (result i32)  ;; label = @25
                              (i32.gt_u
                                (local.get 8)
                                (local.get 7))
                              (then
                                (local.set 6
                                  (local.get 8))
                                (br 1 (;@24;)))
                              (else
                                (local.get 8))))))))
                  (i32.store
                    (local.get 9)
                    (local.tee 8
                      (i32.sub
                        (i32.load
                          (local.get 9))
                        (local.get 11))))
                  (i32.gt_s
                    (local.get 8)
                    (i32.const 0))
                  (br_if 0 (;@25;))))
              (else
                (local.set 8
                  (local.get 7))
                (local.set 7
                  (local.get 13))))
            (local.set 11
              (select
                (i32.const 6)
                (local.get 3)
                (i32.lt_s
                  (local.get 3)
                  (i32.const 0))))
            (local.set 3
              (if (result i32)  ;; label = @26
                (i32.lt_s
                  (local.get 8)
                  (i32.const 0))
                (then
                  (local.set 18
                    (i32.add
                      (i32.div_s
                        (i32.add
                          (local.get 11)
                          (i32.const 25))
                        (i32.const 9))
                      (i32.const 1)))
                  (local.set 22
                    (i32.eq
                      (local.get 15)
                      (i32.const 102)))
                  (local.set 3
                    (local.get 6))
                  (loop (result i32)  ;; label = @27
                    (local.set 14
                      (select
                        (local.tee 6
                          (i32.sub
                            (i32.const 0)
                            (local.get 8)))
                        (i32.const 9)
                        (i32.lt_s
                          (local.get 6)
                          (i32.const 9))))
                    (if  ;; label = @28
                      (i32.lt_u
                        (local.get 7)
                        (local.get 3))
                      (then
                        (local.set 10
                          (i32.add
                            (i32.shl
                              (i32.const 1)
                              (local.get 14))
                            (i32.const -1)))
                        (local.set 23
                          (i32.shr_u
                            (i32.const 1000000000)
                            (local.get 14)))
                        (local.set 8
                          (i32.const 0))
                        (local.set 6
                          (local.get 7))
                        (loop  ;; label = @29
                          (i32.store
                            (local.get 6)
                            (i32.add
                              (local.get 8)
                              (i32.shr_u
                                (local.tee 8
                                  (i32.load
                                    (local.get 6)))
                                (local.get 14))))
                          (local.set 8
                            (i32.mul
                              (i32.and
                                (local.get 8)
                                (local.get 10))
                              (local.get 23)))
                          (br_if 0 (;@29;)
                            (i32.lt_u
                              (local.tee 6
                                (i32.add
                                  (local.get 6)
                                  (i32.const 4)))
                              (local.get 3))))
                        (local.set 7
                          (select
                            (local.get 7)
                            (i32.add
                              (local.get 7)
                              (i32.const 4))
                            (i32.load
                              (local.get 7))))
                        (if  ;; label = @30
                          (local.get 8)
                          (then
                            (i32.store
                              (local.get 3)
                              (local.get 8))
                            (local.set 3
                              (i32.add
                                (local.get 3)
                                (i32.const 4))))))
                      (else
                        (local.set 7
                          (select
                            (local.get 7)
                            (i32.add
                              (local.get 7)
                              (i32.const 4))
                            (i32.load
                              (local.get 7))))))
                    (local.set 10
                      (select
                        (i32.add
                          (local.tee 6
                            (select
                              (local.get 13)
                              (local.get 7)
                              (local.get 22)))
                          (i32.shl
                            (local.get 18)
                            (i32.const 2)))
                        (local.get 3)
                        (i32.gt_s
                          (i32.shr_s
                            (i32.sub
                              (local.get 3)
                              (local.get 6))
                            (i32.const 2))
                          (local.get 18))))
                    (i32.store
                      (local.get 9)
                      (local.tee 8
                        (i32.add
                          (i32.load
                            (local.get 9))
                          (local.get 14))))
                    (if (result i32)  ;; label = @31
                      (i32.lt_s
                        (local.get 8)
                        (i32.const 0))
                      (then
                        (local.set 3
                          (local.get 10))
                        (br 1 (;@30;)))
                      (else
                        (local.get 7)))))
                (else
                  (local.set 10
                    (local.get 6))
                  (local.get 7))))
            (local.set 14
              (local.get 13))
            (if  ;; label = @32
              (i32.lt_u
                (local.get 3)
                (local.get 10))
              (then
                (local.set 7
                  (i32.mul
                    (i32.shr_s
                      (i32.sub
                        (local.get 14)
                        (local.get 3))
                      (i32.const 2))
                    (i32.const 9)))
                (if  ;; label = @33
                  (i32.ge_u
                    (local.tee 8
                      (i32.load
                        (local.get 3)))
                    (i32.const 10))
                  (then
                    (local.set 6
                      (i32.const 10))
                    (loop  ;; label = @34
                      (local.set 7
                        (i32.add
                          (local.get 7)
                          (i32.const 1)))
                      (br_if 0 (;@34;)
                        (i32.ge_u
                          (local.get 8)
                          (local.tee 6
                            (i32.mul
                              (local.get 6)
                              (i32.const 10)))))))))
              (else
                (local.set 7
                  (i32.const 0))))
            (local.set 15
              (if (result i32)  ;; label = @35
                (i32.gt_u
                  (local.tee 3
                    (if (result i32)  ;; label = @36
                      (i32.lt_s
                        (local.tee 6
                          (i32.add
                            (i32.sub
                              (local.get 11)
                              (select
                                (i32.const 0)
                                (local.get 7)
                                (i32.eq
                                  (local.get 15)
                                  (i32.const 102))))
                            (i32.shr_s
                              (i32.shl
                                (i32.and
                                  (local.tee 22
                                    (i32.eq
                                      (local.get 15)
                                      (i32.const 103)))
                                  (local.tee 23
                                    (i32.ne
                                      (local.get 11)
                                      (i32.const 0))))
                                (i32.const 31))
                              (i32.const 31))))
                        (i32.add
                          (i32.mul
                            (i32.shr_s
                              (i32.sub
                                (local.get 10)
                                (local.get 14))
                              (i32.const 2))
                            (i32.const 9))
                          (i32.const -9)))
                      (then
                        (local.set 15
                          (i32.div_s
                            (local.tee 6
                              (i32.add
                                (local.get 6)
                                (i32.const 9216)))
                            (i32.const 9)))
                        (if  ;; label = @37
                          (i32.lt_s
                            (local.tee 6
                              (i32.sub
                                (local.get 6)
                                (i32.mul
                                  (local.get 15)
                                  (i32.const 9))))
                            (i32.const 8))
                          (then
                            (local.set 8
                              (i32.const 10))
                            (loop  ;; label = @38
                              (local.set 9
                                (i32.add
                                  (local.get 6)
                                  (i32.const 1)))
                              (local.set 8
                                (i32.mul
                                  (local.get 8)
                                  (i32.const 10)))
                              (if  ;; label = @39
                                (i32.lt_s
                                  (local.get 6)
                                  (i32.const 7))
                                (then
                                  (local.set 6
                                    (local.get 9))
                                  (br 1 (;@38;))))))
                          (else
                            (local.set 8
                              (i32.const 10))))
                        (local.set 18
                          (i32.div_u
                            (local.tee 15
                              (i32.load
                                (local.tee 6
                                  (i32.add
                                    (i32.add
                                      (i32.shl
                                        (local.get 15)
                                        (i32.const 2))
                                      (local.get 13))
                                    (i32.const -4092)))))
                            (local.get 8)))
                        (if  ;; label = @40
                          (i32.eqz
                            (i32.and
                              (local.tee 24
                                (i32.eq
                                  (i32.add
                                    (local.get 6)
                                    (i32.const 4))
                                  (local.get 10)))
                              (i32.eqz
                                (local.tee 9
                                  (i32.sub
                                    (local.get 15)
                                    (i32.mul
                                      (local.get 8)
                                      (local.get 18)))))))
                          (then
                            (local.set 1
                              (select
                                (f64.const 0x1.0000000000001p+53 (;=9.0072e+15;))
                                (f64.const 0x1p+53 (;=9.0072e+15;))
                                (i32.and
                                  (local.get 18)
                                  (i32.const 1))))
                            (local.set 28
                              (select
                                (f64.const 0x1p-1 (;=0.5;))
                                (select
                                  (f64.const 0x1p+0 (;=1;))
                                  (f64.const 0x1.8p+0 (;=1.5;))
                                  (i32.and
                                    (local.get 24)
                                    (i32.eq
                                      (local.get 9)
                                      (local.tee 18
                                        (i32.shr_u
                                          (local.get 8)
                                          (i32.const 1))))))
                                (i32.lt_u
                                  (local.get 9)
                                  (local.get 18))))
                            (if  ;; label = @41
                              (local.get 20)
                              (then
                                (local.set 1
                                  (select
                                    (f64.neg
                                      (local.get 1))
                                    (local.get 1)
                                    (local.tee 18
                                      (i32.eq
                                        (i32.load8_s
                                          (local.get 19))
                                        (i32.const 45)))))
                                (local.set 28
                                  (select
                                    (f64.neg
                                      (local.get 28))
                                    (local.get 28)
                                    (local.get 18)))))
                            (i32.store
                              (local.get 6)
                              (local.tee 9
                                (i32.sub
                                  (local.get 15)
                                  (local.get 9))))
                            (if  ;; label = @42
                              (f64.ne
                                (f64.add
                                  (local.get 1)
                                  (local.get 28))
                                (local.get 1))
                              (then
                                (i32.store
                                  (local.get 6)
                                  (local.tee 7
                                    (i32.add
                                      (local.get 8)
                                      (local.get 9))))
                                (if  ;; label = @43
                                  (i32.gt_u
                                    (local.get 7)
                                    (i32.const 999999999))
                                  (then
                                    (loop  ;; label = @44
                                      (i32.store
                                        (local.get 6)
                                        (i32.const 0))
                                      (if  ;; label = @45
                                        (i32.lt_u
                                          (local.tee 6
                                            (i32.add
                                              (local.get 6)
                                              (i32.const -4)))
                                          (local.get 3))
                                        (then
                                          (i32.store
                                            (local.tee 3
                                              (i32.add
                                                (local.get 3)
                                                (i32.const -4)))
                                            (i32.const 0))))
                                      (i32.store
                                        (local.get 6)
                                        (local.tee 7
                                          (i32.add
                                            (i32.load
                                              (local.get 6))
                                            (i32.const 1))))
                                      (br_if 0 (;@45;)
                                        (i32.gt_u
                                          (local.get 7)
                                          (i32.const 999999999))))))
                                (local.set 7
                                  (i32.mul
                                    (i32.shr_s
                                      (i32.sub
                                        (local.get 14)
                                        (local.get 3))
                                      (i32.const 2))
                                    (i32.const 9)))
                                (if  ;; label = @46
                                  (i32.ge_u
                                    (local.tee 9
                                      (i32.load
                                        (local.get 3)))
                                    (i32.const 10))
                                  (then
                                    (local.set 8
                                      (i32.const 10))
                                    (loop  ;; label = @47
                                      (local.set 7
                                        (i32.add
                                          (local.get 7)
                                          (i32.const 1)))
                                      (br_if 0 (;@47;)
                                        (i32.ge_u
                                          (local.get 9)
                                          (local.tee 8
                                            (i32.mul
                                              (local.get 8)
                                              (i32.const 10))))))))))))
                        (local.set 8
                          (local.get 3))
                        (local.set 9
                          (local.get 7))
                        (select
                          (local.tee 3
                            (i32.add
                              (local.get 6)
                              (i32.const 4)))
                          (local.get 10)
                          (i32.gt_u
                            (local.get 10)
                            (local.get 3))))
                      (else
                        (local.set 8
                          (local.get 3))
                        (local.set 9
                          (local.get 7))
                        (local.get 10))))
                  (local.get 8))
                (then
                  (loop (result i32)  ;; label = @48
                    (block (result i32)  ;; label = @49
                      (if  ;; label = @50
                        (i32.load
                          (local.tee 7
                            (i32.add
                              (local.get 3)
                              (i32.const -4))))
                        (then
                          (local.set 7
                            (local.get 3))
                          (br 1 (;@49;)
                            (i32.const 1))))
                      (if (result i32)  ;; label = @51
                        (i32.gt_u
                          (local.get 7)
                          (local.get 8))
                        (then
                          (local.set 3
                            (local.get 7))
                          (br 2 (;@49;)))
                        (else
                          (i32.const 0))))))
                (else
                  (local.set 7
                    (local.get 3))
                  (i32.const 0))))
            (local.set 3
              (if (result i32)  ;; label = @52
                (local.get 22)
                (then
                  (local.set 5
                    (if (result i32)  ;; label = @53
                      (i32.and
                        (i32.gt_s
                          (local.tee 3
                            (i32.add
                              (i32.and
                                (i32.xor
                                  (local.get 23)
                                  (i32.const 1))
                                (i32.const 1))
                              (local.get 11)))
                          (local.get 9))
                        (i32.gt_s
                          (local.get 9)
                          (i32.const -5)))
                      (then
                        (local.set 10
                          (i32.sub
                            (i32.add
                              (local.get 3)
                              (i32.const -1))
                            (local.get 9)))
                        (i32.add
                          (local.get 5)
                          (i32.const -1)))
                      (else
                        (local.set 10
                          (i32.add
                            (local.get 3)
                            (i32.const -1)))
                        (i32.add
                          (local.get 5)
                          (i32.const -2)))))
                  (if (result i32)  ;; label = @54
                    (i32.and
                      (local.get 4)
                      (i32.const 8))
                    (then
                      (local.get 10))
                    (else
                      (if  ;; label = @55
                        (local.get 15)
                        (then
                          (if  ;; label = @56
                            (local.tee 11
                              (i32.load
                                (i32.add
                                  (local.get 7)
                                  (i32.const -4))))
                            (then
                              (if  ;; label = @57
                                (i32.rem_u
                                  (local.get 11)
                                  (i32.const 10))
                                (then
                                  (local.set 3
                                    (i32.const 0)))
                                (else
                                  (local.set 6
                                    (i32.const 10))
                                  (local.set 3
                                    (i32.const 0))
                                  (loop  ;; label = @58
                                    (local.set 3
                                      (i32.add
                                        (local.get 3)
                                        (i32.const 1)))
                                    (br_if 0 (;@58;)
                                      (i32.eqz
                                        (i32.rem_u
                                          (local.get 11)
                                          (local.tee 6
                                            (i32.mul
                                              (local.get 6)
                                              (i32.const 10))))))))))
                            (else
                              (local.set 3
                                (i32.const 9)))))
                        (else
                          (local.set 3
                            (i32.const 9))))
                      (local.set 6
                        (i32.add
                          (i32.mul
                            (i32.shr_s
                              (i32.sub
                                (local.get 7)
                                (local.get 14))
                              (i32.const 2))
                            (i32.const 9))
                          (i32.const -9)))
                      (if (result i32)  ;; label = @59
                        (i32.eq
                          (i32.or
                            (local.get 5)
                            (i32.const 32))
                          (i32.const 102))
                        (then
                          (select
                            (local.get 10)
                            (local.tee 3
                              (select
                                (local.tee 3
                                  (i32.sub
                                    (local.get 6)
                                    (local.get 3)))
                                (i32.const 0)
                                (i32.gt_s
                                  (local.get 3)
                                  (i32.const 0))))
                            (i32.lt_s
                              (local.get 10)
                              (local.get 3))))
                        (else
                          (select
                            (local.get 10)
                            (local.tee 3
                              (select
                                (local.tee 3
                                  (i32.sub
                                    (i32.add
                                      (local.get 6)
                                      (local.get 9))
                                    (local.get 3)))
                                (i32.const 0)
                                (i32.gt_s
                                  (local.get 3)
                                  (i32.const 0))))
                            (i32.lt_s
                              (local.get 10)
                              (local.get 3))))))))
                (else
                  (local.get 11))))
            (local.set 6
              (i32.sub
                (i32.const 0)
                (local.get 9)))
            (call $_pad_524
              (local.get 0)
              (i32.const 32)
              (local.get 2)
              (local.tee 9
                (i32.add
                  (if (result i32)  ;; label = @60
                    (local.tee 11
                      (i32.eq
                        (i32.or
                          (local.get 5)
                          (i32.const 32))
                        (i32.const 102)))
                    (then
                      (local.set 10
                        (i32.const 0))
                      (select
                        (local.get 9)
                        (i32.const 0)
                        (i32.gt_s
                          (local.get 9)
                          (i32.const 0))))
                    (else
                      (local.set 6
                        (call $_fmt_u
                          (i64.extend_i32_s
                            (select
                              (local.get 6)
                              (local.get 9)
                              (i32.lt_s
                                (local.get 9)
                                (i32.const 0))))
                          (local.get 16)))
                      (if  ;; label = @61
                        (i32.lt_s
                          (i32.sub
                            (local.tee 10
                              (local.get 16))
                            (local.get 6))
                          (i32.const 2))
                        (then
                          (loop  ;; label = @62
                            (i32.store8
                              (local.tee 6
                                (i32.add
                                  (local.get 6)
                                  (i32.const -1)))
                              (i32.const 48))
                            (br_if 0 (;@62;)
                              (i32.lt_s
                                (i32.sub
                                  (local.get 10)
                                  (local.get 6))
                                (i32.const 2))))))
                      (i32.store8
                        (i32.add
                          (local.get 6)
                          (i32.const -1))
                        (i32.add
                          (i32.and
                            (i32.shr_s
                              (local.get 9)
                              (i32.const 31))
                            (i32.const 2))
                          (i32.const 43)))
                      (i32.store8
                        (local.tee 6
                          (i32.add
                            (local.get 6)
                            (i32.const -2)))
                        (local.get 5))
                      (i32.sub
                        (local.get 10)
                        (local.tee 10
                          (local.get 6)))))
                  (i32.add
                    (i32.add
                      (i32.add
                        (local.get 20)
                        (i32.const 1))
                      (local.get 3))
                    (select
                      (i32.const 1)
                      (i32.and
                        (i32.shr_u
                          (local.get 4)
                          (i32.const 3))
                        (i32.const 1))
                      (local.tee 14
                        (i32.ne
                          (local.get 3)
                          (i32.const 0)))))))
              (local.get 4))
            (call $_out
              (local.get 0)
              (local.get 19)
              (local.get 20))
            (call $_pad_524
              (local.get 0)
              (i32.const 48)
              (local.get 2)
              (local.get 9)
              (i32.xor
                (local.get 4)
                (i32.const 65536)))
            (if  ;; label = @63
              (local.get 11)
              (then
                (local.set 11
                  (local.tee 10
                    (i32.add
                      (local.get 12)
                      (i32.const 9))))
                (local.set 16
                  (i32.add
                    (local.get 12)
                    (i32.const 8)))
                (local.set 6
                  (local.tee 8
                    (select
                      (local.get 13)
                      (local.get 8)
                      (i32.gt_u
                        (local.get 8)
                        (local.get 13)))))
                (loop  ;; label = @64
                  (local.set 5
                    (call $_fmt_u
                      (i64.extend_i32_u
                        (i32.load
                          (local.get 6)))
                      (local.get 10)))
                  (if  ;; label = @65
                    (i32.eq
                      (local.get 6)
                      (local.get 8))
                    (then
                      (if  ;; label = @66
                        (i32.eq
                          (local.get 5)
                          (local.get 10))
                        (then
                          (i32.store8
                            (local.get 16)
                            (i32.const 48))
                          (local.set 5
                            (local.get 16)))))
                    (else
                      (if  ;; label = @67
                        (i32.gt_u
                          (local.get 5)
                          (local.get 12))
                        (then
                          (drop
                            (call $_memset
                              (local.get 12)
                              (i32.const 48)
                              (i32.sub
                                (local.get 5)
                                (local.get 17))))
                          (loop  ;; label = @68
                            (br_if 0 (;@68;)
                              (i32.gt_u
                                (local.tee 5
                                  (i32.add
                                    (local.get 5)
                                    (i32.const -1)))
                                (local.get 12))))))))
                  (call $_out
                    (local.get 0)
                    (local.get 5)
                    (i32.sub
                      (local.get 11)
                      (local.get 5)))
                  (if  ;; label = @69
                    (i32.le_u
                      (local.tee 5
                        (i32.add
                          (local.get 6)
                          (i32.const 4)))
                      (local.get 13))
                    (then
                      (local.set 6
                        (local.get 5))
                      (br 1 (;@68;)))))
                (if  ;; label = @70
                  (i32.eqz
                    (i32.and
                      (i32.eqz
                        (i32.and
                          (local.get 4)
                          (i32.const 8)))
                      (i32.xor
                        (local.get 14)
                        (i32.const 1))))
                  (then
                    (call $_out
                      (local.get 0)
                      (i32.const 1962)
                      (i32.const 1))))
                (call $_pad_524
                  (local.get 0)
                  (i32.const 48)
                  (i32.add
                    (if (result i32)  ;; label = @71
                      (i32.and
                        (i32.lt_u
                          (local.get 5)
                          (local.get 7))
                        (i32.gt_s
                          (local.get 3)
                          (i32.const 0)))
                      (then
                        (loop (result i32)  ;; label = @72
                          (if  ;; label = @73
                            (i32.gt_u
                              (local.tee 6
                                (call $_fmt_u
                                  (i64.extend_i32_u
                                    (i32.load
                                      (local.get 5)))
                                  (local.get 10)))
                              (local.get 12))
                            (then
                              (drop
                                (call $_memset
                                  (local.get 12)
                                  (i32.const 48)
                                  (i32.sub
                                    (local.get 6)
                                    (local.get 17))))
                              (loop  ;; label = @74
                                (br_if 0 (;@74;)
                                  (i32.gt_u
                                    (local.tee 6
                                      (i32.add
                                        (local.get 6)
                                        (i32.const -1)))
                                    (local.get 12))))))
                          (call $_out
                            (local.get 0)
                            (local.get 6)
                            (select
                              (local.get 3)
                              (i32.const 9)
                              (i32.lt_s
                                (local.get 3)
                                (i32.const 9))))
                          (local.set 6
                            (i32.add
                              (local.get 3)
                              (i32.const -9)))
                          (if (result i32)  ;; label = @75
                            (i32.and
                              (i32.lt_u
                                (local.tee 5
                                  (i32.add
                                    (local.get 5)
                                    (i32.const 4)))
                                (local.get 7))
                              (i32.gt_s
                                (local.get 3)
                                (i32.const 9)))
                            (then
                              (local.set 3
                                (local.get 6))
                              (br 1 (;@74;)))
                            (else
                              (local.get 6)))))
                      (else
                        (local.get 3)))
                    (i32.const 9))
                  (i32.const 9)
                  (i32.const 0)))
              (else
                (call $_pad_524
                  (local.get 0)
                  (i32.const 48)
                  (i32.add
                    (if (result i32)  ;; label = @76
                      (i32.and
                        (i32.lt_u
                          (local.get 8)
                          (local.tee 14
                            (select
                              (local.get 7)
                              (i32.add
                                (local.get 8)
                                (i32.const 4))
                              (local.get 15))))
                        (i32.gt_s
                          (local.get 3)
                          (i32.const -1)))
                      (then
                        (local.set 20
                          (i32.eqz
                            (i32.and
                              (local.get 4)
                              (i32.const 8))))
                        (local.set 19
                          (local.tee 11
                            (i32.add
                              (local.get 12)
                              (i32.const 9))))
                        (local.set 17
                          (i32.sub
                            (i32.const 0)
                            (local.get 17)))
                        (local.set 13
                          (i32.add
                            (local.get 12)
                            (i32.const 8)))
                        (local.set 7
                          (local.get 8))
                        (local.set 5
                          (local.get 3))
                        (loop (result i32)  ;; label = @77
                          (if  ;; label = @78
                            (i32.eq
                              (local.get 11)
                              (local.tee 3
                                (call $_fmt_u
                                  (i64.extend_i32_u
                                    (i32.load
                                      (local.get 7)))
                                  (local.get 11))))
                            (then
                              (i32.store8
                                (local.get 13)
                                (i32.const 48))
                              (local.set 3
                                (local.get 13))))
                          (block  ;; label = @79
                            (if  ;; label = @80
                              (i32.eq
                                (local.get 7)
                                (local.get 8))
                              (then
                                (local.set 6
                                  (i32.add
                                    (local.get 3)
                                    (i32.const 1)))
                                (call $_out
                                  (local.get 0)
                                  (local.get 3)
                                  (i32.const 1))
                                (if  ;; label = @81
                                  (i32.and
                                    (i32.lt_s
                                      (local.get 5)
                                      (i32.const 1))
                                    (local.get 20))
                                  (then
                                    (local.set 3
                                      (local.get 6))
                                    (br 2 (;@79;))))
                                (call $_out
                                  (local.get 0)
                                  (i32.const 1962)
                                  (i32.const 1))
                                (local.set 3
                                  (local.get 6)))
                              (else
                                (br_if 1 (;@80;)
                                  (i32.le_u
                                    (local.get 3)
                                    (local.get 12)))
                                (drop
                                  (call $_memset
                                    (local.get 12)
                                    (i32.const 48)
                                    (i32.add
                                      (local.get 3)
                                      (local.get 17))))
                                (loop  ;; label = @82
                                  (br_if 0 (;@82;)
                                    (i32.gt_u
                                      (local.tee 3
                                        (i32.add
                                          (local.get 3)
                                          (i32.const -1)))
                                      (local.get 12)))))))
                          (call $_out
                            (local.get 0)
                            (local.get 3)
                            (select
                              (local.tee 3
                                (i32.sub
                                  (local.get 19)
                                  (local.get 3)))
                              (local.get 5)
                              (i32.gt_s
                                (local.get 5)
                                (local.get 3))))
                          (br_if 0 (;@82;)
                            (i32.and
                              (i32.lt_u
                                (local.tee 7
                                  (i32.add
                                    (local.get 7)
                                    (i32.const 4)))
                                (local.get 14))
                              (i32.gt_s
                                (local.tee 5
                                  (i32.sub
                                    (local.get 5)
                                    (local.get 3)))
                                (i32.const -1))))
                          (local.get 5)))
                      (else
                        (local.get 3)))
                    (i32.const 18))
                  (i32.const 18)
                  (i32.const 0))
                (call $_out
                  (local.get 0)
                  (local.get 10)
                  (i32.sub
                    (local.get 16)
                    (local.get 10)))))
            (call $_pad_524
              (local.get 0)
              (i32.const 32)
              (local.get 2)
              (local.get 9)
              (i32.xor
                (local.get 4)
                (i32.const 8192)))
            (local.get 9)))))
    (global.set 2
      (local.get 21))
    (select
      (local.get 2)
      (local.get 0)
      (i32.lt_s
        (local.get 0)
        (local.get 2))))
  (func $_pop_arg_long_double (type 2) (param i32 i32)
    (local i32 f64)
    (local.set 3
      (f64.load
        (local.tee 2
          (i32.and
            (i32.add
              (i32.load
                (local.get 1))
              (i32.const 7))
            (i32.const -8)))))
    (i32.store
      (local.get 1)
      (i32.add
        (local.get 2)
        (i32.const 8)))
    (f64.store
      (local.get 0)
      (local.get 3)))
  (func $___vfprintf_internal (type 2) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    (local.set 5
      (global.get 2))
    (global.set 2
      (i32.add
        (global.get 2)
        (i32.const 224)))
    (i64.store
      (local.tee 2
        (i32.add
          (local.tee 3
            (local.get 5))
          (i32.const 160)))
      (i64.const 0))
    (i64.store offset=8
      (local.get 2)
      (i64.const 0))
    (i64.store offset=16
      (local.get 2)
      (i64.const 0))
    (i64.store offset=24
      (local.get 2)
      (i64.const 0))
    (i64.store offset=32
      (local.get 2)
      (i64.const 0))
    (i32.store
      (local.tee 4
        (i32.add
          (local.get 3)
          (i32.const 208)))
      (i32.load
        (local.get 1)))
    (drop
      (if (result i32)  ;; label = @1
        (i32.lt_s
          (call $_printf_core
            (i32.const 0)
            (local.get 4)
            (local.tee 1
              (i32.add
                (local.get 3)
                (i32.const 80)))
            (local.get 2))
          (i32.const 0))
        (then
          (i32.const -1))
        (else
          (drop
            (if (result i32)  ;; label = @2
              (i32.gt_s
                (i32.load offset=76
                  (local.get 0))
                (i32.const -1))
              (then
                (i32.const 1))
              (else
                (i32.const 0))))
          (local.set 6
            (i32.load
              (local.get 0)))
          (if  ;; label = @3
            (i32.lt_s
              (i32.load8_s offset=74
                (local.get 0))
              (i32.const 1))
            (then
              (i32.store
                (local.get 0)
                (i32.and
                  (local.get 6)
                  (i32.const -33)))))
          (if  ;; label = @4
            (i32.load
              (local.tee 7
                (i32.add
                  (local.get 0)
                  (i32.const 48))))
            (then
              (drop
                (call $_printf_core
                  (local.get 0)
                  (local.get 4)
                  (local.get 1)
                  (local.get 2))))
            (else
              (local.set 9
                (i32.load
                  (local.tee 8
                    (i32.add
                      (local.get 0)
                      (i32.const 44)))))
              (i32.store
                (local.get 8)
                (local.get 3))
              (i32.store
                (local.tee 11
                  (i32.add
                    (local.get 0)
                    (i32.const 28)))
                (local.get 3))
              (i32.store
                (local.tee 10
                  (i32.add
                    (local.get 0)
                    (i32.const 20)))
                (local.get 3))
              (i32.store
                (local.get 7)
                (i32.const 80))
              (i32.store
                (local.tee 12
                  (i32.add
                    (local.get 0)
                    (i32.const 16)))
                (i32.add
                  (local.get 3)
                  (i32.const 80)))
              (drop
                (call $_printf_core
                  (local.get 0)
                  (local.get 4)
                  (local.get 1)
                  (local.get 2)))
              (if  ;; label = @5
                (local.get 9)
                (then
                  (drop
                    (call_indirect (type 0)
                      (local.get 0)
                      (i32.const 0)
                      (i32.const 0)
                      (i32.add
                        (i32.and
                          (i32.load offset=36
                            (local.get 0))
                          (i32.const 3))
                        (i32.const 4))))
                  (drop
                    (i32.load
                      (local.get 10)))
                  (i32.store
                    (local.get 8)
                    (local.get 9))
                  (i32.store
                    (local.get 7)
                    (i32.const 0))
                  (i32.store
                    (local.get 12)
                    (i32.const 0))
                  (i32.store
                    (local.get 11)
                    (i32.const 0))
                  (i32.store
                    (local.get 10)
                    (i32.const 0))))))
          (i32.store
            (local.get 0)
            (i32.or
              (i32.load
                (local.get 0))
              (i32.and
                (local.get 6)
                (i32.const 32))))
          (i32.const 0))))
    (global.set 2
      (local.get 5)))
  (func $_printf_core (type 11) (param i32 i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64)
    (local.set 17
      (global.get 2))
    (global.set 2
      (i32.sub
        (global.get 2)
        (i32.const -64)))
    (local.set 10
      (i32.add
        (local.get 17)
        (i32.const 40)))
    (local.set 22
      (i32.add
        (local.get 17)
        (i32.const 60)))
    (i32.store
      (local.tee 12
        (i32.add
          (local.get 17)
          (i32.const 56)))
      (i32.const 1896))
    (local.set 19
      (i32.ne
        (local.get 0)
        (i32.const 0)))
    (local.set 20
      (local.tee 21
        (i32.add
          (local.get 17)
          (i32.const 40))))
    (local.set 23
      (i32.add
        (local.get 17)
        (i32.const 39)))
    (local.set 25
      (i32.add
        (local.tee 24
          (i32.add
            (local.get 17)
            (i32.const 48)))
        (i32.const 4)))
    (block  ;; label = @1
      (block  ;; label = @2
        (loop  ;; label = @3
          (block  ;; label = @4
            (loop  ;; label = @5
              (if  ;; label = @6
                (i32.gt_s
                  (local.get 9)
                  (i32.const -1))
                (then
                  (local.set 9
                    (if (result i32)  ;; label = @7
                      (i32.gt_s
                        (local.get 4)
                        (i32.sub
                          (i32.const 2147483647)
                          (local.get 9)))
                      (then
                        (i32.store
                          (i32.const 3072)
                          (i32.const 75))
                        (i32.const -1))
                      (else
                        (i32.add
                          (local.get 4)
                          (local.get 9)))))))
              (br_if 3 (;@4;)
                (i32.eqz
                  (local.tee 11
                    (i32.load8_s
                      (local.tee 8
                        (i32.load
                          (local.get 12)))))))
              (local.set 4
                (local.get 8))
              (block  ;; label = @8
                (block  ;; label = @9
                  (loop  ;; label = @10
                    (block  ;; label = @11
                      (block  ;; label = @12
                        (br_table 1 (;@11;) 0 (;@12;) 0 (;@12;) 0 (;@12;) 0 (;@12;) 0 (;@12;) 0 (;@12;) 0 (;@12;) 0 (;@12;) 0 (;@12;) 0 (;@12;) 0 (;@12;) 0 (;@12;) 0 (;@12;) 0 (;@12;) 0 (;@12;) 0 (;@12;) 0 (;@12;) 0 (;@12;) 0 (;@12;) 0 (;@12;) 0 (;@12;) 0 (;@12;) 0 (;@12;) 0 (;@12;) 0 (;@12;) 0 (;@12;) 0 (;@12;) 0 (;@12;) 0 (;@12;) 0 (;@12;) 0 (;@12;) 0 (;@12;) 0 (;@12;) 0 (;@12;) 0 (;@12;) 0 (;@12;) 3 (;@9;) 0 (;@12;)
                          (i32.shr_s
                            (i32.shl
                              (local.get 11)
                              (i32.const 24))
                            (i32.const 24))))
                      (i32.store
                        (local.get 12)
                        (local.tee 4
                          (i32.add
                            (local.get 4)
                            (i32.const 1))))
                      (local.set 11
                        (i32.load8_s
                          (local.get 4)))
                      (br 1 (;@11;))))
                  (br 1 (;@11;)))
                (local.set 11
                  (local.get 4))
                (loop  ;; label = @13
                  (br_if 1 (;@12;)
                    (i32.ne
                      (i32.load8_s offset=1
                        (local.get 11))
                      (i32.const 37)))
                  (local.set 4
                    (i32.add
                      (local.get 4)
                      (i32.const 1)))
                  (i32.store
                    (local.get 12)
                    (local.tee 11
                      (i32.add
                        (local.get 11)
                        (i32.const 2))))
                  (br_if 0 (;@13;)
                    (i32.eq
                      (i32.load8_s
                        (local.get 11))
                      (i32.const 37)))))
              (local.set 4
                (i32.sub
                  (local.get 4)
                  (local.get 8)))
              (if  ;; label = @14
                (local.get 19)
                (then
                  (call $_out
                    (local.get 0)
                    (local.get 8)
                    (local.get 4))))
              (br_if 0 (;@14;)
                (local.get 4)))
            (local.set 11
              (i32.eqz
                (call $_isdigit
                  (i32.load8_s offset=1
                    (i32.load
                      (local.get 12))))))
            (i32.store
              (local.get 12)
              (local.tee 4
                (i32.add
                  (local.tee 4
                    (i32.load
                      (local.get 12)))
                  (if (result i32)  ;; label = @15
                    (local.get 11)
                    (then
                      (local.set 15
                        (i32.const -1))
                      (i32.const 1))
                    (else
                      (if (result i32)  ;; label = @16
                        (i32.eq
                          (i32.load8_s offset=2
                            (local.get 4))
                          (i32.const 36))
                        (then
                          (local.set 15
                            (i32.add
                              (i32.load8_s offset=1
                                (local.get 4))
                              (i32.const -48)))
                          (local.set 5
                            (i32.const 1))
                          (i32.const 3))
                        (else
                          (local.set 15
                            (i32.const -1))
                          (i32.const 1))))))))
            (if  ;; label = @17
              (i32.or
                (i32.gt_u
                  (local.tee 11
                    (i32.add
                      (local.tee 6
                        (i32.load8_s
                          (local.get 4)))
                      (i32.const -32)))
                  (i32.const 31))
                (i32.eqz
                  (i32.and
                    (i32.shl
                      (i32.const 1)
                      (local.get 11))
                    (i32.const 75913))))
              (then
                (local.set 11
                  (i32.const 0)))
              (else
                (local.set 6
                  (i32.const 0))
                (loop  ;; label = @18
                  (local.set 11
                    (i32.or
                      (local.get 6)
                      (i32.shl
                        (i32.const 1)
                        (local.get 11))))
                  (i32.store
                    (local.get 12)
                    (local.tee 4
                      (i32.add
                        (local.get 4)
                        (i32.const 1))))
                  (if  ;; label = @19
                    (i32.eqz
                      (i32.or
                        (i32.gt_u
                          (local.tee 7
                            (i32.add
                              (local.tee 6
                                (i32.load8_s
                                  (local.get 4)))
                              (i32.const -32)))
                          (i32.const 31))
                        (i32.eqz
                          (i32.and
                            (i32.shl
                              (i32.const 1)
                              (local.get 7))
                            (i32.const 75913)))))
                    (then
                      (local.set 6
                        (local.get 11))
                      (local.set 11
                        (local.get 7))
                      (br 1 (;@18;)))))))
            (local.set 11
              (if (result i32)  ;; label = @20
                (i32.eq
                  (i32.and
                    (local.get 6)
                    (i32.const 255))
                  (i32.const 42))
                (then
                  (local.set 5
                    (block (result i32)  ;; label = @21
                      (block  ;; label = @22
                        (br_if 0 (;@22;)
                          (i32.eqz
                            (call $_isdigit
                              (i32.load8_s offset=1
                                (local.get 4)))))
                        (br_if 0 (;@22;)
                          (i32.ne
                            (i32.load8_s offset=2
                              (local.tee 4
                                (i32.load
                                  (local.get 12))))
                            (i32.const 36)))
                        (i32.store
                          (i32.add
                            (i32.shl
                              (i32.add
                                (i32.load8_s
                                  (local.tee 5
                                    (i32.add
                                      (local.get 4)
                                      (i32.const 1))))
                                (i32.const -48))
                              (i32.const 2))
                            (local.get 3))
                          (i32.const 10))
                        (local.set 7
                          (i32.const 1))
                        (local.set 6
                          (i32.add
                            (local.get 4)
                            (i32.const 3)))
                        (br 1 (;@21;)
                          (i32.wrap_i64
                            (i64.load
                              (i32.add
                                (i32.shl
                                  (i32.add
                                    (i32.load8_s
                                      (local.get 5))
                                    (i32.const -48))
                                  (i32.const 3))
                                (local.get 2))))))
                      (if  ;; label = @23
                        (local.get 5)
                        (then
                          (local.set 9
                            (i32.const -1))
                          (br 3 (;@20;))))
                      (if  ;; label = @24
                        (local.get 19)
                        (then
                          (local.set 4
                            (i32.load
                              (local.tee 5
                                (i32.and
                                  (i32.add
                                    (i32.load
                                      (local.get 1))
                                    (i32.const 3))
                                  (i32.const -4)))))
                          (i32.store
                            (local.get 1)
                            (i32.add
                              (local.get 5)
                              (i32.const 4))))
                        (else
                          (local.set 4
                            (i32.const 0))))
                      (local.set 7
                        (i32.const 0))
                      (local.set 6
                        (i32.add
                          (i32.load
                            (local.get 12))
                          (i32.const 1)))
                      (local.get 4)))
                  (i32.store
                    (local.get 12)
                    (local.get 6))
                  (local.set 4
                    (local.get 6))
                  (local.set 13
                    (select
                      (i32.or
                        (local.get 11)
                        (i32.const 8192))
                      (local.get 11)
                      (local.tee 6
                        (i32.lt_s
                          (local.get 5)
                          (i32.const 0)))))
                  (local.set 16
                    (select
                      (i32.sub
                        (i32.const 0)
                        (local.get 5))
                      (local.get 5)
                      (local.get 6)))
                  (local.get 7))
                (else
                  (if  ;; label = @25
                    (i32.lt_s
                      (local.tee 16
                        (call $_getint
                          (local.get 12)))
                      (i32.const 0))
                    (then
                      (local.set 9
                        (i32.const -1))
                      (br 2 (;@23;))))
                  (local.set 4
                    (i32.load
                      (local.get 12)))
                  (local.set 13
                    (local.get 11))
                  (local.get 5))))
            (if  ;; label = @26
              (i32.eq
                (i32.load8_s
                  (local.get 4))
                (i32.const 46))
              (then
                (block  ;; label = @27
                  (if  ;; label = @28
                    (i32.ne
                      (i32.load8_s
                        (local.tee 5
                          (i32.add
                            (local.get 4)
                            (i32.const 1))))
                      (i32.const 42))
                    (then
                      (i32.store
                        (local.get 12)
                        (local.get 5))
                      (local.set 4
                        (call $_getint
                          (local.get 12)))
                      (local.set 5
                        (i32.load
                          (local.get 12)))
                      (br 1 (;@27;))))
                  (if  ;; label = @29
                    (call $_isdigit
                      (i32.load8_s offset=2
                        (local.get 4)))
                    (then
                      (if  ;; label = @30
                        (i32.eq
                          (i32.load8_s offset=3
                            (local.tee 5
                              (i32.load
                                (local.get 12))))
                          (i32.const 36))
                        (then
                          (i32.store
                            (i32.add
                              (i32.shl
                                (i32.add
                                  (i32.load8_s
                                    (local.tee 4
                                      (i32.add
                                        (local.get 5)
                                        (i32.const 2))))
                                  (i32.const -48))
                                (i32.const 2))
                              (local.get 3))
                            (i32.const 10))
                          (local.set 4
                            (i32.wrap_i64
                              (i64.load
                                (i32.add
                                  (i32.shl
                                    (i32.add
                                      (i32.load8_s
                                        (local.get 4))
                                      (i32.const -48))
                                    (i32.const 3))
                                  (local.get 2)))))
                          (i32.store
                            (local.get 12)
                            (local.tee 5
                              (i32.add
                                (local.get 5)
                                (i32.const 4))))
                          (br 2 (;@28;))))))
                  (if  ;; label = @31
                    (local.get 11)
                    (then
                      (local.set 9
                        (i32.const -1))
                      (br 3 (;@28;))))
                  (if  ;; label = @32
                    (local.get 19)
                    (then
                      (local.set 4
                        (i32.load
                          (local.tee 5
                            (i32.and
                              (i32.add
                                (i32.load
                                  (local.get 1))
                                (i32.const 3))
                              (i32.const -4)))))
                      (i32.store
                        (local.get 1)
                        (i32.add
                          (local.get 5)
                          (i32.const 4))))
                    (else
                      (local.set 4
                        (i32.const 0))))
                  (i32.store
                    (local.get 12)
                    (local.tee 5
                      (i32.add
                        (i32.load
                          (local.get 12))
                        (i32.const 2))))))
              (else
                (local.set 5
                  (local.get 4))
                (local.set 4
                  (i32.const -1))))
            (local.set 14
              (i32.const 0))
            (loop  ;; label = @33
              (if  ;; label = @34
                (i32.gt_u
                  (i32.add
                    (i32.load8_s
                      (local.get 5))
                    (i32.const -65))
                  (i32.const 57))
                (then
                  (local.set 9
                    (i32.const -1))
                  (br 2 (;@32;))))
              (i32.store
                (local.get 12)
                (local.tee 6
                  (i32.add
                    (local.get 5)
                    (i32.const 1))))
              (if  ;; label = @35
                (i32.lt_u
                  (i32.add
                    (local.tee 7
                      (i32.and
                        (local.tee 5
                          (i32.load8_s offset=959
                            (i32.add
                              (i32.load8_s
                                (local.get 5))
                              (i32.mul
                                (local.get 14)
                                (i32.const 58)))))
                        (i32.const 255)))
                    (i32.const -1))
                  (i32.const 8))
                (then
                  (local.set 5
                    (local.get 6))
                  (local.set 14
                    (local.get 7))
                  (br 1 (;@34;)))))
            (if  ;; label = @36
              (i32.eqz
                (local.get 5))
              (then
                (local.set 9
                  (i32.const -1))
                (br 1 (;@35;))))
            (local.set 18
              (i32.gt_s
                (local.get 15)
                (i32.const -1)))
            (block  ;; label = @37
              (block  ;; label = @38
                (if  ;; label = @39
                  (i32.eq
                    (local.get 5)
                    (i32.const 19))
                  (then
                    (if  ;; label = @40
                      (local.get 18)
                      (then
                        (local.set 9
                          (i32.const -1))
                        (br 4 (;@36;)))))
                  (else
                    (block  ;; label = @41
                      (if  ;; label = @42
                        (local.get 18)
                        (then
                          (i32.store
                            (i32.add
                              (i32.shl
                                (local.get 15)
                                (i32.const 2))
                              (local.get 3))
                            (local.get 7))
                          (i64.store
                            (local.get 10)
                            (i64.load
                              (i32.add
                                (i32.shl
                                  (local.get 15)
                                  (i32.const 3))
                                (local.get 2))))
                          (br 1 (;@41;))))
                      (if  ;; label = @43
                        (i32.eqz
                          (local.get 19))
                        (then
                          (local.set 9
                            (i32.const 0))
                          (br 5 (;@38;))))
                      (call $_pop_arg
                        (local.get 10)
                        (local.get 7)
                        (local.get 1))
                      (local.set 6
                        (i32.load
                          (local.get 12)))
                      (br 2 (;@41;)))))
                (br_if 0 (;@43;)
                  (local.get 19))
                (local.set 4
                  (i32.const 0))
                (br 1 (;@42;)))
              (local.set 5
                (select
                  (local.tee 7
                    (i32.and
                      (local.get 13)
                      (i32.const -65537)))
                  (local.get 13)
                  (i32.and
                    (local.get 13)
                    (i32.const 8192))))
              (block  ;; label = @44
                (block  ;; label = @45
                  (block  ;; label = @46
                    (block  ;; label = @47
                      (block  ;; label = @48
                        (block  ;; label = @49
                          (block  ;; label = @50
                            (block  ;; label = @51
                              (block  ;; label = @52
                                (block  ;; label = @53
                                  (block  ;; label = @54
                                    (block  ;; label = @55
                                      (block  ;; label = @56
                                        (block  ;; label = @57
                                          (block  ;; label = @58
                                            (block  ;; label = @59
                                              (block  ;; label = @60
                                                (br_table 9 (;@51;) 10 (;@50;) 7 (;@53;) 10 (;@50;) 9 (;@51;) 9 (;@51;) 9 (;@51;) 10 (;@50;) 10 (;@50;) 10 (;@50;) 10 (;@50;) 10 (;@50;) 10 (;@50;) 10 (;@50;) 10 (;@50;) 10 (;@50;) 10 (;@50;) 10 (;@50;) 8 (;@52;) 10 (;@50;) 10 (;@50;) 10 (;@50;) 10 (;@50;) 11 (;@49;) 10 (;@50;) 10 (;@50;) 10 (;@50;) 10 (;@50;) 10 (;@50;) 10 (;@50;) 10 (;@50;) 10 (;@50;) 9 (;@51;) 10 (;@50;) 5 (;@55;) 3 (;@57;) 9 (;@51;) 9 (;@51;) 9 (;@51;) 10 (;@50;) 3 (;@57;) 10 (;@50;) 10 (;@50;) 10 (;@50;) 10 (;@50;) 0 (;@60;) 2 (;@58;) 1 (;@59;) 10 (;@50;) 10 (;@50;) 6 (;@54;) 10 (;@50;) 4 (;@56;) 10 (;@50;) 10 (;@50;) 11 (;@49;) 10 (;@50;)
                                                  (i32.sub
                                                    (local.tee 6
                                                      (select
                                                        (i32.and
                                                          (local.tee 6
                                                            (i32.load8_s
                                                              (i32.add
                                                                (local.get 6)
                                                                (i32.const -1))))
                                                          (i32.const -33))
                                                        (local.get 6)
                                                        (i32.and
                                                          (i32.eq
                                                            (i32.and
                                                              (local.get 6)
                                                              (i32.const 15))
                                                            (i32.const 3))
                                                          (i32.ne
                                                            (local.get 14)
                                                            (i32.const 0)))))
                                                    (i32.const 65))))
                                              (block  ;; label = @61
                                                (block  ;; label = @62
                                                  (block  ;; label = @63
                                                    (block  ;; label = @64
                                                      (block  ;; label = @65
                                                        (block  ;; label = @66
                                                          (block  ;; label = @67
                                                            (block  ;; label = @68
                                                              (br_table 0 (;@68;) 1 (;@67;) 2 (;@66;) 3 (;@65;) 4 (;@64;) 7 (;@61;) 5 (;@63;) 6 (;@62;) 7 (;@61;)
                                                                (i32.shr_s
                                                                  (i32.shl
                                                                    (i32.and
                                                                      (local.get 14)
                                                                      (i32.const 255))
                                                                    (i32.const 24))
                                                                  (i32.const 24))))
                                                            (i32.store
                                                              (i32.load
                                                                (local.get 10))
                                                              (local.get 9))
                                                            (local.set 4
                                                              (i32.const 0))
                                                            (br 23 (;@45;)))
                                                          (i32.store
                                                            (i32.load
                                                              (local.get 10))
                                                            (local.get 9))
                                                          (local.set 4
                                                            (i32.const 0))
                                                          (br 22 (;@46;)))
                                                        (i64.store
                                                          (i32.load
                                                            (local.get 10))
                                                          (i64.extend_i32_s
                                                            (local.get 9)))
                                                        (local.set 4
                                                          (i32.const 0))
                                                        (br 21 (;@47;)))
                                                      (i32.store16
                                                        (i32.load
                                                          (local.get 10))
                                                        (local.get 9))
                                                      (local.set 4
                                                        (i32.const 0))
                                                      (br 20 (;@48;)))
                                                    (i32.store8
                                                      (i32.load
                                                        (local.get 10))
                                                      (local.get 9))
                                                    (local.set 4
                                                      (i32.const 0))
                                                    (br 19 (;@49;)))
                                                  (i32.store
                                                    (i32.load
                                                      (local.get 10))
                                                    (local.get 9))
                                                  (local.set 4
                                                    (i32.const 0))
                                                  (br 18 (;@50;)))
                                                (i64.store
                                                  (i32.load
                                                    (local.get 10))
                                                  (i64.extend_i32_s
                                                    (local.get 9)))
                                                (local.set 4
                                                  (i32.const 0))
                                                (br 17 (;@51;)))
                                              (local.set 4
                                                (i32.const 0))
                                              (br 16 (;@52;)))
                                            (local.set 5
                                              (i32.or
                                                (local.get 5)
                                                (i32.const 8)))
                                            (local.set 4
                                              (select
                                                (local.get 4)
                                                (i32.const 8)
                                                (i32.gt_u
                                                  (local.get 4)
                                                  (i32.const 8))))
                                            (local.set 6
                                              (i32.const 120))
                                            (br 9 (;@59;)))
                                          (local.set 6
                                            (i32.sub
                                              (local.get 20)
                                              (local.tee 13
                                                (call $_fmt_o
                                                  (i64.load
                                                    (local.get 10))
                                                  (local.get 21)))))
                                          (local.set 8
                                            (local.get 5))
                                          (local.set 4
                                            (select
                                              (local.get 4)
                                              (i32.add
                                                (local.get 6)
                                                (i32.const 1))
                                              (i32.or
                                                (i32.eqz
                                                  (i32.and
                                                    (local.get 5)
                                                    (i32.const 8)))
                                                (i32.gt_s
                                                  (local.get 4)
                                                  (local.get 6)))))
                                          (local.set 7
                                            (i32.const 0))
                                          (local.set 14
                                            (i32.const 1910))
                                          (br 11 (;@57;)))
                                        (if  ;; label = @69
                                          (i64.lt_s
                                            (local.tee 26
                                              (i64.load
                                                (local.get 10)))
                                            (i64.const 0))
                                          (then
                                            (i64.store
                                              (local.get 10)
                                              (local.tee 26
                                                (i64.sub
                                                  (i64.const 0)
                                                  (local.get 26))))
                                            (local.set 7
                                              (i32.const 1))
                                            (local.set 14
                                              (i32.const 1910))
                                            (br 9 (;@60;)))
                                          (else
                                            (local.set 7
                                              (i32.ne
                                                (i32.and
                                                  (local.get 5)
                                                  (i32.const 2049))
                                                (i32.const 0)))
                                            (local.set 14
                                              (select
                                                (i32.const 1911)
                                                (select
                                                  (i32.const 1912)
                                                  (i32.const 1910)
                                                  (i32.and
                                                    (local.get 5)
                                                    (i32.const 1)))
                                                (i32.and
                                                  (local.get 5)
                                                  (i32.const 2048))))
                                            (br 9 (;@60;))))
                                        (unreachable))
                                      (local.set 26
                                        (i64.load
                                          (local.get 10)))
                                      (local.set 7
                                        (i32.const 0))
                                      (local.set 14
                                        (i32.const 1910))
                                      (br 7 (;@62;)))
                                    (i64.store8
                                      (local.get 23)
                                      (i64.load
                                        (local.get 10)))
                                    (local.set 6
                                      (local.get 23))
                                    (local.set 5
                                      (local.get 7))
                                    (local.set 8
                                      (i32.const 1))
                                    (local.set 7
                                      (i32.const 0))
                                    (local.set 14
                                      (i32.const 1910))
                                    (local.set 4
                                      (local.get 20))
                                    (br 10 (;@59;)))
                                  (local.set 18
                                    (i32.eqz
                                      (local.tee 15
                                        (call $_memchr
                                          (local.tee 13
                                            (select
                                              (local.tee 5
                                                (i32.load
                                                  (local.get 10)))
                                              (i32.const 1920)
                                              (local.get 5)))
                                          (local.get 4)))))
                                  (local.set 5
                                    (local.get 7))
                                  (local.set 8
                                    (select
                                      (local.get 4)
                                      (i32.sub
                                        (local.get 15)
                                        (local.tee 6
                                          (local.get 13)))
                                      (local.get 18)))
                                  (local.set 7
                                    (i32.const 0))
                                  (local.set 14
                                    (i32.const 1910))
                                  (local.set 4
                                    (select
                                      (i32.add
                                        (local.get 4)
                                        (local.get 6))
                                      (local.get 15)
                                      (local.get 18)))
                                  (br 9 (;@60;)))
                                (i64.store32
                                  (local.get 24)
                                  (i64.load
                                    (local.get 10)))
                                (i32.store
                                  (local.get 25)
                                  (i32.const 0))
                                (i32.store
                                  (local.get 10)
                                  (local.get 24))
                                (local.set 8
                                  (i32.const -1))
                                (br 5 (;@64;)))
                              (if  ;; label = @70
                                (local.get 4)
                                (then
                                  (local.set 8
                                    (local.get 4))
                                  (br 5 (;@65;)))
                                (else
                                  (call $_pad_524
                                    (local.get 0)
                                    (i32.const 32)
                                    (local.get 16)
                                    (i32.const 0)
                                    (local.get 5))
                                  (local.set 4
                                    (i32.const 0))
                                  (br 7 (;@63;))))
                              (unreachable))
                            (local.set 4
                              (call_indirect (type 1)
                                (local.get 0)
                                (f64.load
                                  (local.get 10))
                                (local.get 16)
                                (local.get 4)
                                (local.get 5)
                                (local.get 6)
                                (i32.const 3)))
                            (br 7 (;@63;)))
                          (local.set 6
                            (local.get 8))
                          (local.set 8
                            (local.get 4))
                          (local.set 7
                            (i32.const 0))
                          (local.set 14
                            (i32.const 1910))
                          (local.set 4
                            (local.get 20))
                          (br 5 (;@65;)))
                        (local.set 13
                          (call $_fmt_x
                            (i64.load
                              (local.get 10))
                            (local.get 21)
                            (i32.and
                              (local.get 6)
                              (i32.const 32))))
                        (local.set 7
                          (select
                            (i32.const 0)
                            (i32.const 2)
                            (local.tee 5
                              (i32.or
                                (i32.eqz
                                  (i32.and
                                    (local.tee 8
                                      (local.get 5))
                                    (i32.const 8)))
                                (i64.eq
                                  (i64.load
                                    (local.get 10))
                                  (i64.const 0))))))
                        (local.set 14
                          (select
                            (i32.const 1910)
                            (i32.add
                              (i32.shr_u
                                (local.get 6)
                                (i32.const 4))
                              (i32.const 1910))
                            (local.get 5)))
                        (br 2 (;@68;)))
                      (local.set 13
                        (call $_fmt_u
                          (local.get 26)
                          (local.get 21)))
                      (local.set 8
                        (local.get 5))
                      (br 1 (;@69;)))
                    (local.set 4
                      (i32.const 0))
                    (local.set 6
                      (i32.load
                        (local.get 10)))
                    (block  ;; label = @71
                      (block  ;; label = @72
                        (loop  ;; label = @73
                          (if  ;; label = @74
                            (local.tee 7
                              (i32.load
                                (local.get 6)))
                            (then
                              (br_if 2 (;@72;)
                                (i32.or
                                  (local.tee 14
                                    (i32.lt_s
                                      (local.tee 7
                                        (call $_wctomb
                                          (local.get 22)
                                          (local.get 7)))
                                      (i32.const 0)))
                                  (i32.gt_u
                                    (local.get 7)
                                    (i32.sub
                                      (local.get 8)
                                      (local.get 4)))))
                              (local.set 6
                                (i32.add
                                  (local.get 6)
                                  (i32.const 4)))
                              (br_if 1 (;@73;)
                                (i32.gt_u
                                  (local.get 8)
                                  (local.tee 4
                                    (i32.add
                                      (local.get 4)
                                      (local.get 7))))))))
                        (br 1 (;@73;)))
                      (if  ;; label = @75
                        (local.get 14)
                        (then
                          (local.set 9
                            (i32.const -1))
                          (br 6 (;@69;)))))
                    (call $_pad_524
                      (local.get 0)
                      (i32.const 32)
                      (local.get 16)
                      (local.get 4)
                      (local.get 5))
                    (if  ;; label = @76
                      (local.get 4)
                      (then
                        (local.set 8
                          (i32.const 0))
                        (local.set 6
                          (i32.load
                            (local.get 10)))
                        (loop  ;; label = @77
                          (br_if 3 (;@74;)
                            (i32.eqz
                              (local.tee 7
                                (i32.load
                                  (local.get 6)))))
                          (br_if 3 (;@74;)
                            (i32.gt_s
                              (local.tee 8
                                (i32.add
                                  (local.tee 7
                                    (call $_wctomb
                                      (local.get 22)
                                      (local.get 7)))
                                  (local.get 8)))
                              (local.get 4)))
                          (local.set 6
                            (i32.add
                              (local.get 6)
                              (i32.const 4)))
                          (call $_out
                            (local.get 0)
                            (local.get 22)
                            (local.get 7))
                          (br_if 0 (;@77;)
                            (i32.lt_u
                              (local.get 8)
                              (local.get 4))))
                        (br 2 (;@75;)))
                      (else
                        (local.set 4
                          (i32.const 0))
                        (br 2 (;@75;))))
                    (unreachable))
                  (local.set 6
                    (select
                      (local.get 13)
                      (local.get 21)
                      (local.tee 18
                        (i32.or
                          (local.tee 15
                            (i64.ne
                              (i64.load
                                (local.get 10))
                              (i64.const 0)))
                          (i32.ne
                            (local.get 4)
                            (i32.const 0))))))
                  (local.set 5
                    (select
                      (i32.and
                        (local.get 8)
                        (i32.const -65537))
                      (local.get 8)
                      (i32.gt_s
                        (local.get 4)
                        (i32.const -1))))
                  (local.set 8
                    (select
                      (select
                        (local.get 4)
                        (local.tee 8
                          (i32.add
                            (i32.sub
                              (local.get 20)
                              (local.get 13))
                            (i32.and
                              (i32.xor
                                (local.get 15)
                                (i32.const 1))
                              (i32.const 1))))
                        (i32.gt_s
                          (local.get 4)
                          (local.get 8)))
                      (i32.const 0)
                      (local.get 18)))
                  (local.set 4
                    (local.get 20))
                  (br 1 (;@76;)))
                (call $_pad_524
                  (local.get 0)
                  (i32.const 32)
                  (local.get 16)
                  (local.get 4)
                  (i32.xor
                    (local.get 5)
                    (i32.const 8192)))
                (local.set 4
                  (select
                    (local.get 16)
                    (local.get 4)
                    (i32.gt_s
                      (local.get 16)
                      (local.get 4))))
                (br 1 (;@76;)))
              (call $_pad_524
                (local.get 0)
                (i32.const 32)
                (local.tee 4
                  (select
                    (local.tee 8
                      (i32.add
                        (local.get 7)
                        (local.tee 15
                          (select
                            (local.tee 13
                              (i32.sub
                                (local.get 4)
                                (local.get 6)))
                            (local.get 8)
                            (i32.lt_s
                              (local.get 8)
                              (local.get 13))))))
                    (local.get 16)
                    (i32.lt_s
                      (local.get 16)
                      (local.get 8))))
                (local.get 8)
                (local.get 5))
              (call $_out
                (local.get 0)
                (local.get 14)
                (local.get 7))
              (call $_pad_524
                (local.get 0)
                (i32.const 48)
                (local.get 4)
                (local.get 8)
                (i32.xor
                  (local.get 5)
                  (i32.const 65536)))
              (call $_pad_524
                (local.get 0)
                (i32.const 48)
                (local.get 15)
                (local.get 13)
                (i32.const 0))
              (call $_out
                (local.get 0)
                (local.get 6)
                (local.get 13))
              (call $_pad_524
                (local.get 0)
                (i32.const 32)
                (local.get 4)
                (local.get 8)
                (i32.xor
                  (local.get 5)
                  (i32.const 8192))))
            (local.set 5
              (local.get 11))
            (br 1 (;@76;))))
        (br 1 (;@76;)))
      (if  ;; label = @78
        (i32.eqz
          (local.get 0))
        (then
          (local.set 9
            (if (result i32)  ;; label = @79
              (local.get 5)
              (then
                (local.set 0
                  (i32.const 1))
                (loop  ;; label = @80
                  (if  ;; label = @81
                    (local.tee 4
                      (i32.load
                        (i32.add
                          (i32.shl
                            (local.get 0)
                            (i32.const 2))
                          (local.get 3))))
                    (then
                      (call $_pop_arg
                        (i32.add
                          (i32.shl
                            (local.get 0)
                            (i32.const 3))
                          (local.get 2))
                        (local.get 4)
                        (local.get 1))
                      (br_if 1 (;@80;)
                        (i32.lt_u
                          (local.tee 0
                            (i32.add
                              (local.get 0)
                              (i32.const 1)))
                          (i32.const 10)))
                      (local.set 9
                        (i32.const 1))
                      (br 4 (;@77;)))))
                (loop (result i32)  ;; label = @82
                  (if  ;; label = @83
                    (i32.load
                      (i32.add
                        (i32.shl
                          (local.get 0)
                          (i32.const 2))
                        (local.get 3)))
                    (then
                      (local.set 9
                        (i32.const -1))
                      (br 4 (;@79;))))
                  (br_if 0 (;@83;)
                    (i32.lt_u
                      (local.tee 0
                        (i32.add
                          (local.get 0)
                          (i32.const 1)))
                      (i32.const 10)))
                  (i32.const 1)))
              (else
                (i32.const 0)))))))
    (global.set 2
      (local.get 17))
    (local.get 9))
  (func $_out (type 12) (param i32 i32 i32)
    (if  ;; label = @1
      (i32.eqz
        (i32.and
          (i32.load
            (local.get 0))
          (i32.const 32)))
      (then
        (call $___fwritex
          (local.get 1)
          (local.get 2)
          (local.get 0)))))
  (func $_isdigit (type 3) (param i32) (result i32)
    (i32.lt_u
      (i32.add
        (local.get 0)
        (i32.const -48))
      (i32.const 10)))
  (func $_getint (type 3) (param i32) (result i32)
    (local i32 i32)
    (if  ;; label = @1
      (call $_isdigit
        (i32.load8_s
          (i32.load
            (local.get 0))))
      (then
        (loop  ;; label = @2
          (local.set 1
            (i32.add
              (i32.load8_s
                (local.tee 2
                  (i32.load
                    (local.get 0))))
              (i32.add
                (i32.mul
                  (local.get 1)
                  (i32.const 10))
                (i32.const -48))))
          (i32.store
            (local.get 0)
            (local.tee 2
              (i32.add
                (local.get 2)
                (i32.const 1))))
          (br_if 0 (;@2;)
            (call $_isdigit
              (i32.load8_s
                (local.get 2)))))))
    (local.get 1))
  (func $_pop_arg (type 12) (param i32 i32 i32)
    (local i32 i64 f64)
    (if  ;; label = @1
      (i32.le_u
        (local.get 1)
        (i32.const 20))
      (then
        (block  ;; label = @2
          (block  ;; label = @3
            (block  ;; label = @4
              (block  ;; label = @5
                (block  ;; label = @6
                  (block  ;; label = @7
                    (block  ;; label = @8
                      (block  ;; label = @9
                        (block  ;; label = @10
                          (block  ;; label = @11
                            (block  ;; label = @12
                              (br_table 0 (;@12;) 1 (;@11;) 2 (;@10;) 3 (;@9;) 4 (;@8;) 5 (;@7;) 6 (;@6;) 7 (;@5;) 8 (;@4;) 9 (;@3;) 10 (;@2;)
                                (i32.sub
                                  (local.get 1)
                                  (i32.const 9))))
                            (local.set 3
                              (i32.load
                                (local.tee 1
                                  (i32.and
                                    (i32.add
                                      (i32.load
                                        (local.get 2))
                                      (i32.const 3))
                                    (i32.const -4)))))
                            (i32.store
                              (local.get 2)
                              (i32.add
                                (local.get 1)
                                (i32.const 4)))
                            (i32.store
                              (local.get 0)
                              (local.get 3))
                            (br 9 (;@3;)))
                          (local.set 3
                            (i32.load
                              (local.tee 1
                                (i32.and
                                  (i32.add
                                    (i32.load
                                      (local.get 2))
                                    (i32.const 3))
                                  (i32.const -4)))))
                          (i32.store
                            (local.get 2)
                            (i32.add
                              (local.get 1)
                              (i32.const 4)))
                          (i64.store
                            (local.get 0)
                            (i64.extend_i32_s
                              (local.get 3)))
                          (br 8 (;@4;)))
                        (local.set 3
                          (i32.load
                            (local.tee 1
                              (i32.and
                                (i32.add
                                  (i32.load
                                    (local.get 2))
                                  (i32.const 3))
                                (i32.const -4)))))
                        (i32.store
                          (local.get 2)
                          (i32.add
                            (local.get 1)
                            (i32.const 4)))
                        (i64.store
                          (local.get 0)
                          (i64.extend_i32_u
                            (local.get 3)))
                        (br 7 (;@5;)))
                      (local.set 4
                        (i64.load
                          (local.tee 1
                            (i32.and
                              (i32.add
                                (i32.load
                                  (local.get 2))
                                (i32.const 7))
                              (i32.const -8)))))
                      (i32.store
                        (local.get 2)
                        (i32.add
                          (local.get 1)
                          (i32.const 8)))
                      (i64.store
                        (local.get 0)
                        (local.get 4))
                      (br 6 (;@6;)))
                    (local.set 3
                      (i32.load
                        (local.tee 1
                          (i32.and
                            (i32.add
                              (i32.load
                                (local.get 2))
                              (i32.const 3))
                            (i32.const -4)))))
                    (i32.store
                      (local.get 2)
                      (i32.add
                        (local.get 1)
                        (i32.const 4)))
                    (i64.store
                      (local.get 0)
                      (i64.extend_i32_s
                        (i32.shr_s
                          (i32.shl
                            (i32.and
                              (local.get 3)
                              (i32.const 65535))
                            (i32.const 16))
                          (i32.const 16))))
                    (br 5 (;@7;)))
                  (local.set 3
                    (i32.load
                      (local.tee 1
                        (i32.and
                          (i32.add
                            (i32.load
                              (local.get 2))
                            (i32.const 3))
                          (i32.const -4)))))
                  (i32.store
                    (local.get 2)
                    (i32.add
                      (local.get 1)
                      (i32.const 4)))
                  (i64.store
                    (local.get 0)
                    (i64.extend_i32_u
                      (i32.and
                        (local.get 3)
                        (i32.const 65535))))
                  (br 4 (;@8;)))
                (local.set 3
                  (i32.load
                    (local.tee 1
                      (i32.and
                        (i32.add
                          (i32.load
                            (local.get 2))
                          (i32.const 3))
                        (i32.const -4)))))
                (i32.store
                  (local.get 2)
                  (i32.add
                    (local.get 1)
                    (i32.const 4)))
                (i64.store
                  (local.get 0)
                  (i64.extend_i32_s
                    (i32.shr_s
                      (i32.shl
                        (i32.and
                          (local.get 3)
                          (i32.const 255))
                        (i32.const 24))
                      (i32.const 24))))
                (br 3 (;@9;)))
              (local.set 3
                (i32.load
                  (local.tee 1
                    (i32.and
                      (i32.add
                        (i32.load
                          (local.get 2))
                        (i32.const 3))
                      (i32.const -4)))))
              (i32.store
                (local.get 2)
                (i32.add
                  (local.get 1)
                  (i32.const 4)))
              (i64.store
                (local.get 0)
                (i64.extend_i32_u
                  (i32.and
                    (local.get 3)
                    (i32.const 255))))
              (br 2 (;@10;)))
            (local.set 5
              (f64.load
                (local.tee 1
                  (i32.and
                    (i32.add
                      (i32.load
                        (local.get 2))
                      (i32.const 7))
                    (i32.const -8)))))
            (i32.store
              (local.get 2)
              (i32.add
                (local.get 1)
                (i32.const 8)))
            (f64.store
              (local.get 0)
              (local.get 5))
            (br 1 (;@11;)))
          (call_indirect (type 2)
            (local.get 0)
            (local.get 2)
            (i32.const 11))))))
  (func $_fmt_x (type 13) (param i64 i32 i32) (result i32)
    (if  ;; label = @1
      (i64.ne
        (local.get 0)
        (i64.const 0))
      (then
        (loop  ;; label = @2
          (i32.store8
            (local.tee 1
              (i32.add
                (local.get 1)
                (i32.const -1)))
            (i32.or
              (local.get 2)
              (i32.load8_u
                (i32.add
                  (i32.and
                    (i32.wrap_i64
                      (local.get 0))
                    (i32.const 15))
                  (i32.const 1488)))))
          (br_if 0 (;@2;)
            (i64.ne
              (local.tee 0
                (i64.shr_u
                  (local.get 0)
                  (i64.const 4)))
              (i64.const 0))))))
    (local.get 1))
  (func $_fmt_o (type 14) (param i64 i32) (result i32)
    (if  ;; label = @1
      (i64.ne
        (local.get 0)
        (i64.const 0))
      (then
        (loop  ;; label = @2
          (i32.store8
            (local.tee 1
              (i32.add
                (local.get 1)
                (i32.const -1)))
            (i32.or
              (i32.and
                (i32.wrap_i64
                  (local.get 0))
                (i32.const 7))
              (i32.const 48)))
          (br_if 0 (;@2;)
            (i64.ne
              (local.tee 0
                (i64.shr_u
                  (local.get 0)
                  (i64.const 3)))
              (i64.const 0))))))
    (local.get 1))
  (func $_fmt_u (type 14) (param i64 i32) (result i32)
    (local i32 i32 i64)
    (local.set 2
      (i32.wrap_i64
        (local.get 0)))
    (if  ;; label = @1
      (i64.gt_u
        (local.get 0)
        (i64.const 4294967295))
      (then
        (loop  ;; label = @2
          (i32.store8
            (local.tee 1
              (i32.add
                (local.get 1)
                (i32.const -1)))
            (i32.or
              (i32.and
                (i32.wrap_i64
                  (i64.sub
                    (local.get 0)
                    (i64.mul
                      (local.tee 4
                        (i64.div_u
                          (local.get 0)
                          (i64.const 10)))
                      (i64.const 10))))
                (i32.const 255))
              (i32.const 48)))
          (if  ;; label = @3
            (i64.gt_u
              (local.get 0)
              (i64.const 42949672959))
            (then
              (local.set 0
                (local.get 4))
              (br 1 (;@2;)))))
        (local.set 2
          (i32.wrap_i64
            (local.get 4)))))
    (if  ;; label = @4
      (local.get 2)
      (then
        (loop  ;; label = @5
          (i32.store8
            (local.tee 1
              (i32.add
                (local.get 1)
                (i32.const -1)))
            (i32.or
              (i32.sub
                (local.get 2)
                (i32.mul
                  (local.tee 3
                    (i32.div_u
                      (local.get 2)
                      (i32.const 10)))
                  (i32.const 10)))
              (i32.const 48)))
          (if  ;; label = @6
            (i32.ge_u
              (local.get 2)
              (i32.const 10))
            (then
              (local.set 2
                (local.get 3))
              (br 1 (;@5;)))))))
    (local.get 1))
  (func $_pad_524 (type 15) (param i32 i32 i32 i32 i32)
    (local i32 i32)
    (local.set 6
      (global.get 2))
    (global.set 2
      (i32.add
        (global.get 2)
        (i32.const 256)))
    (local.set 5
      (local.get 6))
    (if  ;; label = @1
      (i32.and
        (i32.eqz
          (i32.and
            (local.get 4)
            (i32.const 73728)))
        (i32.gt_s
          (local.get 2)
          (local.get 3)))
      (then
        (drop
          (call $_memset
            (local.get 5)
            (i32.shr_s
              (i32.shl
                (local.get 1)
                (i32.const 24))
              (i32.const 24))
            (select
              (local.tee 1
                (i32.sub
                  (local.get 2)
                  (local.get 3)))
              (i32.const 256)
              (i32.lt_u
                (local.get 1)
                (i32.const 256)))))
        (if  ;; label = @2
          (i32.gt_u
            (local.get 1)
            (i32.const 255))
          (then
            (local.set 2
              (i32.sub
                (local.get 2)
                (local.get 3)))
            (loop  ;; label = @3
              (call $_out
                (local.get 0)
                (local.get 5)
                (i32.const 256))
              (br_if 0 (;@3;)
                (i32.gt_u
                  (local.tee 1
                    (i32.add
                      (local.get 1)
                      (i32.const -256)))
                  (i32.const 255))))
            (local.set 1
              (i32.and
                (local.get 2)
                (i32.const 255)))))
        (call $_out
          (local.get 0)
          (local.get 5)
          (local.get 1))))
    (global.set 2
      (local.get 6)))
  (func $_wctomb (type 6) (param i32 i32) (result i32)
    (if (result i32)  ;; label = @1
      (local.get 0)
      (then
        (call $_wcrtomb
          (local.get 0)
          (local.get 1)))
      (else
        (i32.const 0))))
  (func $_wcrtomb (type 6) (param i32 i32) (result i32)
    (if (result i32)  ;; label = @1
      (local.get 0)
      (then
        (block (result i32)  ;; label = @2
          (if  ;; label = @3
            (i32.lt_u
              (local.get 1)
              (i32.const 128))
            (then
              (i32.store8
                (local.get 0)
                (local.get 1))
              (br 1 (;@2;)
                (i32.const 1))))
          (if  ;; label = @4
            (i32.eqz
              (i32.load
                (i32.load
                  (i32.const 1840))))
            (then
              (if  ;; label = @5
                (i32.eq
                  (i32.and
                    (local.get 1)
                    (i32.const -128))
                  (i32.const 57216))
                (then
                  (i32.store8
                    (local.get 0)
                    (local.get 1))
                  (i32.const 1)
                  (br 2 (;@3;)))
                (else
                  (i32.store
                    (i32.const 3072)
                    (i32.const 84))
                  (i32.const -1)
                  (br 2 (;@3;))))
              (unreachable)))
          (if  ;; label = @6
            (i32.lt_u
              (local.get 1)
              (i32.const 2048))
            (then
              (i32.store8
                (local.get 0)
                (i32.or
                  (i32.shr_u
                    (local.get 1)
                    (i32.const 6))
                  (i32.const 192)))
              (i32.store8 offset=1
                (local.get 0)
                (i32.or
                  (i32.and
                    (local.get 1)
                    (i32.const 63))
                  (i32.const 128)))
              (i32.const 2)
              (br 1 (;@5;))))
          (if  ;; label = @7
            (i32.or
              (i32.eq
                (i32.and
                  (local.get 1)
                  (i32.const -8192))
                (i32.const 57344))
              (i32.lt_u
                (local.get 1)
                (i32.const 55296)))
            (then
              (i32.store8
                (local.get 0)
                (i32.or
                  (i32.shr_u
                    (local.get 1)
                    (i32.const 12))
                  (i32.const 224)))
              (i32.store8 offset=1
                (local.get 0)
                (i32.or
                  (i32.and
                    (i32.shr_u
                      (local.get 1)
                      (i32.const 6))
                    (i32.const 63))
                  (i32.const 128)))
              (i32.store8 offset=2
                (local.get 0)
                (i32.or
                  (i32.and
                    (local.get 1)
                    (i32.const 63))
                  (i32.const 128)))
              (i32.const 3)
              (br 1 (;@6;))))
          (if (result i32)  ;; label = @8
            (i32.lt_u
              (i32.add
                (local.get 1)
                (i32.const -65536))
              (i32.const 1048576))
            (then
              (i32.store8
                (local.get 0)
                (i32.or
                  (i32.shr_u
                    (local.get 1)
                    (i32.const 18))
                  (i32.const 240)))
              (i32.store8 offset=1
                (local.get 0)
                (i32.or
                  (i32.and
                    (i32.shr_u
                      (local.get 1)
                      (i32.const 12))
                    (i32.const 63))
                  (i32.const 128)))
              (i32.store8 offset=2
                (local.get 0)
                (i32.or
                  (i32.and
                    (i32.shr_u
                      (local.get 1)
                      (i32.const 6))
                    (i32.const 63))
                  (i32.const 128)))
              (i32.store8 offset=3
                (local.get 0)
                (i32.or
                  (i32.and
                    (local.get 1)
                    (i32.const 63))
                  (i32.const 128)))
              (i32.const 4))
            (else
              (i32.store
                (i32.const 3072)
                (i32.const 84))
              (i32.const -1)))))
      (else
        (i32.const 1))))
  (func $___fwritex (type 12) (param i32 i32 i32)
    (local i32 i32 i32 i32)
    (block  ;; label = @1
      (block  ;; label = @2
        (br_if 0 (;@2;)
          (local.tee 3
            (i32.load
              (local.tee 4
                (i32.add
                  (local.get 2)
                  (i32.const 16))))))
        (if  ;; label = @3
          (i32.eqz
            (call $___towrite
              (local.get 2)))
          (then
            (local.set 3
              (i32.load
                (local.get 4)))
            (br 1 (;@2;))))
        (br 1 (;@2;)))
      (if  ;; label = @4
        (i32.lt_u
          (i32.sub
            (local.get 3)
            (local.tee 4
              (i32.load
                (local.tee 5
                  (i32.add
                    (local.get 2)
                    (i32.const 20))))))
          (local.get 1))
        (then
          (drop
            (call_indirect (type 0)
              (local.get 2)
              (local.get 0)
              (local.get 1)
              (i32.add
                (i32.and
                  (i32.load offset=36
                    (local.get 2))
                  (i32.const 3))
                (i32.const 4))))
          (br 1 (;@3;))))
      (drop
        (if (result i32)  ;; label = @5
          (i32.or
            (i32.eqz
              (local.get 1))
            (i32.lt_s
              (i32.load8_s offset=75
                (local.get 2))
              (i32.const 0)))
          (then
            (i32.const 0))
          (else
            (block (result i32)  ;; label = @6
              (local.set 3
                (local.get 1))
              (loop  ;; label = @7
                (if  ;; label = @8
                  (i32.ne
                    (i32.load8_s
                      (i32.add
                        (local.get 0)
                        (local.tee 6
                          (i32.add
                            (local.get 3)
                            (i32.const -1)))))
                    (i32.const 10))
                  (then
                    (if  ;; label = @9
                      (local.get 6)
                      (then
                        (local.set 3
                          (local.get 6))
                        (br 2 (;@7;)))
                      (else
                        (br 3 (;@6;)
                          (i32.const 0))))
                    (unreachable))))
              (br_if 2 (;@7;)
                (i32.lt_u
                  (call_indirect (type 0)
                    (local.get 2)
                    (local.get 0)
                    (local.get 3)
                    (i32.add
                      (i32.and
                        (i32.load offset=36
                          (local.get 2))
                        (i32.const 3))
                      (i32.const 4)))
                  (local.get 3)))
              (local.set 4
                (i32.load
                  (local.get 5)))
              (local.set 1
                (i32.sub
                  (local.get 1)
                  (local.get 3)))
              (local.set 0
                (i32.add
                  (local.get 0)
                  (local.get 3)))
              (i32.const 0)))))
      (drop
        (call $_memcpy
          (local.get 4)
          (local.get 0)
          (local.get 1)))
      (i32.store
        (local.get 5)
        (i32.add
          (i32.load
            (local.get 5))
          (local.get 1)))))
  (func $___towrite (type 3) (param i32) (result i32)
    (local i32 i32)
    (local.set 1
      (i32.load8_s
        (local.tee 2
          (i32.add
            (local.get 0)
            (i32.const 74)))))
    (i32.store8
      (local.get 2)
      (i32.or
        (local.get 1)
        (i32.add
          (local.get 1)
          (i32.const 255))))
    (if (result i32)  ;; label = @1
      (i32.and
        (local.tee 1
          (i32.load
            (local.get 0)))
        (i32.const 8))
      (then
        (i32.store
          (local.get 0)
          (i32.or
            (local.get 1)
            (i32.const 32)))
        (i32.const -1))
      (else
        (i32.store
          (i32.add
            (local.get 0)
            (i32.const 8))
          (i32.const 0))
        (i32.store
          (i32.add
            (local.get 0)
            (i32.const 4))
          (i32.const 0))
        (i32.store
          (i32.add
            (local.get 0)
            (i32.const 28))
          (local.tee 1
            (i32.load
              (i32.add
                (local.get 0)
                (i32.const 44)))))
        (i32.store
          (i32.add
            (local.get 0)
            (i32.const 20))
          (local.get 1))
        (i32.store
          (i32.add
            (local.get 0)
            (i32.const 16))
          (i32.add
            (local.get 1)
            (i32.load
              (i32.add
                (local.get 0)
                (i32.const 48)))))
        (i32.const 0))))
  (func $_printf (type 5) (param i32)
    (local i32)
    (local.set 1
      (global.get 2))
    (global.set 2
      (i32.add
        (global.get 2)
        (i32.const 16)))
    (i32.store
      (local.get 1)
      (local.get 0))
    (call $___vfprintf_internal
      (i32.load
        (i32.const 1648))
      (local.get 1))
    (global.set 2
      (local.get 1)))
  (func $_malloc (type 3) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    (local.set 14
      (global.get 2))
    (global.set 2
      (i32.add
        (global.get 2)
        (i32.const 16)))
    (local.set 3
      (if (result i32)  ;; label = @1
        (i32.lt_u
          (local.get 0)
          (i32.const 245))
        (then
          (if  ;; label = @2
            (i32.and
              (local.tee 3
                (i32.shr_u
                  (local.tee 7
                    (i32.load
                      (i32.const 3076)))
                  (local.tee 0
                    (i32.shr_u
                      (local.tee 2
                        (select
                          (i32.const 16)
                          (i32.and
                            (i32.add
                              (local.get 0)
                              (i32.const 11))
                            (i32.const -8))
                          (i32.lt_u
                            (local.get 0)
                            (i32.const 11))))
                      (i32.const 3)))))
              (i32.const 3))
            (then
              (if  ;; label = @3
                (i32.eq
                  (local.tee 3
                    (i32.load
                      (local.tee 5
                        (i32.add
                          (local.tee 0
                            (i32.load
                              (local.tee 4
                                (i32.add
                                  (local.tee 2
                                    (i32.add
                                      (i32.shl
                                        (local.tee 1
                                          (i32.add
                                            (i32.xor
                                              (i32.and
                                                (local.get 3)
                                                (i32.const 1))
                                              (i32.const 1))
                                            (local.get 0)))
                                        (i32.const 3))
                                      (i32.const 3116)))
                                  (i32.const 8)))))
                          (i32.const 8)))))
                  (local.get 2))
                (then
                  (i32.store
                    (i32.const 3076)
                    (i32.and
                      (local.get 7)
                      (i32.xor
                        (i32.shl
                          (i32.const 1)
                          (local.get 1))
                        (i32.const -1)))))
                (else
                  (if  ;; label = @4
                    (i32.gt_u
                      (i32.load
                        (i32.const 3092))
                      (local.get 3))
                    (then
                      (call $_abort)))
                  (if  ;; label = @5
                    (i32.eq
                      (local.get 0)
                      (i32.load
                        (local.tee 6
                          (i32.add
                            (local.get 3)
                            (i32.const 12)))))
                    (then
                      (i32.store
                        (local.get 6)
                        (local.get 2))
                      (i32.store
                        (local.get 4)
                        (local.get 3)))
                    (else
                      (call $_abort)))))
              (i32.store offset=4
                (local.get 0)
                (i32.or
                  (local.tee 3
                    (i32.shl
                      (local.get 1)
                      (i32.const 3)))
                  (i32.const 3)))
              (i32.store
                (local.tee 0
                  (i32.add
                    (i32.add
                      (local.get 0)
                      (local.get 3))
                    (i32.const 4)))
                (i32.or
                  (i32.load
                    (local.get 0))
                  (i32.const 1)))
              (global.set 2
                (local.get 14))
              (return
                (local.get 5))))
          (if (result i32)  ;; label = @6
            (i32.gt_u
              (local.get 2)
              (local.tee 13
                (i32.load
                  (i32.const 3084))))
            (then
              (if  ;; label = @7
                (local.get 3)
                (then
                  (if  ;; label = @8
                    (i32.eq
                      (local.tee 3
                        (i32.load
                          (local.tee 10
                            (i32.add
                              (local.tee 0
                                (i32.load
                                  (local.tee 8
                                    (i32.add
                                      (local.tee 6
                                        (i32.add
                                          (i32.shl
                                            (local.tee 1
                                              (i32.add
                                                (i32.or
                                                  (i32.or
                                                    (i32.or
                                                      (i32.or
                                                        (local.tee 3
                                                          (i32.and
                                                            (i32.shr_u
                                                              (local.tee 0
                                                                (i32.add
                                                                  (i32.and
                                                                    (local.tee 0
                                                                      (i32.and
                                                                        (i32.or
                                                                          (local.tee 1
                                                                            (i32.shl
                                                                              (i32.const 2)
                                                                              (local.get 0)))
                                                                          (i32.sub
                                                                            (i32.const 0)
                                                                            (local.get 1)))
                                                                        (i32.shl
                                                                          (local.get 3)
                                                                          (local.get 0))))
                                                                    (i32.sub
                                                                      (i32.const 0)
                                                                      (local.get 0)))
                                                                  (i32.const -1)))
                                                              (i32.const 12))
                                                            (i32.const 16)))
                                                        (local.tee 3
                                                          (i32.and
                                                            (i32.shr_u
                                                              (local.tee 0
                                                                (i32.shr_u
                                                                  (local.get 0)
                                                                  (local.get 3)))
                                                              (i32.const 5))
                                                            (i32.const 8))))
                                                      (local.tee 3
                                                        (i32.and
                                                          (i32.shr_u
                                                            (local.tee 0
                                                              (i32.shr_u
                                                                (local.get 0)
                                                                (local.get 3)))
                                                            (i32.const 2))
                                                          (i32.const 4))))
                                                    (local.tee 3
                                                      (i32.and
                                                        (i32.shr_u
                                                          (local.tee 0
                                                            (i32.shr_u
                                                              (local.get 0)
                                                              (local.get 3)))
                                                          (i32.const 1))
                                                        (i32.const 2))))
                                                  (local.tee 3
                                                    (i32.and
                                                      (i32.shr_u
                                                        (local.tee 0
                                                          (i32.shr_u
                                                            (local.get 0)
                                                            (local.get 3)))
                                                        (i32.const 1))
                                                      (i32.const 1))))
                                                (i32.shr_u
                                                  (local.get 0)
                                                  (local.get 3))))
                                            (i32.const 3))
                                          (i32.const 3116)))
                                      (i32.const 8)))))
                              (i32.const 8)))))
                      (local.get 6))
                    (then
                      (i32.store
                        (i32.const 3076)
                        (local.tee 4
                          (i32.and
                            (local.get 7)
                            (i32.xor
                              (i32.shl
                                (i32.const 1)
                                (local.get 1))
                              (i32.const -1))))))
                    (else
                      (if  ;; label = @9
                        (i32.gt_u
                          (i32.load
                            (i32.const 3092))
                          (local.get 3))
                        (then
                          (call $_abort)))
                      (if  ;; label = @10
                        (i32.eq
                          (i32.load
                            (local.tee 11
                              (i32.add
                                (local.get 3)
                                (i32.const 12))))
                          (local.get 0))
                        (then
                          (i32.store
                            (local.get 11)
                            (local.get 6))
                          (i32.store
                            (local.get 8)
                            (local.get 3))
                          (local.set 4
                            (local.get 7)))
                        (else
                          (call $_abort)))))
                  (i32.store offset=4
                    (local.get 0)
                    (i32.or
                      (local.get 2)
                      (i32.const 3)))
                  (i32.store offset=4
                    (local.tee 7
                      (i32.add
                        (local.get 0)
                        (local.get 2)))
                    (i32.or
                      (local.tee 6
                        (i32.sub
                          (local.tee 3
                            (i32.shl
                              (local.get 1)
                              (i32.const 3)))
                          (local.get 2)))
                      (i32.const 1)))
                  (i32.store
                    (i32.add
                      (local.get 0)
                      (local.get 3))
                    (local.get 6))
                  (if  ;; label = @11
                    (local.get 13)
                    (then
                      (local.set 2
                        (i32.load
                          (i32.const 3096)))
                      (local.set 0
                        (i32.add
                          (i32.shl
                            (local.tee 3
                              (i32.shr_u
                                (local.get 13)
                                (i32.const 3)))
                            (i32.const 3))
                          (i32.const 3116)))
                      (if  ;; label = @12
                        (i32.and
                          (local.get 4)
                          (local.tee 3
                            (i32.shl
                              (i32.const 1)
                              (local.get 3))))
                        (then
                          (if  ;; label = @13
                            (i32.gt_u
                              (i32.load
                                (i32.const 3092))
                              (local.tee 1
                                (i32.load
                                  (local.tee 3
                                    (i32.add
                                      (local.get 0)
                                      (i32.const 8))))))
                            (then
                              (call $_abort))
                            (else
                              (local.set 12
                                (local.get 3))
                              (local.set 5
                                (local.get 1)))))
                        (else
                          (i32.store
                            (i32.const 3076)
                            (i32.or
                              (local.get 3)
                              (local.get 4)))
                          (local.set 12
                            (i32.add
                              (local.get 0)
                              (i32.const 8)))
                          (local.set 5
                            (local.get 0))))
                      (i32.store
                        (local.get 12)
                        (local.get 2))
                      (i32.store offset=12
                        (local.get 5)
                        (local.get 2))
                      (i32.store offset=8
                        (local.get 2)
                        (local.get 5))
                      (i32.store offset=12
                        (local.get 2)
                        (local.get 0))))
                  (i32.store
                    (i32.const 3084)
                    (local.get 6))
                  (i32.store
                    (i32.const 3096)
                    (local.get 7))
                  (global.set 2
                    (local.get 14))
                  (return
                    (local.get 10))))
              (if (result i32)  ;; label = @14
                (local.tee 12
                  (i32.load
                    (i32.const 3080)))
                (then
                  (local.set 10
                    (i32.sub
                      (i32.and
                        (i32.load offset=4
                          (local.tee 0
                            (i32.load
                              (i32.add
                                (i32.shl
                                  (i32.add
                                    (i32.or
                                      (i32.or
                                        (i32.or
                                          (i32.or
                                            (local.tee 3
                                              (i32.and
                                                (i32.shr_u
                                                  (local.tee 0
                                                    (i32.add
                                                      (i32.and
                                                        (local.get 12)
                                                        (i32.sub
                                                          (i32.const 0)
                                                          (local.get 12)))
                                                      (i32.const -1)))
                                                  (i32.const 12))
                                                (i32.const 16)))
                                            (local.tee 3
                                              (i32.and
                                                (i32.shr_u
                                                  (local.tee 0
                                                    (i32.shr_u
                                                      (local.get 0)
                                                      (local.get 3)))
                                                  (i32.const 5))
                                                (i32.const 8))))
                                          (local.tee 3
                                            (i32.and
                                              (i32.shr_u
                                                (local.tee 0
                                                  (i32.shr_u
                                                    (local.get 0)
                                                    (local.get 3)))
                                                (i32.const 2))
                                              (i32.const 4))))
                                        (local.tee 3
                                          (i32.and
                                            (i32.shr_u
                                              (local.tee 0
                                                (i32.shr_u
                                                  (local.get 0)
                                                  (local.get 3)))
                                              (i32.const 1))
                                            (i32.const 2))))
                                      (local.tee 3
                                        (i32.and
                                          (i32.shr_u
                                            (local.tee 0
                                              (i32.shr_u
                                                (local.get 0)
                                                (local.get 3)))
                                            (i32.const 1))
                                          (i32.const 1))))
                                    (i32.shr_u
                                      (local.get 0)
                                      (local.get 3)))
                                  (i32.const 2))
                                (i32.const 3380)))))
                        (i32.const -8))
                      (local.get 2)))
                  (local.set 8
                    (local.get 0))
                  (loop  ;; label = @15
                    (block  ;; label = @16
                      (if  ;; label = @17
                        (local.tee 3
                          (i32.load offset=16
                            (local.get 0)))
                        (then
                          (local.set 0
                            (local.get 3)))
                        (else
                          (br_if 1 (;@16;)
                            (i32.eqz
                              (local.tee 0
                                (i32.load offset=20
                                  (local.get 0)))))))
                      (local.set 3
                        (i32.lt_u
                          (local.tee 4
                            (i32.sub
                              (i32.and
                                (i32.load offset=4
                                  (local.get 0))
                                (i32.const -8))
                              (local.get 2)))
                          (local.get 10)))
                      (local.set 10
                        (select
                          (local.get 4)
                          (local.get 10)
                          (local.get 3)))
                      (local.set 8
                        (select
                          (local.get 0)
                          (local.get 8)
                          (local.get 3)))
                      (br 1 (;@16;))))
                  (if  ;; label = @18
                    (i32.gt_u
                      (local.tee 15
                        (i32.load
                          (i32.const 3092)))
                      (local.get 8))
                    (then
                      (call $_abort)))
                  (if  ;; label = @19
                    (i32.le_u
                      (local.tee 9
                        (i32.add
                          (local.get 2)
                          (local.get 8)))
                      (local.get 8))
                    (then
                      (call $_abort)))
                  (local.set 11
                    (i32.load offset=24
                      (local.get 8)))
                  (if  ;; label = @20
                    (i32.eq
                      (local.tee 0
                        (i32.load offset=12
                          (local.get 8)))
                      (local.get 8))
                    (then
                      (block  ;; label = @21
                        (if  ;; label = @22
                          (i32.eqz
                            (local.tee 0
                              (i32.load
                                (local.tee 3
                                  (i32.add
                                    (local.get 8)
                                    (i32.const 20))))))
                          (then
                            (br_if 1 (;@21;)
                              (i32.eqz
                                (local.tee 0
                                  (i32.load
                                    (local.tee 3
                                      (i32.add
                                        (local.get 8)
                                        (i32.const 16)))))))))
                        (loop  ;; label = @23
                          (block  ;; label = @24
                            (local.set 0
                              (if (result i32)  ;; label = @25
                                (local.tee 5
                                  (i32.load
                                    (local.tee 4
                                      (i32.add
                                        (local.get 0)
                                        (i32.const 20)))))
                                (then
                                  (local.set 3
                                    (local.get 4))
                                  (local.get 5))
                                (else
                                  (br_if 1 (;@24;)
                                    (i32.eqz
                                      (local.tee 5
                                        (i32.load
                                          (local.tee 4
                                            (i32.add
                                              (local.get 0)
                                              (i32.const 16)))))))
                                  (local.set 3
                                    (local.get 4))
                                  (local.get 5))))
                            (br 1 (;@24;))))
                        (if  ;; label = @26
                          (i32.gt_u
                            (local.get 15)
                            (local.get 3))
                          (then
                            (call $_abort))
                          (else
                            (i32.store
                              (local.get 3)
                              (i32.const 0))
                            (local.set 1
                              (local.get 0))))))
                    (else
                      (if  ;; label = @27
                        (i32.gt_u
                          (local.get 15)
                          (local.tee 3
                            (i32.load offset=8
                              (local.get 8))))
                        (then
                          (call $_abort)))
                      (if  ;; label = @28
                        (i32.ne
                          (local.get 8)
                          (i32.load
                            (local.tee 4
                              (i32.add
                                (local.get 3)
                                (i32.const 12)))))
                        (then
                          (call $_abort)))
                      (if  ;; label = @29
                        (i32.eq
                          (i32.load
                            (local.tee 5
                              (i32.add
                                (local.get 0)
                                (i32.const 8))))
                          (local.get 8))
                        (then
                          (i32.store
                            (local.get 4)
                            (local.get 0))
                          (i32.store
                            (local.get 5)
                            (local.get 3))
                          (local.set 1
                            (local.get 0)))
                        (else
                          (call $_abort)))))
                  (if  ;; label = @30
                    (local.get 11)
                    (then
                      (block  ;; label = @31
                        (if  ;; label = @32
                          (i32.eq
                            (i32.load
                              (local.tee 3
                                (i32.add
                                  (i32.shl
                                    (local.tee 0
                                      (i32.load offset=28
                                        (local.get 8)))
                                    (i32.const 2))
                                  (i32.const 3380))))
                            (local.get 8))
                          (then
                            (i32.store
                              (local.get 3)
                              (local.get 1))
                            (if  ;; label = @33
                              (i32.eqz
                                (local.get 1))
                              (then
                                (i32.store
                                  (i32.const 3080)
                                  (i32.and
                                    (local.get 12)
                                    (i32.xor
                                      (i32.shl
                                        (i32.const 1)
                                        (local.get 0))
                                      (i32.const -1))))
                                (br 2 (;@31;)))))
                          (else
                            (if  ;; label = @34
                              (i32.gt_u
                                (i32.load
                                  (i32.const 3092))
                                (local.get 11))
                              (then
                                (call $_abort))
                              (else
                                (i32.store
                                  (select
                                    (local.tee 0
                                      (i32.add
                                        (local.get 11)
                                        (i32.const 16)))
                                    (i32.add
                                      (local.get 11)
                                      (i32.const 20))
                                    (i32.eq
                                      (i32.load
                                        (local.get 0))
                                      (local.get 8)))
                                  (local.get 1))
                                (br_if 2 (;@32;)
                                  (i32.eqz
                                    (local.get 1)))))))
                        (if  ;; label = @35
                          (i32.gt_u
                            (local.tee 3
                              (i32.load
                                (i32.const 3092)))
                            (local.get 1))
                          (then
                            (call $_abort)))
                        (i32.store offset=24
                          (local.get 1)
                          (local.get 11))
                        (if  ;; label = @36
                          (local.tee 0
                            (i32.load offset=16
                              (local.get 8)))
                          (then
                            (if  ;; label = @37
                              (i32.gt_u
                                (local.get 3)
                                (local.get 0))
                              (then
                                (call $_abort))
                              (else
                                (i32.store offset=16
                                  (local.get 1)
                                  (local.get 0))
                                (i32.store offset=24
                                  (local.get 0)
                                  (local.get 1))))))
                        (if  ;; label = @38
                          (local.tee 0
                            (i32.load offset=20
                              (local.get 8)))
                          (then
                            (if  ;; label = @39
                              (i32.gt_u
                                (i32.load
                                  (i32.const 3092))
                                (local.get 0))
                              (then
                                (call $_abort))
                              (else
                                (i32.store offset=20
                                  (local.get 1)
                                  (local.get 0))
                                (i32.store offset=24
                                  (local.get 0)
                                  (local.get 1)))))))))
                  (if  ;; label = @40
                    (i32.lt_u
                      (local.get 10)
                      (i32.const 16))
                    (then
                      (i32.store offset=4
                        (local.get 8)
                        (i32.or
                          (local.tee 0
                            (i32.add
                              (local.get 2)
                              (local.get 10)))
                          (i32.const 3)))
                      (i32.store
                        (local.tee 0
                          (i32.add
                            (i32.add
                              (local.get 0)
                              (local.get 8))
                            (i32.const 4)))
                        (i32.or
                          (i32.load
                            (local.get 0))
                          (i32.const 1))))
                    (else
                      (i32.store offset=4
                        (local.get 8)
                        (i32.or
                          (local.get 2)
                          (i32.const 3)))
                      (i32.store offset=4
                        (local.get 9)
                        (i32.or
                          (local.get 10)
                          (i32.const 1)))
                      (i32.store
                        (i32.add
                          (local.get 9)
                          (local.get 10))
                        (local.get 10))
                      (if  ;; label = @41
                        (local.get 13)
                        (then
                          (local.set 2
                            (i32.load
                              (i32.const 3096)))
                          (local.set 0
                            (i32.add
                              (i32.shl
                                (local.tee 3
                                  (i32.shr_u
                                    (local.get 13)
                                    (i32.const 3)))
                                (i32.const 3))
                              (i32.const 3116)))
                          (if  ;; label = @42
                            (i32.and
                              (local.get 7)
                              (local.tee 3
                                (i32.shl
                                  (i32.const 1)
                                  (local.get 3))))
                            (then
                              (if  ;; label = @43
                                (i32.gt_u
                                  (i32.load
                                    (i32.const 3092))
                                  (local.tee 1
                                    (i32.load
                                      (local.tee 3
                                        (i32.add
                                          (local.get 0)
                                          (i32.const 8))))))
                                (then
                                  (call $_abort))
                                (else
                                  (local.set 16
                                    (local.get 3))
                                  (local.set 6
                                    (local.get 1)))))
                            (else
                              (i32.store
                                (i32.const 3076)
                                (i32.or
                                  (local.get 3)
                                  (local.get 7)))
                              (local.set 16
                                (i32.add
                                  (local.get 0)
                                  (i32.const 8)))
                              (local.set 6
                                (local.get 0))))
                          (i32.store
                            (local.get 16)
                            (local.get 2))
                          (i32.store offset=12
                            (local.get 6)
                            (local.get 2))
                          (i32.store offset=8
                            (local.get 2)
                            (local.get 6))
                          (i32.store offset=12
                            (local.get 2)
                            (local.get 0))))
                      (i32.store
                        (i32.const 3084)
                        (local.get 10))
                      (i32.store
                        (i32.const 3096)
                        (local.get 9))))
                  (global.set 2
                    (local.get 14))
                  (return
                    (i32.add
                      (local.get 8)
                      (i32.const 8))))
                (else
                  (local.get 2))))
            (else
              (local.get 2))))
        (else
          (if (result i32)  ;; label = @44
            (i32.gt_u
              (local.get 0)
              (i32.const -65))
            (then
              (i32.const -1))
            (else
              (block (result i32)  ;; label = @45
                (local.set 4
                  (i32.and
                    (local.tee 0
                      (i32.add
                        (local.get 0)
                        (i32.const 11)))
                    (i32.const -8)))
                (if (result i32)  ;; label = @46
                  (local.tee 5
                    (i32.load
                      (i32.const 3080)))
                  (then
                    (local.set 18
                      (if (result i32)  ;; label = @47
                        (local.tee 0
                          (i32.shr_u
                            (local.get 0)
                            (i32.const 8)))
                        (then
                          (if (result i32)  ;; label = @48
                            (i32.gt_u
                              (local.get 4)
                              (i32.const 16777215))
                            (then
                              (i32.const 31))
                            (else
                              (local.set 0
                                (i32.and
                                  (i32.shr_u
                                    (i32.add
                                      (local.tee 1
                                        (i32.shl
                                          (local.get 0)
                                          (local.tee 2
                                            (i32.and
                                              (i32.shr_u
                                                (i32.add
                                                  (local.get 0)
                                                  (i32.const 1048320))
                                                (i32.const 16))
                                              (i32.const 8)))))
                                      (i32.const 520192))
                                    (i32.const 16))
                                  (i32.const 4)))
                              (i32.or
                                (i32.and
                                  (i32.shr_u
                                    (local.get 4)
                                    (i32.add
                                      (local.tee 0
                                        (i32.add
                                          (i32.sub
                                            (i32.const 14)
                                            (i32.or
                                              (local.tee 1
                                                (i32.and
                                                  (i32.shr_u
                                                    (i32.add
                                                      (local.tee 6
                                                        (i32.shl
                                                          (local.get 1)
                                                          (local.get 0)))
                                                      (i32.const 245760))
                                                    (i32.const 16))
                                                  (i32.const 2)))
                                              (i32.or
                                                (local.get 0)
                                                (local.get 2))))
                                          (i32.shr_u
                                            (i32.shl
                                              (local.get 6)
                                              (local.get 1))
                                            (i32.const 15))))
                                      (i32.const 7)))
                                  (i32.const 1))
                                (i32.shl
                                  (local.get 0)
                                  (i32.const 1))))))
                        (else
                          (i32.const 0))))
                    (local.set 1
                      (i32.sub
                        (i32.const 0)
                        (local.get 4)))
                    (block  ;; label = @49
                      (block  ;; label = @50
                        (if  ;; label = @51
                          (local.tee 0
                            (i32.load
                              (i32.add
                                (i32.shl
                                  (local.get 18)
                                  (i32.const 2))
                                (i32.const 3380))))
                          (then
                            (local.set 6
                              (i32.shl
                                (local.get 4)
                                (select
                                  (i32.const 0)
                                  (i32.sub
                                    (i32.const 25)
                                    (i32.shr_u
                                      (local.get 18)
                                      (i32.const 1)))
                                  (i32.eq
                                    (local.get 18)
                                    (i32.const 31)))))
                            (local.set 2
                              (i32.const 0))
                            (loop  ;; label = @52
                              (if  ;; label = @53
                                (i32.lt_u
                                  (local.tee 16
                                    (i32.sub
                                      (i32.and
                                        (i32.load offset=4
                                          (local.get 0))
                                        (i32.const -8))
                                      (local.get 4)))
                                  (local.get 1))
                                (then
                                  (local.set 1
                                    (if (result i32)  ;; label = @54
                                      (local.get 16)
                                      (then
                                        (local.set 2
                                          (local.get 0))
                                        (local.get 16))
                                      (else
                                        (local.set 2
                                          (i32.const 0))
                                        (local.set 1
                                          (local.get 0))
                                        (br 4 (;@50;)))))))
                              (local.set 0
                                (select
                                  (local.get 12)
                                  (local.tee 12
                                    (i32.load offset=20
                                      (local.get 0)))
                                  (i32.or
                                    (i32.eqz
                                      (local.get 12))
                                    (i32.eq
                                      (local.get 12)
                                      (local.tee 16
                                        (i32.load
                                          (i32.add
                                            (i32.add
                                              (local.get 0)
                                              (i32.const 16))
                                            (i32.shl
                                              (i32.shr_u
                                                (local.get 6)
                                                (i32.const 31))
                                              (i32.const 2)))))))))
                              (local.set 6
                                (i32.shl
                                  (local.get 6)
                                  (i32.const 1)))
                              (if  ;; label = @55
                                (local.get 16)
                                (then
                                  (local.set 12
                                    (local.get 0))
                                  (local.set 0
                                    (local.get 16))
                                  (br 1 (;@54;))))))
                          (else
                            (local.set 0
                              (i32.const 0))
                            (local.set 2
                              (i32.const 0))))
                        (local.set 0
                          (if (result i32)  ;; label = @56
                            (i32.or
                              (local.get 0)
                              (local.get 2))
                            (then
                              (local.set 6
                                (local.get 0))
                              (local.get 2))
                            (else
                              (local.get 4)
                              (br_if 4 (;@52;)
                                (i32.eqz
                                  (local.tee 0
                                    (i32.and
                                      (local.get 5)
                                      (i32.or
                                        (local.tee 0
                                          (i32.shl
                                            (i32.const 2)
                                            (local.get 18)))
                                        (i32.sub
                                          (i32.const 0)
                                          (local.get 0)))))))
                              (drop)
                              (local.set 6
                                (i32.load
                                  (i32.add
                                    (i32.shl
                                      (i32.add
                                        (i32.or
                                          (i32.or
                                            (i32.or
                                              (i32.or
                                                (local.tee 2
                                                  (i32.and
                                                    (i32.shr_u
                                                      (local.tee 0
                                                        (i32.add
                                                          (i32.and
                                                            (local.get 0)
                                                            (i32.sub
                                                              (i32.const 0)
                                                              (local.get 0)))
                                                          (i32.const -1)))
                                                      (i32.const 12))
                                                    (i32.const 16)))
                                                (local.tee 2
                                                  (i32.and
                                                    (i32.shr_u
                                                      (local.tee 0
                                                        (i32.shr_u
                                                          (local.get 0)
                                                          (local.get 2)))
                                                      (i32.const 5))
                                                    (i32.const 8))))
                                              (local.tee 2
                                                (i32.and
                                                  (i32.shr_u
                                                    (local.tee 0
                                                      (i32.shr_u
                                                        (local.get 0)
                                                        (local.get 2)))
                                                    (i32.const 2))
                                                  (i32.const 4))))
                                            (local.tee 2
                                              (i32.and
                                                (i32.shr_u
                                                  (local.tee 0
                                                    (i32.shr_u
                                                      (local.get 0)
                                                      (local.get 2)))
                                                  (i32.const 1))
                                                (i32.const 2))))
                                          (local.tee 2
                                            (i32.and
                                              (i32.shr_u
                                                (local.tee 0
                                                  (i32.shr_u
                                                    (local.get 0)
                                                    (local.get 2)))
                                                (i32.const 1))
                                              (i32.const 1))))
                                        (i32.shr_u
                                          (local.get 0)
                                          (local.get 2)))
                                      (i32.const 2))
                                    (i32.const 3380))))
                              (i32.const 0))))
                        (local.set 2
                          (if (result i32)  ;; label = @57
                            (local.get 6)
                            (then
                              (local.set 2
                                (local.get 1))
                              (local.set 1
                                (local.get 6))
                              (br 1 (;@56;)))
                            (else
                              (local.set 6
                                (local.get 0))
                              (local.get 1))))
                        (br 1 (;@56;)))
                      (local.set 6
                        (local.get 0))
                      (loop  ;; label = @58
                        (local.set 12
                          (i32.lt_u
                            (local.tee 16
                              (i32.sub
                                (i32.and
                                  (i32.load offset=4
                                    (local.get 1))
                                  (i32.const -8))
                                (local.get 4)))
                            (local.get 2)))
                        (local.set 2
                          (select
                            (local.get 16)
                            (local.get 2)
                            (local.get 12)))
                        (local.set 6
                          (select
                            (local.get 1)
                            (local.get 6)
                            (local.get 12)))
                        (if  ;; label = @59
                          (block (result i32)  ;; label = @60
                            (if  ;; label = @61
                              (i32.eqz
                                (local.tee 0
                                  (i32.load offset=16
                                    (local.get 1))))
                              (then
                                (local.set 0
                                  (i32.load offset=20
                                    (local.get 1)))))
                            (local.get 0))
                          (then
                            (local.set 1
                              (local.get 0))
                            (br 1 (;@60;))))))
                    (if (result i32)  ;; label = @62
                      (local.get 6)
                      (then
                        (if (result i32)  ;; label = @63
                          (i32.lt_u
                            (local.get 2)
                            (i32.sub
                              (i32.load
                                (i32.const 3084))
                              (local.get 4)))
                          (then
                            (if  ;; label = @64
                              (i32.gt_u
                                (local.tee 17
                                  (i32.load
                                    (i32.const 3092)))
                                (local.get 6))
                              (then
                                (call $_abort)))
                            (if  ;; label = @65
                              (i32.le_u
                                (local.tee 9
                                  (i32.add
                                    (local.get 4)
                                    (local.get 6)))
                                (local.get 6))
                              (then
                                (call $_abort)))
                            (local.set 15
                              (i32.load offset=24
                                (local.get 6)))
                            (if  ;; label = @66
                              (i32.eq
                                (local.tee 0
                                  (i32.load offset=12
                                    (local.get 6)))
                                (local.get 6))
                              (then
                                (block  ;; label = @67
                                  (if  ;; label = @68
                                    (i32.eqz
                                      (local.tee 0
                                        (i32.load
                                          (local.tee 1
                                            (i32.add
                                              (local.get 6)
                                              (i32.const 20))))))
                                    (then
                                      (br_if 1 (;@67;)
                                        (i32.eqz
                                          (local.tee 0
                                            (i32.load
                                              (local.tee 1
                                                (i32.add
                                                  (local.get 6)
                                                  (i32.const 16)))))))))
                                  (loop  ;; label = @69
                                    (block  ;; label = @70
                                      (local.set 0
                                        (if (result i32)  ;; label = @71
                                          (local.tee 11
                                            (i32.load
                                              (local.tee 8
                                                (i32.add
                                                  (local.get 0)
                                                  (i32.const 20)))))
                                          (then
                                            (local.set 1
                                              (local.get 8))
                                            (local.get 11))
                                          (else
                                            (br_if 1 (;@70;)
                                              (i32.eqz
                                                (local.tee 11
                                                  (i32.load
                                                    (local.tee 8
                                                      (i32.add
                                                        (local.get 0)
                                                        (i32.const 16)))))))
                                            (local.set 1
                                              (local.get 8))
                                            (local.get 11))))
                                      (br 1 (;@70;))))
                                  (if  ;; label = @72
                                    (i32.gt_u
                                      (local.get 17)
                                      (local.get 1))
                                    (then
                                      (call $_abort))
                                    (else
                                      (i32.store
                                        (local.get 1)
                                        (i32.const 0))
                                      (local.set 7
                                        (local.get 0))))))
                              (else
                                (if  ;; label = @73
                                  (i32.gt_u
                                    (local.get 17)
                                    (local.tee 1
                                      (i32.load offset=8
                                        (local.get 6))))
                                  (then
                                    (call $_abort)))
                                (if  ;; label = @74
                                  (i32.ne
                                    (local.get 6)
                                    (i32.load
                                      (local.tee 8
                                        (i32.add
                                          (local.get 1)
                                          (i32.const 12)))))
                                  (then
                                    (call $_abort)))
                                (if  ;; label = @75
                                  (i32.eq
                                    (i32.load
                                      (local.tee 11
                                        (i32.add
                                          (local.get 0)
                                          (i32.const 8))))
                                    (local.get 6))
                                  (then
                                    (i32.store
                                      (local.get 8)
                                      (local.get 0))
                                    (i32.store
                                      (local.get 11)
                                      (local.get 1))
                                    (local.set 7
                                      (local.get 0)))
                                  (else
                                    (call $_abort)))))
                            (if  ;; label = @76
                              (local.get 15)
                              (then
                                (block  ;; label = @77
                                  (if  ;; label = @78
                                    (i32.eq
                                      (i32.load
                                        (local.tee 1
                                          (i32.add
                                            (i32.shl
                                              (local.tee 0
                                                (i32.load offset=28
                                                  (local.get 6)))
                                              (i32.const 2))
                                            (i32.const 3380))))
                                      (local.get 6))
                                    (then
                                      (i32.store
                                        (local.get 1)
                                        (local.get 7))
                                      (if  ;; label = @79
                                        (i32.eqz
                                          (local.get 7))
                                        (then
                                          (i32.store
                                            (i32.const 3080)
                                            (local.tee 3
                                              (i32.and
                                                (local.get 5)
                                                (i32.xor
                                                  (i32.shl
                                                    (i32.const 1)
                                                    (local.get 0))
                                                  (i32.const -1)))))
                                          (br 2 (;@77;)))))
                                    (else
                                      (if  ;; label = @80
                                        (i32.gt_u
                                          (i32.load
                                            (i32.const 3092))
                                          (local.get 15))
                                        (then
                                          (call $_abort))
                                        (else
                                          (i32.store
                                            (select
                                              (local.tee 0
                                                (i32.add
                                                  (local.get 15)
                                                  (i32.const 16)))
                                              (i32.add
                                                (local.get 15)
                                                (i32.const 20))
                                              (i32.eq
                                                (i32.load
                                                  (local.get 0))
                                                (local.get 6)))
                                            (local.get 7))
                                          (if  ;; label = @81
                                            (i32.eqz
                                              (local.get 7))
                                            (then
                                              (local.set 3
                                                (local.get 5))
                                              (br 3 (;@78;))))))))
                                  (if  ;; label = @82
                                    (i32.gt_u
                                      (local.tee 1
                                        (i32.load
                                          (i32.const 3092)))
                                      (local.get 7))
                                    (then
                                      (call $_abort)))
                                  (i32.store offset=24
                                    (local.get 7)
                                    (local.get 15))
                                  (if  ;; label = @83
                                    (local.tee 0
                                      (i32.load offset=16
                                        (local.get 6)))
                                    (then
                                      (if  ;; label = @84
                                        (i32.gt_u
                                          (local.get 1)
                                          (local.get 0))
                                        (then
                                          (call $_abort))
                                        (else
                                          (i32.store offset=16
                                            (local.get 7)
                                            (local.get 0))
                                          (i32.store offset=24
                                            (local.get 0)
                                            (local.get 7))))))
                                  (if  ;; label = @85
                                    (local.tee 0
                                      (i32.load offset=20
                                        (local.get 6)))
                                    (then
                                      (if  ;; label = @86
                                        (i32.gt_u
                                          (i32.load
                                            (i32.const 3092))
                                          (local.get 0))
                                        (then
                                          (call $_abort))
                                        (else
                                          (i32.store offset=20
                                            (local.get 7)
                                            (local.get 0))
                                          (i32.store offset=24
                                            (local.get 0)
                                            (local.get 7))
                                          (local.set 3
                                            (local.get 5)))))
                                    (else
                                      (local.set 3
                                        (local.get 5))))))
                              (else
                                (local.set 3
                                  (local.get 5))))
                            (if  ;; label = @87
                              (i32.lt_u
                                (local.get 2)
                                (i32.const 16))
                              (then
                                (i32.store offset=4
                                  (local.get 6)
                                  (i32.or
                                    (local.tee 0
                                      (i32.add
                                        (local.get 2)
                                        (local.get 4)))
                                    (i32.const 3)))
                                (i32.store
                                  (local.tee 0
                                    (i32.add
                                      (i32.add
                                        (local.get 0)
                                        (local.get 6))
                                      (i32.const 4)))
                                  (i32.or
                                    (i32.load
                                      (local.get 0))
                                    (i32.const 1))))
                              (else
                                (block  ;; label = @88
                                  (i32.store offset=4
                                    (local.get 6)
                                    (i32.or
                                      (local.get 4)
                                      (i32.const 3)))
                                  (i32.store offset=4
                                    (local.get 9)
                                    (i32.or
                                      (local.get 2)
                                      (i32.const 1)))
                                  (i32.store
                                    (i32.add
                                      (local.get 2)
                                      (local.get 9))
                                    (local.get 2))
                                  (local.set 1
                                    (i32.shr_u
                                      (local.get 2)
                                      (i32.const 3)))
                                  (if  ;; label = @89
                                    (i32.lt_u
                                      (local.get 2)
                                      (i32.const 256))
                                    (then
                                      (local.set 0
                                        (i32.add
                                          (i32.shl
                                            (local.get 1)
                                            (i32.const 3))
                                          (i32.const 3116)))
                                      (if  ;; label = @90
                                        (i32.and
                                          (local.tee 3
                                            (i32.load
                                              (i32.const 3076)))
                                          (local.tee 1
                                            (i32.shl
                                              (i32.const 1)
                                              (local.get 1))))
                                        (then
                                          (if  ;; label = @91
                                            (i32.gt_u
                                              (i32.load
                                                (i32.const 3092))
                                              (local.tee 1
                                                (i32.load
                                                  (local.tee 3
                                                    (i32.add
                                                      (local.get 0)
                                                      (i32.const 8))))))
                                            (then
                                              (call $_abort))
                                            (else
                                              (local.set 19
                                                (local.get 3))
                                              (local.set 13
                                                (local.get 1)))))
                                        (else
                                          (i32.store
                                            (i32.const 3076)
                                            (i32.or
                                              (local.get 1)
                                              (local.get 3)))
                                          (local.set 19
                                            (i32.add
                                              (local.get 0)
                                              (i32.const 8)))
                                          (local.set 13
                                            (local.get 0))))
                                      (i32.store
                                        (local.get 19)
                                        (local.get 9))
                                      (i32.store offset=12
                                        (local.get 13)
                                        (local.get 9))
                                      (i32.store offset=8
                                        (local.get 9)
                                        (local.get 13))
                                      (i32.store offset=12
                                        (local.get 9)
                                        (local.get 0))
                                      (br 1 (;@90;))))
                                  (local.set 0
                                    (i32.add
                                      (i32.shl
                                        (local.tee 1
                                          (if (result i32)  ;; label = @92
                                            (local.tee 0
                                              (i32.shr_u
                                                (local.get 2)
                                                (i32.const 8)))
                                            (then
                                              (if (result i32)  ;; label = @93
                                                (i32.gt_u
                                                  (local.get 2)
                                                  (i32.const 16777215))
                                                (then
                                                  (i32.const 31))
                                                (else
                                                  (local.set 0
                                                    (i32.and
                                                      (i32.shr_u
                                                        (i32.add
                                                          (local.tee 1
                                                            (i32.shl
                                                              (local.get 0)
                                                              (local.tee 4
                                                                (i32.and
                                                                  (i32.shr_u
                                                                    (i32.add
                                                                      (local.get 0)
                                                                      (i32.const 1048320))
                                                                    (i32.const 16))
                                                                  (i32.const 8)))))
                                                          (i32.const 520192))
                                                        (i32.const 16))
                                                      (i32.const 4)))
                                                  (i32.or
                                                    (i32.and
                                                      (i32.shr_u
                                                        (local.get 2)
                                                        (i32.add
                                                          (local.tee 0
                                                            (i32.add
                                                              (i32.sub
                                                                (i32.const 14)
                                                                (i32.or
                                                                  (local.tee 1
                                                                    (i32.and
                                                                      (i32.shr_u
                                                                        (i32.add
                                                                          (local.tee 5
                                                                            (i32.shl
                                                                              (local.get 1)
                                                                              (local.get 0)))
                                                                          (i32.const 245760))
                                                                        (i32.const 16))
                                                                      (i32.const 2)))
                                                                  (i32.or
                                                                    (local.get 0)
                                                                    (local.get 4))))
                                                              (i32.shr_u
                                                                (i32.shl
                                                                  (local.get 5)
                                                                  (local.get 1))
                                                                (i32.const 15))))
                                                          (i32.const 7)))
                                                      (i32.const 1))
                                                    (i32.shl
                                                      (local.get 0)
                                                      (i32.const 1))))))
                                            (else
                                              (i32.const 0))))
                                        (i32.const 2))
                                      (i32.const 3380)))
                                  (i32.store offset=28
                                    (local.get 9)
                                    (local.get 1))
                                  (i32.store offset=4
                                    (local.tee 4
                                      (i32.add
                                        (local.get 9)
                                        (i32.const 16)))
                                    (i32.const 0))
                                  (i32.store
                                    (local.get 4)
                                    (i32.const 0))
                                  (if  ;; label = @94
                                    (i32.eqz
                                      (i32.and
                                        (local.get 3)
                                        (local.tee 4
                                          (i32.shl
                                            (i32.const 1)
                                            (local.get 1)))))
                                    (then
                                      (i32.store
                                        (i32.const 3080)
                                        (i32.or
                                          (local.get 3)
                                          (local.get 4)))
                                      (i32.store
                                        (local.get 0)
                                        (local.get 9))
                                      (i32.store offset=24
                                        (local.get 9)
                                        (local.get 0))
                                      (i32.store offset=12
                                        (local.get 9)
                                        (local.get 9))
                                      (i32.store offset=8
                                        (local.get 9)
                                        (local.get 9))
                                      (br 1 (;@93;))))
                                  (if  ;; label = @95
                                    (i32.eq
                                      (i32.and
                                        (i32.load offset=4
                                          (local.tee 0
                                            (i32.load
                                              (local.get 0))))
                                        (i32.const -8))
                                      (local.get 2))
                                    (then
                                      (local.set 10
                                        (local.get 0)))
                                    (else
                                      (block  ;; label = @96
                                        (local.set 1
                                          (i32.shl
                                            (local.get 2)
                                            (select
                                              (i32.const 0)
                                              (i32.sub
                                                (i32.const 25)
                                                (i32.shr_u
                                                  (local.get 1)
                                                  (i32.const 1)))
                                              (i32.eq
                                                (local.get 1)
                                                (i32.const 31)))))
                                        (loop  ;; label = @97
                                          (if  ;; label = @98
                                            (local.tee 3
                                              (i32.load
                                                (local.tee 4
                                                  (i32.add
                                                    (i32.add
                                                      (local.get 0)
                                                      (i32.const 16))
                                                    (i32.shl
                                                      (i32.shr_u
                                                        (local.get 1)
                                                        (i32.const 31))
                                                      (i32.const 2))))))
                                            (then
                                              (local.set 1
                                                (i32.shl
                                                  (local.get 1)
                                                  (i32.const 1)))
                                              (if  ;; label = @99
                                                (i32.eq
                                                  (i32.and
                                                    (i32.load offset=4
                                                      (local.get 3))
                                                    (i32.const -8))
                                                  (local.get 2))
                                                (then
                                                  (local.set 10
                                                    (local.get 3))
                                                  (br 3 (;@96;)))
                                                (else
                                                  (local.set 0
                                                    (local.get 3))
                                                  (br 2 (;@97;))))
                                              (unreachable))))
                                        (if  ;; label = @100
                                          (i32.gt_u
                                            (i32.load
                                              (i32.const 3092))
                                            (local.get 4))
                                          (then
                                            (call $_abort))
                                          (else
                                            (i32.store
                                              (local.get 4)
                                              (local.get 9))
                                            (i32.store offset=24
                                              (local.get 9)
                                              (local.get 0))
                                            (i32.store offset=12
                                              (local.get 9)
                                              (local.get 9))
                                            (i32.store offset=8
                                              (local.get 9)
                                              (local.get 9))
                                            (br 3 (;@97;)))))))
                                  (if  ;; label = @101
                                    (i32.and
                                      (i32.le_u
                                        (local.tee 0
                                          (i32.load
                                            (i32.const 3092)))
                                        (local.get 10))
                                      (i32.le_u
                                        (local.get 0)
                                        (local.tee 0
                                          (i32.load
                                            (local.tee 3
                                              (i32.add
                                                (local.get 10)
                                                (i32.const 8)))))))
                                    (then
                                      (i32.store offset=12
                                        (local.get 0)
                                        (local.get 9))
                                      (i32.store
                                        (local.get 3)
                                        (local.get 9))
                                      (i32.store offset=8
                                        (local.get 9)
                                        (local.get 0))
                                      (i32.store offset=12
                                        (local.get 9)
                                        (local.get 10))
                                      (i32.store offset=24
                                        (local.get 9)
                                        (i32.const 0)))
                                    (else
                                      (call $_abort))))))
                            (global.set 2
                              (local.get 14))
                            (return
                              (i32.add
                                (local.get 6)
                                (i32.const 8))))
                          (else
                            (local.get 4))))
                      (else
                        (local.get 4))))
                  (else
                    (local.get 4)))))))))
    (if  ;; label = @102
      (i32.ge_u
        (local.tee 1
          (i32.load
            (i32.const 3084)))
        (local.get 3))
      (then
        (local.set 0
          (i32.load
            (i32.const 3096)))
        (if  ;; label = @103
          (i32.gt_u
            (local.tee 2
              (i32.sub
                (local.get 1)
                (local.get 3)))
            (i32.const 15))
          (then
            (i32.store
              (i32.const 3096)
              (local.tee 4
                (i32.add
                  (local.get 0)
                  (local.get 3))))
            (i32.store
              (i32.const 3084)
              (local.get 2))
            (i32.store offset=4
              (local.get 4)
              (i32.or
                (local.get 2)
                (i32.const 1)))
            (i32.store
              (i32.add
                (local.get 0)
                (local.get 1))
              (local.get 2))
            (i32.store offset=4
              (local.get 0)
              (i32.or
                (local.get 3)
                (i32.const 3))))
          (else
            (i32.store
              (i32.const 3084)
              (i32.const 0))
            (i32.store
              (i32.const 3096)
              (i32.const 0))
            (i32.store offset=4
              (local.get 0)
              (i32.or
                (local.get 1)
                (i32.const 3)))
            (i32.store
              (local.tee 3
                (i32.add
                  (i32.add
                    (local.get 0)
                    (local.get 1))
                  (i32.const 4)))
              (i32.or
                (i32.load
                  (local.get 3))
                (i32.const 1)))))
        (global.set 2
          (local.get 14))
        (return
          (i32.add
            (local.get 0)
            (i32.const 8)))))
    (if  ;; label = @104
      (i32.gt_u
        (local.tee 1
          (i32.load
            (i32.const 3088)))
        (local.get 3))
      (then
        (i32.store
          (i32.const 3088)
          (local.tee 1
            (i32.sub
              (local.get 1)
              (local.get 3))))
        (i32.store
          (i32.const 3100)
          (local.tee 2
            (i32.add
              (local.tee 0
                (i32.load
                  (i32.const 3100)))
              (local.get 3))))
        (i32.store offset=4
          (local.get 2)
          (i32.or
            (local.get 1)
            (i32.const 1)))
        (i32.store offset=4
          (local.get 0)
          (i32.or
            (local.get 3)
            (i32.const 3)))
        (global.set 2
          (local.get 14))
        (return
          (i32.add
            (local.get 0)
            (i32.const 8)))))
    (local.set 0
      (local.get 14))
    (if  ;; label = @105
      (i32.le_u
        (local.tee 4
          (i32.and
            (local.tee 6
              (i32.add
                (local.tee 0
                  (if (result i32)  ;; label = @106
                    (i32.load
                      (i32.const 3548))
                    (then
                      (i32.load
                        (i32.const 3556)))
                    (else
                      (i32.store
                        (i32.const 3556)
                        (i32.const 4096))
                      (i32.store
                        (i32.const 3552)
                        (i32.const 4096))
                      (i32.store
                        (i32.const 3560)
                        (i32.const -1))
                      (i32.store
                        (i32.const 3564)
                        (i32.const -1))
                      (i32.store
                        (i32.const 3568)
                        (i32.const 0))
                      (i32.store
                        (i32.const 3520)
                        (i32.const 0))
                      (i32.store
                        (i32.const 3548)
                        (i32.xor
                          (i32.and
                            (local.get 0)
                            (i32.const -16))
                          (i32.const 1431655768)))
                      (i32.const 4096))))
                (local.tee 5
                  (i32.add
                    (local.get 3)
                    (i32.const 47)))))
            (local.tee 7
              (i32.sub
                (i32.const 0)
                (local.get 0)))))
        (local.get 3))
      (then
        (global.set 2
          (local.get 14))
        (return
          (i32.const 0))))
    (if  ;; label = @107
      (local.tee 0
        (i32.load
          (i32.const 3516)))
      (then
        (if  ;; label = @108
          (i32.or
            (i32.le_u
              (local.tee 10
                (i32.add
                  (local.tee 2
                    (i32.load
                      (i32.const 3508)))
                  (local.get 4)))
              (local.get 2))
            (i32.gt_u
              (local.get 10)
              (local.get 0)))
          (then
            (global.set 2
              (local.get 14))
            (return
              (i32.const 0))))))
    (local.set 10
      (i32.add
        (local.get 3)
        (i32.const 48)))
    (block  ;; label = @109
      (block  ;; label = @110
        (if  ;; label = @111
          (i32.and
            (i32.load
              (i32.const 3520))
            (i32.const 4))
          (then
            (local.set 1
              (i32.const 0)))
          (else
            (block  ;; label = @112
              (block  ;; label = @113
                (block  ;; label = @114
                  (br_if 0 (;@114;)
                    (i32.eqz
                      (local.tee 0
                        (i32.load
                          (i32.const 3100)))))
                  (local.set 2
                    (i32.const 3524))
                  (loop  ;; label = @115
                    (block  ;; label = @116
                      (if  ;; label = @117
                        (i32.le_u
                          (local.tee 13
                            (i32.load
                              (local.get 2)))
                          (local.get 0))
                        (then
                          (br_if 1 (;@116;)
                            (i32.gt_u
                              (i32.add
                                (local.get 13)
                                (i32.load offset=4
                                  (local.get 2)))
                              (local.get 0)))))
                      (br_if 1 (;@116;)
                        (local.tee 2
                          (i32.load offset=8
                            (local.get 2))))
                      (br 2 (;@115;))))
                  (if  ;; label = @118
                    (i32.lt_u
                      (local.tee 1
                        (i32.and
                          (i32.sub
                            (local.get 6)
                            (local.get 1))
                          (local.get 7)))
                      (i32.const 2147483647))
                    (then
                      (local.set 6
                        (i32.add
                          (local.get 2)
                          (i32.const 4)))
                      (local.set 0
                        (call $_sbrk
                          (local.get 1)))
                      (br_if 2 (;@116;)
                        (i32.ne
                          (local.get 0)
                          (i32.add
                            (i32.load
                              (local.get 2))
                            (i32.load
                              (local.get 6)))))
                      (br_if 5 (;@113;)
                        (i32.ne
                          (local.get 0)
                          (i32.const -1))))
                    (else
                      (local.set 1
                        (i32.const 0))))
                  (br 2 (;@116;)))
                (local.set 1
                  (if (result i32)  ;; label = @119
                    (i32.eq
                      (local.tee 0
                        (call $_sbrk
                          (i32.const 0)))
                      (i32.const -1))
                    (then
                      (i32.const 0))
                    (else
                      (local.set 2
                        (i32.add
                          (local.tee 6
                            (i32.load
                              (i32.const 3508)))
                          (local.tee 1
                            (i32.add
                              (select
                                (i32.sub
                                  (i32.and
                                    (i32.add
                                      (local.get 0)
                                      (local.tee 2
                                        (i32.add
                                          (local.tee 1
                                            (i32.load
                                              (i32.const 3552)))
                                          (i32.const -1))))
                                    (i32.sub
                                      (i32.const 0)
                                      (local.get 1)))
                                  (local.get 0))
                                (i32.const 0)
                                (i32.and
                                  (local.get 0)
                                  (local.get 2)))
                              (local.get 4)))))
                      (if (result i32)  ;; label = @120
                        (i32.and
                          (i32.lt_u
                            (local.get 1)
                            (i32.const 2147483647))
                          (i32.gt_u
                            (local.get 1)
                            (local.get 3)))
                        (then
                          (if  ;; label = @121
                            (local.tee 7
                              (i32.load
                                (i32.const 3516)))
                            (then
                              (if  ;; label = @122
                                (i32.or
                                  (i32.le_u
                                    (local.get 2)
                                    (local.get 6))
                                  (i32.gt_u
                                    (local.get 2)
                                    (local.get 7)))
                                (then
                                  (local.set 1
                                    (i32.const 0))
                                  (br 5 (;@117;))))))
                          (br_if 5 (;@117;)
                            (i32.eq
                              (local.get 0)
                              (local.tee 2
                                (call $_sbrk
                                  (local.get 1)))))
                          (local.set 0
                            (local.get 2))
                          (br 2 (;@120;)))
                        (else
                          (i32.const 0))))))
                (br 1 (;@121;)))
              (if  ;; label = @123
                (i32.eqz
                  (i32.and
                    (i32.and
                      (i32.ne
                        (local.get 0)
                        (i32.const -1))
                      (i32.lt_u
                        (local.get 1)
                        (i32.const 2147483647)))
                    (i32.gt_u
                      (local.get 10)
                      (local.get 1))))
                (then
                  (if  ;; label = @124
                    (i32.eq
                      (local.get 0)
                      (i32.const -1))
                    (then
                      (local.set 1
                        (i32.const 0))
                      (br 2 (;@122;)))
                    (else
                      (br 4 (;@120;))))
                  (unreachable)))
              (br_if 2 (;@122;)
                (i32.ge_u
                  (local.tee 2
                    (i32.and
                      (i32.add
                        (local.tee 2
                          (i32.load
                            (i32.const 3556)))
                        (i32.sub
                          (local.get 5)
                          (local.get 1)))
                      (i32.sub
                        (i32.const 0)
                        (local.get 2))))
                  (i32.const 2147483647)))
              (local.set 5
                (i32.sub
                  (i32.const 0)
                  (local.get 1)))
              (local.set 1
                (if (result i32)  ;; label = @125
                  (i32.eq
                    (call $_sbrk
                      (local.get 2))
                    (i32.const -1))
                  (then
                    (drop
                      (call $_sbrk
                        (local.get 5)))
                    (i32.const 0))
                  (else
                    (local.set 1
                      (i32.add
                        (local.get 1)
                        (local.get 2)))
                    (br 3 (;@122;))))))
            (i32.store
              (i32.const 3520)
              (i32.or
                (i32.load
                  (i32.const 3520))
                (i32.const 4)))))
        (if  ;; label = @126
          (i32.lt_u
            (local.get 4)
            (i32.const 2147483647))
          (then
            (local.set 0
              (call $_sbrk
                (local.get 4)))
            (local.set 4
              (i32.gt_u
                (local.tee 5
                  (i32.sub
                    (local.tee 2
                      (call $_sbrk
                        (i32.const 0)))
                    (local.get 0)))
                (i32.add
                  (local.get 3)
                  (i32.const 40))))
            (local.set 1
              (select
                (local.get 5)
                (local.get 1)
                (local.get 4)))
            (i32.eqz
              (i32.or
                (i32.or
                  (i32.xor
                    (local.get 4)
                    (i32.const 1))
                  (i32.eq
                    (local.get 0)
                    (i32.const -1)))
                (i32.xor
                  (i32.and
                    (i32.and
                      (i32.ne
                        (local.get 0)
                        (i32.const -1))
                      (i32.ne
                        (local.get 2)
                        (i32.const -1)))
                    (i32.lt_u
                      (local.get 0)
                      (local.get 2)))
                  (i32.const 1))))
            (br_if 1 (;@125;))))
        (br 1 (;@125;)))
      (i32.store
        (i32.const 3508)
        (local.tee 2
          (i32.add
            (i32.load
              (i32.const 3508))
            (local.get 1))))
      (if  ;; label = @127
        (i32.gt_u
          (local.get 2)
          (i32.load
            (i32.const 3512)))
        (then
          (i32.store
            (i32.const 3512)
            (local.get 2))))
      (if  ;; label = @128
        (local.tee 5
          (i32.load
            (i32.const 3100)))
        (then
          (block  ;; label = @129
            (local.set 2
              (i32.const 3524))
            (block  ;; label = @130
              (block  ;; label = @131
                (loop  ;; label = @132
                  (br_if 1 (;@131;)
                    (i32.eq
                      (i32.add
                        (local.tee 4
                          (i32.load
                            (local.get 2)))
                        (local.tee 6
                          (i32.load offset=4
                            (local.get 2))))
                      (local.get 0)))
                  (br_if 0 (;@132;)
                    (local.tee 2
                      (i32.load offset=8
                        (local.get 2)))))
                (br 1 (;@131;)))
              (local.set 7
                (i32.add
                  (local.get 2)
                  (i32.const 4)))
              (if  ;; label = @133
                (i32.eqz
                  (i32.and
                    (i32.load offset=12
                      (local.get 2))
                    (i32.const 8)))
                (then
                  (if  ;; label = @134
                    (i32.and
                      (i32.le_u
                        (local.get 4)
                        (local.get 5))
                      (i32.gt_u
                        (local.get 0)
                        (local.get 5)))
                    (then
                      (i32.store
                        (local.get 7)
                        (i32.add
                          (local.get 1)
                          (local.get 6)))
                      (local.set 0
                        (i32.add
                          (local.get 5)
                          (local.tee 2
                            (select
                              (i32.and
                                (i32.sub
                                  (i32.const 0)
                                  (local.tee 0
                                    (i32.add
                                      (local.get 5)
                                      (i32.const 8))))
                                (i32.const 7))
                              (i32.const 0)
                              (i32.and
                                (local.get 0)
                                (i32.const 7))))))
                      (local.set 1
                        (i32.sub
                          (local.tee 4
                            (i32.add
                              (i32.load
                                (i32.const 3088))
                              (local.get 1)))
                          (local.get 2)))
                      (i32.store
                        (i32.const 3100)
                        (local.get 0))
                      (i32.store
                        (i32.const 3088)
                        (local.get 1))
                      (i32.store offset=4
                        (local.get 0)
                        (i32.or
                          (local.get 1)
                          (i32.const 1)))
                      (i32.store offset=4
                        (i32.add
                          (local.get 4)
                          (local.get 5))
                        (i32.const 40))
                      (i32.store
                        (i32.const 3104)
                        (i32.load
                          (i32.const 3564)))
                      (br 3 (;@131;)))))))
            (if  ;; label = @135
              (i32.lt_u
                (local.get 0)
                (local.tee 2
                  (i32.load
                    (i32.const 3092))))
              (then
                (i32.store
                  (i32.const 3092)
                  (local.get 0))
                (local.set 2
                  (local.get 0))))
            (local.set 6
              (i32.add
                (local.get 0)
                (local.get 1)))
            (local.set 4
              (i32.const 3524))
            (block  ;; label = @136
              (block  ;; label = @137
                (loop  ;; label = @138
                  (br_if 1 (;@137;)
                    (i32.eq
                      (i32.load
                        (local.get 4))
                      (local.get 6)))
                  (br_if 0 (;@138;)
                    (local.tee 4
                      (i32.load offset=8
                        (local.get 4)))))
                (br 1 (;@137;)))
              (if  ;; label = @139
                (i32.eqz
                  (i32.and
                    (i32.load offset=12
                      (local.get 4))
                    (i32.const 8)))
                (then
                  (i32.store
                    (local.get 4)
                    (local.get 0))
                  (i32.store
                    (local.tee 4
                      (i32.add
                        (local.get 4)
                        (i32.const 4)))
                    (i32.add
                      (i32.load
                        (local.get 4))
                      (local.get 1)))
                  (local.set 7
                    (i32.add
                      (local.tee 9
                        (i32.add
                          (select
                            (i32.and
                              (i32.sub
                                (i32.const 0)
                                (local.tee 1
                                  (i32.add
                                    (local.get 0)
                                    (i32.const 8))))
                              (i32.const 7))
                            (i32.const 0)
                            (i32.and
                              (local.get 1)
                              (i32.const 7)))
                          (local.get 0)))
                      (local.get 3)))
                  (local.set 4
                    (i32.sub
                      (i32.sub
                        (local.tee 1
                          (i32.add
                            (local.get 6)
                            (select
                              (i32.and
                                (i32.sub
                                  (i32.const 0)
                                  (local.tee 0
                                    (i32.add
                                      (local.get 6)
                                      (i32.const 8))))
                                (i32.const 7))
                              (i32.const 0)
                              (i32.and
                                (local.get 0)
                                (i32.const 7)))))
                        (local.get 9))
                      (local.get 3)))
                  (i32.store offset=4
                    (local.get 9)
                    (i32.or
                      (local.get 3)
                      (i32.const 3)))
                  (if  ;; label = @140
                    (i32.eq
                      (local.get 1)
                      (local.get 5))
                    (then
                      (i32.store
                        (i32.const 3088)
                        (local.tee 0
                          (i32.add
                            (i32.load
                              (i32.const 3088))
                            (local.get 4))))
                      (i32.store
                        (i32.const 3100)
                        (local.get 7))
                      (i32.store offset=4
                        (local.get 7)
                        (i32.or
                          (local.get 0)
                          (i32.const 1))))
                    (else
                      (block  ;; label = @141
                        (if  ;; label = @142
                          (i32.eq
                            (i32.load
                              (i32.const 3096))
                            (local.get 1))
                          (then
                            (i32.store
                              (i32.const 3084)
                              (local.tee 0
                                (i32.add
                                  (i32.load
                                    (i32.const 3084))
                                  (local.get 4))))
                            (i32.store
                              (i32.const 3096)
                              (local.get 7))
                            (i32.store offset=4
                              (local.get 7)
                              (i32.or
                                (local.get 0)
                                (i32.const 1)))
                            (i32.store
                              (i32.add
                                (local.get 0)
                                (local.get 7))
                              (local.get 0))
                            (br 1 (;@141;))))
                        (local.set 2
                          (if (result i32)  ;; label = @143
                            (i32.eq
                              (i32.and
                                (local.tee 0
                                  (i32.load offset=4
                                    (local.get 1)))
                                (i32.const 3))
                              (i32.const 1))
                            (then
                              (local.set 13
                                (i32.and
                                  (local.get 0)
                                  (i32.const -8)))
                              (local.set 6
                                (i32.shr_u
                                  (local.get 0)
                                  (i32.const 3)))
                              (block  ;; label = @144
                                (if  ;; label = @145
                                  (i32.lt_u
                                    (local.get 0)
                                    (i32.const 256))
                                  (then
                                    (local.set 3
                                      (i32.load offset=12
                                        (local.get 1)))
                                    (if  ;; label = @146
                                      (i32.ne
                                        (local.tee 5
                                          (i32.load offset=8
                                            (local.get 1)))
                                        (local.tee 0
                                          (i32.add
                                            (i32.shl
                                              (local.get 6)
                                              (i32.const 3))
                                            (i32.const 3116))))
                                      (then
                                        (block  ;; label = @147
                                          (if  ;; label = @148
                                            (i32.gt_u
                                              (local.get 2)
                                              (local.get 5))
                                            (then
                                              (call $_abort)))
                                          (br_if 0 (;@148;)
                                            (i32.eq
                                              (i32.load offset=12
                                                (local.get 5))
                                              (local.get 1)))
                                          (call $_abort))))
                                    (if  ;; label = @149
                                      (i32.eq
                                        (local.get 3)
                                        (local.get 5))
                                      (then
                                        (i32.store
                                          (i32.const 3076)
                                          (i32.and
                                            (i32.load
                                              (i32.const 3076))
                                            (i32.xor
                                              (i32.shl
                                                (i32.const 1)
                                                (local.get 6))
                                              (i32.const -1))))
                                        (br 2 (;@147;))))
                                    (if  ;; label = @150
                                      (i32.eq
                                        (local.get 0)
                                        (local.get 3))
                                      (then
                                        (local.set 20
                                          (i32.add
                                            (local.get 3)
                                            (i32.const 8))))
                                      (else
                                        (block  ;; label = @151
                                          (if  ;; label = @152
                                            (i32.gt_u
                                              (local.get 2)
                                              (local.get 3))
                                            (then
                                              (call $_abort)))
                                          (if  ;; label = @153
                                            (i32.eq
                                              (i32.load
                                                (local.tee 0
                                                  (i32.add
                                                    (local.get 3)
                                                    (i32.const 8))))
                                              (local.get 1))
                                            (then
                                              (local.set 20
                                                (local.get 0))
                                              (br 1 (;@152;))))
                                          (call $_abort))))
                                    (i32.store offset=12
                                      (local.get 5)
                                      (local.get 3))
                                    (i32.store
                                      (local.get 20)
                                      (local.get 5)))
                                  (else
                                    (local.set 10
                                      (i32.load offset=24
                                        (local.get 1)))
                                    (if  ;; label = @154
                                      (i32.eq
                                        (local.tee 0
                                          (i32.load offset=12
                                            (local.get 1)))
                                        (local.get 1))
                                      (then
                                        (block  ;; label = @155
                                          (if  ;; label = @156
                                            (local.tee 0
                                              (i32.load
                                                (local.tee 5
                                                  (i32.add
                                                    (local.tee 3
                                                      (i32.add
                                                        (local.get 1)
                                                        (i32.const 16)))
                                                    (i32.const 4)))))
                                            (then
                                              (local.set 3
                                                (local.get 5)))
                                            (else
                                              (br_if 1 (;@155;)
                                                (i32.eqz
                                                  (local.tee 0
                                                    (i32.load
                                                      (local.get 3)))))))
                                          (loop  ;; label = @157
                                            (block  ;; label = @158
                                              (local.set 0
                                                (if (result i32)  ;; label = @159
                                                  (local.tee 6
                                                    (i32.load
                                                      (local.tee 5
                                                        (i32.add
                                                          (local.get 0)
                                                          (i32.const 20)))))
                                                  (then
                                                    (local.set 3
                                                      (local.get 5))
                                                    (local.get 6))
                                                  (else
                                                    (br_if 1 (;@158;)
                                                      (i32.eqz
                                                        (local.tee 6
                                                          (i32.load
                                                            (local.tee 5
                                                              (i32.add
                                                                (local.get 0)
                                                                (i32.const 16)))))))
                                                    (local.set 3
                                                      (local.get 5))
                                                    (local.get 6))))
                                              (br 1 (;@158;))))
                                          (if  ;; label = @160
                                            (i32.gt_u
                                              (local.get 2)
                                              (local.get 3))
                                            (then
                                              (call $_abort))
                                            (else
                                              (i32.store
                                                (local.get 3)
                                                (i32.const 0))
                                              (local.set 8
                                                (local.get 0))))))
                                      (else
                                        (if  ;; label = @161
                                          (i32.gt_u
                                            (local.get 2)
                                            (local.tee 3
                                              (i32.load offset=8
                                                (local.get 1))))
                                          (then
                                            (call $_abort)))
                                        (if  ;; label = @162
                                          (i32.ne
                                            (local.get 1)
                                            (i32.load
                                              (local.tee 2
                                                (i32.add
                                                  (local.get 3)
                                                  (i32.const 12)))))
                                          (then
                                            (call $_abort)))
                                        (if  ;; label = @163
                                          (i32.eq
                                            (i32.load
                                              (local.tee 5
                                                (i32.add
                                                  (local.get 0)
                                                  (i32.const 8))))
                                            (local.get 1))
                                          (then
                                            (i32.store
                                              (local.get 2)
                                              (local.get 0))
                                            (i32.store
                                              (local.get 5)
                                              (local.get 3))
                                            (local.set 8
                                              (local.get 0)))
                                          (else
                                            (call $_abort)))))
                                    (br_if 1 (;@162;)
                                      (i32.eqz
                                        (local.get 10)))
                                    (if  ;; label = @164
                                      (i32.eq
                                        (i32.load
                                          (local.tee 3
                                            (i32.add
                                              (i32.shl
                                                (local.tee 0
                                                  (i32.load offset=28
                                                    (local.get 1)))
                                                (i32.const 2))
                                              (i32.const 3380))))
                                        (local.get 1))
                                      (then
                                        (block  ;; label = @165
                                          (i32.store
                                            (local.get 3)
                                            (local.get 8))
                                          (br_if 0 (;@165;)
                                            (local.get 8))
                                          (i32.store
                                            (i32.const 3080)
                                            (i32.and
                                              (i32.load
                                                (i32.const 3080))
                                              (i32.xor
                                                (i32.shl
                                                  (i32.const 1)
                                                  (local.get 0))
                                                (i32.const -1))))
                                          (br 3 (;@162;))))
                                      (else
                                        (if  ;; label = @166
                                          (i32.gt_u
                                            (i32.load
                                              (i32.const 3092))
                                            (local.get 10))
                                          (then
                                            (call $_abort))
                                          (else
                                            (i32.store
                                              (select
                                                (local.tee 0
                                                  (i32.add
                                                    (local.get 10)
                                                    (i32.const 16)))
                                                (i32.add
                                                  (local.get 10)
                                                  (i32.const 20))
                                                (i32.eq
                                                  (i32.load
                                                    (local.get 0))
                                                  (local.get 1)))
                                              (local.get 8))
                                            (br_if 3 (;@163;)
                                              (i32.eqz
                                                (local.get 8)))))))
                                    (if  ;; label = @167
                                      (i32.gt_u
                                        (local.tee 3
                                          (i32.load
                                            (i32.const 3092)))
                                        (local.get 8))
                                      (then
                                        (call $_abort)))
                                    (i32.store offset=24
                                      (local.get 8)
                                      (local.get 10))
                                    (if  ;; label = @168
                                      (local.tee 0
                                        (i32.load
                                          (local.tee 2
                                            (i32.add
                                              (local.get 1)
                                              (i32.const 16)))))
                                      (then
                                        (if  ;; label = @169
                                          (i32.gt_u
                                            (local.get 3)
                                            (local.get 0))
                                          (then
                                            (call $_abort))
                                          (else
                                            (i32.store offset=16
                                              (local.get 8)
                                              (local.get 0))
                                            (i32.store offset=24
                                              (local.get 0)
                                              (local.get 8))))))
                                    (br_if 1 (;@168;)
                                      (i32.eqz
                                        (local.tee 0
                                          (i32.load offset=4
                                            (local.get 2)))))
                                    (if  ;; label = @170
                                      (i32.gt_u
                                        (i32.load
                                          (i32.const 3092))
                                        (local.get 0))
                                      (then
                                        (call $_abort))
                                      (else
                                        (i32.store offset=20
                                          (local.get 8)
                                          (local.get 0))
                                        (i32.store offset=24
                                          (local.get 0)
                                          (local.get 8)))))))
                              (local.set 1
                                (i32.add
                                  (local.get 1)
                                  (local.get 13)))
                              (i32.add
                                (local.get 4)
                                (local.get 13)))
                            (else
                              (local.get 4))))
                        (i32.store
                          (local.tee 0
                            (i32.add
                              (local.get 1)
                              (i32.const 4)))
                          (i32.and
                            (i32.load
                              (local.get 0))
                            (i32.const -2)))
                        (i32.store offset=4
                          (local.get 7)
                          (i32.or
                            (local.get 2)
                            (i32.const 1)))
                        (i32.store
                          (i32.add
                            (local.get 2)
                            (local.get 7))
                          (local.get 2))
                        (local.set 3
                          (i32.shr_u
                            (local.get 2)
                            (i32.const 3)))
                        (if  ;; label = @171
                          (i32.lt_u
                            (local.get 2)
                            (i32.const 256))
                          (then
                            (local.set 0
                              (i32.add
                                (i32.shl
                                  (local.get 3)
                                  (i32.const 3))
                                (i32.const 3116)))
                            (if  ;; label = @172
                              (i32.and
                                (local.tee 1
                                  (i32.load
                                    (i32.const 3076)))
                                (local.tee 3
                                  (i32.shl
                                    (i32.const 1)
                                    (local.get 3))))
                              (then
                                (block  ;; label = @173
                                  (if  ;; label = @174
                                    (i32.le_u
                                      (i32.load
                                        (i32.const 3092))
                                      (local.tee 1
                                        (i32.load
                                          (local.tee 3
                                            (i32.add
                                              (local.get 0)
                                              (i32.const 8))))))
                                    (then
                                      (local.set 21
                                        (local.get 3))
                                      (local.set 15
                                        (local.get 1))
                                      (br 1 (;@173;))))
                                  (call $_abort)))
                              (else
                                (i32.store
                                  (i32.const 3076)
                                  (i32.or
                                    (local.get 1)
                                    (local.get 3)))
                                (local.set 21
                                  (i32.add
                                    (local.get 0)
                                    (i32.const 8)))
                                (local.set 15
                                  (local.get 0))))
                            (i32.store
                              (local.get 21)
                              (local.get 7))
                            (i32.store offset=12
                              (local.get 15)
                              (local.get 7))
                            (i32.store offset=8
                              (local.get 7)
                              (local.get 15))
                            (i32.store offset=12
                              (local.get 7)
                              (local.get 0))
                            (br 1 (;@173;))))
                        (local.set 0
                          (i32.add
                            (i32.shl
                              (local.tee 3
                                (if (result i32)  ;; label = @175
                                  (local.tee 0
                                    (i32.shr_u
                                      (local.get 2)
                                      (i32.const 8)))
                                  (then
                                    (if (result i32)  ;; label = @176
                                      (i32.gt_u
                                        (local.get 2)
                                        (i32.const 16777215))
                                      (then
                                        (i32.const 31))
                                      (else
                                        (local.set 0
                                          (i32.and
                                            (i32.shr_u
                                              (i32.add
                                                (local.tee 3
                                                  (i32.shl
                                                    (local.get 0)
                                                    (local.tee 1
                                                      (i32.and
                                                        (i32.shr_u
                                                          (i32.add
                                                            (local.get 0)
                                                            (i32.const 1048320))
                                                          (i32.const 16))
                                                        (i32.const 8)))))
                                                (i32.const 520192))
                                              (i32.const 16))
                                            (i32.const 4)))
                                        (i32.or
                                          (i32.and
                                            (i32.shr_u
                                              (local.get 2)
                                              (i32.add
                                                (local.tee 0
                                                  (i32.add
                                                    (i32.sub
                                                      (i32.const 14)
                                                      (i32.or
                                                        (local.tee 3
                                                          (i32.and
                                                            (i32.shr_u
                                                              (i32.add
                                                                (local.tee 4
                                                                  (i32.shl
                                                                    (local.get 3)
                                                                    (local.get 0)))
                                                                (i32.const 245760))
                                                              (i32.const 16))
                                                            (i32.const 2)))
                                                        (i32.or
                                                          (local.get 0)
                                                          (local.get 1))))
                                                    (i32.shr_u
                                                      (i32.shl
                                                        (local.get 4)
                                                        (local.get 3))
                                                      (i32.const 15))))
                                                (i32.const 7)))
                                            (i32.const 1))
                                          (i32.shl
                                            (local.get 0)
                                            (i32.const 1))))))
                                  (else
                                    (i32.const 0))))
                              (i32.const 2))
                            (i32.const 3380)))
                        (i32.store offset=28
                          (local.get 7)
                          (local.get 3))
                        (i32.store offset=4
                          (local.tee 1
                            (i32.add
                              (local.get 7)
                              (i32.const 16)))
                          (i32.const 0))
                        (i32.store
                          (local.get 1)
                          (i32.const 0))
                        (if  ;; label = @177
                          (i32.eqz
                            (i32.and
                              (local.tee 1
                                (i32.load
                                  (i32.const 3080)))
                              (local.tee 4
                                (i32.shl
                                  (i32.const 1)
                                  (local.get 3)))))
                          (then
                            (i32.store
                              (i32.const 3080)
                              (i32.or
                                (local.get 1)
                                (local.get 4)))
                            (i32.store
                              (local.get 0)
                              (local.get 7))
                            (i32.store offset=24
                              (local.get 7)
                              (local.get 0))
                            (i32.store offset=12
                              (local.get 7)
                              (local.get 7))
                            (i32.store offset=8
                              (local.get 7)
                              (local.get 7))
                            (br 1 (;@176;))))
                        (if  ;; label = @178
                          (i32.eq
                            (i32.and
                              (i32.load offset=4
                                (local.tee 0
                                  (i32.load
                                    (local.get 0))))
                              (i32.const -8))
                            (local.get 2))
                          (then
                            (local.set 11
                              (local.get 0)))
                          (else
                            (block  ;; label = @179
                              (local.set 1
                                (i32.shl
                                  (local.get 2)
                                  (select
                                    (i32.const 0)
                                    (i32.sub
                                      (i32.const 25)
                                      (i32.shr_u
                                        (local.get 3)
                                        (i32.const 1)))
                                    (i32.eq
                                      (local.get 3)
                                      (i32.const 31)))))
                              (loop  ;; label = @180
                                (if  ;; label = @181
                                  (local.tee 3
                                    (i32.load
                                      (local.tee 4
                                        (i32.add
                                          (i32.add
                                            (local.get 0)
                                            (i32.const 16))
                                          (i32.shl
                                            (i32.shr_u
                                              (local.get 1)
                                              (i32.const 31))
                                            (i32.const 2))))))
                                  (then
                                    (local.set 1
                                      (i32.shl
                                        (local.get 1)
                                        (i32.const 1)))
                                    (if  ;; label = @182
                                      (i32.eq
                                        (i32.and
                                          (i32.load offset=4
                                            (local.get 3))
                                          (i32.const -8))
                                        (local.get 2))
                                      (then
                                        (local.set 11
                                          (local.get 3))
                                        (br 3 (;@179;)))
                                      (else
                                        (local.set 0
                                          (local.get 3))
                                        (br 2 (;@180;))))
                                    (unreachable))))
                              (if  ;; label = @183
                                (i32.gt_u
                                  (i32.load
                                    (i32.const 3092))
                                  (local.get 4))
                                (then
                                  (call $_abort))
                                (else
                                  (i32.store
                                    (local.get 4)
                                    (local.get 7))
                                  (i32.store offset=24
                                    (local.get 7)
                                    (local.get 0))
                                  (i32.store offset=12
                                    (local.get 7)
                                    (local.get 7))
                                  (i32.store offset=8
                                    (local.get 7)
                                    (local.get 7))
                                  (br 3 (;@180;)))))))
                        (if  ;; label = @184
                          (i32.and
                            (i32.le_u
                              (local.tee 0
                                (i32.load
                                  (i32.const 3092)))
                              (local.get 11))
                            (i32.le_u
                              (local.get 0)
                              (local.tee 0
                                (i32.load
                                  (local.tee 3
                                    (i32.add
                                      (local.get 11)
                                      (i32.const 8)))))))
                          (then
                            (i32.store offset=12
                              (local.get 0)
                              (local.get 7))
                            (i32.store
                              (local.get 3)
                              (local.get 7))
                            (i32.store offset=8
                              (local.get 7)
                              (local.get 0))
                            (i32.store offset=12
                              (local.get 7)
                              (local.get 11))
                            (i32.store offset=24
                              (local.get 7)
                              (i32.const 0)))
                          (else
                            (call $_abort))))))
                  (global.set 2
                    (local.get 14))
                  (return
                    (i32.add
                      (local.get 9)
                      (i32.const 8))))))
            (local.set 2
              (i32.const 3524))
            (loop  ;; label = @185
              (block  ;; label = @186
                (if  ;; label = @187
                  (i32.le_u
                    (local.tee 4
                      (i32.load
                        (local.get 2)))
                    (local.get 5))
                  (then
                    (br_if 1 (;@186;)
                      (i32.gt_u
                        (local.tee 6
                          (i32.add
                            (local.get 4)
                            (i32.load offset=4
                              (local.get 2))))
                        (local.get 5)))))
                (local.set 2
                  (i32.load offset=8
                    (local.get 2)))
                (br 1 (;@186;))))
            (local.set 4
              (i32.add
                (local.tee 2
                  (select
                    (local.get 5)
                    (local.tee 2
                      (i32.add
                        (select
                          (i32.and
                            (i32.sub
                              (i32.const 0)
                              (local.tee 2
                                (i32.add
                                  (local.tee 4
                                    (i32.add
                                      (local.get 6)
                                      (i32.const -47)))
                                  (i32.const 8))))
                            (i32.const 7))
                          (i32.const 0)
                          (i32.and
                            (local.get 2)
                            (i32.const 7)))
                        (local.get 4)))
                    (i32.lt_u
                      (local.get 2)
                      (local.tee 8
                        (i32.add
                          (local.get 5)
                          (i32.const 16))))))
                (i32.const 8)))
            (i32.store
              (i32.const 3100)
              (local.tee 10
                (i32.add
                  (local.tee 7
                    (select
                      (i32.and
                        (i32.sub
                          (i32.const 0)
                          (local.tee 7
                            (i32.add
                              (local.get 0)
                              (i32.const 8))))
                        (i32.const 7))
                      (i32.const 0)
                      (i32.and
                        (local.get 7)
                        (i32.const 7))))
                  (local.get 0))))
            (i32.store
              (i32.const 3088)
              (local.tee 7
                (i32.sub
                  (local.tee 11
                    (i32.add
                      (local.get 1)
                      (i32.const -40)))
                  (local.get 7))))
            (i32.store offset=4
              (local.get 10)
              (i32.or
                (local.get 7)
                (i32.const 1)))
            (i32.store offset=4
              (i32.add
                (local.get 0)
                (local.get 11))
              (i32.const 40))
            (i32.store
              (i32.const 3104)
              (i32.load
                (i32.const 3564)))
            (i32.store
              (local.tee 7
                (i32.add
                  (local.get 2)
                  (i32.const 4)))
              (i32.const 27))
            (i64.store align=4
              (local.get 4)
              (i64.load align=4
                (i32.const 3524)))
            (i64.store offset=8 align=4
              (local.get 4)
              (i64.load align=4
                (i32.const 3532)))
            (i32.store
              (i32.const 3524)
              (local.get 0))
            (i32.store
              (i32.const 3528)
              (local.get 1))
            (i32.store
              (i32.const 3536)
              (i32.const 0))
            (i32.store
              (i32.const 3532)
              (local.get 4))
            (local.set 0
              (i32.add
                (local.get 2)
                (i32.const 24)))
            (loop  ;; label = @188
              (i32.store
                (local.tee 1
                  (i32.add
                    (local.get 0)
                    (i32.const 4)))
                (i32.const 7))
              (if  ;; label = @189
                (i32.lt_u
                  (i32.add
                    (local.get 0)
                    (i32.const 8))
                  (local.get 6))
                (then
                  (local.set 0
                    (local.get 1))
                  (br 1 (;@188;)))))
            (if  ;; label = @190
              (i32.ne
                (local.get 2)
                (local.get 5))
              (then
                (i32.store
                  (local.get 7)
                  (i32.and
                    (i32.load
                      (local.get 7))
                    (i32.const -2)))
                (i32.store offset=4
                  (local.get 5)
                  (i32.or
                    (local.tee 4
                      (i32.sub
                        (local.get 2)
                        (local.get 5)))
                    (i32.const 1)))
                (i32.store
                  (local.get 2)
                  (local.get 4))
                (local.set 1
                  (i32.shr_u
                    (local.get 4)
                    (i32.const 3)))
                (if  ;; label = @191
                  (i32.lt_u
                    (local.get 4)
                    (i32.const 256))
                  (then
                    (local.set 0
                      (i32.add
                        (i32.shl
                          (local.get 1)
                          (i32.const 3))
                        (i32.const 3116)))
                    (if  ;; label = @192
                      (i32.and
                        (local.tee 2
                          (i32.load
                            (i32.const 3076)))
                        (local.tee 1
                          (i32.shl
                            (i32.const 1)
                            (local.get 1))))
                      (then
                        (if  ;; label = @193
                          (i32.gt_u
                            (i32.load
                              (i32.const 3092))
                            (local.tee 2
                              (i32.load
                                (local.tee 1
                                  (i32.add
                                    (local.get 0)
                                    (i32.const 8))))))
                          (then
                            (call $_abort))
                          (else
                            (local.set 22
                              (local.get 1))
                            (local.set 17
                              (local.get 2)))))
                      (else
                        (i32.store
                          (i32.const 3076)
                          (i32.or
                            (local.get 1)
                            (local.get 2)))
                        (local.set 22
                          (i32.add
                            (local.get 0)
                            (i32.const 8)))
                        (local.set 17
                          (local.get 0))))
                    (i32.store
                      (local.get 22)
                      (local.get 5))
                    (i32.store offset=12
                      (local.get 17)
                      (local.get 5))
                    (i32.store offset=8
                      (local.get 5)
                      (local.get 17))
                    (i32.store offset=12
                      (local.get 5)
                      (local.get 0))
                    (br 2 (;@191;))))
                (local.set 0
                  (i32.add
                    (i32.shl
                      (local.tee 1
                        (if (result i32)  ;; label = @194
                          (local.tee 0
                            (i32.shr_u
                              (local.get 4)
                              (i32.const 8)))
                          (then
                            (if (result i32)  ;; label = @195
                              (i32.gt_u
                                (local.get 4)
                                (i32.const 16777215))
                              (then
                                (i32.const 31))
                              (else
                                (local.set 0
                                  (i32.and
                                    (i32.shr_u
                                      (i32.add
                                        (local.tee 1
                                          (i32.shl
                                            (local.get 0)
                                            (local.tee 2
                                              (i32.and
                                                (i32.shr_u
                                                  (i32.add
                                                    (local.get 0)
                                                    (i32.const 1048320))
                                                  (i32.const 16))
                                                (i32.const 8)))))
                                        (i32.const 520192))
                                      (i32.const 16))
                                    (i32.const 4)))
                                (i32.or
                                  (i32.and
                                    (i32.shr_u
                                      (local.get 4)
                                      (i32.add
                                        (local.tee 0
                                          (i32.add
                                            (i32.sub
                                              (i32.const 14)
                                              (i32.or
                                                (local.tee 1
                                                  (i32.and
                                                    (i32.shr_u
                                                      (i32.add
                                                        (local.tee 6
                                                          (i32.shl
                                                            (local.get 1)
                                                            (local.get 0)))
                                                        (i32.const 245760))
                                                      (i32.const 16))
                                                    (i32.const 2)))
                                                (i32.or
                                                  (local.get 0)
                                                  (local.get 2))))
                                            (i32.shr_u
                                              (i32.shl
                                                (local.get 6)
                                                (local.get 1))
                                              (i32.const 15))))
                                        (i32.const 7)))
                                    (i32.const 1))
                                  (i32.shl
                                    (local.get 0)
                                    (i32.const 1))))))
                          (else
                            (i32.const 0))))
                      (i32.const 2))
                    (i32.const 3380)))
                (i32.store offset=28
                  (local.get 5)
                  (local.get 1))
                (i32.store offset=20
                  (local.get 5)
                  (i32.const 0))
                (i32.store
                  (local.get 8)
                  (i32.const 0))
                (if  ;; label = @196
                  (i32.eqz
                    (i32.and
                      (local.tee 2
                        (i32.load
                          (i32.const 3080)))
                      (local.tee 6
                        (i32.shl
                          (i32.const 1)
                          (local.get 1)))))
                  (then
                    (i32.store
                      (i32.const 3080)
                      (i32.or
                        (local.get 2)
                        (local.get 6)))
                    (i32.store
                      (local.get 0)
                      (local.get 5))
                    (i32.store offset=24
                      (local.get 5)
                      (local.get 0))
                    (i32.store offset=12
                      (local.get 5)
                      (local.get 5))
                    (i32.store offset=8
                      (local.get 5)
                      (local.get 5))
                    (br 2 (;@194;))))
                (if  ;; label = @197
                  (i32.eq
                    (i32.and
                      (i32.load offset=4
                        (local.tee 0
                          (i32.load
                            (local.get 0))))
                      (i32.const -8))
                    (local.get 4))
                  (then
                    (local.set 9
                      (local.get 0)))
                  (else
                    (block  ;; label = @198
                      (local.set 2
                        (i32.shl
                          (local.get 4)
                          (select
                            (i32.const 0)
                            (i32.sub
                              (i32.const 25)
                              (i32.shr_u
                                (local.get 1)
                                (i32.const 1)))
                            (i32.eq
                              (local.get 1)
                              (i32.const 31)))))
                      (loop  ;; label = @199
                        (if  ;; label = @200
                          (local.tee 1
                            (i32.load
                              (local.tee 6
                                (i32.add
                                  (i32.add
                                    (local.get 0)
                                    (i32.const 16))
                                  (i32.shl
                                    (i32.shr_u
                                      (local.get 2)
                                      (i32.const 31))
                                    (i32.const 2))))))
                          (then
                            (local.set 2
                              (i32.shl
                                (local.get 2)
                                (i32.const 1)))
                            (if  ;; label = @201
                              (i32.eq
                                (i32.and
                                  (i32.load offset=4
                                    (local.get 1))
                                  (i32.const -8))
                                (local.get 4))
                              (then
                                (local.set 9
                                  (local.get 1))
                                (br 3 (;@198;)))
                              (else
                                (local.set 0
                                  (local.get 1))
                                (br 2 (;@199;))))
                            (unreachable))))
                      (if  ;; label = @202
                        (i32.gt_u
                          (i32.load
                            (i32.const 3092))
                          (local.get 6))
                        (then
                          (call $_abort))
                        (else
                          (i32.store
                            (local.get 6)
                            (local.get 5))
                          (i32.store offset=24
                            (local.get 5)
                            (local.get 0))
                          (i32.store offset=12
                            (local.get 5)
                            (local.get 5))
                          (i32.store offset=8
                            (local.get 5)
                            (local.get 5))
                          (br 4 (;@198;)))))))
                (if  ;; label = @203
                  (i32.and
                    (i32.le_u
                      (local.tee 0
                        (i32.load
                          (i32.const 3092)))
                      (local.get 9))
                    (i32.le_u
                      (local.get 0)
                      (local.tee 0
                        (i32.load
                          (local.tee 1
                            (i32.add
                              (local.get 9)
                              (i32.const 8)))))))
                  (then
                    (i32.store offset=12
                      (local.get 0)
                      (local.get 5))
                    (i32.store
                      (local.get 1)
                      (local.get 5))
                    (i32.store offset=8
                      (local.get 5)
                      (local.get 0))
                    (i32.store offset=12
                      (local.get 5)
                      (local.get 9))
                    (i32.store offset=24
                      (local.get 5)
                      (i32.const 0)))
                  (else
                    (call $_abort)))))))
        (else
          (if  ;; label = @204
            (i32.or
              (i32.eqz
                (local.tee 2
                  (i32.load
                    (i32.const 3092))))
              (i32.lt_u
                (local.get 0)
                (local.get 2)))
            (then
              (i32.store
                (i32.const 3092)
                (local.get 0))))
          (i32.store
            (i32.const 3524)
            (local.get 0))
          (i32.store
            (i32.const 3528)
            (local.get 1))
          (i32.store
            (i32.const 3536)
            (i32.const 0))
          (i32.store
            (i32.const 3112)
            (i32.load
              (i32.const 3548)))
          (i32.store
            (i32.const 3108)
            (i32.const -1))
          (i32.store
            (i32.const 3128)
            (i32.const 3116))
          (i32.store
            (i32.const 3124)
            (i32.const 3116))
          (i32.store
            (i32.const 3136)
            (i32.const 3124))
          (i32.store
            (i32.const 3132)
            (i32.const 3124))
          (i32.store
            (i32.const 3144)
            (i32.const 3132))
          (i32.store
            (i32.const 3140)
            (i32.const 3132))
          (i32.store
            (i32.const 3152)
            (i32.const 3140))
          (i32.store
            (i32.const 3148)
            (i32.const 3140))
          (i32.store
            (i32.const 3160)
            (i32.const 3148))
          (i32.store
            (i32.const 3156)
            (i32.const 3148))
          (i32.store
            (i32.const 3168)
            (i32.const 3156))
          (i32.store
            (i32.const 3164)
            (i32.const 3156))
          (i32.store
            (i32.const 3176)
            (i32.const 3164))
          (i32.store
            (i32.const 3172)
            (i32.const 3164))
          (i32.store
            (i32.const 3184)
            (i32.const 3172))
          (i32.store
            (i32.const 3180)
            (i32.const 3172))
          (i32.store
            (i32.const 3192)
            (i32.const 3180))
          (i32.store
            (i32.const 3188)
            (i32.const 3180))
          (i32.store
            (i32.const 3200)
            (i32.const 3188))
          (i32.store
            (i32.const 3196)
            (i32.const 3188))
          (i32.store
            (i32.const 3208)
            (i32.const 3196))
          (i32.store
            (i32.const 3204)
            (i32.const 3196))
          (i32.store
            (i32.const 3216)
            (i32.const 3204))
          (i32.store
            (i32.const 3212)
            (i32.const 3204))
          (i32.store
            (i32.const 3224)
            (i32.const 3212))
          (i32.store
            (i32.const 3220)
            (i32.const 3212))
          (i32.store
            (i32.const 3232)
            (i32.const 3220))
          (i32.store
            (i32.const 3228)
            (i32.const 3220))
          (i32.store
            (i32.const 3240)
            (i32.const 3228))
          (i32.store
            (i32.const 3236)
            (i32.const 3228))
          (i32.store
            (i32.const 3248)
            (i32.const 3236))
          (i32.store
            (i32.const 3244)
            (i32.const 3236))
          (i32.store
            (i32.const 3256)
            (i32.const 3244))
          (i32.store
            (i32.const 3252)
            (i32.const 3244))
          (i32.store
            (i32.const 3264)
            (i32.const 3252))
          (i32.store
            (i32.const 3260)
            (i32.const 3252))
          (i32.store
            (i32.const 3272)
            (i32.const 3260))
          (i32.store
            (i32.const 3268)
            (i32.const 3260))
          (i32.store
            (i32.const 3280)
            (i32.const 3268))
          (i32.store
            (i32.const 3276)
            (i32.const 3268))
          (i32.store
            (i32.const 3288)
            (i32.const 3276))
          (i32.store
            (i32.const 3284)
            (i32.const 3276))
          (i32.store
            (i32.const 3296)
            (i32.const 3284))
          (i32.store
            (i32.const 3292)
            (i32.const 3284))
          (i32.store
            (i32.const 3304)
            (i32.const 3292))
          (i32.store
            (i32.const 3300)
            (i32.const 3292))
          (i32.store
            (i32.const 3312)
            (i32.const 3300))
          (i32.store
            (i32.const 3308)
            (i32.const 3300))
          (i32.store
            (i32.const 3320)
            (i32.const 3308))
          (i32.store
            (i32.const 3316)
            (i32.const 3308))
          (i32.store
            (i32.const 3328)
            (i32.const 3316))
          (i32.store
            (i32.const 3324)
            (i32.const 3316))
          (i32.store
            (i32.const 3336)
            (i32.const 3324))
          (i32.store
            (i32.const 3332)
            (i32.const 3324))
          (i32.store
            (i32.const 3344)
            (i32.const 3332))
          (i32.store
            (i32.const 3340)
            (i32.const 3332))
          (i32.store
            (i32.const 3352)
            (i32.const 3340))
          (i32.store
            (i32.const 3348)
            (i32.const 3340))
          (i32.store
            (i32.const 3360)
            (i32.const 3348))
          (i32.store
            (i32.const 3356)
            (i32.const 3348))
          (i32.store
            (i32.const 3368)
            (i32.const 3356))
          (i32.store
            (i32.const 3364)
            (i32.const 3356))
          (i32.store
            (i32.const 3376)
            (i32.const 3364))
          (i32.store
            (i32.const 3372)
            (i32.const 3364))
          (i32.store
            (i32.const 3100)
            (local.tee 4
              (i32.add
                (local.tee 2
                  (select
                    (i32.and
                      (i32.sub
                        (i32.const 0)
                        (local.tee 2
                          (i32.add
                            (local.get 0)
                            (i32.const 8))))
                      (i32.const 7))
                    (i32.const 0)
                    (i32.and
                      (local.get 2)
                      (i32.const 7))))
                (local.get 0))))
          (i32.store
            (i32.const 3088)
            (local.tee 2
              (i32.sub
                (local.tee 1
                  (i32.add
                    (local.get 1)
                    (i32.const -40)))
                (local.get 2))))
          (i32.store offset=4
            (local.get 4)
            (i32.or
              (local.get 2)
              (i32.const 1)))
          (i32.store offset=4
            (i32.add
              (local.get 0)
              (local.get 1))
            (i32.const 40))
          (i32.store
            (i32.const 3104)
            (i32.load
              (i32.const 3564)))))
      (if  ;; label = @205
        (i32.gt_u
          (local.tee 0
            (i32.load
              (i32.const 3088)))
          (local.get 3))
        (then
          (i32.store
            (i32.const 3088)
            (local.tee 1
              (i32.sub
                (local.get 0)
                (local.get 3))))
          (i32.store
            (i32.const 3100)
            (local.tee 2
              (i32.add
                (local.tee 0
                  (i32.load
                    (i32.const 3100)))
                (local.get 3))))
          (i32.store offset=4
            (local.get 2)
            (i32.or
              (local.get 1)
              (i32.const 1)))
          (i32.store offset=4
            (local.get 0)
            (i32.or
              (local.get 3)
              (i32.const 3)))
          (global.set 2
            (local.get 14))
          (return
            (i32.add
              (local.get 0)
              (i32.const 8))))))
    (i32.store
      (i32.const 3072)
      (i32.const 12))
    (global.set 2
      (local.get 14))
    (i32.const 0))
  (func $_free (type 5) (param i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    (if  ;; label = @1
      (i32.eqz
        (local.get 0))
      (then
        (return)))
    (if  ;; label = @2
      (i32.lt_u
        (local.tee 5
          (i32.add
            (local.get 0)
            (i32.const -8)))
        (local.tee 12
          (i32.load
            (i32.const 3092))))
      (then
        (call $_abort)))
    (if  ;; label = @3
      (i32.eq
        (local.tee 11
          (i32.and
            (local.tee 0
              (i32.load
                (i32.add
                  (local.get 0)
                  (i32.const -4))))
            (i32.const 3)))
        (i32.const 1))
      (then
        (call $_abort)))
    (local.set 7
      (i32.add
        (local.get 5)
        (local.tee 2
          (i32.and
            (local.get 0)
            (i32.const -8)))))
    (if  ;; label = @4
      (i32.and
        (local.get 0)
        (i32.const 1))
      (then
        (local.set 3
          (local.tee 4
            (local.get 5)))
        (local.set 1
          (local.get 2)))
      (else
        (block  ;; label = @5
          (local.set 9
            (i32.load
              (local.get 5)))
          (if  ;; label = @6
            (i32.eqz
              (local.get 11))
            (then
              (return)))
          (if  ;; label = @7
            (i32.lt_u
              (local.tee 0
                (i32.sub
                  (local.get 5)
                  (local.get 9)))
              (local.get 12))
            (then
              (call $_abort)))
          (local.set 5
            (i32.add
              (local.get 2)
              (local.get 9)))
          (if  ;; label = @8
            (i32.eq
              (i32.load
                (i32.const 3096))
              (local.get 0))
            (then
              (if  ;; label = @9
                (i32.ne
                  (i32.and
                    (local.tee 4
                      (i32.load
                        (local.tee 1
                          (i32.add
                            (local.get 7)
                            (i32.const 4)))))
                    (i32.const 3))
                  (i32.const 3))
                (then
                  (local.set 4
                    (local.get 0))
                  (local.set 3
                    (local.get 0))
                  (local.set 1
                    (local.get 5))
                  (br 2 (;@7;))))
              (i32.store
                (i32.const 3084)
                (local.get 5))
              (i32.store
                (local.get 1)
                (i32.and
                  (local.get 4)
                  (i32.const -2)))
              (i32.store
                (i32.add
                  (local.get 0)
                  (i32.const 4))
                (i32.or
                  (local.get 5)
                  (i32.const 1)))
              (i32.store
                (i32.add
                  (local.get 0)
                  (local.get 5))
                (local.get 5))
              (return)))
          (local.set 2
            (i32.shr_u
              (local.get 9)
              (i32.const 3)))
          (if  ;; label = @10
            (i32.lt_u
              (local.get 9)
              (i32.const 256))
            (then
              (local.set 4
                (i32.load
                  (i32.add
                    (local.get 0)
                    (i32.const 12))))
              (if  ;; label = @11
                (i32.ne
                  (local.tee 3
                    (i32.load
                      (i32.add
                        (local.get 0)
                        (i32.const 8))))
                  (local.tee 1
                    (i32.add
                      (i32.shl
                        (local.get 2)
                        (i32.const 3))
                      (i32.const 3116))))
                (then
                  (if  ;; label = @12
                    (i32.gt_u
                      (local.get 12)
                      (local.get 3))
                    (then
                      (call $_abort)))
                  (if  ;; label = @13
                    (i32.ne
                      (local.get 0)
                      (i32.load
                        (i32.add
                          (local.get 3)
                          (i32.const 12))))
                    (then
                      (call $_abort)))))
              (if  ;; label = @14
                (i32.eq
                  (local.get 3)
                  (local.get 4))
                (then
                  (i32.store
                    (i32.const 3076)
                    (i32.and
                      (i32.load
                        (i32.const 3076))
                      (i32.xor
                        (i32.shl
                          (i32.const 1)
                          (local.get 2))
                        (i32.const -1))))
                  (local.set 4
                    (local.get 0))
                  (local.set 3
                    (local.get 0))
                  (local.set 1
                    (local.get 5))
                  (br 2 (;@12;))))
              (if  ;; label = @15
                (i32.eq
                  (local.get 1)
                  (local.get 4))
                (then
                  (local.set 6
                    (i32.add
                      (local.get 4)
                      (i32.const 8))))
                (else
                  (if  ;; label = @16
                    (i32.gt_u
                      (local.get 12)
                      (local.get 4))
                    (then
                      (call $_abort)))
                  (if  ;; label = @17
                    (i32.eq
                      (i32.load
                        (local.tee 1
                          (i32.add
                            (local.get 4)
                            (i32.const 8))))
                      (local.get 0))
                    (then
                      (local.set 6
                        (local.get 1)))
                    (else
                      (call $_abort)))))
              (i32.store
                (i32.add
                  (local.get 3)
                  (i32.const 12))
                (local.get 4))
              (i32.store
                (local.get 6)
                (local.get 3))
              (local.set 4
                (local.get 0))
              (local.set 3
                (local.get 0))
              (local.set 1
                (local.get 5))
              (br 1 (;@16;))))
          (local.set 13
            (i32.load
              (i32.add
                (local.get 0)
                (i32.const 24))))
          (if  ;; label = @18
            (i32.eq
              (local.tee 2
                (i32.load
                  (i32.add
                    (local.get 0)
                    (i32.const 12))))
              (local.get 0))
            (then
              (block  ;; label = @19
                (if  ;; label = @20
                  (local.tee 2
                    (i32.load
                      (local.tee 9
                        (i32.add
                          (local.tee 6
                            (i32.add
                              (local.get 0)
                              (i32.const 16)))
                          (i32.const 4)))))
                  (then
                    (local.set 6
                      (local.get 9)))
                  (else
                    (br_if 1 (;@19;)
                      (i32.eqz
                        (local.tee 2
                          (i32.load
                            (local.get 6)))))))
                (loop  ;; label = @21
                  (block  ;; label = @22
                    (local.set 2
                      (if (result i32)  ;; label = @23
                        (local.tee 11
                          (i32.load
                            (local.tee 9
                              (i32.add
                                (local.get 2)
                                (i32.const 20)))))
                        (then
                          (local.set 6
                            (local.get 9))
                          (local.get 11))
                        (else
                          (br_if 1 (;@22;)
                            (i32.eqz
                              (local.tee 11
                                (i32.load
                                  (local.tee 9
                                    (i32.add
                                      (local.get 2)
                                      (i32.const 16)))))))
                          (local.set 6
                            (local.get 9))
                          (local.get 11))))
                    (br 1 (;@22;))))
                (if  ;; label = @24
                  (i32.gt_u
                    (local.get 12)
                    (local.get 6))
                  (then
                    (call $_abort))
                  (else
                    (i32.store
                      (local.get 6)
                      (i32.const 0))
                    (local.set 8
                      (local.get 2))))))
            (else
              (if  ;; label = @25
                (i32.gt_u
                  (local.get 12)
                  (local.tee 6
                    (i32.load
                      (i32.add
                        (local.get 0)
                        (i32.const 8)))))
                (then
                  (call $_abort)))
              (if  ;; label = @26
                (i32.ne
                  (local.get 0)
                  (i32.load
                    (local.tee 9
                      (i32.add
                        (local.get 6)
                        (i32.const 12)))))
                (then
                  (call $_abort)))
              (if  ;; label = @27
                (i32.eq
                  (i32.load
                    (local.tee 11
                      (i32.add
                        (local.get 2)
                        (i32.const 8))))
                  (local.get 0))
                (then
                  (i32.store
                    (local.get 9)
                    (local.get 2))
                  (i32.store
                    (local.get 11)
                    (local.get 6))
                  (local.set 8
                    (local.get 2)))
                (else
                  (call $_abort)))))
          (if  ;; label = @28
            (local.get 13)
            (then
              (if  ;; label = @29
                (i32.eq
                  (i32.load
                    (local.tee 6
                      (i32.add
                        (i32.shl
                          (local.tee 2
                            (i32.load
                              (i32.add
                                (local.get 0)
                                (i32.const 28))))
                          (i32.const 2))
                        (i32.const 3380))))
                  (local.get 0))
                (then
                  (i32.store
                    (local.get 6)
                    (local.get 8))
                  (if  ;; label = @30
                    (i32.eqz
                      (local.get 8))
                    (then
                      (i32.store
                        (i32.const 3080)
                        (i32.and
                          (i32.load
                            (i32.const 3080))
                          (i32.xor
                            (i32.shl
                              (i32.const 1)
                              (local.get 2))
                            (i32.const -1))))
                      (local.set 4
                        (local.get 0))
                      (local.set 3
                        (local.get 0))
                      (local.set 1
                        (local.get 5))
                      (br 3 (;@27;)))))
                (else
                  (if  ;; label = @31
                    (i32.gt_u
                      (i32.load
                        (i32.const 3092))
                      (local.get 13))
                    (then
                      (call $_abort))
                    (else
                      (i32.store
                        (select
                          (local.tee 2
                            (i32.add
                              (local.get 13)
                              (i32.const 16)))
                          (i32.add
                            (local.get 13)
                            (i32.const 20))
                          (i32.eq
                            (i32.load
                              (local.get 2))
                            (local.get 0)))
                        (local.get 8))
                      (if  ;; label = @32
                        (i32.eqz
                          (local.get 8))
                        (then
                          (local.set 4
                            (local.get 0))
                          (local.set 3
                            (local.get 0))
                          (local.set 1
                            (local.get 5))
                          (br 4 (;@28;))))))))
              (if  ;; label = @33
                (i32.gt_u
                  (local.tee 6
                    (i32.load
                      (i32.const 3092)))
                  (local.get 8))
                (then
                  (call $_abort)))
              (i32.store
                (i32.add
                  (local.get 8)
                  (i32.const 24))
                (local.get 13))
              (if  ;; label = @34
                (local.tee 2
                  (i32.load
                    (local.tee 9
                      (i32.add
                        (local.get 0)
                        (i32.const 16)))))
                (then
                  (if  ;; label = @35
                    (i32.gt_u
                      (local.get 6)
                      (local.get 2))
                    (then
                      (call $_abort))
                    (else
                      (i32.store
                        (i32.add
                          (local.get 8)
                          (i32.const 16))
                        (local.get 2))
                      (i32.store
                        (i32.add
                          (local.get 2)
                          (i32.const 24))
                        (local.get 8))))))
              (if  ;; label = @36
                (local.tee 2
                  (i32.load
                    (i32.add
                      (local.get 9)
                      (i32.const 4))))
                (then
                  (if  ;; label = @37
                    (i32.gt_u
                      (i32.load
                        (i32.const 3092))
                      (local.get 2))
                    (then
                      (call $_abort))
                    (else
                      (i32.store
                        (i32.add
                          (local.get 8)
                          (i32.const 20))
                        (local.get 2))
                      (i32.store
                        (i32.add
                          (local.get 2)
                          (i32.const 24))
                        (local.get 8))
                      (local.set 4
                        (local.get 0))
                      (local.set 3
                        (local.get 0))
                      (local.set 1
                        (local.get 5)))))
                (else
                  (local.set 4
                    (local.get 0))
                  (local.set 3
                    (local.get 0))
                  (local.set 1
                    (local.get 5)))))
            (else
              (local.set 4
                (local.get 0))
              (local.set 3
                (local.get 0))
              (local.set 1
                (local.get 5)))))))
    (if  ;; label = @38
      (i32.ge_u
        (local.get 4)
        (local.get 7))
      (then
        (call $_abort)))
    (if  ;; label = @39
      (i32.eqz
        (i32.and
          (local.tee 0
            (i32.load
              (local.tee 5
                (i32.add
                  (local.get 7)
                  (i32.const 4)))))
          (i32.const 1)))
      (then
        (call $_abort)))
    (local.set 1
      (i32.shr_u
        (local.tee 4
          (if (result i32)  ;; label = @40
            (i32.and
              (local.get 0)
              (i32.const 2))
            (then
              (i32.store
                (local.get 5)
                (i32.and
                  (local.get 0)
                  (i32.const -2)))
              (i32.store
                (i32.add
                  (local.get 3)
                  (i32.const 4))
                (i32.or
                  (local.get 1)
                  (i32.const 1)))
              (i32.store
                (i32.add
                  (local.get 1)
                  (local.get 4))
                (local.get 1))
              (local.get 1))
            (else
              (if  ;; label = @41
                (i32.eq
                  (i32.load
                    (i32.const 3100))
                  (local.get 7))
                (then
                  (i32.store
                    (i32.const 3088)
                    (local.tee 0
                      (i32.add
                        (i32.load
                          (i32.const 3088))
                        (local.get 1))))
                  (i32.store
                    (i32.const 3100)
                    (local.get 3))
                  (i32.store
                    (i32.add
                      (local.get 3)
                      (i32.const 4))
                    (i32.or
                      (local.get 0)
                      (i32.const 1)))
                  (if  ;; label = @42
                    (i32.ne
                      (local.get 3)
                      (i32.load
                        (i32.const 3096)))
                    (then
                      (return)))
                  (i32.store
                    (i32.const 3096)
                    (i32.const 0))
                  (i32.store
                    (i32.const 3084)
                    (i32.const 0))
                  (return)))
              (if  ;; label = @43
                (i32.eq
                  (i32.load
                    (i32.const 3096))
                  (local.get 7))
                (then
                  (i32.store
                    (i32.const 3084)
                    (local.tee 0
                      (i32.add
                        (i32.load
                          (i32.const 3084))
                        (local.get 1))))
                  (i32.store
                    (i32.const 3096)
                    (local.get 4))
                  (i32.store
                    (i32.add
                      (local.get 3)
                      (i32.const 4))
                    (i32.or
                      (local.get 0)
                      (i32.const 1)))
                  (i32.store
                    (i32.add
                      (local.get 0)
                      (local.get 4))
                    (local.get 0))
                  (return)))
              (local.set 5
                (i32.add
                  (i32.and
                    (local.get 0)
                    (i32.const -8))
                  (local.get 1)))
              (local.set 6
                (i32.shr_u
                  (local.get 0)
                  (i32.const 3)))
              (block  ;; label = @44
                (if  ;; label = @45
                  (i32.lt_u
                    (local.get 0)
                    (i32.const 256))
                  (then
                    (local.set 1
                      (i32.load
                        (i32.add
                          (local.get 7)
                          (i32.const 12))))
                    (if  ;; label = @46
                      (i32.ne
                        (local.tee 2
                          (i32.load
                            (i32.add
                              (local.get 7)
                              (i32.const 8))))
                        (local.tee 0
                          (i32.add
                            (i32.shl
                              (local.get 6)
                              (i32.const 3))
                            (i32.const 3116))))
                      (then
                        (if  ;; label = @47
                          (i32.gt_u
                            (i32.load
                              (i32.const 3092))
                            (local.get 2))
                          (then
                            (call $_abort)))
                        (if  ;; label = @48
                          (i32.ne
                            (local.get 7)
                            (i32.load
                              (i32.add
                                (local.get 2)
                                (i32.const 12))))
                          (then
                            (call $_abort)))))
                    (if  ;; label = @49
                      (i32.eq
                        (local.get 1)
                        (local.get 2))
                      (then
                        (i32.store
                          (i32.const 3076)
                          (i32.and
                            (i32.load
                              (i32.const 3076))
                            (i32.xor
                              (i32.shl
                                (i32.const 1)
                                (local.get 6))
                              (i32.const -1))))
                        (br 2 (;@47;))))
                    (if  ;; label = @50
                      (i32.eq
                        (local.get 0)
                        (local.get 1))
                      (then
                        (local.set 16
                          (i32.add
                            (local.get 1)
                            (i32.const 8))))
                      (else
                        (if  ;; label = @51
                          (i32.gt_u
                            (i32.load
                              (i32.const 3092))
                            (local.get 1))
                          (then
                            (call $_abort)))
                        (if  ;; label = @52
                          (i32.eq
                            (i32.load
                              (local.tee 0
                                (i32.add
                                  (local.get 1)
                                  (i32.const 8))))
                            (local.get 7))
                          (then
                            (local.set 16
                              (local.get 0)))
                          (else
                            (call $_abort)))))
                    (i32.store
                      (i32.add
                        (local.get 2)
                        (i32.const 12))
                      (local.get 1))
                    (i32.store
                      (local.get 16)
                      (local.get 2)))
                  (else
                    (local.set 8
                      (i32.load
                        (i32.add
                          (local.get 7)
                          (i32.const 24))))
                    (if  ;; label = @53
                      (i32.eq
                        (local.tee 0
                          (i32.load
                            (i32.add
                              (local.get 7)
                              (i32.const 12))))
                        (local.get 7))
                      (then
                        (block  ;; label = @54
                          (if  ;; label = @55
                            (local.tee 0
                              (i32.load
                                (local.tee 2
                                  (i32.add
                                    (local.tee 1
                                      (i32.add
                                        (local.get 7)
                                        (i32.const 16)))
                                    (i32.const 4)))))
                            (then
                              (local.set 1
                                (local.get 2)))
                            (else
                              (br_if 1 (;@54;)
                                (i32.eqz
                                  (local.tee 0
                                    (i32.load
                                      (local.get 1)))))))
                          (loop  ;; label = @56
                            (block  ;; label = @57
                              (local.set 0
                                (if (result i32)  ;; label = @58
                                  (local.tee 6
                                    (i32.load
                                      (local.tee 2
                                        (i32.add
                                          (local.get 0)
                                          (i32.const 20)))))
                                  (then
                                    (local.set 1
                                      (local.get 2))
                                    (local.get 6))
                                  (else
                                    (br_if 1 (;@57;)
                                      (i32.eqz
                                        (local.tee 6
                                          (i32.load
                                            (local.tee 2
                                              (i32.add
                                                (local.get 0)
                                                (i32.const 16)))))))
                                    (local.set 1
                                      (local.get 2))
                                    (local.get 6))))
                              (br 1 (;@57;))))
                          (if  ;; label = @59
                            (i32.gt_u
                              (i32.load
                                (i32.const 3092))
                              (local.get 1))
                            (then
                              (call $_abort))
                            (else
                              (i32.store
                                (local.get 1)
                                (i32.const 0))
                              (local.set 10
                                (local.get 0))))))
                      (else
                        (if  ;; label = @60
                          (i32.gt_u
                            (i32.load
                              (i32.const 3092))
                            (local.tee 1
                              (i32.load
                                (i32.add
                                  (local.get 7)
                                  (i32.const 8)))))
                          (then
                            (call $_abort)))
                        (if  ;; label = @61
                          (i32.ne
                            (local.get 7)
                            (i32.load
                              (local.tee 2
                                (i32.add
                                  (local.get 1)
                                  (i32.const 12)))))
                          (then
                            (call $_abort)))
                        (if  ;; label = @62
                          (i32.eq
                            (i32.load
                              (local.tee 6
                                (i32.add
                                  (local.get 0)
                                  (i32.const 8))))
                            (local.get 7))
                          (then
                            (i32.store
                              (local.get 2)
                              (local.get 0))
                            (i32.store
                              (local.get 6)
                              (local.get 1))
                            (local.set 10
                              (local.get 0)))
                          (else
                            (call $_abort)))))
                    (if  ;; label = @63
                      (local.get 8)
                      (then
                        (if  ;; label = @64
                          (i32.eq
                            (i32.load
                              (local.tee 1
                                (i32.add
                                  (i32.shl
                                    (local.tee 0
                                      (i32.load
                                        (i32.add
                                          (local.get 7)
                                          (i32.const 28))))
                                    (i32.const 2))
                                  (i32.const 3380))))
                            (local.get 7))
                          (then
                            (i32.store
                              (local.get 1)
                              (local.get 10))
                            (if  ;; label = @65
                              (i32.eqz
                                (local.get 10))
                              (then
                                (i32.store
                                  (i32.const 3080)
                                  (i32.and
                                    (i32.load
                                      (i32.const 3080))
                                    (i32.xor
                                      (i32.shl
                                        (i32.const 1)
                                        (local.get 0))
                                      (i32.const -1))))
                                (br 4 (;@61;)))))
                          (else
                            (if  ;; label = @66
                              (i32.gt_u
                                (i32.load
                                  (i32.const 3092))
                                (local.get 8))
                              (then
                                (call $_abort))
                              (else
                                (i32.store
                                  (select
                                    (local.tee 0
                                      (i32.add
                                        (local.get 8)
                                        (i32.const 16)))
                                    (i32.add
                                      (local.get 8)
                                      (i32.const 20))
                                    (i32.eq
                                      (i32.load
                                        (local.get 0))
                                      (local.get 7)))
                                  (local.get 10))
                                (br_if 4 (;@62;)
                                  (i32.eqz
                                    (local.get 10)))))))
                        (if  ;; label = @67
                          (i32.gt_u
                            (local.tee 1
                              (i32.load
                                (i32.const 3092)))
                            (local.get 10))
                          (then
                            (call $_abort)))
                        (i32.store
                          (i32.add
                            (local.get 10)
                            (i32.const 24))
                          (local.get 8))
                        (if  ;; label = @68
                          (local.tee 0
                            (i32.load
                              (local.tee 2
                                (i32.add
                                  (local.get 7)
                                  (i32.const 16)))))
                          (then
                            (if  ;; label = @69
                              (i32.gt_u
                                (local.get 1)
                                (local.get 0))
                              (then
                                (call $_abort))
                              (else
                                (i32.store
                                  (i32.add
                                    (local.get 10)
                                    (i32.const 16))
                                  (local.get 0))
                                (i32.store
                                  (i32.add
                                    (local.get 0)
                                    (i32.const 24))
                                  (local.get 10))))))
                        (if  ;; label = @70
                          (local.tee 0
                            (i32.load
                              (i32.add
                                (local.get 2)
                                (i32.const 4))))
                          (then
                            (if  ;; label = @71
                              (i32.gt_u
                                (i32.load
                                  (i32.const 3092))
                                (local.get 0))
                              (then
                                (call $_abort))
                              (else
                                (i32.store
                                  (i32.add
                                    (local.get 10)
                                    (i32.const 20))
                                  (local.get 0))
                                (i32.store
                                  (i32.add
                                    (local.get 0)
                                    (i32.const 24))
                                  (local.get 10)))))))))))
              (i32.store
                (i32.add
                  (local.get 3)
                  (i32.const 4))
                (i32.or
                  (local.get 5)
                  (i32.const 1)))
              (i32.store
                (i32.add
                  (local.get 4)
                  (local.get 5))
                (local.get 5))
              (if (result i32)  ;; label = @72
                (i32.eq
                  (i32.load
                    (i32.const 3096))
                  (local.get 3))
                (then
                  (i32.store
                    (i32.const 3084)
                    (local.get 5))
                  (return))
                (else
                  (local.get 5))))))
        (i32.const 3)))
    (if  ;; label = @73
      (i32.lt_u
        (local.get 4)
        (i32.const 256))
      (then
        (local.set 0
          (i32.add
            (i32.shl
              (local.get 1)
              (i32.const 3))
            (i32.const 3116)))
        (if  ;; label = @74
          (i32.and
            (local.tee 4
              (i32.load
                (i32.const 3076)))
            (local.tee 1
              (i32.shl
                (i32.const 1)
                (local.get 1))))
          (then
            (if  ;; label = @75
              (i32.gt_u
                (i32.load
                  (i32.const 3092))
                (local.tee 4
                  (i32.load
                    (local.tee 1
                      (i32.add
                        (local.get 0)
                        (i32.const 8))))))
              (then
                (call $_abort))
              (else
                (local.set 17
                  (local.get 1))
                (local.set 15
                  (local.get 4)))))
          (else
            (i32.store
              (i32.const 3076)
              (i32.or
                (local.get 1)
                (local.get 4)))
            (local.set 17
              (i32.add
                (local.get 0)
                (i32.const 8)))
            (local.set 15
              (local.get 0))))
        (i32.store
          (local.get 17)
          (local.get 3))
        (i32.store
          (i32.add
            (local.get 15)
            (i32.const 12))
          (local.get 3))
        (i32.store
          (i32.add
            (local.get 3)
            (i32.const 8))
          (local.get 15))
        (i32.store
          (i32.add
            (local.get 3)
            (i32.const 12))
          (local.get 0))
        (return)))
    (local.set 0
      (i32.add
        (i32.shl
          (local.tee 1
            (if (result i32)  ;; label = @76
              (local.tee 0
                (i32.shr_u
                  (local.get 4)
                  (i32.const 8)))
              (then
                (if (result i32)  ;; label = @77
                  (i32.gt_u
                    (local.get 4)
                    (i32.const 16777215))
                  (then
                    (i32.const 31))
                  (else
                    (local.set 0
                      (i32.and
                        (i32.shr_u
                          (i32.add
                            (local.tee 1
                              (i32.shl
                                (local.get 0)
                                (local.tee 5
                                  (i32.and
                                    (i32.shr_u
                                      (i32.add
                                        (local.get 0)
                                        (i32.const 1048320))
                                      (i32.const 16))
                                    (i32.const 8)))))
                            (i32.const 520192))
                          (i32.const 16))
                        (i32.const 4)))
                    (local.set 1
                      (i32.and
                        (i32.shr_u
                          (i32.add
                            (local.tee 2
                              (i32.shl
                                (local.get 1)
                                (local.get 0)))
                            (i32.const 245760))
                          (i32.const 16))
                        (i32.const 2)))
                    (i32.or
                      (i32.and
                        (i32.shr_u
                          (local.get 4)
                          (i32.add
                            (local.tee 0
                              (i32.add
                                (i32.sub
                                  (i32.const 14)
                                  (i32.or
                                    (i32.or
                                      (local.get 0)
                                      (local.get 5))
                                    (local.get 1)))
                                (i32.shr_u
                                  (i32.shl
                                    (local.get 2)
                                    (local.get 1))
                                  (i32.const 15))))
                            (i32.const 7)))
                        (i32.const 1))
                      (i32.shl
                        (local.get 0)
                        (i32.const 1))))))
              (else
                (i32.const 0))))
          (i32.const 2))
        (i32.const 3380)))
    (i32.store
      (i32.add
        (local.get 3)
        (i32.const 28))
      (local.get 1))
    (i32.store
      (i32.add
        (local.get 3)
        (i32.const 20))
      (i32.const 0))
    (i32.store
      (i32.add
        (local.get 3)
        (i32.const 16))
      (i32.const 0))
    (if  ;; label = @78
      (i32.and
        (local.tee 5
          (i32.load
            (i32.const 3080)))
        (local.tee 2
          (i32.shl
            (i32.const 1)
            (local.get 1))))
      (then
        (block  ;; label = @79
          (if  ;; label = @80
            (i32.eq
              (i32.and
                (i32.load
                  (i32.add
                    (local.tee 0
                      (i32.load
                        (local.get 0)))
                    (i32.const 4)))
                (i32.const -8))
              (local.get 4))
            (then
              (local.set 14
                (local.get 0)))
            (else
              (block  ;; label = @81
                (local.set 5
                  (i32.shl
                    (local.get 4)
                    (select
                      (i32.const 0)
                      (i32.sub
                        (i32.const 25)
                        (i32.shr_u
                          (local.get 1)
                          (i32.const 1)))
                      (i32.eq
                        (local.get 1)
                        (i32.const 31)))))
                (loop  ;; label = @82
                  (if  ;; label = @83
                    (local.tee 1
                      (i32.load
                        (local.tee 2
                          (i32.add
                            (i32.add
                              (local.get 0)
                              (i32.const 16))
                            (i32.shl
                              (i32.shr_u
                                (local.get 5)
                                (i32.const 31))
                              (i32.const 2))))))
                    (then
                      (local.set 5
                        (i32.shl
                          (local.get 5)
                          (i32.const 1)))
                      (if  ;; label = @84
                        (i32.eq
                          (i32.and
                            (i32.load
                              (i32.add
                                (local.get 1)
                                (i32.const 4)))
                            (i32.const -8))
                          (local.get 4))
                        (then
                          (local.set 14
                            (local.get 1))
                          (br 3 (;@81;)))
                        (else
                          (local.set 0
                            (local.get 1))
                          (br 2 (;@82;))))
                      (unreachable))))
                (if  ;; label = @85
                  (i32.gt_u
                    (i32.load
                      (i32.const 3092))
                    (local.get 2))
                  (then
                    (call $_abort))
                  (else
                    (i32.store
                      (local.get 2)
                      (local.get 3))
                    (i32.store
                      (i32.add
                        (local.get 3)
                        (i32.const 24))
                      (local.get 0))
                    (i32.store
                      (i32.add
                        (local.get 3)
                        (i32.const 12))
                      (local.get 3))
                    (i32.store
                      (i32.add
                        (local.get 3)
                        (i32.const 8))
                      (local.get 3))
                    (br 3 (;@82;)))))))
          (if  ;; label = @86
            (i32.and
              (i32.le_u
                (local.tee 0
                  (i32.load
                    (i32.const 3092)))
                (local.get 14))
              (i32.le_u
                (local.get 0)
                (local.tee 0
                  (i32.load
                    (local.tee 1
                      (i32.add
                        (local.get 14)
                        (i32.const 8)))))))
            (then
              (i32.store
                (i32.add
                  (local.get 0)
                  (i32.const 12))
                (local.get 3))
              (i32.store
                (local.get 1)
                (local.get 3))
              (i32.store
                (i32.add
                  (local.get 3)
                  (i32.const 8))
                (local.get 0))
              (i32.store
                (i32.add
                  (local.get 3)
                  (i32.const 12))
                (local.get 14))
              (i32.store
                (i32.add
                  (local.get 3)
                  (i32.const 24))
                (i32.const 0)))
            (else
              (call $_abort)))))
      (else
        (i32.store
          (i32.const 3080)
          (i32.or
            (local.get 2)
            (local.get 5)))
        (i32.store
          (local.get 0)
          (local.get 3))
        (i32.store
          (i32.add
            (local.get 3)
            (i32.const 24))
          (local.get 0))
        (i32.store
          (i32.add
            (local.get 3)
            (i32.const 12))
          (local.get 3))
        (i32.store
          (i32.add
            (local.get 3)
            (i32.const 8))
          (local.get 3))))
    (i32.store
      (i32.const 3108)
      (local.tee 0
        (i32.add
          (i32.load
            (i32.const 3108))
          (i32.const -1))))
    (if  ;; label = @87
      (local.get 0)
      (then
        (return)))
    (local.set 0
      (i32.const 3532))
    (loop  ;; label = @88
      (local.set 0
        (i32.add
          (local.tee 1
            (i32.load
              (local.get 0)))
          (i32.const 8)))
      (br_if 0 (;@88;)
        (local.get 1)))
    (i32.store
      (i32.const 3108)
      (i32.const -1)))
  (func $_memcpy (type 0) (param i32 i32 i32) (result i32)
    (local i32 i32 i32)
    (if  ;; label = @1
      (i32.ge_s
        (local.get 2)
        (i32.const 8192))
      (then
        (drop
          (call $_emscripten_memcpy_big
            (local.get 0)
            (local.get 1)
            (local.get 2)))
        (return
          (local.get 0))))
    (local.set 4
      (local.get 0))
    (local.set 3
      (i32.add
        (local.get 0)
        (local.get 2)))
    (if  ;; label = @2
      (i32.eq
        (i32.and
          (local.get 0)
          (i32.const 3))
        (i32.and
          (local.get 1)
          (i32.const 3)))
      (then
        (loop  ;; label = @3
          (if  ;; label = @4
            (i32.and
              (local.get 0)
              (i32.const 3))
            (then
              (if  ;; label = @5
                (i32.eqz
                  (local.get 2))
                (then
                  (return
                    (local.get 4))))
              (i32.store8
                (local.get 0)
                (i32.load8_s
                  (local.get 1)))
              (local.set 0
                (i32.add
                  (local.get 0)
                  (i32.const 1)))
              (local.set 1
                (i32.add
                  (local.get 1)
                  (i32.const 1)))
              (local.set 2
                (i32.sub
                  (local.get 2)
                  (i32.const 1)))
              (br 1 (;@4;)))))
        (local.set 5
          (i32.add
            (local.tee 2
              (i32.and
                (local.get 3)
                (i32.const -4)))
            (i32.const -64)))
        (loop  ;; label = @6
          (if  ;; label = @7
            (i32.le_s
              (local.get 0)
              (local.get 5))
            (then
              (i32.store
                (local.get 0)
                (i32.load
                  (local.get 1)))
              (i32.store offset=4
                (local.get 0)
                (i32.load offset=4
                  (local.get 1)))
              (i32.store offset=8
                (local.get 0)
                (i32.load offset=8
                  (local.get 1)))
              (i32.store offset=12
                (local.get 0)
                (i32.load offset=12
                  (local.get 1)))
              (i32.store offset=16
                (local.get 0)
                (i32.load offset=16
                  (local.get 1)))
              (i32.store offset=20
                (local.get 0)
                (i32.load offset=20
                  (local.get 1)))
              (i32.store offset=24
                (local.get 0)
                (i32.load offset=24
                  (local.get 1)))
              (i32.store offset=28
                (local.get 0)
                (i32.load offset=28
                  (local.get 1)))
              (i32.store offset=32
                (local.get 0)
                (i32.load offset=32
                  (local.get 1)))
              (i32.store offset=36
                (local.get 0)
                (i32.load offset=36
                  (local.get 1)))
              (i32.store offset=40
                (local.get 0)
                (i32.load offset=40
                  (local.get 1)))
              (i32.store offset=44
                (local.get 0)
                (i32.load offset=44
                  (local.get 1)))
              (i32.store offset=48
                (local.get 0)
                (i32.load offset=48
                  (local.get 1)))
              (i32.store offset=52
                (local.get 0)
                (i32.load offset=52
                  (local.get 1)))
              (i32.store offset=56
                (local.get 0)
                (i32.load offset=56
                  (local.get 1)))
              (i32.store offset=60
                (local.get 0)
                (i32.load offset=60
                  (local.get 1)))
              (local.set 0
                (i32.sub
                  (local.get 0)
                  (i32.const -64)))
              (local.set 1
                (i32.sub
                  (local.get 1)
                  (i32.const -64)))
              (br 1 (;@6;)))))
        (loop  ;; label = @8
          (if  ;; label = @9
            (i32.lt_s
              (local.get 0)
              (local.get 2))
            (then
              (i32.store
                (local.get 0)
                (i32.load
                  (local.get 1)))
              (local.set 0
                (i32.add
                  (local.get 0)
                  (i32.const 4)))
              (local.set 1
                (i32.add
                  (local.get 1)
                  (i32.const 4)))
              (br 1 (;@8;))))))
      (else
        (local.set 2
          (i32.sub
            (local.get 3)
            (i32.const 4)))
        (loop  ;; label = @10
          (if  ;; label = @11
            (i32.lt_s
              (local.get 0)
              (local.get 2))
            (then
              (i32.store8
                (local.get 0)
                (i32.load8_s
                  (local.get 1)))
              (i32.store8 offset=1
                (local.get 0)
                (i32.load8_s offset=1
                  (local.get 1)))
              (i32.store8 offset=2
                (local.get 0)
                (i32.load8_s offset=2
                  (local.get 1)))
              (i32.store8 offset=3
                (local.get 0)
                (i32.load8_s offset=3
                  (local.get 1)))
              (local.set 0
                (i32.add
                  (local.get 0)
                  (i32.const 4)))
              (local.set 1
                (i32.add
                  (local.get 1)
                  (i32.const 4)))
              (br 1 (;@10;)))))))
    (loop  ;; label = @12
      (if  ;; label = @13
        (i32.lt_s
          (local.get 0)
          (local.get 3))
        (then
          (i32.store8
            (local.get 0)
            (i32.load8_s
              (local.get 1)))
          (local.set 0
            (i32.add
              (local.get 0)
              (i32.const 1)))
          (local.set 1
            (i32.add
              (local.get 1)
              (i32.const 1)))
          (br 1 (;@12;)))))
    (local.get 4))
  (func $_memset (type 0) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32)
    (local.set 4
      (i32.add
        (local.get 0)
        (local.get 2)))
    (local.set 1
      (i32.and
        (local.get 1)
        (i32.const 255)))
    (if  ;; label = @1
      (i32.ge_s
        (local.get 2)
        (i32.const 67))
      (then
        (loop  ;; label = @2
          (if  ;; label = @3
            (i32.and
              (local.get 0)
              (i32.const 3))
            (then
              (i32.store8
                (local.get 0)
                (local.get 1))
              (local.set 0
                (i32.add
                  (local.get 0)
                  (i32.const 1)))
              (br 1 (;@2;)))))
        (local.set 3
          (i32.or
            (i32.or
              (i32.or
                (i32.shl
                  (local.get 1)
                  (i32.const 8))
                (local.get 1))
              (i32.shl
                (local.get 1)
                (i32.const 16)))
            (i32.shl
              (local.get 1)
              (i32.const 24))))
        (local.set 6
          (i32.add
            (local.tee 5
              (i32.and
                (local.get 4)
                (i32.const -4)))
            (i32.const -64)))
        (loop  ;; label = @4
          (if  ;; label = @5
            (i32.le_s
              (local.get 0)
              (local.get 6))
            (then
              (i32.store
                (local.get 0)
                (local.get 3))
              (i32.store offset=4
                (local.get 0)
                (local.get 3))
              (i32.store offset=8
                (local.get 0)
                (local.get 3))
              (i32.store offset=12
                (local.get 0)
                (local.get 3))
              (i32.store offset=16
                (local.get 0)
                (local.get 3))
              (i32.store offset=20
                (local.get 0)
                (local.get 3))
              (i32.store offset=24
                (local.get 0)
                (local.get 3))
              (i32.store offset=28
                (local.get 0)
                (local.get 3))
              (i32.store offset=32
                (local.get 0)
                (local.get 3))
              (i32.store offset=36
                (local.get 0)
                (local.get 3))
              (i32.store offset=40
                (local.get 0)
                (local.get 3))
              (i32.store offset=44
                (local.get 0)
                (local.get 3))
              (i32.store offset=48
                (local.get 0)
                (local.get 3))
              (i32.store offset=52
                (local.get 0)
                (local.get 3))
              (i32.store offset=56
                (local.get 0)
                (local.get 3))
              (i32.store offset=60
                (local.get 0)
                (local.get 3))
              (local.set 0
                (i32.sub
                  (local.get 0)
                  (i32.const -64)))
              (br 1 (;@4;)))))
        (loop  ;; label = @6
          (if  ;; label = @7
            (i32.lt_s
              (local.get 0)
              (local.get 5))
            (then
              (i32.store
                (local.get 0)
                (local.get 3))
              (local.set 0
                (i32.add
                  (local.get 0)
                  (i32.const 4)))
              (br 1 (;@6;)))))))
    (loop  ;; label = @8
      (if  ;; label = @9
        (i32.lt_s
          (local.get 0)
          (local.get 4))
        (then
          (i32.store8
            (local.get 0)
            (local.get 1))
          (local.set 0
            (i32.add
              (local.get 0)
              (i32.const 1)))
          (br 1 (;@8;)))))
    (i32.sub
      (local.get 4)
      (local.get 2)))
  (func $_sbrk (type 3) (param i32) (result i32)
    (local i32 i32 i32)
    (local.set 3
      (call $_emscripten_get_heap_size))
    (if  ;; label = @1
      (i32.or
        (i32.and
          (i32.lt_s
            (local.tee 1
              (i32.add
                (local.get 0)
                (local.tee 2
                  (i32.load
                    (global.get 1)))))
            (local.get 2))
          (i32.gt_s
            (local.get 0)
            (i32.const 0)))
        (i32.lt_s
          (local.get 1)
          (i32.const 0)))
      (then
        (drop
          (call $abortOnCannotGrowMemory
            (local.get 1)))
        (call $___setErrNo
          (i32.const 12))
        (return
          (i32.const -1))))
    (if  ;; label = @2
      (i32.gt_s
        (local.get 1)
        (local.get 3))
      (then
        (if  ;; label = @3
          (i32.eqz
            (call $_emscripten_resize_heap
              (local.get 1)))
          (then
            (call $___setErrNo
              (i32.const 12))
            (return
              (i32.const -1))))))
    (i32.store
      (global.get 1)
      (local.get 1))
    (local.get 2))
  (func $dynCall_ii (type 6) (param i32 i32) (result i32)
    (call_indirect (type 3)
      (local.get 1)
      (i32.and
        (local.get 0)
        (i32.const 1))))
  (func $dynCall_iidiiii (type 16) (param i32 i32 f64 i32 i32 i32 i32) (result i32)
    (call_indirect (type 1)
      (local.get 1)
      (local.get 2)
      (local.get 3)
      (local.get 4)
      (local.get 5)
      (local.get 6)
      (i32.add
        (i32.and
          (local.get 0)
          (i32.const 1))
        (i32.const 2))))
  (func $dynCall_iiii (type 11) (param i32 i32 i32 i32) (result i32)
    (call_indirect (type 0)
      (local.get 1)
      (local.get 2)
      (local.get 3)
      (i32.add
        (i32.and
          (local.get 0)
          (i32.const 3))
        (i32.const 4))))
  (func $dynCall_vii (type 12) (param i32 i32 i32)
    (call_indirect (type 2)
      (local.get 1)
      (local.get 2)
      (i32.add
        (i32.and
          (local.get 0)
          (i32.const 1))
        (i32.const 10))))
  (func $b0 (type 3) (param i32) (result i32)
    (call $abort
      (i32.const 0))
    (i32.const 0))
  (func $b1 (type 1) (param i32 f64 i32 i32 i32 i32) (result i32)
    (call $abort
      (i32.const 1))
    (i32.const 0))
  (func $b2 (type 0) (param i32 i32 i32) (result i32)
    (call $abort
      (i32.const 2))
    (i32.const 0))
  (func $b3 (type 4) (param i32 i64 i32) (result i64)
    (call $abort
      (i32.const 3))
    (i64.const 0))
  (func $b4 (type 2) (param i32 i32)
    (call $abort
      (i32.const 4)))
  (func $legalstub$dynCall_jiji (type 17) (param i32 i32 i32 i32 i32) (result i32)
    (local i64)
    (call $setTempRet0
      (i32.wrap_i64
        (i64.shr_u
          (local.tee 5
            (call_indirect (type 4)
              (local.get 1)
              (i64.or
                (i64.extend_i32_u
                  (local.get 2))
                (i64.shl
                  (i64.extend_i32_u
                    (local.get 3))
                  (i64.const 32)))
              (local.get 4)
              (i32.add
                (i32.and
                  (local.get 0)
                  (i32.const 1))
                (i32.const 8))))
          (i64.const 32))))
    (i32.wrap_i64
      (local.get 5)))
  (global (;2;) (mut i32) (i32.const 4816))
  (global (;3;) (mut i32) (i32.const 5247696))
  (export "___errno_location" (func $___errno_location))
  (export "_free" (func $_free))
  (export "_main" (func $_main))
  (export "_malloc" (func $_malloc))
  (export "_memcpy" (func $_memcpy))
  (export "_memset" (func $_memset))
  (export "_sbrk" (func $_sbrk))
  (export "dynCall_ii" (func $dynCall_ii))
  (export "dynCall_iidiiii" (func $dynCall_iidiiii))
  (export "dynCall_iiii" (func $dynCall_iiii))
  (export "dynCall_jiji" (func $legalstub$dynCall_jiji))
  (export "dynCall_vii" (func $dynCall_vii))
  (export "establishStackSpace" (func $establishStackSpace))
  (export "stackAlloc" (func $stackAlloc))
  (export "stackRestore" (func $stackRestore))
  (export "stackSave" (func $stackSave))
  (elem (;0;) (global.get 0) $b0 $___stdio_close $b1 $_fmt_fp $b2 $___stdout_write $___stdio_write $b2 $b3 $___stdio_seek $b4 $_pop_arg_long_double)
  (data (;0;) (i32.const 1024) "\11\00\0a\00\11\11\11\00\00\00\00\05\00\00\00\00\00\00\09\00\00\00\00\0b")
  (data (;1;) (i32.const 1056) "\11\00\0f\0a\11\11\11\03\0a\07\00\01\13\09\0b\0b\00\00\09\06\0b\00\00\0b\00\06\11\00\00\00\11\11\11")
  (data (;2;) (i32.const 1105) "\0b")
  (data (;3;) (i32.const 1114) "\11\00\0a\0a\11\11\11\00\0a\00\00\02\00\09\0b\00\00\00\09\00\0b\00\00\0b")
  (data (;4;) (i32.const 1163) "\0c")
  (data (;5;) (i32.const 1175) "\0c\00\00\00\00\0c\00\00\00\00\09\0c\00\00\00\00\00\0c\00\00\0c")
  (data (;6;) (i32.const 1221) "\0e")
  (data (;7;) (i32.const 1233) "\0d\00\00\00\04\0d\00\00\00\00\09\0e\00\00\00\00\00\0e\00\00\0e")
  (data (;8;) (i32.const 1279) "\10")
  (data (;9;) (i32.const 1291) "\0f\00\00\00\00\0f\00\00\00\00\09\10\00\00\00\00\00\10\00\00\10\00\00\12\00\00\00\12\12\12")
  (data (;10;) (i32.const 1346) "\12\00\00\00\12\12\12\00\00\00\00\00\00\09")
  (data (;11;) (i32.const 1395) "\0b")
  (data (;12;) (i32.const 1407) "\0a\00\00\00\00\0a\00\00\00\00\09\0b\00\00\00\00\00\0b\00\00\0b")
  (data (;13;) (i32.const 1453) "\0c")
  (data (;14;) (i32.const 1465) "\0c\00\00\00\00\0c\00\00\00\00\09\0c\00\00\00\00\00\0c\00\00\0c\00\000123456789ABCDEF\05")
  (data (;15;) (i32.const 1516) "\01")
  (data (;16;) (i32.const 1540) "\01\00\00\00\01\00\00\00\b8\07\00\00\00\04")
  (data (;17;) (i32.const 1564) "\01")
  (data (;18;) (i32.const 1579) "\0a\ff\ff\ff\ff")
  (data (;19;) (i32.const 1648) "\e0\05")
  (data (;20;) (i32.const 1840) "\e8\0b")
  (data (;21;) (i32.const 1896) "%s: sum = %f\0a\00-+   0X0x\00(null)\00-0X+0X 0X-0x+0x 0x\00inf\00INF\00nan\00NAN\00."))
