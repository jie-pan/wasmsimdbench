(module
 (type $0 (func (param i32 i32 i32) (result i32)))
 (type $1 (func (param i32 f64 i32 i32 i32 i32) (result i32)))
 (type $2 (func (param i32 i32)))
 (type $3 (func (param i32 i32) (result i32)))
 (type $4 (func (param i32) (result i32)))
 (type $5 (func))
 (type $6 (func (result i32)))
 (type $7 (func (param f64 i32) (result f64)))
 (type $8 (func (param i32 i32 i32)))
 (type $9 (func (param i32 i32 i32 i32 i32)))
 (type $10 (func (param i64 i32) (result i32)))
 (type $11 (func (param i64 i32 i32) (result i32)))
 (type $12 (func (param i32 i64 i32) (result i64)))
 (type $13 (func (param i32)))
 (type $14 (func (param i32 i32 f64 i32 i32 i32 i32) (result i32)))
 (type $15 (func (param i32 i32 i32 i32) (result i32)))
 (type $16 (func (param i32 i32 i32 i32 i32) (result i32)))
 (type $17 (func (param i32 i32 i32) (result f32)))
 (type $18 (func (param i32)))
 (type $19 (func (param i32 i32) (result i32)))
 (type $20 (func (param i32 i32)))
 (type $21 (func (param i32 i32 i32 i32) (result i32)))
 (type $22 (func (param i32 i32 i32)))
 (import "env" "memory" (memory $8 256 256))
 (data (i32.const 1024) "%s: ret = %f\n\00-+   0X0x\00(null)\00\00\11\00\n\00\11\11\11\00\00\00\00\05\00\00\00\00\00\00\t\00\00\00\00\0b")
 (data (i32.const 1088) "\11\00\0f\n\11\11\11\03\n\07\00\01\13\t\0b\0b\00\00\t\06\0b\00\00\0b\00\06\11\00\00\00\11\11\11")
 (data (i32.const 1137) "\0b")
 (data (i32.const 1146) "\11\00\n\n\11\11\11\00\n\00\00\02\00\t\0b\00\00\00\t\00\0b\00\00\0b")
 (data (i32.const 1195) "\0c")
 (data (i32.const 1207) "\0c\00\00\00\00\0c\00\00\00\00\t\0c\00\00\00\00\00\0c\00\00\0c")
 (data (i32.const 1253) "\0e")
 (data (i32.const 1265) "\0d\00\00\00\04\0d\00\00\00\00\t\0e\00\00\00\00\00\0e\00\00\0e")
 (data (i32.const 1311) "\10")
 (data (i32.const 1323) "\0f\00\00\00\00\0f\00\00\00\00\t\10\00\00\00\00\00\10\00\00\10\00\00\12\00\00\00\12\12\12")
 (data (i32.const 1378) "\12\00\00\00\12\12\12\00\00\00\00\00\00\t")
 (data (i32.const 1427) "\0b")
 (data (i32.const 1439) "\n\00\00\00\00\n\00\00\00\00\t\0b\00\00\00\00\00\0b\00\00\0b")
 (data (i32.const 1485) "\0c")
 (data (i32.const 1497) "\0c\00\00\00\00\0c\00\00\00\00\t\0c\00\00\00\00\00\0c\00\00\0c\00\000123456789ABCDEF-0X+0X 0X-0x+0x 0x\00inf\00INF\00nan\00NAN\00.\00\00\00\00p\0d")
 (data (i32.const 3380) "X\06")
 (data (i32.const 3440) "\05")
 (data (i32.const 3452) "\02")
 (data (i32.const 3476) "\03\00\00\00\04\00\00\00x\06\00\00\00\04")
 (data (i32.const 3500) "\01")
 (data (i32.const 3515) "\n\ff\ff\ff\ff")
 (import "env" "table" (table $timport$9 6 funcref))
 (elem (i32.const 1) $fmt_fp $__stdio_close $__stdout_write $__stdio_seek $__stdio_write)
 (import "env" "__syscall6" (func $__syscall6 (param i32 i32) (result i32)))
 (import "env" "__syscall146" (func $__syscall146 (param i32 i32) (result i32)))
 (import "env" "__syscall54" (func $__syscall54 (param i32 i32) (result i32)))
 (import "env" "__syscall140" (func $__syscall140 (param i32 i32) (result i32)))
 (import "env" "emscripten_memcpy_big" (func $emscripten_memcpy_big (param i32 i32 i32) (result i32)))
 (import "env" "sbrk" (func $sbrk (param i32) (result i32)))
 (import "env" "abort" (func $abort))
 (import "env" "setTempRet0" (func $setTempRet0 (param i32)))
 (global $global$0 (mut i32) (i32.const 5243904))
 (global $global$1 i32 (i32.const 3584))
 (export "__wasm_call_ctors" (func $__wasm_call_ctors))
 (export "__data_end" (global $global$1))
 (export "main" (func $main))
 (export "__errno_location" (func $__errno_location))
 (export "malloc" (func $malloc))
 (export "free" (func $free))
 (export "setThrew" (func $setThrew))
 (export "stackSave" (func $stackSave))
 (export "stackAlloc" (func $stackAlloc))
 (export "stackRestore" (func $stackRestore))
 (export "__growWasmMemory" (func $__growWasmMemory))
 (export "dynCall_iidiiii" (func $dynCall_iidiiii))
 (export "dynCall_ii" (func $dynCall_ii))
 (export "dynCall_iiii" (func $dynCall_iiii))
 (export "dynCall_jiji" (func $legalstub$dynCall_jiji))
 (func $__wasm_call_ctors (; 8 ;) (type $5)
  (nop)
 )
 (func $addfunc\28float*\2c\20float*\2c\20float*\2c\20int\29 (; 9 ;) (type $17) (param $0 i32) (param $1 i32) (param $2 i32) (result f32)
  (local $3 i32)
  (local $4 i32)
  (loop $label$1
   (v128.store align=1
    (i32.add
     (local.get $2)
     (local.tee $4
      (i32.shl
       (local.get $3)
       (i32.const 2)
      )
     )
    )
    (f32x4.add
     (v128.load align=1
      (i32.add
       (local.get $0)
       (local.get $4)
      )
     )
     (v128.load align=1
      (i32.add
       (local.get $1)
       (local.get $4)
      )
     )
    )
   )
   (br_if $label$1
    (i32.lt_s
     (local.tee $3
      (i32.add
       (local.get $3)
       (i32.const 4)
      )
     )
     (i32.const 1000)
    )
   )
  )
  (f32.const 1)
 )
 (func $main (; 10 ;) (type $3) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 f32)
  (local $6 v128)
  (local.set $3
   (local.tee $0
    (global.get $global$0)
   )
  )
  (global.set $global$0
   (local.tee $0
    (i32.and
     (i32.sub
      (local.get $0)
      (i32.const 12032)
     )
     (i32.const -32)
    )
   )
  )
  (loop $label$1
   (v128.store
    (i32.add
     (local.tee $4
      (i32.shl
       (local.get $2)
       (i32.const 2)
      )
     )
     (i32.add
      (local.get $0)
      (i32.const 4032)
     )
    )
    (local.tee $6
     (f32x4.splat
      (f32.const 0.10000000149011612)
     )
    )
   )
   (v128.store
    (i32.add
     (i32.add
      (local.get $0)
      (i32.const 8032)
     )
     (local.get $4)
    )
    (local.get $6)
   )
   (br_if $label$1
    (i32.ne
     (local.tee $2
      (i32.add
       (local.get $2)
       (i32.const 4)
      )
     )
     (i32.const 1000)
    )
   )
  )
  (local.set $2
   (i32.const 0)
  )
  (loop $label$2
   (local.set $5
    (f32.add
     (local.get $5)
     (call $addfunc\28float*\2c\20float*\2c\20float*\2c\20int\29
      (i32.add
       (local.get $0)
       (i32.const 8032)
      )
      (i32.add
       (local.get $0)
       (i32.const 4032)
      )
      (i32.add
       (local.get $0)
       (i32.const 32)
      )
     )
    )
   )
   (br_if $label$2
    (i32.ne
     (local.tee $2
      (i32.add
       (local.get $2)
       (i32.const 1)
      )
     )
     (i32.const 10000000)
    )
   )
  )
  (local.set $2
   (i32.load
    (local.get $1)
   )
  )
  (f64.store offset=24
   (local.get $0)
   (f64.promote_f32
    (local.get $5)
   )
  )
  (i32.store offset=16
   (local.get $0)
   (local.get $2)
  )
  (call $__small_printf
   (i32.add
    (local.get $0)
    (i32.const 16)
   )
  )
  (global.set $global$0
   (local.get $3)
  )
  (i32.const 0)
 )
 (func $__small_printf (; 11 ;) (type $18) (param $0 i32)
  (local $1 i32)
  (global.set $global$0
   (local.tee $1
    (i32.sub
     (global.get $global$0)
     (i32.const 16)
    )
   )
  )
  (i32.store offset=12
   (local.get $1)
   (local.get $0)
  )
  (call $__vfprintf_internal
   (i32.load
    (i32.const 1576)
   )
   (local.get $0)
  )
  (global.set $global$0
   (i32.add
    (local.get $1)
    (i32.const 16)
   )
  )
 )
 (func $isdigit (; 12 ;) (type $4) (param $0 i32) (result i32)
  (i32.lt_u
   (i32.add
    (local.get $0)
    (i32.const -48)
   )
   (i32.const 10)
  )
 )
 (func $wcrtomb (; 13 ;) (type $19) (param $0 i32) (param $1 i32) (result i32)
  (block $label$1
   (return
    (if (result i32)
     (local.get $0)
     (block (result i32)
      (br_if $label$1
       (i32.le_u
        (local.get $1)
        (i32.const 127)
       )
      )
      (block $label$3
       (if
        (i32.eqz
         (i32.load
          (i32.load
           (i32.const 3380)
          )
         )
        )
        (block
         (br_if $label$1
          (i32.eq
           (i32.and
            (local.get $1)
            (i32.const -128)
           )
           (i32.const 57216)
          )
         )
         (i32.store
          (i32.const 2680)
          (i32.const 84)
         )
         (br $label$3)
        )
       )
       (if
        (i32.le_u
         (local.get $1)
         (i32.const 2047)
        )
        (block
         (i32.store8 offset=1
          (local.get $0)
          (i32.or
           (i32.and
            (local.get $1)
            (i32.const 63)
           )
           (i32.const 128)
          )
         )
         (i32.store8
          (local.get $0)
          (i32.or
           (i32.shr_u
            (local.get $1)
            (i32.const 6)
           )
           (i32.const 192)
          )
         )
         (return
          (i32.const 2)
         )
        )
       )
       (block $label$6
        (if
         (i32.ge_u
          (local.get $1)
          (i32.const 55296)
         )
         (br_if $label$6
          (i32.ne
           (i32.and
            (local.get $1)
            (i32.const -8192)
           )
           (i32.const 57344)
          )
         )
        )
        (i32.store8 offset=2
         (local.get $0)
         (i32.or
          (i32.and
           (local.get $1)
           (i32.const 63)
          )
          (i32.const 128)
         )
        )
        (i32.store8
         (local.get $0)
         (i32.or
          (i32.shr_u
           (local.get $1)
           (i32.const 12)
          )
          (i32.const 224)
         )
        )
        (i32.store8 offset=1
         (local.get $0)
         (i32.or
          (i32.and
           (i32.shr_u
            (local.get $1)
            (i32.const 6)
           )
           (i32.const 63)
          )
          (i32.const 128)
         )
        )
        (return
         (i32.const 3)
        )
       )
       (if
        (i32.le_u
         (i32.add
          (local.get $1)
          (i32.const -65536)
         )
         (i32.const 1048575)
        )
        (block
         (i32.store8 offset=3
          (local.get $0)
          (i32.or
           (i32.and
            (local.get $1)
            (i32.const 63)
           )
           (i32.const 128)
          )
         )
         (i32.store8
          (local.get $0)
          (i32.or
           (i32.shr_u
            (local.get $1)
            (i32.const 18)
           )
           (i32.const 240)
          )
         )
         (i32.store8 offset=2
          (local.get $0)
          (i32.or
           (i32.and
            (i32.shr_u
             (local.get $1)
             (i32.const 6)
            )
            (i32.const 63)
           )
           (i32.const 128)
          )
         )
         (i32.store8 offset=1
          (local.get $0)
          (i32.or
           (i32.and
            (i32.shr_u
             (local.get $1)
             (i32.const 12)
            )
            (i32.const 63)
           )
           (i32.const 128)
          )
         )
         (return
          (i32.const 4)
         )
        )
       )
       (i32.store
        (i32.const 2680)
        (i32.const 84)
       )
      )
      (i32.const -1)
     )
     (i32.const 1)
    )
   )
  )
  (i32.store8
   (local.get $0)
   (local.get $1)
  )
  (i32.const 1)
 )
 (func $wctomb (; 14 ;) (type $3) (param $0 i32) (param $1 i32) (result i32)
  (if
   (i32.eqz
    (local.get $0)
   )
   (return
    (i32.const 0)
   )
  )
  (call $wcrtomb
   (local.get $0)
   (local.get $1)
  )
 )
 (func $frexp (; 15 ;) (type $7) (param $0 f64) (param $1 i32) (result f64)
  (local $2 i32)
  (local $3 i64)
  (if (result f64)
   (i32.ne
    (local.tee $2
     (i32.and
      (i32.wrap_i64
       (i64.shr_u
        (local.tee $3
         (i64.reinterpret_f64
          (local.get $0)
         )
        )
        (i64.const 52)
       )
      )
      (i32.const 2047)
     )
    )
    (i32.const 2047)
   )
   (block (result f64)
    (if
     (i32.eqz
      (local.get $2)
     )
     (block
      (i32.store
       (local.get $1)
       (if (result i32)
        (f64.eq
         (local.get $0)
         (f64.const 0)
        )
        (i32.const 0)
        (block (result i32)
         (local.set $0
          (call $frexp
           (f64.mul
            (local.get $0)
            (f64.const 18446744073709551615)
           )
           (local.get $1)
          )
         )
         (i32.add
          (i32.load
           (local.get $1)
          )
          (i32.const -64)
         )
        )
       )
      )
      (return
       (local.get $0)
      )
     )
    )
    (i32.store
     (local.get $1)
     (i32.add
      (local.get $2)
      (i32.const -1022)
     )
    )
    (f64.reinterpret_i64
     (i64.or
      (i64.and
       (local.get $3)
       (i64.const -9218868437227405313)
      )
      (i64.const 4602678819172646912)
     )
    )
   )
   (local.get $0)
  )
 )
 (func $__vfprintf_internal (; 16 ;) (type $20) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (global.set $global$0
   (local.tee $2
    (i32.sub
     (global.get $global$0)
     (i32.const 208)
    )
   )
  )
  (i32.store offset=204
   (local.get $2)
   (local.get $1)
  )
  (local.set $1
   (i32.const 0)
  )
  (call $memset
   (i32.add
    (local.get $2)
    (i32.const 160)
   )
   (i32.const 0)
   (i32.const 40)
  )
  (i32.store offset=200
   (local.get $2)
   (i32.load offset=204
    (local.get $2)
   )
  )
  (block $label$1
   (br_if $label$1
    (i32.lt_s
     (call $printf_core
      (i32.const 0)
      (i32.add
       (local.get $2)
       (i32.const 200)
      )
      (i32.add
       (local.get $2)
       (i32.const 80)
      )
      (i32.add
       (local.get $2)
       (i32.const 160)
      )
     )
     (i32.const 0)
    )
   )
   (if
    (i32.ge_s
     (i32.load offset=76
      (local.get $0)
     )
     (i32.const 0)
    )
    (local.set $1
     (i32.const 1)
    )
   )
   (local.set $3
    (i32.load
     (local.get $0)
    )
   )
   (if
    (i32.le_s
     (i32.load8_s offset=74
      (local.get $0)
     )
     (i32.const 0)
    )
    (i32.store
     (local.get $0)
     (i32.and
      (local.get $3)
      (i32.const -33)
     )
    )
   )
   (local.set $3
    (i32.and
     (local.get $3)
     (i32.const 32)
    )
   )
   (drop
    (block $label$4 (result i32)
     (if
      (i32.load offset=48
       (local.get $0)
      )
      (br $label$4
       (call $printf_core
        (local.get $0)
        (i32.add
         (local.get $2)
         (i32.const 200)
        )
        (i32.add
         (local.get $2)
         (i32.const 80)
        )
        (i32.add
         (local.get $2)
         (i32.const 160)
        )
       )
      )
     )
     (i32.store offset=48
      (local.get $0)
      (i32.const 80)
     )
     (i32.store offset=16
      (local.get $0)
      (i32.add
       (local.get $2)
       (i32.const 80)
      )
     )
     (i32.store offset=28
      (local.get $0)
      (local.get $2)
     )
     (i32.store offset=20
      (local.get $0)
      (local.get $2)
     )
     (local.set $4
      (i32.load offset=44
       (local.get $0)
      )
     )
     (i32.store offset=44
      (local.get $0)
      (local.get $2)
     )
     (drop
      (br_if $label$4
       (call $printf_core
        (local.get $0)
        (i32.add
         (local.get $2)
         (i32.const 200)
        )
        (i32.add
         (local.get $2)
         (i32.const 80)
        )
        (i32.add
         (local.get $2)
         (i32.const 160)
        )
       )
       (i32.eqz
        (local.get $4)
       )
      )
     )
     (drop
      (call_indirect (type $0)
       (local.get $0)
       (i32.const 0)
       (i32.const 0)
       (i32.load offset=36
        (local.get $0)
       )
      )
     )
     (i32.store offset=48
      (local.get $0)
      (i32.const 0)
     )
     (i32.store offset=44
      (local.get $0)
      (local.get $4)
     )
     (i32.store offset=28
      (local.get $0)
      (i32.const 0)
     )
     (i32.store offset=16
      (local.get $0)
      (i32.const 0)
     )
     (drop
      (i32.load offset=20
       (local.get $0)
      )
     )
     (i32.store offset=20
      (local.get $0)
      (i32.const 0)
     )
     (i32.const 0)
    )
   )
   (i32.store
    (local.get $0)
    (i32.or
     (i32.load
      (local.get $0)
     )
     (local.get $3)
    )
   )
   (br_if $label$1
    (i32.eqz
     (local.get $1)
    )
   )
  )
  (global.set $global$0
   (i32.add
    (local.get $2)
    (i32.const 208)
   )
  )
 )
 (func $printf_core (; 17 ;) (type $21) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 i32)
  (local $17 i32)
  (local $18 i32)
  (local $19 i32)
  (local $20 i64)
  (global.set $global$0
   (local.tee $5
    (i32.sub
     (global.get $global$0)
     (i32.const 80)
    )
   )
  )
  (i32.store offset=76
   (local.get $5)
   (i32.const 1024)
  )
  (local.set $19
   (i32.add
    (local.get $5)
    (i32.const 55)
   )
  )
  (local.set $16
   (i32.add
    (local.get $5)
    (i32.const 56)
   )
  )
  (block $label$1
   (block $label$2
    (loop $label$3
     (block $label$4
      (br_if $label$4
       (i32.lt_s
        (local.get $13)
        (i32.const 0)
       )
      )
      (if
       (i32.gt_s
        (local.get $4)
        (i32.sub
         (i32.const 2147483647)
         (local.get $13)
        )
       )
       (block
        (i32.store
         (i32.const 2680)
         (i32.const 75)
        )
        (local.set $13
         (i32.const -1)
        )
        (br $label$4)
       )
      )
      (local.set $13
       (i32.add
        (local.get $4)
        (local.get $13)
       )
      )
     )
     (local.set $4
      (local.tee $10
       (i32.load offset=76
        (local.get $5)
       )
      )
     )
     (block $label$6
      (block $label$7
       (block $label$8
        (local.set $15
         (block $label$9 (result i32)
          (block $label$10
           (block $label$11
            (block $label$12
             (block $label$13
              (block $label$14
               (block $label$15
                (block $label$16
                 (block $label$17
                  (block $label$18
                   (if
                    (local.tee $6
                     (i32.load8_u
                      (local.get $10)
                     )
                    )
                    (block
                     (loop $label$20
                      (block $label$21
                       (block $label$22
                        (block $label$23
                         (if
                          (i32.eqz
                           (local.tee $6
                            (i32.and
                             (local.get $6)
                             (i32.const 255)
                            )
                           )
                          )
                          (block
                           (local.set $6
                            (local.get $4)
                           )
                           (br $label$23)
                          )
                         )
                         (br_if $label$22
                          (i32.ne
                           (local.get $6)
                           (i32.const 37)
                          )
                         )
                         (local.set $6
                          (local.get $4)
                         )
                         (loop $label$25
                          (br_if $label$23
                           (i32.ne
                            (i32.load8_u offset=1
                             (local.get $4)
                            )
                            (i32.const 37)
                           )
                          )
                          (i32.store offset=76
                           (local.get $5)
                           (local.tee $7
                            (i32.add
                             (local.get $4)
                             (i32.const 2)
                            )
                           )
                          )
                          (local.set $6
                           (i32.add
                            (local.get $6)
                            (i32.const 1)
                           )
                          )
                          (local.set $9
                           (i32.load8_u offset=2
                            (local.get $4)
                           )
                          )
                          (local.set $4
                           (local.get $7)
                          )
                          (br_if $label$25
                           (i32.eq
                            (local.get $9)
                            (i32.const 37)
                           )
                          )
                         )
                        )
                        (local.set $4
                         (i32.sub
                          (local.get $6)
                          (local.get $10)
                         )
                        )
                        (if
                         (local.get $0)
                         (call $out
                          (local.get $0)
                          (local.get $10)
                          (local.get $4)
                         )
                        )
                        (br_if $label$3
                         (local.get $4)
                        )
                        (local.set $7
                         (call $isdigit
                          (i32.load8_s offset=1
                           (i32.load offset=76
                            (local.get $5)
                           )
                          )
                         )
                        )
                        (local.set $15
                         (i32.const -1)
                        )
                        (local.set $6
                         (i32.const 1)
                        )
                        (local.set $4
                         (i32.load offset=76
                          (local.get $5)
                         )
                        )
                        (block $label$27
                         (br_if $label$27
                          (i32.eqz
                           (local.get $7)
                          )
                         )
                         (br_if $label$27
                          (i32.ne
                           (i32.load8_u offset=2
                            (local.get $4)
                           )
                           (i32.const 36)
                          )
                         )
                         (local.set $15
                          (i32.add
                           (i32.load8_s offset=1
                            (local.get $4)
                           )
                           (i32.const -48)
                          )
                         )
                         (local.set $17
                          (i32.const 1)
                         )
                         (local.set $6
                          (i32.const 3)
                         )
                        )
                        (i32.store offset=76
                         (local.get $5)
                         (local.tee $4
                          (i32.add
                           (local.get $4)
                           (local.get $6)
                          )
                         )
                        )
                        (local.set $14
                         (i32.const 0)
                        )
                        (block $label$28
                         (if
                          (i32.gt_u
                           (local.tee $7
                            (i32.add
                             (local.tee $9
                              (i32.load8_s
                               (local.get $4)
                              )
                             )
                             (i32.const -32)
                            )
                           )
                           (i32.const 31)
                          )
                          (block
                           (local.set $6
                            (local.get $4)
                           )
                           (br $label$28)
                          )
                         )
                         (local.set $6
                          (local.get $4)
                         )
                         (br_if $label$28
                          (i32.eqz
                           (i32.and
                            (local.tee $7
                             (i32.shl
                              (i32.const 1)
                              (local.get $7)
                             )
                            )
                            (i32.const 75913)
                           )
                          )
                         )
                         (loop $label$30
                          (i32.store offset=76
                           (local.get $5)
                           (local.tee $6
                            (i32.add
                             (local.get $4)
                             (i32.const 1)
                            )
                           )
                          )
                          (local.set $14
                           (i32.or
                            (local.get $7)
                            (local.get $14)
                           )
                          )
                          (br_if $label$28
                           (i32.ge_u
                            (local.tee $7
                             (i32.add
                              (local.tee $9
                               (i32.load8_s offset=1
                                (local.get $4)
                               )
                              )
                              (i32.const -32)
                             )
                            )
                            (i32.const 32)
                           )
                          )
                          (local.set $4
                           (local.get $6)
                          )
                          (br_if $label$30
                           (i32.and
                            (local.tee $7
                             (i32.shl
                              (i32.const 1)
                              (local.get $7)
                             )
                            )
                            (i32.const 75913)
                           )
                          )
                         )
                        )
                        (block $label$31
                         (if
                          (i32.eq
                           (local.get $9)
                           (i32.const 42)
                          )
                          (block
                           (i32.store offset=76
                            (local.get $5)
                            (local.tee $4
                             (block $label$33 (result i32)
                              (block $label$34
                               (br_if $label$34
                                (i32.eqz
                                 (call $isdigit
                                  (i32.load8_s offset=1
                                   (local.get $6)
                                  )
                                 )
                                )
                               )
                               (br_if $label$34
                                (i32.ne
                                 (i32.load8_u offset=2
                                  (local.tee $6
                                   (i32.load offset=76
                                    (local.get $5)
                                   )
                                  )
                                 )
                                 (i32.const 36)
                                )
                               )
                               (i32.store
                                (i32.add
                                 (i32.add
                                  (i32.shl
                                   (i32.load8_s offset=1
                                    (local.get $6)
                                   )
                                   (i32.const 2)
                                  )
                                  (local.get $3)
                                 )
                                 (i32.const -192)
                                )
                                (i32.const 10)
                               )
                               (local.set $12
                                (i32.load
                                 (i32.add
                                  (i32.add
                                   (i32.shl
                                    (i32.load8_s offset=1
                                     (local.get $6)
                                    )
                                    (i32.const 3)
                                   )
                                   (local.get $2)
                                  )
                                  (i32.const -384)
                                 )
                                )
                               )
                               (local.set $17
                                (i32.const 1)
                               )
                               (br $label$33
                                (i32.add
                                 (local.get $6)
                                 (i32.const 3)
                                )
                               )
                              )
                              (br_if $label$2
                               (local.get $17)
                              )
                              (local.set $17
                               (i32.const 0)
                              )
                              (local.set $12
                               (i32.const 0)
                              )
                              (if
                               (local.get $0)
                               (block
                                (i32.store
                                 (local.get $1)
                                 (i32.add
                                  (local.tee $4
                                   (i32.load
                                    (local.get $1)
                                   )
                                  )
                                  (i32.const 4)
                                 )
                                )
                                (local.set $12
                                 (i32.load
                                  (local.get $4)
                                 )
                                )
                               )
                              )
                              (i32.add
                               (i32.load offset=76
                                (local.get $5)
                               )
                               (i32.const 1)
                              )
                             )
                            )
                           )
                           (br_if $label$31
                            (i32.gt_s
                             (local.get $12)
                             (i32.const -1)
                            )
                           )
                           (local.set $12
                            (i32.sub
                             (i32.const 0)
                             (local.get $12)
                            )
                           )
                           (local.set $14
                            (i32.or
                             (local.get $14)
                             (i32.const 8192)
                            )
                           )
                           (br $label$31)
                          )
                         )
                         (br_if $label$2
                          (i32.lt_s
                           (local.tee $12
                            (call $getint
                             (i32.add
                              (local.get $5)
                              (i32.const 76)
                             )
                            )
                           )
                           (i32.const 0)
                          )
                         )
                         (local.set $4
                          (i32.load offset=76
                           (local.get $5)
                          )
                         )
                        )
                        (local.set $8
                         (i32.const -1)
                        )
                        (block $label$36
                         (br_if $label$36
                          (i32.ne
                           (i32.load8_u
                            (local.get $4)
                           )
                           (i32.const 46)
                          )
                         )
                         (if
                          (i32.eq
                           (i32.load8_u offset=1
                            (local.get $4)
                           )
                           (i32.const 42)
                          )
                          (block
                           (block $label$38
                            (br_if $label$38
                             (i32.eqz
                              (call $isdigit
                               (i32.load8_s offset=2
                                (local.get $4)
                               )
                              )
                             )
                            )
                            (br_if $label$38
                             (i32.ne
                              (i32.load8_u offset=3
                               (local.tee $4
                                (i32.load offset=76
                                 (local.get $5)
                                )
                               )
                              )
                              (i32.const 36)
                             )
                            )
                            (i32.store
                             (i32.add
                              (i32.add
                               (i32.shl
                                (i32.load8_s offset=2
                                 (local.get $4)
                                )
                                (i32.const 2)
                               )
                               (local.get $3)
                              )
                              (i32.const -192)
                             )
                             (i32.const 10)
                            )
                            (local.set $8
                             (i32.load
                              (i32.add
                               (i32.add
                                (i32.shl
                                 (i32.load8_s offset=2
                                  (local.get $4)
                                 )
                                 (i32.const 3)
                                )
                                (local.get $2)
                               )
                               (i32.const -384)
                              )
                             )
                            )
                            (i32.store offset=76
                             (local.get $5)
                             (local.tee $4
                              (i32.add
                               (local.get $4)
                               (i32.const 4)
                              )
                             )
                            )
                            (br $label$36)
                           )
                           (br_if $label$2
                            (local.get $17)
                           )
                           (local.set $8
                            (if (result i32)
                             (local.get $0)
                             (block (result i32)
                              (i32.store
                               (local.get $1)
                               (i32.add
                                (local.tee $4
                                 (i32.load
                                  (local.get $1)
                                 )
                                )
                                (i32.const 4)
                               )
                              )
                              (i32.load
                               (local.get $4)
                              )
                             )
                             (i32.const 0)
                            )
                           )
                           (i32.store offset=76
                            (local.get $5)
                            (local.tee $4
                             (i32.add
                              (i32.load offset=76
                               (local.get $5)
                              )
                              (i32.const 2)
                             )
                            )
                           )
                           (br $label$36)
                          )
                         )
                         (i32.store offset=76
                          (local.get $5)
                          (i32.add
                           (local.get $4)
                           (i32.const 1)
                          )
                         )
                         (local.set $8
                          (call $getint
                           (i32.add
                            (local.get $5)
                            (i32.const 76)
                           )
                          )
                         )
                         (local.set $4
                          (i32.load offset=76
                           (local.get $5)
                          )
                         )
                        )
                        (local.set $6
                         (i32.const 0)
                        )
                        (loop $label$41
                         (local.set $7
                          (local.get $6)
                         )
                         (local.set $11
                          (i32.const -1)
                         )
                         (br_if $label$1
                          (i32.gt_u
                           (i32.add
                            (i32.load8_s
                             (local.get $4)
                            )
                            (i32.const -65)
                           )
                           (i32.const 57)
                          )
                         )
                         (i32.store offset=76
                          (local.get $5)
                          (local.tee $9
                           (i32.add
                            (local.get $4)
                            (i32.const 1)
                           )
                          )
                         )
                         (local.set $6
                          (i32.load8_s
                           (local.get $4)
                          )
                         )
                         (local.set $4
                          (local.get $9)
                         )
                         (br_if $label$41
                          (i32.lt_u
                           (i32.add
                            (local.tee $6
                             (i32.load8_u offset=991
                              (i32.add
                               (local.get $6)
                               (i32.mul
                                (local.get $7)
                                (i32.const 58)
                               )
                              )
                             )
                            )
                            (i32.const -1)
                           )
                           (i32.const 8)
                          )
                         )
                        )
                        (br_if $label$1
                         (i32.eqz
                          (local.get $6)
                         )
                        )
                        (block $label$42
                         (block $label$43
                          (block $label$44
                           (if
                            (i32.eq
                             (local.get $6)
                             (i32.const 19)
                            )
                            (block
                             (br_if $label$44
                              (i32.le_s
                               (local.get $15)
                               (i32.const -1)
                              )
                             )
                             (br $label$1)
                            )
                           )
                           (br_if $label$43
                            (i32.lt_s
                             (local.get $15)
                             (i32.const 0)
                            )
                           )
                           (i32.store
                            (i32.add
                             (local.get $3)
                             (i32.shl
                              (local.get $15)
                              (i32.const 2)
                             )
                            )
                            (local.get $6)
                           )
                           (i64.store offset=64
                            (local.get $5)
                            (i64.load
                             (i32.add
                              (local.get $2)
                              (i32.shl
                               (local.get $15)
                               (i32.const 3)
                              )
                             )
                            )
                           )
                          )
                          (local.set $4
                           (i32.const 0)
                          )
                          (br_if $label$3
                           (i32.eqz
                            (local.get $0)
                           )
                          )
                          (br $label$42)
                         )
                         (br_if $label$6
                          (i32.eqz
                           (local.get $0)
                          )
                         )
                         (call $pop_arg
                          (i32.sub
                           (local.get $5)
                           (i32.const -64)
                          )
                          (local.get $6)
                          (local.get $1)
                         )
                         (local.set $9
                          (i32.load offset=76
                           (local.get $5)
                          )
                         )
                        )
                        (local.set $6
                         (select
                          (local.tee $18
                           (i32.and
                            (local.get $14)
                            (i32.const -65537)
                           )
                          )
                          (local.get $14)
                          (i32.and
                           (local.get $14)
                           (i32.const 8192)
                          )
                         )
                        )
                        (local.set $11
                         (i32.const 0)
                        )
                        (local.set $15
                         (i32.const 1038)
                        )
                        (local.set $14
                         (local.get $16)
                        )
                        (br_if $label$21
                         (i32.le_u
                          (local.tee $9
                           (i32.add
                            (local.tee $4
                             (select
                              (select
                               (i32.and
                                (local.tee $4
                                 (i32.load8_s
                                  (i32.add
                                   (local.get $9)
                                   (i32.const -1)
                                  )
                                 )
                                )
                                (i32.const -33)
                               )
                               (local.get $4)
                               (i32.eq
                                (i32.and
                                 (local.get $4)
                                 (i32.const 15)
                                )
                                (i32.const 3)
                               )
                              )
                              (local.get $4)
                              (local.get $7)
                             )
                            )
                            (i32.const -88)
                           )
                          )
                          (i32.const 32)
                         )
                        )
                        (block $label$46
                         (local.set $7
                          (block $label$47 (result i32)
                           (block $label$48
                            (block $label$49
                             (if
                              (i32.gt_u
                               (local.tee $7
                                (i32.add
                                 (local.get $4)
                                 (i32.const -65)
                                )
                               )
                               (i32.const 6)
                              )
                              (block
                               (br_if $label$7
                                (i32.ne
                                 (local.get $4)
                                 (i32.const 83)
                                )
                               )
                               (br_if $label$49
                                (i32.eqz
                                 (local.get $8)
                                )
                               )
                               (br $label$47
                                (i32.load offset=64
                                 (local.get $5)
                                )
                               )
                              )
                             )
                             (br_table $label$7 $label$48 $label$7 $label$18
                              (i32.sub
                               (local.get $7)
                               (i32.const 1)
                              )
                             )
                            )
                            (local.set $4
                             (i32.const 0)
                            )
                            (call $pad
                             (local.get $0)
                             (i32.const 32)
                             (local.get $12)
                             (i32.const 0)
                             (local.get $6)
                            )
                            (br $label$46)
                           )
                           (i32.store offset=12
                            (local.get $5)
                            (i32.const 0)
                           )
                           (i64.store32 offset=8
                            (local.get $5)
                            (i64.load offset=64
                             (local.get $5)
                            )
                           )
                           (i32.store offset=64
                            (local.get $5)
                            (i32.add
                             (local.get $5)
                             (i32.const 8)
                            )
                           )
                           (local.set $8
                            (i32.const -1)
                           )
                           (i32.add
                            (local.get $5)
                            (i32.const 8)
                           )
                          )
                         )
                         (local.set $4
                          (i32.const 0)
                         )
                         (block $label$51
                          (loop $label$52
                           (br_if $label$51
                            (i32.eqz
                             (local.tee $9
                              (i32.load
                               (local.get $7)
                              )
                             )
                            )
                           )
                           (block $label$53
                            (br_if $label$53
                             (local.tee $10
                              (i32.lt_s
                               (local.tee $9
                                (call $wctomb
                                 (i32.add
                                  (local.get $5)
                                  (i32.const 4)
                                 )
                                 (local.get $9)
                                )
                               )
                               (i32.const 0)
                              )
                             )
                            )
                            (br_if $label$53
                             (i32.gt_u
                              (local.get $9)
                              (i32.sub
                               (local.get $8)
                               (local.get $4)
                              )
                             )
                            )
                            (local.set $7
                             (i32.add
                              (local.get $7)
                              (i32.const 4)
                             )
                            )
                            (br_if $label$52
                             (i32.gt_u
                              (local.get $8)
                              (local.tee $4
                               (i32.add
                                (local.get $4)
                                (local.get $9)
                               )
                              )
                             )
                            )
                            (br $label$51)
                           )
                          )
                          (local.set $11
                           (i32.const -1)
                          )
                          (br_if $label$1
                           (local.get $10)
                          )
                         )
                         (call $pad
                          (local.get $0)
                          (i32.const 32)
                          (local.get $12)
                          (local.get $4)
                          (local.get $6)
                         )
                         (if
                          (i32.eqz
                           (local.get $4)
                          )
                          (block
                           (local.set $4
                            (i32.const 0)
                           )
                           (br $label$46)
                          )
                         )
                         (local.set $9
                          (i32.const 0)
                         )
                         (local.set $7
                          (i32.load offset=64
                           (local.get $5)
                          )
                         )
                         (loop $label$55
                          (br_if $label$46
                           (i32.eqz
                            (local.tee $10
                             (i32.load
                              (local.get $7)
                             )
                            )
                           )
                          )
                          (br_if $label$46
                           (i32.gt_s
                            (local.tee $9
                             (i32.add
                              (local.tee $10
                               (call $wctomb
                                (i32.add
                                 (local.get $5)
                                 (i32.const 4)
                                )
                                (local.get $10)
                               )
                              )
                              (local.get $9)
                             )
                            )
                            (local.get $4)
                           )
                          )
                          (call $out
                           (local.get $0)
                           (i32.add
                            (local.get $5)
                            (i32.const 4)
                           )
                           (local.get $10)
                          )
                          (local.set $7
                           (i32.add
                            (local.get $7)
                            (i32.const 4)
                           )
                          )
                          (br_if $label$55
                           (i32.lt_u
                            (local.get $9)
                            (local.get $4)
                           )
                          )
                         )
                        )
                        (call $pad
                         (local.get $0)
                         (i32.const 32)
                         (local.get $12)
                         (local.get $4)
                         (i32.xor
                          (local.get $6)
                          (i32.const 8192)
                         )
                        )
                        (local.set $4
                         (select
                          (local.get $12)
                          (local.get $4)
                          (i32.gt_s
                           (local.get $12)
                           (local.get $4)
                          )
                         )
                        )
                        (br $label$3)
                       )
                       (i32.store offset=76
                        (local.get $5)
                        (local.tee $7
                         (i32.add
                          (local.get $4)
                          (i32.const 1)
                         )
                        )
                       )
                       (local.set $6
                        (i32.load8_u offset=1
                         (local.get $4)
                        )
                       )
                       (local.set $4
                        (local.get $7)
                       )
                       (br $label$20)
                      )
                     )
                     (br_table $label$7 $label$7 $label$7 $label$7 $label$7 $label$7 $label$7 $label$7 $label$18 $label$7 $label$16 $label$15 $label$18 $label$18 $label$18 $label$7 $label$15 $label$7 $label$7 $label$7 $label$7 $label$11 $label$14 $label$13 $label$7 $label$7 $label$17 $label$7 $label$10 $label$7 $label$7 $label$12
                      (i32.sub
                       (local.get $9)
                       (i32.const 1)
                      )
                     )
                    )
                   )
                   (local.set $11
                    (local.get $13)
                   )
                   (br_if $label$1
                    (local.get $0)
                   )
                   (br_if $label$6
                    (i32.eqz
                     (local.get $17)
                    )
                   )
                   (local.set $4
                    (i32.const 1)
                   )
                   (loop $label$56
                    (if
                     (local.tee $6
                      (i32.load
                       (i32.add
                        (local.get $3)
                        (i32.shl
                         (local.get $4)
                         (i32.const 2)
                        )
                       )
                      )
                     )
                     (block
                      (call $pop_arg
                       (i32.add
                        (local.get $2)
                        (i32.shl
                         (local.get $4)
                         (i32.const 3)
                        )
                       )
                       (local.get $6)
                       (local.get $1)
                      )
                      (local.set $11
                       (i32.const 1)
                      )
                      (br_if $label$56
                       (i32.ne
                        (local.tee $4
                         (i32.add
                          (local.get $4)
                          (i32.const 1)
                         )
                        )
                        (i32.const 10)
                       )
                      )
                      (br $label$1)
                     )
                    )
                   )
                   (local.set $11
                    (i32.const 1)
                   )
                   (br_if $label$1
                    (i32.gt_u
                     (local.get $4)
                     (i32.const 9)
                    )
                   )
                   (local.set $11
                    (i32.const -1)
                   )
                   (br_if $label$1
                    (i32.load
                     (i32.add
                      (local.get $3)
                      (i32.shl
                       (local.get $4)
                       (i32.const 2)
                      )
                     )
                    )
                   )
                   (loop $label$58
                    (if
                     (i32.ne
                      (local.tee $4
                       (i32.add
                        (local.get $4)
                        (i32.const 1)
                       )
                      )
                      (i32.const 10)
                     )
                     (br_if $label$58
                      (i32.eqz
                       (i32.load
                        (i32.add
                         (local.get $3)
                         (i32.shl
                          (local.get $4)
                          (i32.const 2)
                         )
                        )
                       )
                      )
                     )
                    )
                   )
                   (local.set $11
                    (select
                     (i32.const -1)
                     (i32.const 1)
                     (i32.lt_u
                      (local.get $4)
                      (i32.const 10)
                     )
                    )
                   )
                   (br $label$1)
                  )
                  (local.set $4
                   (call_indirect (type $1)
                    (local.get $0)
                    (f64.load offset=64
                     (local.get $5)
                    )
                    (local.get $12)
                    (local.get $8)
                    (local.get $6)
                    (local.get $4)
                    (i32.const 1)
                   )
                  )
                  (br $label$3)
                 )
                 (local.set $14
                  (select
                   (local.tee $4
                    (call $memchr
                     (local.tee $10
                      (select
                       (local.tee $4
                        (i32.load offset=64
                         (local.get $5)
                        )
                       )
                       (i32.const 1048)
                       (local.get $4)
                      )
                     )
                     (local.get $8)
                    )
                   )
                   (i32.add
                    (local.get $8)
                    (local.get $10)
                   )
                   (local.get $4)
                  )
                 )
                 (local.set $6
                  (local.get $18)
                 )
                 (local.set $8
                  (select
                   (i32.sub
                    (local.get $4)
                    (local.get $10)
                   )
                   (local.get $8)
                   (local.get $4)
                  )
                 )
                 (br $label$7)
                )
                (i64.store8 offset=55
                 (local.get $5)
                 (i64.load offset=64
                  (local.get $5)
                 )
                )
                (local.set $8
                 (i32.const 1)
                )
                (local.set $10
                 (local.get $19)
                )
                (local.set $6
                 (local.get $18)
                )
                (br $label$7)
               )
               (if
                (i64.le_s
                 (local.tee $20
                  (i64.load offset=64
                   (local.get $5)
                  )
                 )
                 (i64.const -1)
                )
                (block
                 (i64.store offset=64
                  (local.get $5)
                  (local.tee $20
                   (i64.sub
                    (i64.const 0)
                    (local.get $20)
                   )
                  )
                 )
                 (local.set $11
                  (i32.const 1)
                 )
                 (br $label$9
                  (i32.const 1038)
                 )
                )
               )
               (if
                (i32.and
                 (local.get $6)
                 (i32.const 2048)
                )
                (block
                 (local.set $11
                  (i32.const 1)
                 )
                 (br $label$9
                  (i32.const 1039)
                 )
                )
               )
               (br $label$9
                (select
                 (i32.const 1040)
                 (i32.const 1038)
                 (local.tee $11
                  (i32.and
                   (local.get $6)
                   (i32.const 1)
                  )
                 )
                )
               )
              )
              (local.set $10
               (call $fmt_o
                (i64.load offset=64
                 (local.get $5)
                )
                (local.get $16)
               )
              )
              (br_if $label$8
               (i32.eqz
                (i32.and
                 (local.get $6)
                 (i32.const 8)
                )
               )
              )
              (local.set $8
               (select
                (local.get $8)
                (i32.add
                 (local.tee $4
                  (i32.sub
                   (local.get $16)
                   (local.get $10)
                  )
                 )
                 (i32.const 1)
                )
                (i32.gt_s
                 (local.get $8)
                 (local.get $4)
                )
               )
              )
              (br $label$8)
             )
             (local.set $8
              (select
               (local.get $8)
               (i32.const 8)
               (i32.gt_u
                (local.get $8)
                (i32.const 8)
               )
              )
             )
             (local.set $6
              (i32.or
               (local.get $6)
               (i32.const 8)
              )
             )
             (local.set $4
              (i32.const 120)
             )
            )
            (local.set $10
             (call $fmt_x
              (i64.load offset=64
               (local.get $5)
              )
              (local.get $16)
              (i32.and
               (local.get $4)
               (i32.const 32)
              )
             )
            )
            (br_if $label$8
             (i32.eqz
              (i32.and
               (local.get $6)
               (i32.const 8)
              )
             )
            )
            (br_if $label$8
             (i64.eqz
              (i64.load offset=64
               (local.get $5)
              )
             )
            )
            (local.set $15
             (i32.add
              (i32.shr_u
               (local.get $4)
               (i32.const 4)
              )
              (i32.const 1038)
             )
            )
            (local.set $11
             (i32.const 2)
            )
            (br $label$8)
           )
           (local.set $4
            (i32.const 0)
           )
           (br_if $label$3
            (i32.gt_u
             (local.tee $6
              (i32.and
               (local.get $7)
               (i32.const 255)
              )
             )
             (i32.const 7)
            )
           )
           (block $label$62
            (block $label$63
             (block $label$64
              (block $label$65
               (block $label$66
                (block $label$67
                 (block $label$68
                  (br_table $label$67 $label$66 $label$65 $label$64 $label$3 $label$63 $label$62 $label$68
                   (i32.sub
                    (local.get $6)
                    (i32.const 1)
                   )
                  )
                 )
                 (i32.store
                  (i32.load offset=64
                   (local.get $5)
                  )
                  (local.get $13)
                 )
                 (br $label$3)
                )
                (i32.store
                 (i32.load offset=64
                  (local.get $5)
                 )
                 (local.get $13)
                )
                (br $label$3)
               )
               (i64.store
                (i32.load offset=64
                 (local.get $5)
                )
                (i64.extend_i32_s
                 (local.get $13)
                )
               )
               (br $label$3)
              )
              (i32.store16
               (i32.load offset=64
                (local.get $5)
               )
               (local.get $13)
              )
              (br $label$3)
             )
             (i32.store8
              (i32.load offset=64
               (local.get $5)
              )
              (local.get $13)
             )
             (br $label$3)
            )
            (i32.store
             (i32.load offset=64
              (local.get $5)
             )
             (local.get $13)
            )
            (br $label$3)
           )
           (i64.store
            (i32.load offset=64
             (local.get $5)
            )
            (i64.extend_i32_s
             (local.get $13)
            )
           )
           (br $label$3)
          )
          (local.set $20
           (i64.load offset=64
            (local.get $5)
           )
          )
          (i32.const 1038)
         )
        )
        (local.set $10
         (call $fmt_u
          (local.get $20)
          (local.get $16)
         )
        )
       )
       (local.set $6
        (select
         (i32.and
          (local.get $6)
          (i32.const -65537)
         )
         (local.get $6)
         (i32.gt_s
          (local.get $8)
          (i32.const -1)
         )
        )
       )
       (local.set $20
        (i64.load offset=64
         (local.get $5)
        )
       )
       (local.set $8
        (block $label$69 (result i32)
         (block $label$70
          (br_if $label$70
           (local.get $8)
          )
          (br_if $label$70
           (i32.eqz
            (i64.eqz
             (local.get $20)
            )
           )
          )
          (local.set $10
           (local.get $16)
          )
          (br $label$69
           (i32.const 0)
          )
         )
         (select
          (local.get $8)
          (local.tee $4
           (i32.add
            (i64.eqz
             (local.get $20)
            )
            (i32.sub
             (local.get $16)
             (local.get $10)
            )
           )
          )
          (i32.gt_s
           (local.get $8)
           (local.get $4)
          )
         )
        )
       )
      )
      (call $pad
       (local.get $0)
       (i32.const 32)
       (local.tee $4
        (select
         (local.tee $7
          (i32.add
           (local.get $11)
           (local.tee $14
            (select
             (local.tee $9
              (i32.sub
               (local.get $14)
               (local.get $10)
              )
             )
             (local.get $8)
             (i32.lt_s
              (local.get $8)
              (local.get $9)
             )
            )
           )
          )
         )
         (local.get $12)
         (i32.lt_s
          (local.get $12)
          (local.get $7)
         )
        )
       )
       (local.get $7)
       (local.get $6)
      )
      (call $out
       (local.get $0)
       (local.get $15)
       (local.get $11)
      )
      (call $pad
       (local.get $0)
       (i32.const 48)
       (local.get $4)
       (local.get $7)
       (i32.xor
        (local.get $6)
        (i32.const 65536)
       )
      )
      (call $pad
       (local.get $0)
       (i32.const 48)
       (local.get $14)
       (local.get $9)
       (i32.const 0)
      )
      (call $out
       (local.get $0)
       (local.get $10)
       (local.get $9)
      )
      (call $pad
       (local.get $0)
       (i32.const 32)
       (local.get $4)
       (local.get $7)
       (i32.xor
        (local.get $6)
        (i32.const 8192)
       )
      )
      (br $label$3)
     )
    )
    (local.set $11
     (i32.const 0)
    )
    (br $label$1)
   )
   (local.set $11
    (i32.const -1)
   )
  )
  (global.set $global$0
   (i32.add
    (local.get $5)
    (i32.const 80)
   )
  )
  (local.get $11)
 )
 (func $out (; 18 ;) (type $8) (param $0 i32) (param $1 i32) (param $2 i32)
  (if
   (i32.eqz
    (i32.and
     (i32.load8_u
      (local.get $0)
     )
     (i32.const 32)
    )
   )
   (call $__fwritex
    (local.get $1)
    (local.get $2)
    (local.get $0)
   )
  )
 )
 (func $getint (; 19 ;) (type $4) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (if
   (call $isdigit
    (i32.load8_s
     (i32.load
      (local.get $0)
     )
    )
   )
   (loop $label$2
    (local.set $3
     (i32.load8_s
      (local.tee $2
       (i32.load
        (local.get $0)
       )
      )
     )
    )
    (i32.store
     (local.get $0)
     (i32.add
      (local.get $2)
      (i32.const 1)
     )
    )
    (local.set $1
     (i32.add
      (i32.add
       (local.get $3)
       (i32.mul
        (local.get $1)
        (i32.const 10)
       )
      )
      (i32.const -48)
     )
    )
    (br_if $label$2
     (call $isdigit
      (i32.load8_s offset=1
       (local.get $2)
      )
     )
    )
   )
  )
  (local.get $1)
 )
 (func $pop_arg (; 20 ;) (type $22) (param $0 i32) (param $1 i32) (param $2 i32)
  (block $label$1
   (br_if $label$1
    (i32.gt_u
     (local.get $1)
     (i32.const 20)
    )
   )
   (br_if $label$1
    (i32.gt_u
     (local.tee $1
      (i32.add
       (local.get $1)
       (i32.const -9)
      )
     )
     (i32.const 9)
    )
   )
   (block $label$2
    (block $label$3
     (block $label$4
      (block $label$5
       (block $label$6
        (block $label$7
         (block $label$8
          (block $label$9
           (block $label$10
            (block $label$11
             (br_table $label$10 $label$9 $label$8 $label$7 $label$6 $label$5 $label$4 $label$3 $label$2 $label$11
              (i32.sub
               (local.get $1)
               (i32.const 1)
              )
             )
            )
            (i32.store
             (local.get $2)
             (i32.add
              (local.tee $1
               (i32.load
                (local.get $2)
               )
              )
              (i32.const 4)
             )
            )
            (i32.store
             (local.get $0)
             (i32.load
              (local.get $1)
             )
            )
            (return)
           )
           (i32.store
            (local.get $2)
            (i32.add
             (local.tee $1
              (i32.load
               (local.get $2)
              )
             )
             (i32.const 4)
            )
           )
           (i64.store
            (local.get $0)
            (i64.load32_s
             (local.get $1)
            )
           )
           (return)
          )
          (i32.store
           (local.get $2)
           (i32.add
            (local.tee $1
             (i32.load
              (local.get $2)
             )
            )
            (i32.const 4)
           )
          )
          (i64.store
           (local.get $0)
           (i64.load32_u
            (local.get $1)
           )
          )
          (return)
         )
         (i32.store
          (local.get $2)
          (i32.add
           (local.tee $1
            (i32.and
             (i32.add
              (i32.load
               (local.get $2)
              )
              (i32.const 7)
             )
             (i32.const -8)
            )
           )
           (i32.const 8)
          )
         )
         (i64.store
          (local.get $0)
          (i64.load
           (local.get $1)
          )
         )
         (return)
        )
        (i32.store
         (local.get $2)
         (i32.add
          (local.tee $1
           (i32.load
            (local.get $2)
           )
          )
          (i32.const 4)
         )
        )
        (i64.store
         (local.get $0)
         (i64.load16_s
          (local.get $1)
         )
        )
        (return)
       )
       (i32.store
        (local.get $2)
        (i32.add
         (local.tee $1
          (i32.load
           (local.get $2)
          )
         )
         (i32.const 4)
        )
       )
       (i64.store
        (local.get $0)
        (i64.load16_u
         (local.get $1)
        )
       )
       (return)
      )
      (i32.store
       (local.get $2)
       (i32.add
        (local.tee $1
         (i32.load
          (local.get $2)
         )
        )
        (i32.const 4)
       )
      )
      (i64.store
       (local.get $0)
       (i64.load8_s
        (local.get $1)
       )
      )
      (return)
     )
     (i32.store
      (local.get $2)
      (i32.add
       (local.tee $1
        (i32.load
         (local.get $2)
        )
       )
       (i32.const 4)
      )
     )
     (i64.store
      (local.get $0)
      (i64.load8_u
       (local.get $1)
      )
     )
     (return)
    )
    (i32.store
     (local.get $2)
     (i32.add
      (local.tee $1
       (i32.and
        (i32.add
         (i32.load
          (local.get $2)
         )
         (i32.const 7)
        )
        (i32.const -8)
       )
      )
      (i32.const 8)
     )
    )
    (i64.store
     (local.get $0)
     (i64.load
      (local.get $1)
     )
    )
    (return)
   )
   (call_indirect (type $2)
    (local.get $0)
    (local.get $2)
    (i32.const 0)
   )
  )
 )
 (func $pad (; 21 ;) (type $9) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32)
  (local $5 i32)
  (global.set $global$0
   (local.tee $5
    (i32.sub
     (global.get $global$0)
     (i32.const 256)
    )
   )
  )
  (block $label$1
   (br_if $label$1
    (i32.le_s
     (local.get $2)
     (local.get $3)
    )
   )
   (br_if $label$1
    (i32.and
     (local.get $4)
     (i32.const 73728)
    )
   )
   (call $memset
    (local.get $5)
    (local.get $1)
    (select
     (local.tee $4
      (i32.sub
       (local.get $2)
       (local.get $3)
      )
     )
     (i32.const 256)
     (local.tee $1
      (i32.lt_u
       (local.get $4)
       (i32.const 256)
      )
     )
    )
   )
   (call $out
    (local.get $0)
    (local.get $5)
    (if (result i32)
     (local.get $1)
     (local.get $4)
     (block (result i32)
      (local.set $2
       (i32.sub
        (local.get $2)
        (local.get $3)
       )
      )
      (loop $label$4
       (call $out
        (local.get $0)
        (local.get $5)
        (i32.const 256)
       )
       (br_if $label$4
        (i32.gt_u
         (local.tee $4
          (i32.add
           (local.get $4)
           (i32.const -256)
          )
         )
         (i32.const 255)
        )
       )
      )
      (i32.and
       (local.get $2)
       (i32.const 255)
      )
     )
    )
   )
  )
  (global.set $global$0
   (i32.add
    (local.get $5)
    (i32.const 256)
   )
  )
 )
 (func $fmt_o (; 22 ;) (type $10) (param $0 i64) (param $1 i32) (result i32)
  (if
   (i32.eqz
    (i64.eqz
     (local.get $0)
    )
   )
   (loop $label$2
    (i32.store8
     (local.tee $1
      (i32.add
       (local.get $1)
       (i32.const -1)
      )
     )
     (i32.or
      (i32.and
       (i32.wrap_i64
        (local.get $0)
       )
       (i32.const 7)
      )
      (i32.const 48)
     )
    )
    (br_if $label$2
     (i64.ne
      (local.tee $0
       (i64.shr_u
        (local.get $0)
        (i64.const 3)
       )
      )
      (i64.const 0)
     )
    )
   )
  )
  (local.get $1)
 )
 (func $fmt_x (; 23 ;) (type $11) (param $0 i64) (param $1 i32) (param $2 i32) (result i32)
  (if
   (i32.eqz
    (i64.eqz
     (local.get $0)
    )
   )
   (loop $label$2
    (i32.store8
     (local.tee $1
      (i32.add
       (local.get $1)
       (i32.const -1)
      )
     )
     (i32.or
      (i32.load8_u
       (i32.add
        (i32.and
         (i32.wrap_i64
          (local.get $0)
         )
         (i32.const 15)
        )
        (i32.const 1520)
       )
      )
      (local.get $2)
     )
    )
    (br_if $label$2
     (i64.ne
      (local.tee $0
       (i64.shr_u
        (local.get $0)
        (i64.const 4)
       )
      )
      (i64.const 0)
     )
    )
   )
  )
  (local.get $1)
 )
 (func $fmt_u (; 24 ;) (type $10) (param $0 i64) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  (block $label$1
   (if
    (i64.lt_u
     (local.get $0)
     (i64.const 4294967296)
    )
    (block
     (local.set $5
      (local.get $0)
     )
     (br $label$1)
    )
   )
   (loop $label$3
    (i32.store8
     (local.tee $1
      (i32.add
       (local.get $1)
       (i32.const -1)
      )
     )
     (i32.or
      (i32.wrap_i64
       (i64.sub
        (local.get $0)
        (i64.mul
         (local.tee $5
          (i64.div_u
           (local.get $0)
           (i64.const 10)
          )
         )
         (i64.const 10)
        )
       )
      )
      (i32.const 48)
     )
    )
    (local.set $2
     (i64.gt_u
      (local.get $0)
      (i64.const 42949672959)
     )
    )
    (local.set $0
     (local.get $5)
    )
    (br_if $label$3
     (local.get $2)
    )
   )
  )
  (if
   (local.tee $2
    (i32.wrap_i64
     (local.get $5)
    )
   )
   (loop $label$5
    (i32.store8
     (local.tee $1
      (i32.add
       (local.get $1)
       (i32.const -1)
      )
     )
     (i32.or
      (i32.sub
       (local.get $2)
       (i32.mul
        (local.tee $3
         (i32.div_u
          (local.get $2)
          (i32.const 10)
         )
        )
        (i32.const 10)
       )
      )
      (i32.const 48)
     )
    )
    (local.set $4
     (i32.gt_u
      (local.get $2)
      (i32.const 9)
     )
    )
    (local.set $2
     (local.get $3)
    )
    (br_if $label$5
     (local.get $4)
    )
   )
  )
  (local.get $1)
 )
 (func $fmt_fp (; 25 ;) (type $1) (param $0 i32) (param $1 f64) (param $2 i32) (param $3 i32) (param $4 i32) (param $5 i32) (result i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 i32)
  (local $17 i32)
  (local $18 i32)
  (local $19 i32)
  (local $20 i32)
  (local $21 i32)
  (local $22 i64)
  (local $23 i64)
  (local $24 f64)
  (global.set $global$0
   (local.tee $10
    (i32.sub
     (global.get $global$0)
     (i32.const 560)
    )
   )
  )
  (i32.store offset=44
   (local.get $10)
   (i32.const 0)
  )
  (local.set $19
   (block $label$1 (result i32)
    (if
     (i64.le_s
      (local.tee $22
       (i64.reinterpret_f64
        (local.get $1)
       )
      )
      (i64.const -1)
     )
     (block
      (local.set $22
       (i64.reinterpret_f64
        (local.tee $1
         (f64.neg
          (local.get $1)
         )
        )
       )
      )
      (local.set $17
       (i32.const 1)
      )
      (br $label$1
       (i32.const 1536)
      )
     )
    )
    (if
     (i32.and
      (local.get $4)
      (i32.const 2048)
     )
     (block
      (local.set $17
       (i32.const 1)
      )
      (br $label$1
       (i32.const 1539)
      )
     )
    )
    (select
     (i32.const 1542)
     (i32.const 1537)
     (local.tee $17
      (i32.and
       (local.get $4)
       (i32.const 1)
      )
     )
    )
   )
  )
  (block $label$4
   (if
    (i64.eq
     (i64.and
      (local.get $22)
      (i64.const 9218868437227405312)
     )
     (i64.const 9218868437227405312)
    )
    (block
     (call $pad
      (local.get $0)
      (i32.const 32)
      (local.get $2)
      (local.tee $12
       (i32.add
        (local.get $17)
        (i32.const 3)
       )
      )
      (i32.and
       (local.get $4)
       (i32.const -65537)
      )
     )
     (call $out
      (local.get $0)
      (local.get $19)
      (local.get $17)
     )
     (call $out
      (local.get $0)
      (select
       (select
        (i32.const 1563)
        (i32.const 1567)
        (local.tee $6
         (i32.and
          (i32.shr_u
           (local.get $5)
           (i32.const 5)
          )
          (i32.const 1)
         )
        )
       )
       (select
        (i32.const 1555)
        (i32.const 1559)
        (local.get $6)
       )
       (f64.ne
        (local.get $1)
        (local.get $1)
       )
      )
      (i32.const 3)
     )
     (call $pad
      (local.get $0)
      (i32.const 32)
      (local.get $2)
      (local.get $12)
      (i32.xor
       (local.get $4)
       (i32.const 8192)
      )
     )
     (br $label$4)
    )
   )
   (if
    (f64.ne
     (local.tee $1
      (f64.add
       (local.tee $1
        (call $frexp
         (local.get $1)
         (i32.add
          (local.get $10)
          (i32.const 44)
         )
        )
       )
       (local.get $1)
      )
     )
     (f64.const 0)
    )
    (i32.store offset=44
     (local.get $10)
     (i32.add
      (i32.load offset=44
       (local.get $10)
      )
      (i32.const -1)
     )
    )
   )
   (local.set $16
    (i32.add
     (local.get $10)
     (i32.const 16)
    )
   )
   (if
    (i32.eq
     (local.tee $20
      (i32.or
       (local.get $5)
       (i32.const 32)
      )
     )
     (i32.const 97)
    )
    (block
     (local.set $11
      (select
       (i32.add
        (local.get $19)
        (i32.const 9)
       )
       (local.get $19)
       (local.tee $8
        (i32.and
         (local.get $5)
         (i32.const 32)
        )
       )
      )
     )
     (block $label$8
      (br_if $label$8
       (i32.gt_u
        (local.get $3)
        (i32.const 11)
       )
      )
      (br_if $label$8
       (i32.eqz
        (local.tee $6
         (i32.sub
          (i32.const 12)
          (local.get $3)
         )
        )
       )
      )
      (local.set $24
       (f64.const 8)
      )
      (loop $label$9
       (local.set $24
        (f64.mul
         (local.get $24)
         (f64.const 16)
        )
       )
       (br_if $label$9
        (local.tee $6
         (i32.add
          (local.get $6)
          (i32.const -1)
         )
        )
       )
      )
      (if
       (i32.eq
        (i32.load8_u
         (local.get $11)
        )
        (i32.const 45)
       )
       (block
        (local.set $1
         (f64.neg
          (f64.add
           (local.get $24)
           (f64.sub
            (f64.neg
             (local.get $1)
            )
            (local.get $24)
           )
          )
         )
        )
        (br $label$8)
       )
      )
      (local.set $1
       (f64.sub
        (f64.add
         (local.get $1)
         (local.get $24)
        )
        (local.get $24)
       )
      )
     )
     (if
      (i32.eq
       (local.get $16)
       (local.tee $6
        (call $fmt_u
         (i64.extend_i32_u
          (i32.xor
           (i32.add
            (local.tee $6
             (i32.load offset=44
              (local.get $10)
             )
            )
            (local.tee $6
             (i32.shr_s
              (local.get $6)
              (i32.const 31)
             )
            )
           )
           (local.get $6)
          )
         )
         (local.get $16)
        )
       )
      )
      (block
       (i32.store8 offset=15
        (local.get $10)
        (i32.const 48)
       )
       (local.set $6
        (i32.add
         (local.get $10)
         (i32.const 15)
        )
       )
      )
     )
     (local.set $14
      (i32.or
       (local.get $17)
       (i32.const 2)
      )
     )
     (local.set $7
      (i32.load offset=44
       (local.get $10)
      )
     )
     (i32.store8
      (local.tee $13
       (i32.add
        (local.get $6)
        (i32.const -2)
       )
      )
      (i32.add
       (local.get $5)
       (i32.const 15)
      )
     )
     (i32.store8
      (i32.add
       (local.get $6)
       (i32.const -1)
      )
      (select
       (i32.const 45)
       (i32.const 43)
       (i32.lt_s
        (local.get $7)
        (i32.const 0)
       )
      )
     )
     (local.set $9
      (i32.and
       (local.get $4)
       (i32.const 8)
      )
     )
     (local.set $7
      (i32.add
       (local.get $10)
       (i32.const 16)
      )
     )
     (loop $label$12
      (i32.store8
       (local.tee $6
        (local.get $7)
       )
       (i32.or
        (i32.load8_u
         (i32.add
          (local.tee $7
           (block $label$13 (result i32)
            (if
             (f64.lt
              (f64.abs
               (local.get $1)
              )
              (f64.const 2147483648)
             )
             (br $label$13
              (i32.trunc_f64_s
               (local.get $1)
              )
             )
            )
            (i32.const -2147483648)
           )
          )
          (i32.const 1520)
         )
        )
        (local.get $8)
       )
      )
      (local.set $1
       (f64.mul
        (f64.sub
         (local.get $1)
         (f64.convert_i32_s
          (local.get $7)
         )
        )
        (f64.const 16)
       )
      )
      (block $label$15
       (br_if $label$15
        (i32.ne
         (i32.sub
          (local.tee $7
           (i32.add
            (local.get $6)
            (i32.const 1)
           )
          )
          (i32.add
           (local.get $10)
           (i32.const 16)
          )
         )
         (i32.const 1)
        )
       )
       (block $label$16
        (br_if $label$16
         (local.get $9)
        )
        (br_if $label$16
         (i32.gt_s
          (local.get $3)
          (i32.const 0)
         )
        )
        (br_if $label$15
         (f64.eq
          (local.get $1)
          (f64.const 0)
         )
        )
       )
       (i32.store8 offset=1
        (local.get $6)
        (i32.const 46)
       )
       (local.set $7
        (i32.add
         (local.get $6)
         (i32.const 2)
        )
       )
      )
      (br_if $label$12
       (f64.ne
        (local.get $1)
        (f64.const 0)
       )
      )
     )
     (call $pad
      (local.get $0)
      (i32.const 32)
      (local.get $2)
      (local.tee $12
       (i32.add
        (local.get $14)
        (local.tee $6
         (block $label$17 (result i32)
          (block $label$18
           (br_if $label$18
            (i32.eqz
             (local.get $3)
            )
           )
           (br_if $label$18
            (i32.ge_s
             (i32.add
              (i32.sub
               (local.get $7)
               (local.get $10)
              )
              (i32.const -18)
             )
             (local.get $3)
            )
           )
           (br $label$17
            (i32.add
             (i32.sub
              (i32.add
               (local.get $3)
               (local.get $16)
              )
              (local.get $13)
             )
             (i32.const 2)
            )
           )
          )
          (i32.add
           (i32.sub
            (i32.sub
             (local.get $16)
             (i32.add
              (local.get $10)
              (i32.const 16)
             )
            )
            (local.get $13)
           )
           (local.get $7)
          )
         )
        )
       )
      )
      (local.get $4)
     )
     (call $out
      (local.get $0)
      (local.get $11)
      (local.get $14)
     )
     (call $pad
      (local.get $0)
      (i32.const 48)
      (local.get $2)
      (local.get $12)
      (i32.xor
       (local.get $4)
       (i32.const 65536)
      )
     )
     (call $out
      (local.get $0)
      (i32.add
       (local.get $10)
       (i32.const 16)
      )
      (local.tee $7
       (i32.sub
        (local.get $7)
        (i32.add
         (local.get $10)
         (i32.const 16)
        )
       )
      )
     )
     (call $pad
      (local.get $0)
      (i32.const 48)
      (i32.sub
       (local.get $6)
       (i32.add
        (local.get $7)
        (local.tee $8
         (i32.sub
          (local.get $16)
          (local.get $13)
         )
        )
       )
      )
      (i32.const 0)
      (i32.const 0)
     )
     (call $out
      (local.get $0)
      (local.get $13)
      (local.get $8)
     )
     (call $pad
      (local.get $0)
      (i32.const 32)
      (local.get $2)
      (local.get $12)
      (i32.xor
       (local.get $4)
       (i32.const 8192)
      )
     )
     (br $label$4)
    )
   )
   (local.set $6
    (i32.lt_s
     (local.get $3)
     (i32.const 0)
    )
   )
   (block $label$19
    (if
     (f64.eq
      (local.get $1)
      (f64.const 0)
     )
     (block
      (local.set $9
       (i32.load offset=44
        (local.get $10)
       )
      )
      (br $label$19)
     )
    )
    (i32.store offset=44
     (local.get $10)
     (local.tee $9
      (i32.add
       (i32.load offset=44
        (local.get $10)
       )
       (i32.const -28)
      )
     )
    )
    (local.set $1
     (f64.mul
      (local.get $1)
      (f64.const 268435456)
     )
    )
   )
   (local.set $11
    (select
     (i32.const 6)
     (local.get $3)
     (local.get $6)
    )
   )
   (local.set $8
    (local.tee $15
     (select
      (i32.add
       (local.get $10)
       (i32.const 48)
      )
      (i32.add
       (local.get $10)
       (i32.const 336)
      )
      (i32.lt_s
       (local.get $9)
       (i32.const 0)
      )
     )
    )
   )
   (loop $label$21
    (i32.store
     (local.get $8)
     (local.tee $6
      (block $label$22 (result i32)
       (if
        (i32.and
         (f64.lt
          (local.get $1)
          (f64.const 4294967296)
         )
         (f64.ge
          (local.get $1)
          (f64.const 0)
         )
        )
        (br $label$22
         (i32.trunc_f64_u
          (local.get $1)
         )
        )
       )
       (i32.const 0)
      )
     )
    )
    (local.set $8
     (i32.add
      (local.get $8)
      (i32.const 4)
     )
    )
    (br_if $label$21
     (f64.ne
      (local.tee $1
       (f64.mul
        (f64.sub
         (local.get $1)
         (f64.convert_i32_u
          (local.get $6)
         )
        )
        (f64.const 1e9)
       )
      )
      (f64.const 0)
     )
    )
   )
   (block $label$24
    (if
     (i32.lt_s
      (local.get $9)
      (i32.const 1)
     )
     (block
      (local.set $6
       (local.get $8)
      )
      (local.set $7
       (local.get $15)
      )
      (br $label$24)
     )
    )
    (local.set $7
     (local.get $15)
    )
    (loop $label$26
     (local.set $9
      (select
       (local.get $9)
       (i32.const 29)
       (i32.lt_s
        (local.get $9)
        (i32.const 29)
       )
      )
     )
     (block $label$27
      (br_if $label$27
       (i32.lt_u
        (local.tee $6
         (i32.add
          (local.get $8)
          (i32.const -4)
         )
        )
        (local.get $7)
       )
      )
      (local.set $23
       (i64.extend_i32_u
        (local.get $9)
       )
      )
      (local.set $22
       (i64.const 0)
      )
      (loop $label$28
       (i64.store32
        (local.get $6)
        (i64.sub
         (local.tee $22
          (i64.add
           (i64.and
            (local.get $22)
            (i64.const 4294967295)
           )
           (i64.shl
            (i64.load32_u
             (local.get $6)
            )
            (local.get $23)
           )
          )
         )
         (i64.mul
          (local.tee $22
           (i64.div_u
            (local.get $22)
            (i64.const 1000000000)
           )
          )
          (i64.const 1000000000)
         )
        )
       )
       (br_if $label$28
        (i32.ge_u
         (local.tee $6
          (i32.add
           (local.get $6)
           (i32.const -4)
          )
         )
         (local.get $7)
        )
       )
      )
      (br_if $label$27
       (i32.eqz
        (local.tee $6
         (i32.wrap_i64
          (local.get $22)
         )
        )
       )
      )
      (i32.store
       (local.tee $7
        (i32.add
         (local.get $7)
         (i32.const -4)
        )
       )
       (local.get $6)
      )
     )
     (loop $label$29
      (if
       (i32.gt_u
        (local.tee $6
         (local.get $8)
        )
        (local.get $7)
       )
       (br_if $label$29
        (i32.eqz
         (i32.load
          (local.tee $8
           (i32.add
            (local.get $6)
            (i32.const -4)
           )
          )
         )
        )
       )
      )
     )
     (i32.store offset=44
      (local.get $10)
      (local.tee $9
       (i32.sub
        (i32.load offset=44
         (local.get $10)
        )
        (local.get $9)
       )
      )
     )
     (local.set $8
      (local.get $6)
     )
     (br_if $label$26
      (i32.gt_s
       (local.get $9)
       (i32.const 0)
      )
     )
    )
   )
   (if
    (i32.le_s
     (local.get $9)
     (i32.const -1)
    )
    (block
     (local.set $18
      (i32.add
       (i32.div_s
        (i32.add
         (local.get $11)
         (i32.const 25)
        )
        (i32.const 9)
       )
       (i32.const 1)
      )
     )
     (local.set $21
      (i32.eq
       (local.get $20)
       (i32.const 102)
      )
     )
     (loop $label$32
      (local.set $12
       (select
        (local.tee $8
         (i32.sub
          (i32.const 0)
          (local.get $9)
         )
        )
        (i32.const 9)
        (i32.lt_s
         (local.get $8)
         (i32.const 9)
        )
       )
      )
      (block $label$33
       (if
        (i32.ge_u
         (local.get $7)
         (local.get $6)
        )
        (block
         (local.set $7
          (select
           (local.get $7)
           (i32.add
            (local.get $7)
            (i32.const 4)
           )
           (i32.load
            (local.get $7)
           )
          )
         )
         (br $label$33)
        )
       )
       (local.set $13
        (i32.shr_u
         (i32.const 1000000000)
         (local.get $12)
        )
       )
       (local.set $14
        (i32.xor
         (i32.shl
          (i32.const -1)
          (local.get $12)
         )
         (i32.const -1)
        )
       )
       (local.set $9
        (i32.const 0)
       )
       (local.set $8
        (local.get $7)
       )
       (loop $label$35
        (i32.store
         (local.get $8)
         (i32.add
          (i32.shr_u
           (local.tee $3
            (i32.load
             (local.get $8)
            )
           )
           (local.get $12)
          )
          (local.get $9)
         )
        )
        (local.set $9
         (i32.mul
          (i32.and
           (local.get $3)
           (local.get $14)
          )
          (local.get $13)
         )
        )
        (br_if $label$35
         (i32.lt_u
          (local.tee $8
           (i32.add
            (local.get $8)
            (i32.const 4)
           )
          )
          (local.get $6)
         )
        )
       )
       (local.set $7
        (select
         (local.get $7)
         (i32.add
          (local.get $7)
          (i32.const 4)
         )
         (i32.load
          (local.get $7)
         )
        )
       )
       (br_if $label$33
        (i32.eqz
         (local.get $9)
        )
       )
       (i32.store
        (local.get $6)
        (local.get $9)
       )
       (local.set $6
        (i32.add
         (local.get $6)
         (i32.const 4)
        )
       )
      )
      (i32.store offset=44
       (local.get $10)
       (local.tee $9
        (i32.add
         (i32.load offset=44
          (local.get $10)
         )
         (local.get $12)
        )
       )
      )
      (local.set $6
       (select
        (i32.add
         (local.tee $8
          (select
           (local.get $15)
           (local.get $7)
           (local.get $21)
          )
         )
         (i32.shl
          (local.get $18)
          (i32.const 2)
         )
        )
        (local.get $6)
        (i32.gt_s
         (i32.shr_s
          (i32.sub
           (local.get $6)
           (local.get $8)
          )
          (i32.const 2)
         )
         (local.get $18)
        )
       )
      )
      (br_if $label$32
       (i32.lt_s
        (local.get $9)
        (i32.const 0)
       )
      )
     )
    )
   )
   (local.set $8
    (i32.const 0)
   )
   (block $label$36
    (br_if $label$36
     (i32.ge_u
      (local.get $7)
      (local.get $6)
     )
    )
    (local.set $8
     (i32.mul
      (i32.shr_s
       (i32.sub
        (local.get $15)
        (local.get $7)
       )
       (i32.const 2)
      )
      (i32.const 9)
     )
    )
    (local.set $9
     (i32.const 10)
    )
    (br_if $label$36
     (i32.lt_u
      (local.tee $3
       (i32.load
        (local.get $7)
       )
      )
      (i32.const 10)
     )
    )
    (loop $label$37
     (local.set $8
      (i32.add
       (local.get $8)
       (i32.const 1)
      )
     )
     (br_if $label$37
      (i32.ge_u
       (local.get $3)
       (local.tee $9
        (i32.mul
         (local.get $9)
         (i32.const 10)
        )
       )
      )
     )
    )
   )
   (if
    (i32.lt_s
     (local.tee $9
      (i32.sub
       (i32.sub
        (local.get $11)
        (select
         (i32.const 0)
         (local.get $8)
         (i32.eq
          (local.get $20)
          (i32.const 102)
         )
        )
       )
       (i32.and
        (i32.eq
         (local.get $20)
         (i32.const 103)
        )
        (i32.ne
         (local.get $11)
         (i32.const 0)
        )
       )
      )
     )
     (i32.add
      (i32.mul
       (i32.shr_s
        (i32.sub
         (local.get $6)
         (local.get $15)
        )
        (i32.const 2)
       )
       (i32.const 9)
      )
      (i32.const -9)
     )
    )
    (block
     (local.set $12
      (i32.add
       (i32.add
        (i32.shl
         (local.tee $13
          (i32.div_s
           (local.tee $3
            (i32.add
             (local.get $9)
             (i32.const 9216)
            )
           )
           (i32.const 9)
          )
         )
         (i32.const 2)
        )
        (local.get $15)
       )
       (i32.const -4092)
      )
     )
     (local.set $9
      (i32.const 10)
     )
     (if
      (i32.le_s
       (local.tee $3
        (i32.add
         (i32.sub
          (local.get $3)
          (i32.mul
           (local.get $13)
           (i32.const 9)
          )
         )
         (i32.const 1)
        )
       )
       (i32.const 8)
      )
      (loop $label$40
       (local.set $9
        (i32.mul
         (local.get $9)
         (i32.const 10)
        )
       )
       (br_if $label$40
        (i32.ne
         (local.tee $3
          (i32.add
           (local.get $3)
           (i32.const 1)
          )
         )
         (i32.const 9)
        )
       )
      )
     )
     (local.set $3
      (i32.sub
       (local.tee $13
        (i32.load
         (local.get $12)
        )
       )
       (i32.mul
        (local.tee $14
         (i32.div_u
          (local.get $13)
          (local.get $9)
         )
        )
        (local.get $9)
       )
      )
     )
     (block $label$41
      (if
       (i32.eq
        (local.get $6)
        (local.tee $18
         (i32.add
          (local.get $12)
          (i32.const 4)
         )
        )
       )
       (br_if $label$41
        (i32.eqz
         (local.get $3)
        )
       )
      )
      (local.set $14
       (i32.and
        (local.get $14)
        (i32.const 1)
       )
      )
      (local.set $24
       (f64.const 0.5)
      )
      (if
       (i32.ge_u
        (local.get $3)
        (local.tee $21
         (i32.shr_u
          (local.get $9)
          (i32.const 1)
         )
        )
       )
       (local.set $24
        (select
         (select
          (f64.const 1)
          (f64.const 1.5)
          (i32.eq
           (local.get $3)
           (local.get $21)
          )
         )
         (f64.const 1.5)
         (i32.eq
          (local.get $6)
          (local.get $18)
         )
        )
       )
      )
      (local.set $1
       (select
        (f64.const 9007199254740994)
        (f64.const 9007199254740992)
        (local.get $14)
       )
      )
      (block $label$44
       (br_if $label$44
        (i32.eqz
         (local.get $17)
        )
       )
       (br_if $label$44
        (i32.ne
         (i32.load8_u
          (local.get $19)
         )
         (i32.const 45)
        )
       )
       (local.set $24
        (f64.neg
         (local.get $24)
        )
       )
       (local.set $1
        (f64.neg
         (local.get $1)
        )
       )
      )
      (i32.store
       (local.get $12)
       (local.tee $3
        (i32.sub
         (local.get $13)
         (local.get $3)
        )
       )
      )
      (br_if $label$41
       (f64.eq
        (f64.add
         (local.get $1)
         (local.get $24)
        )
        (local.get $1)
       )
      )
      (i32.store
       (local.get $12)
       (local.tee $8
        (i32.add
         (local.get $3)
         (local.get $9)
        )
       )
      )
      (if
       (i32.ge_u
        (local.get $8)
        (i32.const 1000000000)
       )
       (loop $label$46
        (i32.store
         (local.get $12)
         (i32.const 0)
        )
        (if
         (i32.lt_u
          (local.tee $12
           (i32.add
            (local.get $12)
            (i32.const -4)
           )
          )
          (local.get $7)
         )
         (i32.store
          (local.tee $7
           (i32.add
            (local.get $7)
            (i32.const -4)
           )
          )
          (i32.const 0)
         )
        )
        (i32.store
         (local.get $12)
         (local.tee $8
          (i32.add
           (i32.load
            (local.get $12)
           )
           (i32.const 1)
          )
         )
        )
        (br_if $label$46
         (i32.gt_u
          (local.get $8)
          (i32.const 999999999)
         )
        )
       )
      )
      (local.set $8
       (i32.mul
        (i32.shr_s
         (i32.sub
          (local.get $15)
          (local.get $7)
         )
         (i32.const 2)
        )
        (i32.const 9)
       )
      )
      (local.set $9
       (i32.const 10)
      )
      (br_if $label$41
       (i32.lt_u
        (local.tee $3
         (i32.load
          (local.get $7)
         )
        )
        (i32.const 10)
       )
      )
      (loop $label$48
       (local.set $8
        (i32.add
         (local.get $8)
         (i32.const 1)
        )
       )
       (br_if $label$48
        (i32.ge_u
         (local.get $3)
         (local.tee $9
          (i32.mul
           (local.get $9)
           (i32.const 10)
          )
         )
        )
       )
      )
     )
     (local.set $6
      (select
       (local.tee $9
        (i32.add
         (local.get $12)
         (i32.const 4)
        )
       )
       (local.get $6)
       (i32.gt_u
        (local.get $6)
        (local.get $9)
       )
      )
     )
    )
   )
   (local.set $14
    (block $label$49 (result i32)
     (loop $label$50
      (drop
       (br_if $label$49
        (i32.const 0)
        (i32.le_u
         (local.tee $9
          (local.get $6)
         )
         (local.get $7)
        )
       )
      )
      (br_if $label$50
       (i32.eqz
        (i32.load
         (local.tee $6
          (i32.add
           (local.get $9)
           (i32.const -4)
          )
         )
        )
       )
      )
     )
     (i32.const 1)
    )
   )
   (block $label$51
    (br_if $label$51
     (i32.ne
      (local.get $20)
      (i32.const 103)
     )
    )
    (local.set $11
     (i32.add
      (select
       (i32.xor
        (local.get $8)
        (i32.const -1)
       )
       (i32.const -1)
       (local.tee $3
        (i32.and
         (i32.gt_s
          (local.tee $6
           (select
            (local.get $11)
            (i32.const 1)
            (local.get $11)
           )
          )
          (local.get $8)
         )
         (i32.gt_s
          (local.get $8)
          (i32.const -5)
         )
        )
       )
      )
      (local.get $6)
     )
    )
    (local.set $5
     (i32.add
      (select
       (i32.const -1)
       (i32.const -2)
       (local.get $3)
      )
      (local.get $5)
     )
    )
    (br_if $label$51
     (i32.and
      (local.get $4)
      (i32.const 8)
     )
    )
    (local.set $6
     (i32.const 9)
    )
    (block $label$52
     (br_if $label$52
      (i32.eqz
       (local.get $14)
      )
     )
     (br_if $label$52
      (i32.eqz
       (local.tee $12
        (i32.load
         (i32.add
          (local.get $9)
          (i32.const -4)
         )
        )
       )
      )
     )
     (local.set $3
      (i32.const 10)
     )
     (local.set $6
      (i32.const 0)
     )
     (br_if $label$52
      (i32.rem_u
       (local.get $12)
       (i32.const 10)
      )
     )
     (loop $label$53
      (local.set $6
       (i32.add
        (local.get $6)
        (i32.const 1)
       )
      )
      (br_if $label$53
       (i32.eqz
        (i32.rem_u
         (local.get $12)
         (local.tee $3
          (i32.mul
           (local.get $3)
           (i32.const 10)
          )
         )
        )
       )
      )
     )
    )
    (local.set $3
     (i32.add
      (i32.mul
       (i32.shr_s
        (i32.sub
         (local.get $9)
         (local.get $15)
        )
        (i32.const 2)
       )
       (i32.const 9)
      )
      (i32.const -9)
     )
    )
    (if
     (i32.eq
      (i32.or
       (local.get $5)
       (i32.const 32)
      )
      (i32.const 102)
     )
     (block
      (local.set $11
       (select
        (local.get $11)
        (local.tee $6
         (select
          (local.tee $6
           (i32.sub
            (local.get $3)
            (local.get $6)
           )
          )
          (i32.const 0)
          (i32.gt_s
           (local.get $6)
           (i32.const 0)
          )
         )
        )
        (i32.lt_s
         (local.get $11)
         (local.get $6)
        )
       )
      )
      (br $label$51)
     )
    )
    (local.set $11
     (select
      (local.get $11)
      (local.tee $6
       (select
        (local.tee $6
         (i32.sub
          (i32.add
           (local.get $3)
           (local.get $8)
          )
          (local.get $6)
         )
        )
        (i32.const 0)
        (i32.gt_s
         (local.get $6)
         (i32.const 0)
        )
       )
      )
      (i32.lt_s
       (local.get $11)
       (local.get $6)
      )
     )
    )
   )
   (local.set $3
    (select
     (i32.const 1)
     (i32.and
      (i32.shr_u
       (local.get $4)
       (i32.const 3)
      )
      (i32.const 1)
     )
     (local.get $11)
    )
   )
   (call $pad
    (local.get $0)
    (i32.const 32)
    (local.get $2)
    (local.tee $12
     (i32.add
      (i32.add
       (block $label$55 (result i32)
        (drop
         (br_if $label$55
          (select
           (local.get $8)
           (i32.const 0)
           (i32.gt_s
            (local.get $8)
            (i32.const 0)
           )
          )
          (i32.eq
           (local.tee $13
            (i32.or
             (local.get $5)
             (i32.const 32)
            )
           )
           (i32.const 102)
          )
         )
        )
        (if
         (i32.le_s
          (i32.sub
           (local.get $16)
           (local.tee $6
            (call $fmt_u
             (i64.extend_i32_u
              (i32.xor
               (i32.add
                (local.get $8)
                (local.tee $6
                 (i32.shr_s
                  (local.get $8)
                  (i32.const 31)
                 )
                )
               )
               (local.get $6)
              )
             )
             (local.get $16)
            )
           )
          )
          (i32.const 1)
         )
         (loop $label$57
          (i32.store8
           (local.tee $6
            (i32.add
             (local.get $6)
             (i32.const -1)
            )
           )
           (i32.const 48)
          )
          (br_if $label$57
           (i32.lt_s
            (i32.sub
             (local.get $16)
             (local.get $6)
            )
            (i32.const 2)
           )
          )
         )
        )
        (i32.store8
         (local.tee $18
          (i32.add
           (local.get $6)
           (i32.const -2)
          )
         )
         (local.get $5)
        )
        (i32.store8
         (i32.add
          (local.get $6)
          (i32.const -1)
         )
         (select
          (i32.const 45)
          (i32.const 43)
          (i32.lt_s
           (local.get $8)
           (i32.const 0)
          )
         )
        )
        (i32.sub
         (local.get $16)
         (local.get $18)
        )
       )
       (i32.add
        (i32.add
         (local.get $11)
         (local.get $17)
        )
        (local.get $3)
       )
      )
      (i32.const 1)
     )
    )
    (local.get $4)
   )
   (call $out
    (local.get $0)
    (local.get $19)
    (local.get $17)
   )
   (call $pad
    (local.get $0)
    (i32.const 48)
    (local.get $2)
    (local.get $12)
    (i32.xor
     (local.get $4)
     (i32.const 65536)
    )
   )
   (block $label$58
    (if
     (i32.eq
      (local.get $13)
      (i32.const 102)
     )
     (block
      (local.set $13
       (i32.or
        (i32.add
         (local.get $10)
         (i32.const 16)
        )
        (i32.const 8)
       )
      )
      (local.set $8
       (i32.or
        (i32.add
         (local.get $10)
         (i32.const 16)
        )
        (i32.const 9)
       )
      )
      (local.set $7
       (local.tee $3
        (select
         (local.get $15)
         (local.get $7)
         (i32.gt_u
          (local.get $7)
          (local.get $15)
         )
        )
       )
      )
      (loop $label$60
       (local.set $6
        (call $fmt_u
         (i64.load32_u
          (local.get $7)
         )
         (local.get $8)
        )
       )
       (block $label$61
        (if
         (i32.ne
          (local.get $3)
          (local.get $7)
         )
         (block
          (br_if $label$61
           (i32.le_u
            (local.get $6)
            (i32.add
             (local.get $10)
             (i32.const 16)
            )
           )
          )
          (loop $label$63
           (i32.store8
            (local.tee $6
             (i32.add
              (local.get $6)
              (i32.const -1)
             )
            )
            (i32.const 48)
           )
           (br_if $label$63
            (i32.gt_u
             (local.get $6)
             (i32.add
              (local.get $10)
              (i32.const 16)
             )
            )
           )
          )
          (br $label$61)
         )
        )
        (br_if $label$61
         (i32.ne
          (local.get $6)
          (local.get $8)
         )
        )
        (i32.store8 offset=24
         (local.get $10)
         (i32.const 48)
        )
        (local.set $6
         (local.get $13)
        )
       )
       (call $out
        (local.get $0)
        (local.get $6)
        (i32.sub
         (local.get $8)
         (local.get $6)
        )
       )
       (br_if $label$60
        (i32.le_u
         (local.tee $7
          (i32.add
           (local.get $7)
           (i32.const 4)
          )
         )
         (local.get $15)
        )
       )
      )
      (if
       (i32.or
        (i32.and
         (local.get $4)
         (i32.const 8)
        )
        (local.get $11)
       )
       (call $out
        (local.get $0)
        (i32.const 1571)
        (i32.const 1)
       )
      )
      (block $label$65
       (br_if $label$65
        (i32.ge_u
         (local.get $7)
         (local.get $9)
        )
       )
       (br_if $label$65
        (i32.lt_s
         (local.get $11)
         (i32.const 1)
        )
       )
       (loop $label$66
        (if
         (i32.gt_u
          (local.tee $6
           (call $fmt_u
            (i64.load32_u
             (local.get $7)
            )
            (local.get $8)
           )
          )
          (i32.add
           (local.get $10)
           (i32.const 16)
          )
         )
         (loop $label$68
          (i32.store8
           (local.tee $6
            (i32.add
             (local.get $6)
             (i32.const -1)
            )
           )
           (i32.const 48)
          )
          (br_if $label$68
           (i32.gt_u
            (local.get $6)
            (i32.add
             (local.get $10)
             (i32.const 16)
            )
           )
          )
         )
        )
        (call $out
         (local.get $0)
         (local.get $6)
         (select
          (local.get $11)
          (i32.const 9)
          (i32.lt_s
           (local.get $11)
           (i32.const 9)
          )
         )
        )
        (local.set $11
         (i32.add
          (local.get $11)
          (i32.const -9)
         )
        )
        (br_if $label$65
         (i32.ge_u
          (local.tee $7
           (i32.add
            (local.get $7)
            (i32.const 4)
           )
          )
          (local.get $9)
         )
        )
        (br_if $label$66
         (i32.gt_s
          (local.get $11)
          (i32.const 0)
         )
        )
       )
      )
      (call $pad
       (local.get $0)
       (i32.const 48)
       (i32.add
        (local.get $11)
        (i32.const 9)
       )
       (i32.const 9)
       (i32.const 0)
      )
      (br $label$58)
     )
    )
    (block $label$69
     (br_if $label$69
      (i32.lt_s
       (local.get $11)
       (i32.const 0)
      )
     )
     (local.set $13
      (select
       (local.get $9)
       (i32.add
        (local.get $7)
        (i32.const 4)
       )
       (local.get $14)
      )
     )
     (local.set $14
      (i32.and
       (local.get $4)
       (i32.const 8)
      )
     )
     (local.set $15
      (i32.or
       (i32.add
        (local.get $10)
        (i32.const 16)
       )
       (i32.const 8)
      )
     )
     (local.set $9
      (i32.or
       (i32.add
        (local.get $10)
        (i32.const 16)
       )
       (i32.const 9)
      )
     )
     (local.set $8
      (local.get $7)
     )
     (loop $label$70
      (if
       (i32.eq
        (local.get $9)
        (local.tee $6
         (call $fmt_u
          (i64.load32_u
           (local.get $8)
          )
          (local.get $9)
         )
        )
       )
       (block
        (i32.store8 offset=24
         (local.get $10)
         (i32.const 48)
        )
        (local.set $6
         (local.get $15)
        )
       )
      )
      (block $label$72
       (if
        (i32.ne
         (local.get $7)
         (local.get $8)
        )
        (block
         (br_if $label$72
          (i32.le_u
           (local.get $6)
           (i32.add
            (local.get $10)
            (i32.const 16)
           )
          )
         )
         (loop $label$74
          (i32.store8
           (local.tee $6
            (i32.add
             (local.get $6)
             (i32.const -1)
            )
           )
           (i32.const 48)
          )
          (br_if $label$74
           (i32.gt_u
            (local.get $6)
            (i32.add
             (local.get $10)
             (i32.const 16)
            )
           )
          )
         )
         (br $label$72)
        )
       )
       (call $out
        (local.get $0)
        (local.get $6)
        (i32.const 1)
       )
       (local.set $6
        (i32.add
         (local.get $6)
         (i32.const 1)
        )
       )
       (if
        (i32.eqz
         (local.get $14)
        )
        (br_if $label$72
         (i32.lt_s
          (local.get $11)
          (i32.const 1)
         )
        )
       )
       (call $out
        (local.get $0)
        (i32.const 1571)
        (i32.const 1)
       )
      )
      (call $out
       (local.get $0)
       (local.get $6)
       (select
        (local.tee $3
         (i32.sub
          (local.get $9)
          (local.get $6)
         )
        )
        (local.get $11)
        (i32.gt_s
         (local.get $11)
         (local.get $3)
        )
       )
      )
      (local.set $11
       (i32.sub
        (local.get $11)
        (local.get $3)
       )
      )
      (br_if $label$69
       (i32.ge_u
        (local.tee $8
         (i32.add
          (local.get $8)
          (i32.const 4)
         )
        )
        (local.get $13)
       )
      )
      (br_if $label$70
       (i32.gt_s
        (local.get $11)
        (i32.const -1)
       )
      )
     )
    )
    (call $pad
     (local.get $0)
     (i32.const 48)
     (i32.add
      (local.get $11)
      (i32.const 18)
     )
     (i32.const 18)
     (i32.const 0)
    )
    (call $out
     (local.get $0)
     (local.get $18)
     (i32.sub
      (local.get $16)
      (local.get $18)
     )
    )
   )
   (call $pad
    (local.get $0)
    (i32.const 32)
    (local.get $2)
    (local.get $12)
    (i32.xor
     (local.get $4)
     (i32.const 8192)
    )
   )
  )
  (global.set $global$0
   (i32.add
    (local.get $10)
    (i32.const 560)
   )
  )
  (select
   (local.get $2)
   (local.get $12)
   (i32.lt_s
    (local.get $12)
    (local.get $2)
   )
  )
 )
 (func $__syscall_ret (; 26 ;) (type $4) (param $0 i32) (result i32)
  (if (result i32)
   (i32.ge_u
    (local.get $0)
    (i32.const -4095)
   )
   (block (result i32)
    (i32.store
     (i32.const 2680)
     (i32.sub
      (i32.const 0)
      (local.get $0)
     )
    )
    (i32.const -1)
   )
   (local.get $0)
  )
 )
 (func $__stdio_close (; 27 ;) (type $4) (param $0 i32) (result i32)
  (local $1 i32)
  (global.set $global$0
   (local.tee $1
    (i32.sub
     (global.get $global$0)
     (i32.const 16)
    )
   )
  )
  (i32.store
   (local.get $1)
   (i32.load offset=60
    (local.get $0)
   )
  )
  (local.set $0
   (call $__syscall_ret
    (call $__syscall6
     (i32.const 6)
     (local.get $1)
    )
   )
  )
  (global.set $global$0
   (i32.add
    (local.get $1)
    (i32.const 16)
   )
  )
  (local.get $0)
 )
 (func $__towrite (; 28 ;) (type $4) (param $0 i32) (result i32)
  (local $1 i32)
  (i32.store8 offset=74
   (local.get $0)
   (i32.or
    (i32.add
     (local.tee $1
      (i32.load8_u offset=74
       (local.get $0)
      )
     )
     (i32.const -1)
    )
    (local.get $1)
   )
  )
  (if
   (i32.and
    (local.tee $1
     (i32.load
      (local.get $0)
     )
    )
    (i32.const 8)
   )
   (block
    (i32.store
     (local.get $0)
     (i32.or
      (local.get $1)
      (i32.const 32)
     )
    )
    (return
     (i32.const -1)
    )
   )
  )
  (i64.store offset=4 align=4
   (local.get $0)
   (i64.const 0)
  )
  (i32.store offset=28
   (local.get $0)
   (local.tee $1
    (i32.load offset=44
     (local.get $0)
    )
   )
  )
  (i32.store offset=20
   (local.get $0)
   (local.get $1)
  )
  (i32.store offset=16
   (local.get $0)
   (i32.add
    (local.get $1)
    (i32.load offset=48
     (local.get $0)
    )
   )
  )
  (i32.const 0)
 )
 (func $__fwritex (; 29 ;) (type $22) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (block $label$1
   (if
    (i32.lt_u
     (i32.sub
      (if (result i32)
       (local.tee $3
        (i32.load offset=16
         (local.get $2)
        )
       )
       (local.get $3)
       (block (result i32)
        (br_if $label$1
         (call $__towrite
          (local.get $2)
         )
        )
        (i32.load offset=16
         (local.get $2)
        )
       )
      )
      (local.tee $4
       (i32.load offset=20
        (local.get $2)
       )
      )
     )
     (local.get $1)
    )
    (block
     (drop
      (call_indirect (type $0)
       (local.get $2)
       (local.get $0)
       (local.get $1)
       (i32.load offset=36
        (local.get $2)
       )
      )
     )
     (return)
    )
   )
   (block $label$5
    (br_if $label$5
     (i32.lt_s
      (i32.load8_s offset=75
       (local.get $2)
      )
      (i32.const 0)
     )
    )
    (local.set $5
     (local.get $1)
    )
    (loop $label$6
     (br_if $label$5
      (i32.eqz
       (local.tee $3
        (local.get $5)
       )
      )
     )
     (br_if $label$6
      (i32.ne
       (i32.load8_u
        (i32.add
         (local.get $0)
         (local.tee $5
          (i32.add
           (local.get $3)
           (i32.const -1)
          )
         )
        )
       )
       (i32.const 10)
      )
     )
    )
    (br_if $label$1
     (i32.lt_u
      (call_indirect (type $0)
       (local.get $2)
       (local.get $0)
       (local.get $3)
       (i32.load offset=36
        (local.get $2)
       )
      )
      (local.get $3)
     )
    )
    (local.set $1
     (i32.sub
      (local.get $1)
      (local.get $3)
     )
    )
    (local.set $0
     (i32.add
      (local.get $0)
      (local.get $3)
     )
    )
    (local.set $4
     (i32.load offset=20
      (local.get $2)
     )
    )
   )
   (call $memcpy
    (local.get $4)
    (local.get $0)
    (local.get $1)
   )
   (i32.store offset=20
    (local.get $2)
    (i32.add
     (i32.load offset=20
      (local.get $2)
     )
     (local.get $1)
    )
   )
  )
 )
 (func $__stdio_write (; 30 ;) (type $0) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (global.set $global$0
   (local.tee $3
    (i32.sub
     (global.get $global$0)
     (i32.const 48)
    )
   )
  )
  (i32.store offset=32
   (local.get $3)
   (local.tee $4
    (i32.load offset=28
     (local.get $0)
    )
   )
  )
  (local.set $6
   (i32.load offset=20
    (local.get $0)
   )
  )
  (i32.store offset=44
   (local.get $3)
   (local.get $2)
  )
  (i32.store offset=40
   (local.get $3)
   (local.get $1)
  )
  (i32.store offset=36
   (local.get $3)
   (local.tee $1
    (i32.sub
     (local.get $6)
     (local.get $4)
    )
   )
  )
  (local.set $4
   (i32.load offset=60
    (local.get $0)
   )
  )
  (local.set $7
   (i32.const 2)
  )
  (i32.store offset=24
   (local.get $3)
   (i32.const 2)
  )
  (i32.store offset=16
   (local.get $3)
   (local.get $4)
  )
  (i32.store offset=20
   (local.get $3)
   (i32.add
    (local.get $3)
    (i32.const 32)
   )
  )
  (local.set $4
   (block $label$1 (result i32)
    (if
     (i32.ne
      (local.tee $8
       (i32.add
        (local.get $1)
        (local.get $2)
       )
      )
      (local.tee $4
       (call $__syscall_ret
        (call $__syscall146
         (i32.const 146)
         (i32.add
          (local.get $3)
          (i32.const 16)
         )
        )
       )
      )
     )
     (block
      (local.set $1
       (i32.add
        (local.get $3)
        (i32.const 32)
       )
      )
      (loop $label$3
       (if
        (i32.le_s
         (local.get $4)
         (i32.const -1)
        )
        (block
         (i32.store offset=28
          (local.get $0)
          (i32.const 0)
         )
         (i64.store offset=16
          (local.get $0)
          (i64.const 0)
         )
         (i32.store
          (local.get $0)
          (i32.or
           (i32.load
            (local.get $0)
           )
           (i32.const 32)
          )
         )
         (drop
          (br_if $label$1
           (i32.const 0)
           (i32.eq
            (local.get $7)
            (i32.const 2)
           )
          )
         )
         (br $label$1
          (i32.sub
           (local.get $2)
           (i32.load offset=4
            (local.get $1)
           )
          )
         )
        )
       )
       (i32.store
        (local.tee $1
         (select
          (i32.add
           (local.get $1)
           (i32.const 8)
          )
          (local.get $1)
          (local.tee $6
           (i32.gt_u
            (local.get $4)
            (local.tee $5
             (i32.load offset=4
              (local.get $1)
             )
            )
           )
          )
         )
        )
        (i32.add
         (local.tee $5
          (i32.sub
           (local.get $4)
           (select
            (local.get $5)
            (i32.const 0)
            (local.get $6)
           )
          )
         )
         (i32.load
          (local.get $1)
         )
        )
       )
       (i32.store offset=4
        (local.get $1)
        (i32.sub
         (i32.load offset=4
          (local.get $1)
         )
         (local.get $5)
        )
       )
       (local.set $5
        (i32.load offset=60
         (local.get $0)
        )
       )
       (i32.store offset=8
        (local.get $3)
        (local.tee $7
         (i32.sub
          (local.get $7)
          (local.get $6)
         )
        )
       )
       (i32.store offset=4
        (local.get $3)
        (local.get $1)
       )
       (i32.store
        (local.get $3)
        (local.get $5)
       )
       (br_if $label$3
        (i32.ne
         (local.tee $8
          (i32.sub
           (local.get $8)
           (local.get $4)
          )
         )
         (local.tee $4
          (call $__syscall_ret
           (call $__syscall146
            (i32.const 146)
            (local.get $3)
           )
          )
         )
        )
       )
      )
     )
    )
    (i32.store offset=28
     (local.get $0)
     (local.tee $1
      (i32.load offset=44
       (local.get $0)
      )
     )
    )
    (i32.store offset=20
     (local.get $0)
     (local.get $1)
    )
    (i32.store offset=16
     (local.get $0)
     (i32.add
      (local.get $1)
      (i32.load offset=48
       (local.get $0)
      )
     )
    )
    (local.get $2)
   )
  )
  (global.set $global$0
   (i32.add
    (local.get $3)
    (i32.const 48)
   )
  )
  (local.get $4)
 )
 (func $__stdout_write (; 31 ;) (type $0) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (global.set $global$0
   (local.tee $3
    (i32.sub
     (global.get $global$0)
     (i32.const 32)
    )
   )
  )
  (i32.store offset=36
   (local.get $0)
   (i32.const 5)
  )
  (block $label$1
   (br_if $label$1
    (i32.and
     (i32.load8_u
      (local.get $0)
     )
     (i32.const 64)
    )
   )
   (local.set $4
    (i32.load offset=60
     (local.get $0)
    )
   )
   (i32.store offset=4
    (local.get $3)
    (i32.const 21523)
   )
   (i32.store
    (local.get $3)
    (local.get $4)
   )
   (i32.store offset=8
    (local.get $3)
    (i32.add
     (local.get $3)
     (i32.const 24)
    )
   )
   (br_if $label$1
    (i32.eqz
     (call $__syscall54
      (i32.const 54)
      (local.get $3)
     )
    )
   )
   (i32.store8 offset=75
    (local.get $0)
    (i32.const 255)
   )
  )
  (local.set $0
   (call $__stdio_write
    (local.get $0)
    (local.get $1)
    (local.get $2)
   )
  )
  (global.set $global$0
   (i32.add
    (local.get $3)
    (i32.const 32)
   )
  )
  (local.get $0)
 )
 (func $__stdio_seek (; 32 ;) (type $12) (param $0 i32) (param $1 i64) (param $2 i32) (result i64)
  (local $3 i32)
  (global.set $global$0
   (local.tee $3
    (i32.sub
     (global.get $global$0)
     (i32.const 32)
    )
   )
  )
  (local.set $0
   (i32.load offset=60
    (local.get $0)
   )
  )
  (i32.store offset=16
   (local.get $3)
   (local.get $2)
  )
  (i32.store
   (local.get $3)
   (local.get $0)
  )
  (i64.store32 offset=8
   (local.get $3)
   (local.get $1)
  )
  (i64.store32 offset=4
   (local.get $3)
   (i64.shr_u
    (local.get $1)
    (i64.const 32)
   )
  )
  (i32.store offset=12
   (local.get $3)
   (i32.add
    (local.get $3)
    (i32.const 24)
   )
  )
  (local.set $1
   (block $label$1 (result i64)
    (if
     (i32.ge_s
      (call $__syscall_ret
       (call $__syscall140
        (i32.const 140)
        (local.get $3)
       )
      )
      (i32.const 0)
     )
     (br $label$1
      (i64.load offset=24
       (local.get $3)
      )
     )
    )
    (i64.store offset=24
     (local.get $3)
     (i64.const -1)
    )
    (i64.const -1)
   )
  )
  (global.set $global$0
   (i32.add
    (local.get $3)
    (i32.const 32)
   )
  )
  (local.get $1)
 )
 (func $__errno_location (; 33 ;) (type $6) (result i32)
  (i32.const 2680)
 )
 (func $memchr (; 34 ;) (type $19) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local.set $2
   (i32.ne
    (local.get $1)
    (i32.const 0)
   )
  )
  (block $label$1
   (block $label$2
    (block $label$3
     (block $label$4
      (br_if $label$4
       (i32.eqz
        (local.get $1)
       )
      )
      (br_if $label$4
       (i32.eqz
        (i32.and
         (local.get $0)
         (i32.const 3)
        )
       )
      )
      (loop $label$5
       (br_if $label$3
        (i32.eqz
         (i32.load8_u
          (local.get $0)
         )
        )
       )
       (local.set $0
        (i32.add
         (local.get $0)
         (i32.const 1)
        )
       )
       (local.set $2
        (i32.ne
         (local.tee $1
          (i32.add
           (local.get $1)
           (i32.const -1)
          )
         )
         (i32.const 0)
        )
       )
       (br_if $label$4
        (i32.eqz
         (local.get $1)
        )
       )
       (br_if $label$5
        (i32.and
         (local.get $0)
         (i32.const 3)
        )
       )
      )
     )
     (br_if $label$2
      (i32.eqz
       (local.get $2)
      )
     )
    )
    (br_if $label$1
     (i32.eqz
      (i32.load8_u
       (local.get $0)
      )
     )
    )
    (block $label$6
     (if
      (i32.ge_u
       (local.get $1)
       (i32.const 4)
      )
      (loop $label$8
       (br_if $label$6
        (i32.and
         (i32.and
          (i32.xor
           (local.tee $2
            (i32.load
             (local.get $0)
            )
           )
           (i32.const -1)
          )
          (i32.add
           (local.get $2)
           (i32.const -16843009)
          )
         )
         (i32.const -2139062144)
        )
       )
       (local.set $0
        (i32.add
         (local.get $0)
         (i32.const 4)
        )
       )
       (br_if $label$8
        (i32.gt_u
         (local.tee $1
          (i32.add
           (local.get $1)
           (i32.const -4)
          )
         )
         (i32.const 3)
        )
       )
      )
     )
     (br_if $label$2
      (i32.eqz
       (local.get $1)
      )
     )
    )
    (loop $label$9
     (br_if $label$1
      (i32.eqz
       (i32.load8_u
        (local.get $0)
       )
      )
     )
     (local.set $0
      (i32.add
       (local.get $0)
       (i32.const 1)
      )
     )
     (br_if $label$9
      (local.tee $1
       (i32.add
        (local.get $1)
        (i32.const -1)
       )
      )
     )
    )
   )
   (return
    (i32.const 0)
   )
  )
  (local.get $0)
 )
 (func $memset (; 35 ;) (type $22) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  (block $label$1
   (br_if $label$1
    (i32.eqz
     (local.get $2)
    )
   )
   (i32.store8
    (i32.add
     (local.tee $3
      (i32.add
       (local.get $0)
       (local.get $2)
      )
     )
     (i32.const -1)
    )
    (local.get $1)
   )
   (i32.store8
    (local.get $0)
    (local.get $1)
   )
   (br_if $label$1
    (i32.lt_u
     (local.get $2)
     (i32.const 3)
    )
   )
   (i32.store8
    (i32.add
     (local.get $3)
     (i32.const -2)
    )
    (local.get $1)
   )
   (i32.store8 offset=1
    (local.get $0)
    (local.get $1)
   )
   (i32.store8
    (i32.add
     (local.get $3)
     (i32.const -3)
    )
    (local.get $1)
   )
   (i32.store8 offset=2
    (local.get $0)
    (local.get $1)
   )
   (br_if $label$1
    (i32.lt_u
     (local.get $2)
     (i32.const 7)
    )
   )
   (i32.store8
    (i32.add
     (local.get $3)
     (i32.const -4)
    )
    (local.get $1)
   )
   (i32.store8 offset=3
    (local.get $0)
    (local.get $1)
   )
   (br_if $label$1
    (i32.lt_u
     (local.get $2)
     (i32.const 9)
    )
   )
   (i32.store
    (local.tee $3
     (i32.add
      (local.get $0)
      (local.tee $4
       (i32.and
        (i32.sub
         (i32.const 0)
         (local.get $0)
        )
        (i32.const 3)
       )
      )
     )
    )
    (local.tee $1
     (i32.mul
      (i32.and
       (local.get $1)
       (i32.const 255)
      )
      (i32.const 16843009)
     )
    )
   )
   (i32.store
    (i32.add
     (local.tee $2
      (i32.add
       (local.get $3)
       (local.tee $4
        (i32.and
         (i32.sub
          (local.get $2)
          (local.get $4)
         )
         (i32.const -4)
        )
       )
      )
     )
     (i32.const -4)
    )
    (local.get $1)
   )
   (br_if $label$1
    (i32.lt_u
     (local.get $4)
     (i32.const 9)
    )
   )
   (i32.store offset=8
    (local.get $3)
    (local.get $1)
   )
   (i32.store offset=4
    (local.get $3)
    (local.get $1)
   )
   (i32.store
    (i32.add
     (local.get $2)
     (i32.const -8)
    )
    (local.get $1)
   )
   (i32.store
    (i32.add
     (local.get $2)
     (i32.const -12)
    )
    (local.get $1)
   )
   (br_if $label$1
    (i32.lt_u
     (local.get $4)
     (i32.const 25)
    )
   )
   (i32.store offset=24
    (local.get $3)
    (local.get $1)
   )
   (i32.store offset=20
    (local.get $3)
    (local.get $1)
   )
   (i32.store offset=16
    (local.get $3)
    (local.get $1)
   )
   (i32.store offset=12
    (local.get $3)
    (local.get $1)
   )
   (i32.store
    (i32.add
     (local.get $2)
     (i32.const -16)
    )
    (local.get $1)
   )
   (i32.store
    (i32.add
     (local.get $2)
     (i32.const -20)
    )
    (local.get $1)
   )
   (i32.store
    (i32.add
     (local.get $2)
     (i32.const -24)
    )
    (local.get $1)
   )
   (i32.store
    (i32.add
     (local.get $2)
     (i32.const -28)
    )
    (local.get $1)
   )
   (br_if $label$1
    (i32.lt_u
     (local.tee $2
      (i32.sub
       (local.get $4)
       (local.tee $4
        (i32.or
         (i32.and
          (local.get $3)
          (i32.const 4)
         )
         (i32.const 24)
        )
       )
      )
     )
     (i32.const 32)
    )
   )
   (local.set $5
    (i64.or
     (i64.shl
      (local.tee $5
       (i64.extend_i32_u
        (local.get $1)
       )
      )
      (i64.const 32)
     )
     (local.get $5)
    )
   )
   (local.set $1
    (i32.add
     (local.get $3)
     (local.get $4)
    )
   )
   (loop $label$2
    (i64.store offset=24
     (local.get $1)
     (local.get $5)
    )
    (i64.store offset=16
     (local.get $1)
     (local.get $5)
    )
    (i64.store offset=8
     (local.get $1)
     (local.get $5)
    )
    (i64.store
     (local.get $1)
     (local.get $5)
    )
    (local.set $1
     (i32.add
      (local.get $1)
      (i32.const 32)
     )
    )
    (br_if $label$2
     (i32.gt_u
      (local.tee $2
       (i32.add
        (local.get $2)
        (i32.const -32)
       )
      )
      (i32.const 31)
     )
    )
   )
  )
 )
 (func $memcpy (; 36 ;) (type $22) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (if
   (i32.ge_u
    (local.get $2)
    (i32.const 8192)
   )
   (block
    (drop
     (call $emscripten_memcpy_big
      (local.get $0)
      (local.get $1)
      (local.get $2)
     )
    )
    (return)
   )
  )
  (local.set $3
   (i32.add
    (local.get $0)
    (local.get $2)
   )
  )
  (block $label$2
   (if
    (i32.eqz
     (i32.and
      (i32.xor
       (local.get $0)
       (local.get $1)
      )
      (i32.const 3)
     )
    )
    (block
     (block $label$4
      (if
       (i32.lt_s
        (local.get $2)
        (i32.const 1)
       )
       (block
        (local.set $2
         (local.get $0)
        )
        (br $label$4)
       )
      )
      (if
       (i32.eqz
        (i32.and
         (local.get $0)
         (i32.const 3)
        )
       )
       (block
        (local.set $2
         (local.get $0)
        )
        (br $label$4)
       )
      )
      (local.set $2
       (local.get $0)
      )
      (loop $label$7
       (i32.store8
        (local.get $2)
        (i32.load8_u
         (local.get $1)
        )
       )
       (local.set $1
        (i32.add
         (local.get $1)
         (i32.const 1)
        )
       )
       (br_if $label$4
        (i32.ge_u
         (local.tee $2
          (i32.add
           (local.get $2)
           (i32.const 1)
          )
         )
         (local.get $3)
        )
       )
       (br_if $label$7
        (i32.and
         (local.get $2)
         (i32.const 3)
        )
       )
      )
     )
     (block $label$8
      (br_if $label$8
       (i32.lt_u
        (local.tee $4
         (i32.and
          (local.get $3)
          (i32.const -4)
         )
        )
        (i32.const 64)
       )
      )
      (br_if $label$8
       (i32.gt_u
        (local.get $2)
        (local.tee $0
         (i32.add
          (local.get $4)
          (i32.const -64)
         )
        )
       )
      )
      (loop $label$9
       (i32.store
        (local.get $2)
        (i32.load
         (local.get $1)
        )
       )
       (i32.store offset=4
        (local.get $2)
        (i32.load offset=4
         (local.get $1)
        )
       )
       (i32.store offset=8
        (local.get $2)
        (i32.load offset=8
         (local.get $1)
        )
       )
       (i32.store offset=12
        (local.get $2)
        (i32.load offset=12
         (local.get $1)
        )
       )
       (i32.store offset=16
        (local.get $2)
        (i32.load offset=16
         (local.get $1)
        )
       )
       (i32.store offset=20
        (local.get $2)
        (i32.load offset=20
         (local.get $1)
        )
       )
       (i32.store offset=24
        (local.get $2)
        (i32.load offset=24
         (local.get $1)
        )
       )
       (i32.store offset=28
        (local.get $2)
        (i32.load offset=28
         (local.get $1)
        )
       )
       (i32.store offset=32
        (local.get $2)
        (i32.load offset=32
         (local.get $1)
        )
       )
       (i32.store offset=36
        (local.get $2)
        (i32.load offset=36
         (local.get $1)
        )
       )
       (i32.store offset=40
        (local.get $2)
        (i32.load offset=40
         (local.get $1)
        )
       )
       (i32.store offset=44
        (local.get $2)
        (i32.load offset=44
         (local.get $1)
        )
       )
       (i32.store offset=48
        (local.get $2)
        (i32.load offset=48
         (local.get $1)
        )
       )
       (i32.store offset=52
        (local.get $2)
        (i32.load offset=52
         (local.get $1)
        )
       )
       (i32.store offset=56
        (local.get $2)
        (i32.load offset=56
         (local.get $1)
        )
       )
       (i32.store offset=60
        (local.get $2)
        (i32.load offset=60
         (local.get $1)
        )
       )
       (local.set $1
        (i32.sub
         (local.get $1)
         (i32.const -64)
        )
       )
       (br_if $label$9
        (i32.le_u
         (local.tee $2
          (i32.sub
           (local.get $2)
           (i32.const -64)
          )
         )
         (local.get $0)
        )
       )
      )
     )
     (br_if $label$2
      (i32.ge_u
       (local.get $2)
       (local.get $4)
      )
     )
     (loop $label$10
      (i32.store
       (local.get $2)
       (i32.load
        (local.get $1)
       )
      )
      (local.set $1
       (i32.add
        (local.get $1)
        (i32.const 4)
       )
      )
      (br_if $label$10
       (i32.lt_u
        (local.tee $2
         (i32.add
          (local.get $2)
          (i32.const 4)
         )
        )
        (local.get $4)
       )
      )
     )
     (br $label$2)
    )
   )
   (if
    (i32.lt_u
     (local.get $3)
     (i32.const 4)
    )
    (block
     (local.set $2
      (local.get $0)
     )
     (br $label$2)
    )
   )
   (if
    (i32.lt_u
     (local.tee $4
      (i32.add
       (local.get $3)
       (i32.const -4)
      )
     )
     (local.get $0)
    )
    (block
     (local.set $2
      (local.get $0)
     )
     (br $label$2)
    )
   )
   (local.set $2
    (local.get $0)
   )
   (loop $label$13
    (i32.store8
     (local.get $2)
     (i32.load8_u
      (local.get $1)
     )
    )
    (i32.store8 offset=1
     (local.get $2)
     (i32.load8_u offset=1
      (local.get $1)
     )
    )
    (i32.store8 offset=2
     (local.get $2)
     (i32.load8_u offset=2
      (local.get $1)
     )
    )
    (i32.store8 offset=3
     (local.get $2)
     (i32.load8_u offset=3
      (local.get $1)
     )
    )
    (local.set $1
     (i32.add
      (local.get $1)
      (i32.const 4)
     )
    )
    (br_if $label$13
     (i32.le_u
      (local.tee $2
       (i32.add
        (local.get $2)
        (i32.const 4)
       )
      )
      (local.get $4)
     )
    )
   )
  )
  (if
   (i32.lt_u
    (local.get $2)
    (local.get $3)
   )
   (loop $label$15
    (i32.store8
     (local.get $2)
     (i32.load8_u
      (local.get $1)
     )
    )
    (local.set $1
     (i32.add
      (local.get $1)
      (i32.const 1)
     )
    )
    (br_if $label$15
     (i32.ne
      (local.tee $2
       (i32.add
        (local.get $2)
        (i32.const 1)
       )
      )
      (local.get $3)
     )
    )
   )
  )
 )
 (func $malloc (; 37 ;) (type $4) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (global.set $global$0
   (local.tee $12
    (i32.sub
     (global.get $global$0)
     (i32.const 16)
    )
   )
  )
  (block $label$1
   (block $label$2
    (block $label$3
     (block $label$4
      (if
       (i32.le_u
        (local.get $0)
        (i32.const 244)
       )
       (block
        (if
         (i32.and
          (local.tee $0
           (i32.shr_u
            (local.tee $6
             (i32.load
              (i32.const 2684)
             )
            )
            (local.tee $1
             (i32.shr_u
              (local.tee $4
               (select
                (i32.const 16)
                (i32.and
                 (i32.add
                  (local.get $0)
                  (i32.const 11)
                 )
                 (i32.const -8)
                )
                (i32.lt_u
                 (local.get $0)
                 (i32.const 11)
                )
               )
              )
              (i32.const 3)
             )
            )
           )
          )
          (i32.const 3)
         )
         (block
          (block $label$7
           (if
            (i32.eq
             (local.tee $0
              (i32.load offset=8
               (local.tee $1
                (i32.load
                 (i32.add
                  (local.tee $4
                   (i32.shl
                    (local.tee $3
                     (i32.add
                      (i32.and
                       (i32.xor
                        (local.get $0)
                        (i32.const -1)
                       )
                       (i32.const 1)
                      )
                      (local.get $1)
                     )
                    )
                    (i32.const 3)
                   )
                  )
                  (i32.const 2732)
                 )
                )
               )
              )
             )
             (local.tee $4
              (i32.add
               (local.get $4)
               (i32.const 2724)
              )
             )
            )
            (block
             (i32.store
              (i32.const 2684)
              (i32.and
               (local.get $6)
               (i32.rotl
                (i32.const -2)
                (local.get $3)
               )
              )
             )
             (br $label$7)
            )
           )
           (br_if $label$3
            (i32.gt_u
             (i32.load
              (i32.const 2700)
             )
             (local.get $0)
            )
           )
           (br_if $label$3
            (i32.ne
             (i32.load offset=12
              (local.get $0)
             )
             (local.get $1)
            )
           )
           (i32.store offset=12
            (local.get $0)
            (local.get $4)
           )
           (i32.store offset=8
            (local.get $4)
            (local.get $0)
           )
          )
          (local.set $0
           (i32.add
            (local.get $1)
            (i32.const 8)
           )
          )
          (i32.store offset=4
           (local.get $1)
           (i32.or
            (local.tee $3
             (i32.shl
              (local.get $3)
              (i32.const 3)
             )
            )
            (i32.const 3)
           )
          )
          (i32.store offset=4
           (local.tee $1
            (i32.add
             (local.get $1)
             (local.get $3)
            )
           )
           (i32.or
            (i32.load offset=4
             (local.get $1)
            )
            (i32.const 1)
           )
          )
          (br $label$1)
         )
        )
        (br_if $label$4
         (i32.le_u
          (local.get $4)
          (local.tee $8
           (i32.load
            (i32.const 2692)
           )
          )
         )
        )
        (if
         (local.get $0)
         (block
          (block $label$10
           (if
            (i32.eq
             (local.tee $1
              (i32.load offset=8
               (local.tee $0
                (i32.load
                 (i32.add
                  (local.tee $2
                   (i32.shl
                    (local.tee $3
                     (i32.add
                      (i32.or
                       (i32.or
                        (i32.or
                         (i32.or
                          (local.tee $3
                           (i32.and
                            (i32.shr_u
                             (local.tee $1
                              (i32.shr_u
                               (local.tee $0
                                (i32.add
                                 (i32.and
                                  (local.tee $0
                                   (i32.and
                                    (i32.shl
                                     (local.get $0)
                                     (local.get $1)
                                    )
                                    (i32.or
                                     (local.tee $0
                                      (i32.shl
                                       (i32.const 2)
                                       (local.get $1)
                                      )
                                     )
                                     (i32.sub
                                      (i32.const 0)
                                      (local.get $0)
                                     )
                                    )
                                   )
                                  )
                                  (i32.sub
                                   (i32.const 0)
                                   (local.get $0)
                                  )
                                 )
                                 (i32.const -1)
                                )
                               )
                               (local.tee $0
                                (i32.and
                                 (i32.shr_u
                                  (local.get $0)
                                  (i32.const 12)
                                 )
                                 (i32.const 16)
                                )
                               )
                              )
                             )
                             (i32.const 5)
                            )
                            (i32.const 8)
                           )
                          )
                          (local.get $0)
                         )
                         (local.tee $1
                          (i32.and
                           (i32.shr_u
                            (local.tee $0
                             (i32.shr_u
                              (local.get $1)
                              (local.get $3)
                             )
                            )
                            (i32.const 2)
                           )
                           (i32.const 4)
                          )
                         )
                        )
                        (local.tee $1
                         (i32.and
                          (i32.shr_u
                           (local.tee $0
                            (i32.shr_u
                             (local.get $0)
                             (local.get $1)
                            )
                           )
                           (i32.const 1)
                          )
                          (i32.const 2)
                         )
                        )
                       )
                       (local.tee $1
                        (i32.and
                         (i32.shr_u
                          (local.tee $0
                           (i32.shr_u
                            (local.get $0)
                            (local.get $1)
                           )
                          )
                          (i32.const 1)
                         )
                         (i32.const 1)
                        )
                       )
                      )
                      (i32.shr_u
                       (local.get $0)
                       (local.get $1)
                      )
                     )
                    )
                    (i32.const 3)
                   )
                  )
                  (i32.const 2732)
                 )
                )
               )
              )
             )
             (local.tee $2
              (i32.add
               (local.get $2)
               (i32.const 2724)
              )
             )
            )
            (block
             (i32.store
              (i32.const 2684)
              (local.tee $6
               (i32.and
                (local.get $6)
                (i32.rotl
                 (i32.const -2)
                 (local.get $3)
                )
               )
              )
             )
             (br $label$10)
            )
           )
           (br_if $label$3
            (i32.gt_u
             (i32.load
              (i32.const 2700)
             )
             (local.get $1)
            )
           )
           (br_if $label$3
            (i32.ne
             (i32.load offset=12
              (local.get $1)
             )
             (local.get $0)
            )
           )
           (i32.store offset=12
            (local.get $1)
            (local.get $2)
           )
           (i32.store offset=8
            (local.get $2)
            (local.get $1)
           )
          )
          (i32.store offset=4
           (local.get $0)
           (i32.or
            (local.get $4)
            (i32.const 3)
           )
          )
          (i32.store offset=4
           (local.tee $2
            (i32.add
             (local.get $0)
             (local.get $4)
            )
           )
           (i32.or
            (local.tee $3
             (i32.sub
              (local.tee $1
               (i32.shl
                (local.get $3)
                (i32.const 3)
               )
              )
              (local.get $4)
             )
            )
            (i32.const 1)
           )
          )
          (i32.store
           (i32.add
            (local.get $0)
            (local.get $1)
           )
           (local.get $3)
          )
          (if
           (local.get $8)
           (block
            (local.set $4
             (i32.add
              (i32.shl
               (local.tee $5
                (i32.shr_u
                 (local.get $8)
                 (i32.const 3)
                )
               )
               (i32.const 3)
              )
              (i32.const 2724)
             )
            )
            (local.set $1
             (i32.load
              (i32.const 2704)
             )
            )
            (block $label$13
             (if
              (i32.eqz
               (i32.and
                (local.get $6)
                (local.tee $5
                 (i32.shl
                  (i32.const 1)
                  (local.get $5)
                 )
                )
               )
              )
              (block
               (i32.store
                (i32.const 2684)
                (i32.or
                 (local.get $5)
                 (local.get $6)
                )
               )
               (local.set $5
                (local.get $4)
               )
               (br $label$13)
              )
             )
             (br_if $label$3
              (i32.gt_u
               (i32.load
                (i32.const 2700)
               )
               (local.tee $5
                (i32.load offset=8
                 (local.get $4)
                )
               )
              )
             )
            )
            (i32.store offset=8
             (local.get $4)
             (local.get $1)
            )
            (i32.store offset=12
             (local.get $5)
             (local.get $1)
            )
            (i32.store offset=12
             (local.get $1)
             (local.get $4)
            )
            (i32.store offset=8
             (local.get $1)
             (local.get $5)
            )
           )
          )
          (local.set $0
           (i32.add
            (local.get $0)
            (i32.const 8)
           )
          )
          (i32.store
           (i32.const 2704)
           (local.get $2)
          )
          (i32.store
           (i32.const 2692)
           (local.get $3)
          )
          (br $label$1)
         )
        )
        (br_if $label$4
         (i32.eqz
          (local.tee $9
           (i32.load
            (i32.const 2688)
           )
          )
         )
        )
        (local.set $1
         (i32.sub
          (i32.and
           (i32.load offset=4
            (local.tee $2
             (i32.load
              (i32.add
               (i32.shl
                (i32.add
                 (i32.or
                  (i32.or
                   (i32.or
                    (i32.or
                     (local.tee $3
                      (i32.and
                       (i32.shr_u
                        (local.tee $1
                         (i32.shr_u
                          (local.tee $0
                           (i32.add
                            (i32.and
                             (local.get $9)
                             (i32.sub
                              (i32.const 0)
                              (local.get $9)
                             )
                            )
                            (i32.const -1)
                           )
                          )
                          (local.tee $0
                           (i32.and
                            (i32.shr_u
                             (local.get $0)
                             (i32.const 12)
                            )
                            (i32.const 16)
                           )
                          )
                         )
                        )
                        (i32.const 5)
                       )
                       (i32.const 8)
                      )
                     )
                     (local.get $0)
                    )
                    (local.tee $1
                     (i32.and
                      (i32.shr_u
                       (local.tee $0
                        (i32.shr_u
                         (local.get $1)
                         (local.get $3)
                        )
                       )
                       (i32.const 2)
                      )
                      (i32.const 4)
                     )
                    )
                   )
                   (local.tee $1
                    (i32.and
                     (i32.shr_u
                      (local.tee $0
                       (i32.shr_u
                        (local.get $0)
                        (local.get $1)
                       )
                      )
                      (i32.const 1)
                     )
                     (i32.const 2)
                    )
                   )
                  )
                  (local.tee $1
                   (i32.and
                    (i32.shr_u
                     (local.tee $0
                      (i32.shr_u
                       (local.get $0)
                       (local.get $1)
                      )
                     )
                     (i32.const 1)
                    )
                    (i32.const 1)
                   )
                  )
                 )
                 (i32.shr_u
                  (local.get $0)
                  (local.get $1)
                 )
                )
                (i32.const 2)
               )
               (i32.const 2988)
              )
             )
            )
           )
           (i32.const -8)
          )
          (local.get $4)
         )
        )
        (local.set $3
         (local.get $2)
        )
        (loop $label$15
         (block $label$16
          (if
           (i32.eqz
            (local.tee $0
             (i32.load offset=16
              (local.get $3)
             )
            )
           )
           (br_if $label$16
            (i32.eqz
             (local.tee $0
              (i32.load offset=20
               (local.get $3)
              )
             )
            )
           )
          )
          (local.set $1
           (select
            (local.tee $3
             (i32.sub
              (i32.and
               (i32.load offset=4
                (local.get $0)
               )
               (i32.const -8)
              )
              (local.get $4)
             )
            )
            (local.get $1)
            (local.tee $3
             (i32.lt_u
              (local.get $3)
              (local.get $1)
             )
            )
           )
          )
          (local.set $2
           (select
            (local.get $0)
            (local.get $2)
            (local.get $3)
           )
          )
          (local.set $3
           (local.get $0)
          )
          (br $label$15)
         )
        )
        (br_if $label$3
         (i32.gt_u
          (local.tee $13
           (i32.load
            (i32.const 2700)
           )
          )
          (local.get $2)
         )
        )
        (br_if $label$3
         (i32.le_u
          (local.tee $11
           (i32.add
            (local.get $2)
            (local.get $4)
           )
          )
          (local.get $2)
         )
        )
        (local.set $10
         (i32.load offset=24
          (local.get $2)
         )
        )
        (block $label$18
         (if
          (i32.ne
           (local.get $2)
           (local.tee $5
            (i32.load offset=12
             (local.get $2)
            )
           )
          )
          (block
           (br_if $label$3
            (i32.gt_u
             (local.get $13)
             (local.tee $0
              (i32.load offset=8
               (local.get $2)
              )
             )
            )
           )
           (br_if $label$3
            (i32.ne
             (i32.load offset=12
              (local.get $0)
             )
             (local.get $2)
            )
           )
           (br_if $label$3
            (i32.ne
             (i32.load offset=8
              (local.get $5)
             )
             (local.get $2)
            )
           )
           (i32.store offset=12
            (local.get $0)
            (local.get $5)
           )
           (i32.store offset=8
            (local.get $5)
            (local.get $0)
           )
           (br $label$18)
          )
         )
         (block $label$20
          (if
           (i32.eqz
            (local.tee $0
             (i32.load
              (local.tee $3
               (i32.add
                (local.get $2)
                (i32.const 20)
               )
              )
             )
            )
           )
           (block
            (br_if $label$20
             (i32.eqz
              (local.tee $0
               (i32.load offset=16
                (local.get $2)
               )
              )
             )
            )
            (local.set $3
             (i32.add
              (local.get $2)
              (i32.const 16)
             )
            )
           )
          )
          (loop $label$22
           (local.set $7
            (local.get $3)
           )
           (br_if $label$22
            (local.tee $0
             (i32.load
              (local.tee $3
               (i32.add
                (local.tee $5
                 (local.get $0)
                )
                (i32.const 20)
               )
              )
             )
            )
           )
           (local.set $3
            (i32.add
             (local.get $5)
             (i32.const 16)
            )
           )
           (br_if $label$22
            (local.tee $0
             (i32.load offset=16
              (local.get $5)
             )
            )
           )
          )
          (br_if $label$3
           (i32.gt_u
            (local.get $13)
            (local.get $7)
           )
          )
          (i32.store
           (local.get $7)
           (i32.const 0)
          )
          (br $label$18)
         )
         (local.set $5
          (i32.const 0)
         )
        )
        (block $label$23
         (br_if $label$23
          (i32.eqz
           (local.get $10)
          )
         )
         (block $label$24
          (if
           (i32.eq
            (i32.load
             (local.tee $0
              (i32.add
               (i32.shl
                (local.tee $3
                 (i32.load offset=28
                  (local.get $2)
                 )
                )
                (i32.const 2)
               )
               (i32.const 2988)
              )
             )
            )
            (local.get $2)
           )
           (block
            (i32.store
             (local.get $0)
             (local.get $5)
            )
            (br_if $label$24
             (local.get $5)
            )
            (i32.store
             (i32.const 2688)
             (i32.and
              (local.get $9)
              (i32.rotl
               (i32.const -2)
               (local.get $3)
              )
             )
            )
            (br $label$23)
           )
          )
          (br_if $label$3
           (i32.gt_u
            (i32.load
             (i32.const 2700)
            )
            (local.get $10)
           )
          )
          (i32.store
           (i32.add
            (local.get $10)
            (select
             (i32.const 16)
             (i32.const 20)
             (i32.eq
              (i32.load offset=16
               (local.get $10)
              )
              (local.get $2)
             )
            )
           )
           (local.get $5)
          )
          (br_if $label$23
           (i32.eqz
            (local.get $5)
           )
          )
         )
         (br_if $label$3
          (i32.gt_u
           (local.tee $3
            (i32.load
             (i32.const 2700)
            )
           )
           (local.get $5)
          )
         )
         (i32.store offset=24
          (local.get $5)
          (local.get $10)
         )
         (if
          (local.tee $0
           (i32.load offset=16
            (local.get $2)
           )
          )
          (block
           (br_if $label$3
            (i32.gt_u
             (local.get $3)
             (local.get $0)
            )
           )
           (i32.store offset=16
            (local.get $5)
            (local.get $0)
           )
           (i32.store offset=24
            (local.get $0)
            (local.get $5)
           )
          )
         )
         (br_if $label$23
          (i32.eqz
           (local.tee $0
            (i32.load offset=20
             (local.get $2)
            )
           )
          )
         )
         (br_if $label$3
          (i32.gt_u
           (i32.load
            (i32.const 2700)
           )
           (local.get $0)
          )
         )
         (i32.store offset=20
          (local.get $5)
          (local.get $0)
         )
         (i32.store offset=24
          (local.get $0)
          (local.get $5)
         )
        )
        (block $label$27
         (if
          (i32.le_u
           (local.get $1)
           (i32.const 15)
          )
          (block
           (i32.store offset=4
            (local.get $2)
            (i32.or
             (local.tee $0
              (i32.add
               (local.get $1)
               (local.get $4)
              )
             )
             (i32.const 3)
            )
           )
           (i32.store offset=4
            (local.tee $0
             (i32.add
              (local.get $0)
              (local.get $2)
             )
            )
            (i32.or
             (i32.load offset=4
              (local.get $0)
             )
             (i32.const 1)
            )
           )
           (br $label$27)
          )
         )
         (i32.store offset=4
          (local.get $2)
          (i32.or
           (local.get $4)
           (i32.const 3)
          )
         )
         (i32.store offset=4
          (local.get $11)
          (i32.or
           (local.get $1)
           (i32.const 1)
          )
         )
         (i32.store
          (i32.add
           (local.get $1)
           (local.get $11)
          )
          (local.get $1)
         )
         (if
          (local.get $8)
          (block
           (local.set $3
            (i32.add
             (i32.shl
              (local.tee $4
               (i32.shr_u
                (local.get $8)
                (i32.const 3)
               )
              )
              (i32.const 3)
             )
             (i32.const 2724)
            )
           )
           (local.set $0
            (i32.load
             (i32.const 2704)
            )
           )
           (block $label$30
            (if
             (i32.eqz
              (i32.and
               (local.tee $4
                (i32.shl
                 (i32.const 1)
                 (local.get $4)
                )
               )
               (local.get $6)
              )
             )
             (block
              (i32.store
               (i32.const 2684)
               (i32.or
                (local.get $4)
                (local.get $6)
               )
              )
              (local.set $4
               (local.get $3)
              )
              (br $label$30)
             )
            )
            (br_if $label$3
             (i32.gt_u
              (i32.load
               (i32.const 2700)
              )
              (local.tee $4
               (i32.load offset=8
                (local.get $3)
               )
              )
             )
            )
           )
           (i32.store offset=8
            (local.get $3)
            (local.get $0)
           )
           (i32.store offset=12
            (local.get $4)
            (local.get $0)
           )
           (i32.store offset=12
            (local.get $0)
            (local.get $3)
           )
           (i32.store offset=8
            (local.get $0)
            (local.get $4)
           )
          )
         )
         (i32.store
          (i32.const 2704)
          (local.get $11)
         )
         (i32.store
          (i32.const 2692)
          (local.get $1)
         )
        )
        (local.set $0
         (i32.add
          (local.get $2)
          (i32.const 8)
         )
        )
        (br $label$1)
       )
      )
      (local.set $4
       (i32.const -1)
      )
      (br_if $label$4
       (i32.gt_u
        (local.get $0)
        (i32.const -65)
       )
      )
      (local.set $4
       (i32.and
        (local.tee $0
         (i32.add
          (local.get $0)
          (i32.const 11)
         )
        )
        (i32.const -8)
       )
      )
      (br_if $label$4
       (i32.eqz
        (local.tee $8
         (i32.load
          (i32.const 2688)
         )
        )
       )
      )
      (local.set $7
       (block $label$32 (result i32)
        (drop
         (br_if $label$32
          (i32.const 0)
          (i32.eqz
           (local.tee $0
            (i32.shr_u
             (local.get $0)
             (i32.const 8)
            )
           )
          )
         )
        )
        (drop
         (br_if $label$32
          (i32.const 31)
          (i32.gt_u
           (local.get $4)
           (i32.const 16777215)
          )
         )
        )
        (i32.add
         (i32.or
          (i32.shl
           (local.tee $0
            (i32.sub
             (i32.shr_u
              (i32.shl
               (local.tee $3
                (i32.shl
                 (local.tee $0
                  (i32.shl
                   (local.get $0)
                   (local.tee $1
                    (i32.and
                     (i32.shr_u
                      (i32.add
                       (local.get $0)
                       (i32.const 1048320)
                      )
                      (i32.const 16)
                     )
                     (i32.const 8)
                    )
                   )
                  )
                 )
                 (local.tee $0
                  (i32.and
                   (i32.shr_u
                    (i32.add
                     (local.get $0)
                     (i32.const 520192)
                    )
                    (i32.const 16)
                   )
                   (i32.const 4)
                  )
                 )
                )
               )
               (local.tee $3
                (i32.and
                 (i32.shr_u
                  (i32.add
                   (local.get $3)
                   (i32.const 245760)
                  )
                  (i32.const 16)
                 )
                 (i32.const 2)
                )
               )
              )
              (i32.const 15)
             )
             (i32.or
              (i32.or
               (local.get $0)
               (local.get $1)
              )
              (local.get $3)
             )
            )
           )
           (i32.const 1)
          )
          (i32.and
           (i32.shr_u
            (local.get $4)
            (i32.add
             (local.get $0)
             (i32.const 21)
            )
           )
           (i32.const 1)
          )
         )
         (i32.const 28)
        )
       )
      )
      (local.set $3
       (i32.sub
        (i32.const 0)
        (local.get $4)
       )
      )
      (block $label$33
       (block $label$34
        (block $label$35
         (if
          (i32.eqz
           (local.tee $1
            (i32.load
             (i32.add
              (i32.shl
               (local.get $7)
               (i32.const 2)
              )
              (i32.const 2988)
             )
            )
           )
          )
          (block
           (local.set $0
            (i32.const 0)
           )
           (br $label$35)
          )
         )
         (local.set $2
          (i32.shl
           (local.get $4)
           (select
            (i32.const 0)
            (i32.sub
             (i32.const 25)
             (i32.shr_u
              (local.get $7)
              (i32.const 1)
             )
            )
            (i32.eq
             (local.get $7)
             (i32.const 31)
            )
           )
          )
         )
         (local.set $0
          (i32.const 0)
         )
         (loop $label$37
          (block $label$38
           (br_if $label$38
            (i32.ge_u
             (local.tee $6
              (i32.sub
               (i32.and
                (i32.load offset=4
                 (local.get $1)
                )
                (i32.const -8)
               )
               (local.get $4)
              )
             )
             (local.get $3)
            )
           )
           (local.set $5
            (local.get $1)
           )
           (br_if $label$38
            (local.tee $3
             (local.get $6)
            )
           )
           (local.set $3
            (i32.const 0)
           )
           (local.set $0
            (local.get $1)
           )
           (br $label$34)
          )
          (local.set $0
           (select
            (select
             (local.get $0)
             (local.tee $6
              (i32.load offset=20
               (local.get $1)
              )
             )
             (i32.eq
              (local.get $6)
              (local.tee $1
               (i32.load offset=16
                (i32.add
                 (local.get $1)
                 (i32.and
                  (i32.shr_u
                   (local.get $2)
                   (i32.const 29)
                  )
                  (i32.const 4)
                 )
                )
               )
              )
             )
            )
            (local.get $0)
            (local.get $6)
           )
          )
          (local.set $2
           (i32.shl
            (local.get $2)
            (i32.ne
             (local.get $1)
             (i32.const 0)
            )
           )
          )
          (br_if $label$37
           (local.get $1)
          )
         )
        )
        (if
         (i32.eqz
          (i32.or
           (local.get $0)
           (local.get $5)
          )
         )
         (block
          (br_if $label$4
           (i32.eqz
            (local.tee $0
             (i32.and
              (i32.or
               (local.tee $0
                (i32.shl
                 (i32.const 2)
                 (local.get $7)
                )
               )
               (i32.sub
                (i32.const 0)
                (local.get $0)
               )
              )
              (local.get $8)
             )
            )
           )
          )
          (local.set $0
           (i32.load
            (i32.add
             (i32.shl
              (i32.add
               (i32.or
                (i32.or
                 (i32.or
                  (i32.or
                   (local.tee $2
                    (i32.and
                     (i32.shr_u
                      (local.tee $1
                       (i32.shr_u
                        (local.tee $0
                         (i32.add
                          (i32.and
                           (local.get $0)
                           (i32.sub
                            (i32.const 0)
                            (local.get $0)
                           )
                          )
                          (i32.const -1)
                         )
                        )
                        (local.tee $0
                         (i32.and
                          (i32.shr_u
                           (local.get $0)
                           (i32.const 12)
                          )
                          (i32.const 16)
                         )
                        )
                       )
                      )
                      (i32.const 5)
                     )
                     (i32.const 8)
                    )
                   )
                   (local.get $0)
                  )
                  (local.tee $1
                   (i32.and
                    (i32.shr_u
                     (local.tee $0
                      (i32.shr_u
                       (local.get $1)
                       (local.get $2)
                      )
                     )
                     (i32.const 2)
                    )
                    (i32.const 4)
                   )
                  )
                 )
                 (local.tee $1
                  (i32.and
                   (i32.shr_u
                    (local.tee $0
                     (i32.shr_u
                      (local.get $0)
                      (local.get $1)
                     )
                    )
                    (i32.const 1)
                   )
                   (i32.const 2)
                  )
                 )
                )
                (local.tee $1
                 (i32.and
                  (i32.shr_u
                   (local.tee $0
                    (i32.shr_u
                     (local.get $0)
                     (local.get $1)
                    )
                   )
                   (i32.const 1)
                  )
                  (i32.const 1)
                 )
                )
               )
               (i32.shr_u
                (local.get $0)
                (local.get $1)
               )
              )
              (i32.const 2)
             )
             (i32.const 2988)
            )
           )
          )
         )
        )
        (br_if $label$33
         (i32.eqz
          (local.get $0)
         )
        )
       )
       (loop $label$40
        (local.set $2
         (i32.lt_u
          (local.tee $6
           (i32.sub
            (i32.and
             (i32.load offset=4
              (local.get $0)
             )
             (i32.const -8)
            )
            (local.get $4)
           )
          )
          (local.get $3)
         )
        )
        (local.set $3
         (select
          (local.get $6)
          (local.get $3)
          (local.get $2)
         )
        )
        (local.set $5
         (select
          (local.get $0)
          (local.get $5)
          (local.get $2)
         )
        )
        (br_if $label$40
         (local.tee $0
          (if (result i32)
           (local.tee $1
            (i32.load offset=16
             (local.get $0)
            )
           )
           (local.get $1)
           (i32.load offset=20
            (local.get $0)
           )
          )
         )
        )
       )
      )
      (br_if $label$4
       (i32.eqz
        (local.get $5)
       )
      )
      (br_if $label$4
       (i32.ge_u
        (local.get $3)
        (i32.sub
         (i32.load
          (i32.const 2692)
         )
         (local.get $4)
        )
       )
      )
      (br_if $label$3
       (i32.gt_u
        (local.tee $10
         (i32.load
          (i32.const 2700)
         )
        )
        (local.get $5)
       )
      )
      (br_if $label$3
       (i32.le_u
        (local.tee $7
         (i32.add
          (local.get $4)
          (local.get $5)
         )
        )
        (local.get $5)
       )
      )
      (local.set $9
       (i32.load offset=24
        (local.get $5)
       )
      )
      (block $label$43
       (if
        (i32.ne
         (local.get $5)
         (local.tee $2
          (i32.load offset=12
           (local.get $5)
          )
         )
        )
        (block
         (br_if $label$3
          (i32.gt_u
           (local.get $10)
           (local.tee $0
            (i32.load offset=8
             (local.get $5)
            )
           )
          )
         )
         (br_if $label$3
          (i32.ne
           (i32.load offset=12
            (local.get $0)
           )
           (local.get $5)
          )
         )
         (br_if $label$3
          (i32.ne
           (i32.load offset=8
            (local.get $2)
           )
           (local.get $5)
          )
         )
         (i32.store offset=12
          (local.get $0)
          (local.get $2)
         )
         (i32.store offset=8
          (local.get $2)
          (local.get $0)
         )
         (br $label$43)
        )
       )
       (block $label$45
        (if
         (i32.eqz
          (local.tee $0
           (i32.load
            (local.tee $1
             (i32.add
              (local.get $5)
              (i32.const 20)
             )
            )
           )
          )
         )
         (block
          (br_if $label$45
           (i32.eqz
            (local.tee $0
             (i32.load offset=16
              (local.get $5)
             )
            )
           )
          )
          (local.set $1
           (i32.add
            (local.get $5)
            (i32.const 16)
           )
          )
         )
        )
        (loop $label$47
         (local.set $6
          (local.get $1)
         )
         (br_if $label$47
          (local.tee $0
           (i32.load
            (local.tee $1
             (i32.add
              (local.tee $2
               (local.get $0)
              )
              (i32.const 20)
             )
            )
           )
          )
         )
         (local.set $1
          (i32.add
           (local.get $2)
           (i32.const 16)
          )
         )
         (br_if $label$47
          (local.tee $0
           (i32.load offset=16
            (local.get $2)
           )
          )
         )
        )
        (br_if $label$3
         (i32.gt_u
          (local.get $10)
          (local.get $6)
         )
        )
        (i32.store
         (local.get $6)
         (i32.const 0)
        )
        (br $label$43)
       )
       (local.set $2
        (i32.const 0)
       )
      )
      (block $label$48
       (br_if $label$48
        (i32.eqz
         (local.get $9)
        )
       )
       (block $label$49
        (if
         (i32.eq
          (i32.load
           (local.tee $0
            (i32.add
             (i32.shl
              (local.tee $1
               (i32.load offset=28
                (local.get $5)
               )
              )
              (i32.const 2)
             )
             (i32.const 2988)
            )
           )
          )
          (local.get $5)
         )
         (block
          (i32.store
           (local.get $0)
           (local.get $2)
          )
          (br_if $label$49
           (local.get $2)
          )
          (i32.store
           (i32.const 2688)
           (local.tee $8
            (i32.and
             (local.get $8)
             (i32.rotl
              (i32.const -2)
              (local.get $1)
             )
            )
           )
          )
          (br $label$48)
         )
        )
        (br_if $label$3
         (i32.gt_u
          (i32.load
           (i32.const 2700)
          )
          (local.get $9)
         )
        )
        (i32.store
         (i32.add
          (local.get $9)
          (select
           (i32.const 16)
           (i32.const 20)
           (i32.eq
            (i32.load offset=16
             (local.get $9)
            )
            (local.get $5)
           )
          )
         )
         (local.get $2)
        )
        (br_if $label$48
         (i32.eqz
          (local.get $2)
         )
        )
       )
       (br_if $label$3
        (i32.gt_u
         (local.tee $1
          (i32.load
           (i32.const 2700)
          )
         )
         (local.get $2)
        )
       )
       (i32.store offset=24
        (local.get $2)
        (local.get $9)
       )
       (if
        (local.tee $0
         (i32.load offset=16
          (local.get $5)
         )
        )
        (block
         (br_if $label$3
          (i32.gt_u
           (local.get $1)
           (local.get $0)
          )
         )
         (i32.store offset=16
          (local.get $2)
          (local.get $0)
         )
         (i32.store offset=24
          (local.get $0)
          (local.get $2)
         )
        )
       )
       (br_if $label$48
        (i32.eqz
         (local.tee $0
          (i32.load offset=20
           (local.get $5)
          )
         )
        )
       )
       (br_if $label$3
        (i32.gt_u
         (i32.load
          (i32.const 2700)
         )
         (local.get $0)
        )
       )
       (i32.store offset=20
        (local.get $2)
        (local.get $0)
       )
       (i32.store offset=24
        (local.get $0)
        (local.get $2)
       )
      )
      (block $label$52
       (if
        (i32.le_u
         (local.get $3)
         (i32.const 15)
        )
        (block
         (i32.store offset=4
          (local.get $5)
          (i32.or
           (local.tee $0
            (i32.add
             (local.get $3)
             (local.get $4)
            )
           )
           (i32.const 3)
          )
         )
         (i32.store offset=4
          (local.tee $0
           (i32.add
            (local.get $0)
            (local.get $5)
           )
          )
          (i32.or
           (i32.load offset=4
            (local.get $0)
           )
           (i32.const 1)
          )
         )
         (br $label$52)
        )
       )
       (i32.store offset=4
        (local.get $5)
        (i32.or
         (local.get $4)
         (i32.const 3)
        )
       )
       (i32.store offset=4
        (local.get $7)
        (i32.or
         (local.get $3)
         (i32.const 1)
        )
       )
       (i32.store
        (i32.add
         (local.get $3)
         (local.get $7)
        )
        (local.get $3)
       )
       (if
        (i32.le_u
         (local.get $3)
         (i32.const 255)
        )
        (block
         (local.set $0
          (i32.add
           (i32.shl
            (local.tee $1
             (i32.shr_u
              (local.get $3)
              (i32.const 3)
             )
            )
            (i32.const 3)
           )
           (i32.const 2724)
          )
         )
         (block $label$55
          (if
           (i32.eqz
            (i32.and
             (local.tee $3
              (i32.load
               (i32.const 2684)
              )
             )
             (local.tee $1
              (i32.shl
               (i32.const 1)
               (local.get $1)
              )
             )
            )
           )
           (block
            (i32.store
             (i32.const 2684)
             (i32.or
              (local.get $1)
              (local.get $3)
             )
            )
            (local.set $1
             (local.get $0)
            )
            (br $label$55)
           )
          )
          (br_if $label$3
           (i32.gt_u
            (i32.load
             (i32.const 2700)
            )
            (local.tee $1
             (i32.load offset=8
              (local.get $0)
             )
            )
           )
          )
         )
         (i32.store offset=8
          (local.get $0)
          (local.get $7)
         )
         (i32.store offset=12
          (local.get $1)
          (local.get $7)
         )
         (i32.store offset=12
          (local.get $7)
          (local.get $0)
         )
         (i32.store offset=8
          (local.get $7)
          (local.get $1)
         )
         (br $label$52)
        )
       )
       (i32.store offset=28
        (local.get $7)
        (local.tee $0
         (block $label$57 (result i32)
          (drop
           (br_if $label$57
            (i32.const 0)
            (i32.eqz
             (local.tee $1
              (i32.shr_u
               (local.get $3)
               (i32.const 8)
              )
             )
            )
           )
          )
          (drop
           (br_if $label$57
            (i32.const 31)
            (i32.gt_u
             (local.get $3)
             (i32.const 16777215)
            )
           )
          )
          (i32.add
           (i32.or
            (i32.shl
             (local.tee $0
              (i32.sub
               (i32.shr_u
                (i32.shl
                 (local.tee $4
                  (i32.shl
                   (local.tee $1
                    (i32.shl
                     (local.get $1)
                     (local.tee $0
                      (i32.and
                       (i32.shr_u
                        (i32.add
                         (local.get $1)
                         (i32.const 1048320)
                        )
                        (i32.const 16)
                       )
                       (i32.const 8)
                      )
                     )
                    )
                   )
                   (local.tee $1
                    (i32.and
                     (i32.shr_u
                      (i32.add
                       (local.get $1)
                       (i32.const 520192)
                      )
                      (i32.const 16)
                     )
                     (i32.const 4)
                    )
                   )
                  )
                 )
                 (local.tee $4
                  (i32.and
                   (i32.shr_u
                    (i32.add
                     (local.get $4)
                     (i32.const 245760)
                    )
                    (i32.const 16)
                   )
                   (i32.const 2)
                  )
                 )
                )
                (i32.const 15)
               )
               (i32.or
                (i32.or
                 (local.get $0)
                 (local.get $1)
                )
                (local.get $4)
               )
              )
             )
             (i32.const 1)
            )
            (i32.and
             (i32.shr_u
              (local.get $3)
              (i32.add
               (local.get $0)
               (i32.const 21)
              )
             )
             (i32.const 1)
            )
           )
           (i32.const 28)
          )
         )
        )
       )
       (i64.store offset=16 align=4
        (local.get $7)
        (i64.const 0)
       )
       (local.set $1
        (i32.add
         (i32.shl
          (local.get $0)
          (i32.const 2)
         )
         (i32.const 2988)
        )
       )
       (block $label$58
        (block $label$59
         (if
          (i32.eqz
           (i32.and
            (local.get $8)
            (local.tee $4
             (i32.shl
              (i32.const 1)
              (local.get $0)
             )
            )
           )
          )
          (block
           (i32.store
            (i32.const 2688)
            (i32.or
             (local.get $4)
             (local.get $8)
            )
           )
           (i32.store
            (local.get $1)
            (local.get $7)
           )
           (i32.store offset=24
            (local.get $7)
            (local.get $1)
           )
           (br $label$59)
          )
         )
         (local.set $0
          (i32.shl
           (local.get $3)
           (select
            (i32.const 0)
            (i32.sub
             (i32.const 25)
             (i32.shr_u
              (local.get $0)
              (i32.const 1)
             )
            )
            (i32.eq
             (local.get $0)
             (i32.const 31)
            )
           )
          )
         )
         (local.set $4
          (i32.load
           (local.get $1)
          )
         )
         (loop $label$61
          (br_if $label$58
           (i32.eq
            (i32.and
             (i32.load offset=4
              (local.tee $1
               (local.get $4)
              )
             )
             (i32.const -8)
            )
            (local.get $3)
           )
          )
          (local.set $4
           (i32.shr_u
            (local.get $0)
            (i32.const 29)
           )
          )
          (local.set $0
           (i32.shl
            (local.get $0)
            (i32.const 1)
           )
          )
          (br_if $label$61
           (local.tee $4
            (i32.load
             (local.tee $2
              (i32.add
               (i32.add
                (local.get $1)
                (i32.and
                 (local.get $4)
                 (i32.const 4)
                )
               )
               (i32.const 16)
              )
             )
            )
           )
          )
         )
         (br_if $label$3
          (i32.gt_u
           (i32.load
            (i32.const 2700)
           )
           (local.get $2)
          )
         )
         (i32.store
          (local.get $2)
          (local.get $7)
         )
         (i32.store offset=24
          (local.get $7)
          (local.get $1)
         )
        )
        (i32.store offset=12
         (local.get $7)
         (local.get $7)
        )
        (i32.store offset=8
         (local.get $7)
         (local.get $7)
        )
        (br $label$52)
       )
       (br_if $label$3
        (i32.gt_u
         (local.tee $3
          (i32.load
           (i32.const 2700)
          )
         )
         (local.tee $0
          (i32.load offset=8
           (local.get $1)
          )
         )
        )
       )
       (br_if $label$3
        (i32.gt_u
         (local.get $3)
         (local.get $1)
        )
       )
       (i32.store offset=12
        (local.get $0)
        (local.get $7)
       )
       (i32.store offset=8
        (local.get $1)
        (local.get $7)
       )
       (i32.store offset=24
        (local.get $7)
        (i32.const 0)
       )
       (i32.store offset=12
        (local.get $7)
        (local.get $1)
       )
       (i32.store offset=8
        (local.get $7)
        (local.get $0)
       )
      )
      (local.set $0
       (i32.add
        (local.get $5)
        (i32.const 8)
       )
      )
      (br $label$1)
     )
     (if
      (i32.ge_u
       (local.tee $0
        (i32.load
         (i32.const 2692)
        )
       )
       (local.get $4)
      )
      (block
       (local.set $1
        (i32.load
         (i32.const 2704)
        )
       )
       (block $label$63
        (if
         (i32.ge_u
          (local.tee $3
           (i32.sub
            (local.get $0)
            (local.get $4)
           )
          )
          (i32.const 16)
         )
         (block
          (i32.store
           (i32.const 2692)
           (local.get $3)
          )
          (i32.store
           (i32.const 2704)
           (local.tee $2
            (i32.add
             (local.get $1)
             (local.get $4)
            )
           )
          )
          (i32.store offset=4
           (local.get $2)
           (i32.or
            (local.get $3)
            (i32.const 1)
           )
          )
          (i32.store
           (i32.add
            (local.get $0)
            (local.get $1)
           )
           (local.get $3)
          )
          (i32.store offset=4
           (local.get $1)
           (i32.or
            (local.get $4)
            (i32.const 3)
           )
          )
          (br $label$63)
         )
        )
        (i32.store
         (i32.const 2704)
         (i32.const 0)
        )
        (i32.store
         (i32.const 2692)
         (i32.const 0)
        )
        (i32.store offset=4
         (local.get $1)
         (i32.or
          (local.get $0)
          (i32.const 3)
         )
        )
        (i32.store offset=4
         (local.tee $0
          (i32.add
           (local.get $0)
           (local.get $1)
          )
         )
         (i32.or
          (i32.load offset=4
           (local.get $0)
          )
          (i32.const 1)
         )
        )
       )
       (local.set $0
        (i32.add
         (local.get $1)
         (i32.const 8)
        )
       )
       (br $label$1)
      )
     )
     (if
      (i32.gt_u
       (local.tee $2
        (i32.load
         (i32.const 2696)
        )
       )
       (local.get $4)
      )
      (block
       (i32.store
        (i32.const 2696)
        (local.tee $1
         (i32.sub
          (local.get $2)
          (local.get $4)
         )
        )
       )
       (i32.store
        (i32.const 2708)
        (local.tee $3
         (i32.add
          (local.tee $0
           (i32.load
            (i32.const 2708)
           )
          )
          (local.get $4)
         )
        )
       )
       (i32.store offset=4
        (local.get $3)
        (i32.or
         (local.get $1)
         (i32.const 1)
        )
       )
       (i32.store offset=4
        (local.get $0)
        (i32.or
         (local.get $4)
         (i32.const 3)
        )
       )
       (local.set $0
        (i32.add
         (local.get $0)
         (i32.const 8)
        )
       )
       (br $label$1)
      )
     )
     (local.set $0
      (i32.const 0)
     )
     (br_if $label$1
      (i32.le_u
       (local.tee $5
        (i32.and
         (local.tee $6
          (i32.add
           (local.tee $8
            (i32.add
             (local.get $4)
             (i32.const 47)
            )
           )
           (local.tee $1
            (block $label$66 (result i32)
             (if
              (i32.load
               (i32.const 3156)
              )
              (br $label$66
               (i32.load
                (i32.const 3164)
               )
              )
             )
             (i64.store align=4
              (i32.const 3168)
              (i64.const -1)
             )
             (i64.store align=4
              (i32.const 3160)
              (i64.const 17592186048512)
             )
             (i32.store
              (i32.const 3156)
              (i32.xor
               (i32.and
                (i32.add
                 (local.get $12)
                 (i32.const 12)
                )
                (i32.const -16)
               )
               (i32.const 1431655768)
              )
             )
             (i32.store
              (i32.const 3176)
              (i32.const 0)
             )
             (i32.store
              (i32.const 3128)
              (i32.const 0)
             )
             (i32.const 4096)
            )
           )
          )
         )
         (local.tee $7
          (i32.sub
           (i32.const 0)
           (local.get $1)
          )
         )
        )
       )
       (local.get $4)
      )
     )
     (if
      (local.tee $1
       (i32.load
        (i32.const 3124)
       )
      )
      (block
       (br_if $label$1
        (i32.le_u
         (local.tee $9
          (i32.add
           (local.tee $3
            (i32.load
             (i32.const 3116)
            )
           )
           (local.get $5)
          )
         )
         (local.get $3)
        )
       )
       (br_if $label$1
        (i32.gt_u
         (local.get $9)
         (local.get $1)
        )
       )
      )
     )
     (block $label$69
      (if
       (i32.eqz
        (i32.and
         (i32.load8_u
          (i32.const 3128)
         )
         (i32.const 4)
        )
       )
       (block
        (block $label$71
         (block $label$72
          (block $label$73
           (block $label$74
            (if
             (local.tee $1
              (i32.load
               (i32.const 2708)
              )
             )
             (block
              (local.set $0
               (i32.const 3132)
              )
              (loop $label$76
               (if
                (i32.le_u
                 (local.tee $3
                  (i32.load
                   (local.get $0)
                  )
                 )
                 (local.get $1)
                )
                (br_if $label$74
                 (i32.gt_u
                  (i32.add
                   (local.get $3)
                   (i32.load offset=4
                    (local.get $0)
                   )
                  )
                  (local.get $1)
                 )
                )
               )
               (br_if $label$76
                (local.tee $0
                 (i32.load offset=8
                  (local.get $0)
                 )
                )
               )
              )
             )
            )
            (br_if $label$71
             (i32.eq
              (local.tee $2
               (call $sbrk
                (i32.const 0)
               )
              )
              (i32.const -1)
             )
            )
            (local.set $6
             (local.get $5)
            )
            (if
             (i32.and
              (local.tee $1
               (i32.add
                (local.tee $0
                 (i32.load
                  (i32.const 3160)
                 )
                )
                (i32.const -1)
               )
              )
              (local.get $2)
             )
             (local.set $6
              (i32.add
               (i32.sub
                (local.get $5)
                (local.get $2)
               )
               (i32.and
                (i32.add
                 (local.get $1)
                 (local.get $2)
                )
                (i32.sub
                 (i32.const 0)
                 (local.get $0)
                )
               )
              )
             )
            )
            (br_if $label$71
             (i32.le_u
              (local.get $6)
              (local.get $4)
             )
            )
            (br_if $label$71
             (i32.gt_u
              (local.get $6)
              (i32.const 2147483646)
             )
            )
            (if
             (local.tee $0
              (i32.load
               (i32.const 3124)
              )
             )
             (block
              (br_if $label$71
               (i32.le_u
                (local.tee $3
                 (i32.add
                  (local.tee $1
                   (i32.load
                    (i32.const 3116)
                   )
                  )
                  (local.get $6)
                 )
                )
                (local.get $1)
               )
              )
              (br_if $label$71
               (i32.gt_u
                (local.get $3)
                (local.get $0)
               )
              )
             )
            )
            (br_if $label$73
             (i32.ne
              (local.tee $0
               (call $sbrk
                (local.get $6)
               )
              )
              (local.get $2)
             )
            )
            (br $label$69)
           )
           (br_if $label$71
            (i32.gt_u
             (local.tee $6
              (i32.and
               (i32.sub
                (local.get $6)
                (local.get $2)
               )
               (local.get $7)
              )
             )
             (i32.const 2147483646)
            )
           )
           (br_if $label$72
            (i32.eq
             (local.tee $2
              (call $sbrk
               (local.get $6)
              )
             )
             (i32.add
              (i32.load
               (local.get $0)
              )
              (i32.load offset=4
               (local.get $0)
              )
             )
            )
           )
           (local.set $0
            (local.get $2)
           )
          )
          (local.set $2
           (local.get $0)
          )
          (block $label$80
           (br_if $label$80
            (i32.le_u
             (i32.add
              (local.get $4)
              (i32.const 48)
             )
             (local.get $6)
            )
           )
           (br_if $label$80
            (i32.gt_u
             (local.get $6)
             (i32.const 2147483646)
            )
           )
           (br_if $label$80
            (i32.eq
             (local.get $2)
             (i32.const -1)
            )
           )
           (br_if $label$69
            (i32.gt_u
             (local.tee $0
              (i32.and
               (i32.add
                (local.tee $0
                 (i32.load
                  (i32.const 3164)
                 )
                )
                (i32.sub
                 (local.get $8)
                 (local.get $6)
                )
               )
               (i32.sub
                (i32.const 0)
                (local.get $0)
               )
              )
             )
             (i32.const 2147483646)
            )
           )
           (if
            (i32.ne
             (call $sbrk
              (local.get $0)
             )
             (i32.const -1)
            )
            (block
             (local.set $6
              (i32.add
               (local.get $0)
               (local.get $6)
              )
             )
             (br $label$69)
            )
           )
           (drop
            (call $sbrk
             (i32.sub
              (i32.const 0)
              (local.get $6)
             )
            )
           )
           (br $label$71)
          )
          (br_if $label$69
           (i32.ne
            (local.get $2)
            (i32.const -1)
           )
          )
          (br $label$71)
         )
         (br_if $label$69
          (i32.ne
           (local.get $2)
           (i32.const -1)
          )
         )
        )
        (i32.store
         (i32.const 3128)
         (i32.or
          (i32.load
           (i32.const 3128)
          )
          (i32.const 4)
         )
        )
       )
      )
      (br_if $label$2
       (i32.gt_u
        (local.get $5)
        (i32.const 2147483646)
       )
      )
      (br_if $label$2
       (i32.ge_u
        (local.tee $2
         (call $sbrk
          (local.get $5)
         )
        )
        (local.tee $0
         (call $sbrk
          (i32.const 0)
         )
        )
       )
      )
      (br_if $label$2
       (i32.eq
        (local.get $2)
        (i32.const -1)
       )
      )
      (br_if $label$2
       (i32.eq
        (local.get $0)
        (i32.const -1)
       )
      )
      (br_if $label$2
       (i32.le_u
        (local.tee $6
         (i32.sub
          (local.get $0)
          (local.get $2)
         )
        )
        (i32.add
         (local.get $4)
         (i32.const 40)
        )
       )
      )
     )
     (i32.store
      (i32.const 3116)
      (local.tee $0
       (i32.add
        (i32.load
         (i32.const 3116)
        )
        (local.get $6)
       )
      )
     )
     (if
      (i32.gt_u
       (local.get $0)
       (i32.load
        (i32.const 3120)
       )
      )
      (i32.store
       (i32.const 3120)
       (local.get $0)
      )
     )
     (block $label$83
      (block $label$84
       (block $label$85
        (if
         (local.tee $1
          (i32.load
           (i32.const 2708)
          )
         )
         (block
          (local.set $0
           (i32.const 3132)
          )
          (loop $label$87
           (br_if $label$85
            (i32.eq
             (local.get $2)
             (i32.add
              (local.tee $3
               (i32.load
                (local.get $0)
               )
              )
              (local.tee $5
               (i32.load offset=4
                (local.get $0)
               )
              )
             )
            )
           )
           (br_if $label$87
            (local.tee $0
             (i32.load offset=8
              (local.get $0)
             )
            )
           )
          )
          (br $label$84)
         )
        )
        (block $label$88
         (if
          (local.tee $0
           (i32.load
            (i32.const 2700)
           )
          )
          (br_if $label$88
           (i32.ge_u
            (local.get $2)
            (local.get $0)
           )
          )
         )
         (i32.store
          (i32.const 2700)
          (local.get $2)
         )
        )
        (local.set $0
         (i32.const 0)
        )
        (i32.store
         (i32.const 3136)
         (local.get $6)
        )
        (i32.store
         (i32.const 3132)
         (local.get $2)
        )
        (i32.store
         (i32.const 2716)
         (i32.const -1)
        )
        (i32.store
         (i32.const 2720)
         (i32.load
          (i32.const 3156)
         )
        )
        (i32.store
         (i32.const 3144)
         (i32.const 0)
        )
        (loop $label$90
         (i32.store
          (i32.add
           (local.tee $1
            (i32.shl
             (local.get $0)
             (i32.const 3)
            )
           )
           (i32.const 2732)
          )
          (local.tee $3
           (i32.add
            (local.get $1)
            (i32.const 2724)
           )
          )
         )
         (i32.store
          (i32.add
           (local.get $1)
           (i32.const 2736)
          )
          (local.get $3)
         )
         (br_if $label$90
          (i32.ne
           (local.tee $0
            (i32.add
             (local.get $0)
             (i32.const 1)
            )
           )
           (i32.const 32)
          )
         )
        )
        (i32.store
         (i32.const 2696)
         (local.tee $3
          (i32.sub
           (local.tee $0
            (i32.add
             (local.get $6)
             (i32.const -40)
            )
           )
           (local.tee $1
            (select
             (i32.and
              (i32.sub
               (i32.const -8)
               (local.get $2)
              )
              (i32.const 7)
             )
             (i32.const 0)
             (i32.and
              (i32.add
               (local.get $2)
               (i32.const 8)
              )
              (i32.const 7)
             )
            )
           )
          )
         )
        )
        (i32.store
         (i32.const 2708)
         (local.tee $1
          (i32.add
           (local.get $1)
           (local.get $2)
          )
         )
        )
        (i32.store offset=4
         (local.get $1)
         (i32.or
          (local.get $3)
          (i32.const 1)
         )
        )
        (i32.store offset=4
         (i32.add
          (local.get $0)
          (local.get $2)
         )
         (i32.const 40)
        )
        (i32.store
         (i32.const 2712)
         (i32.load
          (i32.const 3172)
         )
        )
        (br $label$83)
       )
       (br_if $label$84
        (i32.and
         (i32.load8_u offset=12
          (local.get $0)
         )
         (i32.const 8)
        )
       )
       (br_if $label$84
        (i32.le_u
         (local.get $2)
         (local.get $1)
        )
       )
       (br_if $label$84
        (i32.gt_u
         (local.get $3)
         (local.get $1)
        )
       )
       (i32.store offset=4
        (local.get $0)
        (i32.add
         (local.get $5)
         (local.get $6)
        )
       )
       (i32.store
        (i32.const 2708)
        (local.tee $3
         (i32.add
          (local.get $1)
          (local.tee $0
           (select
            (i32.and
             (i32.sub
              (i32.const -8)
              (local.get $1)
             )
             (i32.const 7)
            )
            (i32.const 0)
            (i32.and
             (i32.add
              (local.get $1)
              (i32.const 8)
             )
             (i32.const 7)
            )
           )
          )
         )
        )
       )
       (i32.store
        (i32.const 2696)
        (local.tee $0
         (i32.sub
          (local.tee $2
           (i32.add
            (i32.load
             (i32.const 2696)
            )
            (local.get $6)
           )
          )
          (local.get $0)
         )
        )
       )
       (i32.store offset=4
        (local.get $3)
        (i32.or
         (local.get $0)
         (i32.const 1)
        )
       )
       (i32.store offset=4
        (i32.add
         (local.get $1)
         (local.get $2)
        )
        (i32.const 40)
       )
       (i32.store
        (i32.const 2712)
        (i32.load
         (i32.const 3172)
        )
       )
       (br $label$83)
      )
      (if
       (i32.lt_u
        (local.get $2)
        (local.tee $5
         (i32.load
          (i32.const 2700)
         )
        )
       )
       (block
        (i32.store
         (i32.const 2700)
         (local.get $2)
        )
        (local.set $5
         (local.get $2)
        )
       )
      )
      (local.set $3
       (i32.add
        (local.get $2)
        (local.get $6)
       )
      )
      (local.set $0
       (i32.const 3132)
      )
      (block $label$92
       (block $label$93
        (block $label$94
         (loop $label$95
          (if
           (i32.ne
            (local.get $3)
            (i32.load
             (local.get $0)
            )
           )
           (block
            (br_if $label$95
             (local.tee $0
              (i32.load offset=8
               (local.get $0)
              )
             )
            )
            (br $label$94)
           )
          )
         )
         (br_if $label$93
          (i32.eqz
           (i32.and
            (i32.load8_u offset=12
             (local.get $0)
            )
            (i32.const 8)
           )
          )
         )
        )
        (local.set $0
         (i32.const 3132)
        )
        (loop $label$97
         (if
          (i32.le_u
           (local.tee $3
            (i32.load
             (local.get $0)
            )
           )
           (local.get $1)
          )
          (br_if $label$92
           (i32.gt_u
            (local.tee $3
             (i32.add
              (local.get $3)
              (i32.load offset=4
               (local.get $0)
              )
             )
            )
            (local.get $1)
           )
          )
         )
         (local.set $0
          (i32.load offset=8
           (local.get $0)
          )
         )
         (br $label$97)
        )
       )
       (i32.store
        (local.get $0)
        (local.get $2)
       )
       (i32.store offset=4
        (local.get $0)
        (i32.add
         (i32.load offset=4
          (local.get $0)
         )
         (local.get $6)
        )
       )
       (i32.store offset=4
        (local.tee $7
         (i32.add
          (local.get $2)
          (select
           (i32.and
            (i32.sub
             (i32.const -8)
             (local.get $2)
            )
            (i32.const 7)
           )
           (i32.const 0)
           (i32.and
            (i32.add
             (local.get $2)
             (i32.const 8)
            )
            (i32.const 7)
           )
          )
         )
        )
        (i32.or
         (local.get $4)
         (i32.const 3)
        )
       )
       (local.set $0
        (i32.sub
         (i32.sub
          (local.tee $2
           (i32.add
            (local.get $3)
            (select
             (i32.and
              (i32.sub
               (i32.const -8)
               (local.get $3)
              )
              (i32.const 7)
             )
             (i32.const 0)
             (i32.and
              (i32.add
               (local.get $3)
               (i32.const 8)
              )
              (i32.const 7)
             )
            )
           )
          )
          (local.get $7)
         )
         (local.get $4)
        )
       )
       (local.set $3
        (i32.add
         (local.get $4)
         (local.get $7)
        )
       )
       (block $label$99
        (if
         (i32.eq
          (local.get $1)
          (local.get $2)
         )
         (block
          (i32.store
           (i32.const 2708)
           (local.get $3)
          )
          (i32.store
           (i32.const 2696)
           (local.tee $0
            (i32.add
             (i32.load
              (i32.const 2696)
             )
             (local.get $0)
            )
           )
          )
          (i32.store offset=4
           (local.get $3)
           (i32.or
            (local.get $0)
            (i32.const 1)
           )
          )
          (br $label$99)
         )
        )
        (if
         (i32.eq
          (local.get $2)
          (i32.load
           (i32.const 2704)
          )
         )
         (block
          (i32.store
           (i32.const 2704)
           (local.get $3)
          )
          (i32.store
           (i32.const 2692)
           (local.tee $0
            (i32.add
             (i32.load
              (i32.const 2692)
             )
             (local.get $0)
            )
           )
          )
          (i32.store offset=4
           (local.get $3)
           (i32.or
            (local.get $0)
            (i32.const 1)
           )
          )
          (i32.store
           (i32.add
            (local.get $0)
            (local.get $3)
           )
           (local.get $0)
          )
          (br $label$99)
         )
        )
        (if
         (i32.eq
          (i32.and
           (local.tee $9
            (i32.load offset=4
             (local.get $2)
            )
           )
           (i32.const 3)
          )
          (i32.const 1)
         )
         (block
          (block $label$103
           (if
            (i32.le_u
             (local.get $9)
             (i32.const 255)
            )
            (block
             (local.set $1
              (i32.load offset=12
               (local.get $2)
              )
             )
             (if
              (i32.ne
               (local.tee $4
                (i32.load offset=8
                 (local.get $2)
                )
               )
               (local.tee $6
                (i32.add
                 (i32.shl
                  (local.tee $8
                   (i32.shr_u
                    (local.get $9)
                    (i32.const 3)
                   )
                  )
                  (i32.const 3)
                 )
                 (i32.const 2724)
                )
               )
              )
              (block
               (br_if $label$3
                (i32.gt_u
                 (local.get $5)
                 (local.get $4)
                )
               )
               (br_if $label$3
                (i32.ne
                 (i32.load offset=12
                  (local.get $4)
                 )
                 (local.get $2)
                )
               )
              )
             )
             (if
              (i32.eq
               (local.get $1)
               (local.get $4)
              )
              (block
               (i32.store
                (i32.const 2684)
                (i32.and
                 (i32.load
                  (i32.const 2684)
                 )
                 (i32.rotl
                  (i32.const -2)
                  (local.get $8)
                 )
                )
               )
               (br $label$103)
              )
             )
             (if
              (i32.ne
               (local.get $1)
               (local.get $6)
              )
              (block
               (br_if $label$3
                (i32.gt_u
                 (local.get $5)
                 (local.get $1)
                )
               )
               (br_if $label$3
                (i32.ne
                 (i32.load offset=8
                  (local.get $1)
                 )
                 (local.get $2)
                )
               )
              )
             )
             (i32.store offset=12
              (local.get $4)
              (local.get $1)
             )
             (i32.store offset=8
              (local.get $1)
              (local.get $4)
             )
             (br $label$103)
            )
           )
           (local.set $10
            (i32.load offset=24
             (local.get $2)
            )
           )
           (block $label$108
            (if
             (i32.ne
              (local.get $2)
              (local.tee $6
               (i32.load offset=12
                (local.get $2)
               )
              )
             )
             (block
              (br_if $label$3
               (i32.gt_u
                (local.get $5)
                (local.tee $1
                 (i32.load offset=8
                  (local.get $2)
                 )
                )
               )
              )
              (br_if $label$3
               (i32.ne
                (i32.load offset=12
                 (local.get $1)
                )
                (local.get $2)
               )
              )
              (br_if $label$3
               (i32.ne
                (i32.load offset=8
                 (local.get $6)
                )
                (local.get $2)
               )
              )
              (i32.store offset=12
               (local.get $1)
               (local.get $6)
              )
              (i32.store offset=8
               (local.get $6)
               (local.get $1)
              )
              (br $label$108)
             )
            )
            (block $label$110
             (br_if $label$110
              (local.tee $4
               (i32.load
                (local.tee $1
                 (i32.add
                  (local.get $2)
                  (i32.const 20)
                 )
                )
               )
              )
             )
             (br_if $label$110
              (local.tee $4
               (i32.load
                (local.tee $1
                 (i32.add
                  (local.get $2)
                  (i32.const 16)
                 )
                )
               )
              )
             )
             (local.set $6
              (i32.const 0)
             )
             (br $label$108)
            )
            (loop $label$111
             (local.set $8
              (local.get $1)
             )
             (br_if $label$111
              (local.tee $4
               (i32.load
                (local.tee $1
                 (i32.add
                  (local.tee $6
                   (local.get $4)
                  )
                  (i32.const 20)
                 )
                )
               )
              )
             )
             (local.set $1
              (i32.add
               (local.get $6)
               (i32.const 16)
              )
             )
             (br_if $label$111
              (local.tee $4
               (i32.load offset=16
                (local.get $6)
               )
              )
             )
            )
            (br_if $label$3
             (i32.gt_u
              (local.get $5)
              (local.get $8)
             )
            )
            (i32.store
             (local.get $8)
             (i32.const 0)
            )
           )
           (br_if $label$103
            (i32.eqz
             (local.get $10)
            )
           )
           (block $label$112
            (if
             (i32.eq
              (local.get $2)
              (i32.load
               (local.tee $1
                (i32.add
                 (i32.shl
                  (local.tee $4
                   (i32.load offset=28
                    (local.get $2)
                   )
                  )
                  (i32.const 2)
                 )
                 (i32.const 2988)
                )
               )
              )
             )
             (block
              (i32.store
               (local.get $1)
               (local.get $6)
              )
              (br_if $label$112
               (local.get $6)
              )
              (i32.store
               (i32.const 2688)
               (i32.and
                (i32.load
                 (i32.const 2688)
                )
                (i32.rotl
                 (i32.const -2)
                 (local.get $4)
                )
               )
              )
              (br $label$103)
             )
            )
            (br_if $label$3
             (i32.gt_u
              (i32.load
               (i32.const 2700)
              )
              (local.get $10)
             )
            )
            (i32.store
             (i32.add
              (local.get $10)
              (select
               (i32.const 16)
               (i32.const 20)
               (i32.eq
                (i32.load offset=16
                 (local.get $10)
                )
                (local.get $2)
               )
              )
             )
             (local.get $6)
            )
            (br_if $label$103
             (i32.eqz
              (local.get $6)
             )
            )
           )
           (br_if $label$3
            (i32.gt_u
             (local.tee $4
              (i32.load
               (i32.const 2700)
              )
             )
             (local.get $6)
            )
           )
           (i32.store offset=24
            (local.get $6)
            (local.get $10)
           )
           (if
            (local.tee $1
             (i32.load offset=16
              (local.get $2)
             )
            )
            (block
             (br_if $label$3
              (i32.gt_u
               (local.get $4)
               (local.get $1)
              )
             )
             (i32.store offset=16
              (local.get $6)
              (local.get $1)
             )
             (i32.store offset=24
              (local.get $1)
              (local.get $6)
             )
            )
           )
           (br_if $label$103
            (i32.eqz
             (local.tee $1
              (i32.load offset=20
               (local.get $2)
              )
             )
            )
           )
           (br_if $label$3
            (i32.gt_u
             (i32.load
              (i32.const 2700)
             )
             (local.get $1)
            )
           )
           (i32.store offset=20
            (local.get $6)
            (local.get $1)
           )
           (i32.store offset=24
            (local.get $1)
            (local.get $6)
           )
          )
          (local.set $0
           (i32.add
            (local.tee $1
             (i32.and
              (local.get $9)
              (i32.const -8)
             )
            )
            (local.get $0)
           )
          )
          (local.set $2
           (i32.add
            (local.get $1)
            (local.get $2)
           )
          )
         )
        )
        (i32.store offset=4
         (local.get $2)
         (i32.and
          (i32.load offset=4
           (local.get $2)
          )
          (i32.const -2)
         )
        )
        (i32.store offset=4
         (local.get $3)
         (i32.or
          (local.get $0)
          (i32.const 1)
         )
        )
        (i32.store
         (i32.add
          (local.get $0)
          (local.get $3)
         )
         (local.get $0)
        )
        (if
         (i32.le_u
          (local.get $0)
          (i32.const 255)
         )
         (block
          (local.set $0
           (i32.add
            (i32.shl
             (local.tee $1
              (i32.shr_u
               (local.get $0)
               (i32.const 3)
              )
             )
             (i32.const 3)
            )
            (i32.const 2724)
           )
          )
          (block $label$116
           (if
            (i32.eqz
             (i32.and
              (local.tee $4
               (i32.load
                (i32.const 2684)
               )
              )
              (local.tee $1
               (i32.shl
                (i32.const 1)
                (local.get $1)
               )
              )
             )
            )
            (block
             (i32.store
              (i32.const 2684)
              (i32.or
               (local.get $1)
               (local.get $4)
              )
             )
             (local.set $1
              (local.get $0)
             )
             (br $label$116)
            )
           )
           (br_if $label$3
            (i32.gt_u
             (i32.load
              (i32.const 2700)
             )
             (local.tee $1
              (i32.load offset=8
               (local.get $0)
              )
             )
            )
           )
          )
          (i32.store offset=8
           (local.get $0)
           (local.get $3)
          )
          (i32.store offset=12
           (local.get $1)
           (local.get $3)
          )
          (i32.store offset=12
           (local.get $3)
           (local.get $0)
          )
          (i32.store offset=8
           (local.get $3)
           (local.get $1)
          )
          (br $label$99)
         )
        )
        (i32.store offset=28
         (local.get $3)
         (local.tee $1
          (block $label$118 (result i32)
           (drop
            (br_if $label$118
             (i32.const 0)
             (i32.eqz
              (local.tee $4
               (i32.shr_u
                (local.get $0)
                (i32.const 8)
               )
              )
             )
            )
           )
           (drop
            (br_if $label$118
             (i32.const 31)
             (i32.gt_u
              (local.get $0)
              (i32.const 16777215)
             )
            )
           )
           (i32.add
            (i32.or
             (i32.shl
              (local.tee $1
               (i32.sub
                (i32.shr_u
                 (i32.shl
                  (local.tee $2
                   (i32.shl
                    (local.tee $4
                     (i32.shl
                      (local.get $4)
                      (local.tee $1
                       (i32.and
                        (i32.shr_u
                         (i32.add
                          (local.get $4)
                          (i32.const 1048320)
                         )
                         (i32.const 16)
                        )
                        (i32.const 8)
                       )
                      )
                     )
                    )
                    (local.tee $4
                     (i32.and
                      (i32.shr_u
                       (i32.add
                        (local.get $4)
                        (i32.const 520192)
                       )
                       (i32.const 16)
                      )
                      (i32.const 4)
                     )
                    )
                   )
                  )
                  (local.tee $2
                   (i32.and
                    (i32.shr_u
                     (i32.add
                      (local.get $2)
                      (i32.const 245760)
                     )
                     (i32.const 16)
                    )
                    (i32.const 2)
                   )
                  )
                 )
                 (i32.const 15)
                )
                (i32.or
                 (i32.or
                  (local.get $1)
                  (local.get $4)
                 )
                 (local.get $2)
                )
               )
              )
              (i32.const 1)
             )
             (i32.and
              (i32.shr_u
               (local.get $0)
               (i32.add
                (local.get $1)
                (i32.const 21)
               )
              )
              (i32.const 1)
             )
            )
            (i32.const 28)
           )
          )
         )
        )
        (i64.store offset=16 align=4
         (local.get $3)
         (i64.const 0)
        )
        (local.set $4
         (i32.add
          (i32.shl
           (local.get $1)
           (i32.const 2)
          )
          (i32.const 2988)
         )
        )
        (block $label$119
         (block $label$120
          (if
           (i32.eqz
            (i32.and
             (local.tee $2
              (i32.load
               (i32.const 2688)
              )
             )
             (local.tee $5
              (i32.shl
               (i32.const 1)
               (local.get $1)
              )
             )
            )
           )
           (block
            (i32.store
             (i32.const 2688)
             (i32.or
              (local.get $2)
              (local.get $5)
             )
            )
            (i32.store
             (local.get $4)
             (local.get $3)
            )
            (i32.store offset=24
             (local.get $3)
             (local.get $4)
            )
            (br $label$120)
           )
          )
          (local.set $1
           (i32.shl
            (local.get $0)
            (select
             (i32.const 0)
             (i32.sub
              (i32.const 25)
              (i32.shr_u
               (local.get $1)
               (i32.const 1)
              )
             )
             (i32.eq
              (local.get $1)
              (i32.const 31)
             )
            )
           )
          )
          (local.set $2
           (i32.load
            (local.get $4)
           )
          )
          (loop $label$122
           (br_if $label$119
            (i32.eq
             (i32.and
              (i32.load offset=4
               (local.tee $4
                (local.get $2)
               )
              )
              (i32.const -8)
             )
             (local.get $0)
            )
           )
           (local.set $2
            (i32.shr_u
             (local.get $1)
             (i32.const 29)
            )
           )
           (local.set $1
            (i32.shl
             (local.get $1)
             (i32.const 1)
            )
           )
           (br_if $label$122
            (local.tee $2
             (i32.load
              (local.tee $5
               (i32.add
                (i32.add
                 (local.get $4)
                 (i32.and
                  (local.get $2)
                  (i32.const 4)
                 )
                )
                (i32.const 16)
               )
              )
             )
            )
           )
          )
          (br_if $label$3
           (i32.gt_u
            (i32.load
             (i32.const 2700)
            )
            (local.get $5)
           )
          )
          (i32.store
           (local.get $5)
           (local.get $3)
          )
          (i32.store offset=24
           (local.get $3)
           (local.get $4)
          )
         )
         (i32.store offset=12
          (local.get $3)
          (local.get $3)
         )
         (i32.store offset=8
          (local.get $3)
          (local.get $3)
         )
         (br $label$99)
        )
        (br_if $label$3
         (i32.gt_u
          (local.tee $1
           (i32.load
            (i32.const 2700)
           )
          )
          (local.tee $0
           (i32.load offset=8
            (local.get $4)
           )
          )
         )
        )
        (br_if $label$3
         (i32.gt_u
          (local.get $1)
          (local.get $4)
         )
        )
        (i32.store offset=12
         (local.get $0)
         (local.get $3)
        )
        (i32.store offset=8
         (local.get $4)
         (local.get $3)
        )
        (i32.store offset=24
         (local.get $3)
         (i32.const 0)
        )
        (i32.store offset=12
         (local.get $3)
         (local.get $4)
        )
        (i32.store offset=8
         (local.get $3)
         (local.get $0)
        )
       )
       (local.set $0
        (i32.add
         (local.get $7)
         (i32.const 8)
        )
       )
       (br $label$1)
      )
      (i32.store
       (i32.const 2696)
       (local.tee $7
        (i32.sub
         (local.tee $0
          (i32.add
           (local.get $6)
           (i32.const -40)
          )
         )
         (local.tee $5
          (select
           (i32.and
            (i32.sub
             (i32.const -8)
             (local.get $2)
            )
            (i32.const 7)
           )
           (i32.const 0)
           (i32.and
            (i32.add
             (local.get $2)
             (i32.const 8)
            )
            (i32.const 7)
           )
          )
         )
        )
       )
      )
      (i32.store
       (i32.const 2708)
       (local.tee $5
        (i32.add
         (local.get $2)
         (local.get $5)
        )
       )
      )
      (i32.store offset=4
       (local.get $5)
       (i32.or
        (local.get $7)
        (i32.const 1)
       )
      )
      (i32.store offset=4
       (i32.add
        (local.get $0)
        (local.get $2)
       )
       (i32.const 40)
      )
      (i32.store
       (i32.const 2712)
       (i32.load
        (i32.const 3172)
       )
      )
      (i32.store offset=4
       (local.tee $5
        (select
         (local.get $1)
         (local.tee $0
          (i32.add
           (i32.add
            (local.get $3)
            (select
             (i32.and
              (i32.sub
               (i32.const 39)
               (local.get $3)
              )
              (i32.const 7)
             )
             (i32.const 0)
             (i32.and
              (i32.add
               (local.get $3)
               (i32.const -39)
              )
              (i32.const 7)
             )
            )
           )
           (i32.const -47)
          )
         )
         (i32.lt_u
          (local.get $0)
          (i32.add
           (local.get $1)
           (i32.const 16)
          )
         )
        )
       )
       (i32.const 27)
      )
      (i64.store offset=16 align=4
       (local.get $5)
       (i64.load align=4
        (i32.const 3140)
       )
      )
      (i64.store offset=8 align=4
       (local.get $5)
       (i64.load align=4
        (i32.const 3132)
       )
      )
      (i32.store
       (i32.const 3140)
       (i32.add
        (local.get $5)
        (i32.const 8)
       )
      )
      (i32.store
       (i32.const 3136)
       (local.get $6)
      )
      (i32.store
       (i32.const 3132)
       (local.get $2)
      )
      (i32.store
       (i32.const 3144)
       (i32.const 0)
      )
      (local.set $0
       (i32.add
        (local.get $5)
        (i32.const 24)
       )
      )
      (loop $label$123
       (i32.store offset=4
        (local.get $0)
        (i32.const 7)
       )
       (local.set $2
        (i32.add
         (local.get $0)
         (i32.const 8)
        )
       )
       (local.set $0
        (i32.add
         (local.get $0)
         (i32.const 4)
        )
       )
       (br_if $label$123
        (i32.lt_u
         (local.get $2)
         (local.get $3)
        )
       )
      )
      (br_if $label$83
       (i32.eq
        (local.get $1)
        (local.get $5)
       )
      )
      (i32.store offset=4
       (local.get $5)
       (i32.and
        (i32.load offset=4
         (local.get $5)
        )
        (i32.const -2)
       )
      )
      (i32.store offset=4
       (local.get $1)
       (i32.or
        (local.tee $6
         (i32.sub
          (local.get $5)
          (local.get $1)
         )
        )
        (i32.const 1)
       )
      )
      (i32.store
       (local.get $5)
       (local.get $6)
      )
      (if
       (i32.le_u
        (local.get $6)
        (i32.const 255)
       )
       (block
        (local.set $0
         (i32.add
          (i32.shl
           (local.tee $3
            (i32.shr_u
             (local.get $6)
             (i32.const 3)
            )
           )
           (i32.const 3)
          )
          (i32.const 2724)
         )
        )
        (block $label$125
         (if
          (i32.eqz
           (i32.and
            (local.tee $2
             (i32.load
              (i32.const 2684)
             )
            )
            (local.tee $3
             (i32.shl
              (i32.const 1)
              (local.get $3)
             )
            )
           )
          )
          (block
           (i32.store
            (i32.const 2684)
            (i32.or
             (local.get $2)
             (local.get $3)
            )
           )
           (local.set $3
            (local.get $0)
           )
           (br $label$125)
          )
         )
         (br_if $label$3
          (i32.gt_u
           (i32.load
            (i32.const 2700)
           )
           (local.tee $3
            (i32.load offset=8
             (local.get $0)
            )
           )
          )
         )
        )
        (i32.store offset=8
         (local.get $0)
         (local.get $1)
        )
        (i32.store offset=12
         (local.get $3)
         (local.get $1)
        )
        (i32.store offset=12
         (local.get $1)
         (local.get $0)
        )
        (i32.store offset=8
         (local.get $1)
         (local.get $3)
        )
        (br $label$83)
       )
      )
      (i64.store offset=16 align=4
       (local.get $1)
       (i64.const 0)
      )
      (i32.store offset=28
       (local.get $1)
       (local.tee $0
        (block $label$127 (result i32)
         (drop
          (br_if $label$127
           (i32.const 0)
           (i32.eqz
            (local.tee $3
             (i32.shr_u
              (local.get $6)
              (i32.const 8)
             )
            )
           )
          )
         )
         (drop
          (br_if $label$127
           (i32.const 31)
           (i32.gt_u
            (local.get $6)
            (i32.const 16777215)
           )
          )
         )
         (i32.add
          (i32.or
           (i32.shl
            (local.tee $0
             (i32.sub
              (i32.shr_u
               (i32.shl
                (local.tee $2
                 (i32.shl
                  (local.tee $3
                   (i32.shl
                    (local.get $3)
                    (local.tee $0
                     (i32.and
                      (i32.shr_u
                       (i32.add
                        (local.get $3)
                        (i32.const 1048320)
                       )
                       (i32.const 16)
                      )
                      (i32.const 8)
                     )
                    )
                   )
                  )
                  (local.tee $3
                   (i32.and
                    (i32.shr_u
                     (i32.add
                      (local.get $3)
                      (i32.const 520192)
                     )
                     (i32.const 16)
                    )
                    (i32.const 4)
                   )
                  )
                 )
                )
                (local.tee $2
                 (i32.and
                  (i32.shr_u
                   (i32.add
                    (local.get $2)
                    (i32.const 245760)
                   )
                   (i32.const 16)
                  )
                  (i32.const 2)
                 )
                )
               )
               (i32.const 15)
              )
              (i32.or
               (i32.or
                (local.get $0)
                (local.get $3)
               )
               (local.get $2)
              )
             )
            )
            (i32.const 1)
           )
           (i32.and
            (i32.shr_u
             (local.get $6)
             (i32.add
              (local.get $0)
              (i32.const 21)
             )
            )
            (i32.const 1)
           )
          )
          (i32.const 28)
         )
        )
       )
      )
      (local.set $3
       (i32.add
        (i32.shl
         (local.get $0)
         (i32.const 2)
        )
        (i32.const 2988)
       )
      )
      (block $label$128
       (block $label$129
        (if
         (i32.eqz
          (i32.and
           (local.tee $2
            (i32.load
             (i32.const 2688)
            )
           )
           (local.tee $5
            (i32.shl
             (i32.const 1)
             (local.get $0)
            )
           )
          )
         )
         (block
          (i32.store
           (i32.const 2688)
           (i32.or
            (local.get $2)
            (local.get $5)
           )
          )
          (i32.store
           (local.get $3)
           (local.get $1)
          )
          (i32.store offset=24
           (local.get $1)
           (local.get $3)
          )
          (br $label$129)
         )
        )
        (local.set $0
         (i32.shl
          (local.get $6)
          (select
           (i32.const 0)
           (i32.sub
            (i32.const 25)
            (i32.shr_u
             (local.get $0)
             (i32.const 1)
            )
           )
           (i32.eq
            (local.get $0)
            (i32.const 31)
           )
          )
         )
        )
        (local.set $2
         (i32.load
          (local.get $3)
         )
        )
        (loop $label$131
         (br_if $label$128
          (i32.eq
           (i32.and
            (i32.load offset=4
             (local.tee $3
              (local.get $2)
             )
            )
            (i32.const -8)
           )
           (local.get $6)
          )
         )
         (local.set $2
          (i32.shr_u
           (local.get $0)
           (i32.const 29)
          )
         )
         (local.set $0
          (i32.shl
           (local.get $0)
           (i32.const 1)
          )
         )
         (br_if $label$131
          (local.tee $2
           (i32.load
            (local.tee $5
             (i32.add
              (i32.add
               (local.get $3)
               (i32.and
                (local.get $2)
                (i32.const 4)
               )
              )
              (i32.const 16)
             )
            )
           )
          )
         )
        )
        (br_if $label$3
         (i32.gt_u
          (i32.load
           (i32.const 2700)
          )
          (local.get $5)
         )
        )
        (i32.store
         (local.get $5)
         (local.get $1)
        )
        (i32.store offset=24
         (local.get $1)
         (local.get $3)
        )
       )
       (i32.store offset=12
        (local.get $1)
        (local.get $1)
       )
       (i32.store offset=8
        (local.get $1)
        (local.get $1)
       )
       (br $label$83)
      )
      (br_if $label$3
       (i32.gt_u
        (local.tee $2
         (i32.load
          (i32.const 2700)
         )
        )
        (local.tee $0
         (i32.load offset=8
          (local.get $3)
         )
        )
       )
      )
      (br_if $label$3
       (i32.gt_u
        (local.get $2)
        (local.get $3)
       )
      )
      (i32.store offset=12
       (local.get $0)
       (local.get $1)
      )
      (i32.store offset=8
       (local.get $3)
       (local.get $1)
      )
      (i32.store offset=24
       (local.get $1)
       (i32.const 0)
      )
      (i32.store offset=12
       (local.get $1)
       (local.get $3)
      )
      (i32.store offset=8
       (local.get $1)
       (local.get $0)
      )
     )
     (br_if $label$2
      (i32.le_u
       (local.tee $0
        (i32.load
         (i32.const 2696)
        )
       )
       (local.get $4)
      )
     )
     (i32.store
      (i32.const 2696)
      (local.tee $1
       (i32.sub
        (local.get $0)
        (local.get $4)
       )
      )
     )
     (i32.store
      (i32.const 2708)
      (local.tee $3
       (i32.add
        (local.tee $0
         (i32.load
          (i32.const 2708)
         )
        )
        (local.get $4)
       )
      )
     )
     (i32.store offset=4
      (local.get $3)
      (i32.or
       (local.get $1)
       (i32.const 1)
      )
     )
     (i32.store offset=4
      (local.get $0)
      (i32.or
       (local.get $4)
       (i32.const 3)
      )
     )
     (local.set $0
      (i32.add
       (local.get $0)
       (i32.const 8)
      )
     )
     (br $label$1)
    )
    (call $abort)
    (unreachable)
   )
   (i32.store
    (i32.const 2680)
    (i32.const 12)
   )
   (local.set $0
    (i32.const 0)
   )
  )
  (global.set $global$0
   (i32.add
    (local.get $12)
    (i32.const 16)
   )
  )
  (local.get $0)
 )
 (func $free (; 38 ;) (type $13) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (block $label$1
   (block $label$2
    (br_if $label$2
     (i32.eqz
      (local.get $0)
     )
    )
    (br_if $label$1
     (i32.lt_u
      (local.tee $2
       (i32.add
        (local.get $0)
        (i32.const -8)
       )
      )
      (local.tee $7
       (i32.load
        (i32.const 2700)
       )
      )
     )
    )
    (br_if $label$1
     (i32.eq
      (local.tee $4
       (i32.and
        (local.tee $1
         (i32.load
          (i32.add
           (local.get $0)
           (i32.const -4)
          )
         )
        )
        (i32.const 3)
       )
      )
      (i32.const 1)
     )
    )
    (local.set $5
     (i32.add
      (local.get $2)
      (local.tee $0
       (i32.and
        (local.get $1)
        (i32.const -8)
       )
      )
     )
    )
    (block $label$3
     (br_if $label$3
      (i32.and
       (local.get $1)
       (i32.const 1)
      )
     )
     (br_if $label$2
      (i32.eqz
       (local.get $4)
      )
     )
     (br_if $label$1
      (i32.lt_u
       (local.tee $2
        (i32.sub
         (local.get $2)
         (local.tee $1
          (i32.load
           (local.get $2)
          )
         )
        )
       )
       (local.get $7)
      )
     )
     (local.set $0
      (i32.add
       (local.get $0)
       (local.get $1)
      )
     )
     (if
      (i32.ne
       (local.get $2)
       (i32.load
        (i32.const 2704)
       )
      )
      (block
       (if
        (i32.le_u
         (local.get $1)
         (i32.const 255)
        )
        (block
         (local.set $4
          (i32.load offset=12
           (local.get $2)
          )
         )
         (if
          (i32.ne
           (local.tee $3
            (i32.load offset=8
             (local.get $2)
            )
           )
           (local.tee $1
            (i32.add
             (i32.shl
              (local.tee $8
               (i32.shr_u
                (local.get $1)
                (i32.const 3)
               )
              )
              (i32.const 3)
             )
             (i32.const 2724)
            )
           )
          )
          (block
           (br_if $label$1
            (i32.gt_u
             (local.get $7)
             (local.get $3)
            )
           )
           (br_if $label$1
            (i32.ne
             (i32.load offset=12
              (local.get $3)
             )
             (local.get $2)
            )
           )
          )
         )
         (if
          (i32.eq
           (local.get $3)
           (local.get $4)
          )
          (block
           (i32.store
            (i32.const 2684)
            (i32.and
             (i32.load
              (i32.const 2684)
             )
             (i32.rotl
              (i32.const -2)
              (local.get $8)
             )
            )
           )
           (br $label$3)
          )
         )
         (if
          (i32.ne
           (local.get $1)
           (local.get $4)
          )
          (block
           (br_if $label$1
            (i32.gt_u
             (local.get $7)
             (local.get $4)
            )
           )
           (br_if $label$1
            (i32.ne
             (i32.load offset=8
              (local.get $4)
             )
             (local.get $2)
            )
           )
          )
         )
         (i32.store offset=12
          (local.get $3)
          (local.get $4)
         )
         (i32.store offset=8
          (local.get $4)
          (local.get $3)
         )
         (br $label$3)
        )
       )
       (local.set $6
        (i32.load offset=24
         (local.get $2)
        )
       )
       (block $label$9
        (if
         (i32.ne
          (local.get $2)
          (local.tee $3
           (i32.load offset=12
            (local.get $2)
           )
          )
         )
         (block
          (br_if $label$1
           (i32.gt_u
            (local.get $7)
            (local.tee $1
             (i32.load offset=8
              (local.get $2)
             )
            )
           )
          )
          (br_if $label$1
           (i32.ne
            (i32.load offset=12
             (local.get $1)
            )
            (local.get $2)
           )
          )
          (br_if $label$1
           (i32.ne
            (i32.load offset=8
             (local.get $3)
            )
            (local.get $2)
           )
          )
          (i32.store offset=12
           (local.get $1)
           (local.get $3)
          )
          (i32.store offset=8
           (local.get $3)
           (local.get $1)
          )
          (br $label$9)
         )
        )
        (block $label$11
         (br_if $label$11
          (local.tee $4
           (i32.load
            (local.tee $1
             (i32.add
              (local.get $2)
              (i32.const 20)
             )
            )
           )
          )
         )
         (br_if $label$11
          (local.tee $4
           (i32.load
            (local.tee $1
             (i32.add
              (local.get $2)
              (i32.const 16)
             )
            )
           )
          )
         )
         (local.set $3
          (i32.const 0)
         )
         (br $label$9)
        )
        (loop $label$12
         (local.set $8
          (local.get $1)
         )
         (br_if $label$12
          (local.tee $4
           (i32.load
            (local.tee $1
             (i32.add
              (local.tee $3
               (local.get $4)
              )
              (i32.const 20)
             )
            )
           )
          )
         )
         (local.set $1
          (i32.add
           (local.get $3)
           (i32.const 16)
          )
         )
         (br_if $label$12
          (local.tee $4
           (i32.load offset=16
            (local.get $3)
           )
          )
         )
        )
        (br_if $label$1
         (i32.gt_u
          (local.get $7)
          (local.get $8)
         )
        )
        (i32.store
         (local.get $8)
         (i32.const 0)
        )
       )
       (br_if $label$3
        (i32.eqz
         (local.get $6)
        )
       )
       (block $label$13
        (if
         (i32.eq
          (local.get $2)
          (i32.load
           (local.tee $1
            (i32.add
             (i32.shl
              (local.tee $4
               (i32.load offset=28
                (local.get $2)
               )
              )
              (i32.const 2)
             )
             (i32.const 2988)
            )
           )
          )
         )
         (block
          (i32.store
           (local.get $1)
           (local.get $3)
          )
          (br_if $label$13
           (local.get $3)
          )
          (i32.store
           (i32.const 2688)
           (i32.and
            (i32.load
             (i32.const 2688)
            )
            (i32.rotl
             (i32.const -2)
             (local.get $4)
            )
           )
          )
          (br $label$3)
         )
        )
        (br_if $label$1
         (i32.gt_u
          (i32.load
           (i32.const 2700)
          )
          (local.get $6)
         )
        )
        (i32.store
         (i32.add
          (local.get $6)
          (select
           (i32.const 16)
           (i32.const 20)
           (i32.eq
            (i32.load offset=16
             (local.get $6)
            )
            (local.get $2)
           )
          )
         )
         (local.get $3)
        )
        (br_if $label$3
         (i32.eqz
          (local.get $3)
         )
        )
       )
       (br_if $label$1
        (i32.gt_u
         (local.tee $4
          (i32.load
           (i32.const 2700)
          )
         )
         (local.get $3)
        )
       )
       (i32.store offset=24
        (local.get $3)
        (local.get $6)
       )
       (if
        (local.tee $1
         (i32.load offset=16
          (local.get $2)
         )
        )
        (block
         (br_if $label$1
          (i32.gt_u
           (local.get $4)
           (local.get $1)
          )
         )
         (i32.store offset=16
          (local.get $3)
          (local.get $1)
         )
         (i32.store offset=24
          (local.get $1)
          (local.get $3)
         )
        )
       )
       (br_if $label$3
        (i32.eqz
         (local.tee $1
          (i32.load offset=20
           (local.get $2)
          )
         )
        )
       )
       (br_if $label$1
        (i32.gt_u
         (i32.load
          (i32.const 2700)
         )
         (local.get $1)
        )
       )
       (i32.store offset=20
        (local.get $3)
        (local.get $1)
       )
       (i32.store offset=24
        (local.get $1)
        (local.get $3)
       )
       (br $label$3)
      )
     )
     (br_if $label$3
      (i32.ne
       (i32.and
        (local.tee $1
         (i32.load offset=4
          (local.get $5)
         )
        )
        (i32.const 3)
       )
       (i32.const 3)
      )
     )
     (i32.store
      (i32.const 2692)
      (local.get $0)
     )
     (i32.store offset=4
      (local.get $5)
      (i32.and
       (local.get $1)
       (i32.const -2)
      )
     )
     (i32.store offset=4
      (local.get $2)
      (i32.or
       (local.get $0)
       (i32.const 1)
      )
     )
     (i32.store
      (i32.add
       (local.get $0)
       (local.get $2)
      )
      (local.get $0)
     )
     (return)
    )
    (br_if $label$1
     (i32.le_u
      (local.get $5)
      (local.get $2)
     )
    )
    (br_if $label$1
     (i32.eqz
      (i32.and
       (local.tee $8
        (i32.load offset=4
         (local.get $5)
        )
       )
       (i32.const 1)
      )
     )
    )
    (block $label$16
     (if
      (i32.eqz
       (i32.and
        (local.get $8)
        (i32.const 2)
       )
      )
      (block
       (if
        (i32.eq
         (local.get $5)
         (i32.load
          (i32.const 2708)
         )
        )
        (block
         (i32.store
          (i32.const 2708)
          (local.get $2)
         )
         (i32.store
          (i32.const 2696)
          (local.tee $0
           (i32.add
            (i32.load
             (i32.const 2696)
            )
            (local.get $0)
           )
          )
         )
         (i32.store offset=4
          (local.get $2)
          (i32.or
           (local.get $0)
           (i32.const 1)
          )
         )
         (br_if $label$2
          (i32.ne
           (local.get $2)
           (i32.load
            (i32.const 2704)
           )
          )
         )
         (i32.store
          (i32.const 2692)
          (i32.const 0)
         )
         (i32.store
          (i32.const 2704)
          (i32.const 0)
         )
         (return)
        )
       )
       (if
        (i32.eq
         (local.get $5)
         (i32.load
          (i32.const 2704)
         )
        )
        (block
         (i32.store
          (i32.const 2704)
          (local.get $2)
         )
         (i32.store
          (i32.const 2692)
          (local.tee $0
           (i32.add
            (i32.load
             (i32.const 2692)
            )
            (local.get $0)
           )
          )
         )
         (i32.store offset=4
          (local.get $2)
          (i32.or
           (local.get $0)
           (i32.const 1)
          )
         )
         (i32.store
          (i32.add
           (local.get $0)
           (local.get $2)
          )
          (local.get $0)
         )
         (return)
        )
       )
       (block $label$20
        (if
         (i32.le_u
          (local.get $8)
          (i32.const 255)
         )
         (block
          (local.set $1
           (i32.load offset=12
            (local.get $5)
           )
          )
          (if
           (i32.ne
            (local.tee $4
             (i32.load offset=8
              (local.get $5)
             )
            )
            (local.tee $3
             (i32.add
              (i32.shl
               (local.tee $7
                (i32.shr_u
                 (local.get $8)
                 (i32.const 3)
                )
               )
               (i32.const 3)
              )
              (i32.const 2724)
             )
            )
           )
           (block
            (br_if $label$1
             (i32.gt_u
              (i32.load
               (i32.const 2700)
              )
              (local.get $4)
             )
            )
            (br_if $label$1
             (i32.ne
              (i32.load offset=12
               (local.get $4)
              )
              (local.get $5)
             )
            )
           )
          )
          (if
           (i32.eq
            (local.get $1)
            (local.get $4)
           )
           (block
            (i32.store
             (i32.const 2684)
             (i32.and
              (i32.load
               (i32.const 2684)
              )
              (i32.rotl
               (i32.const -2)
               (local.get $7)
              )
             )
            )
            (br $label$20)
           )
          )
          (if
           (i32.ne
            (local.get $1)
            (local.get $3)
           )
           (block
            (br_if $label$1
             (i32.gt_u
              (i32.load
               (i32.const 2700)
              )
              (local.get $1)
             )
            )
            (br_if $label$1
             (i32.ne
              (i32.load offset=8
               (local.get $1)
              )
              (local.get $5)
             )
            )
           )
          )
          (i32.store offset=12
           (local.get $4)
           (local.get $1)
          )
          (i32.store offset=8
           (local.get $1)
           (local.get $4)
          )
          (br $label$20)
         )
        )
        (local.set $6
         (i32.load offset=24
          (local.get $5)
         )
        )
        (block $label$25
         (if
          (i32.ne
           (local.get $5)
           (local.tee $3
            (i32.load offset=12
             (local.get $5)
            )
           )
          )
          (block
           (br_if $label$1
            (i32.gt_u
             (i32.load
              (i32.const 2700)
             )
             (local.tee $1
              (i32.load offset=8
               (local.get $5)
              )
             )
            )
           )
           (br_if $label$1
            (i32.ne
             (i32.load offset=12
              (local.get $1)
             )
             (local.get $5)
            )
           )
           (br_if $label$1
            (i32.ne
             (i32.load offset=8
              (local.get $3)
             )
             (local.get $5)
            )
           )
           (i32.store offset=12
            (local.get $1)
            (local.get $3)
           )
           (i32.store offset=8
            (local.get $3)
            (local.get $1)
           )
           (br $label$25)
          )
         )
         (block $label$27
          (br_if $label$27
           (local.tee $4
            (i32.load
             (local.tee $1
              (i32.add
               (local.get $5)
               (i32.const 20)
              )
             )
            )
           )
          )
          (br_if $label$27
           (local.tee $4
            (i32.load
             (local.tee $1
              (i32.add
               (local.get $5)
               (i32.const 16)
              )
             )
            )
           )
          )
          (local.set $3
           (i32.const 0)
          )
          (br $label$25)
         )
         (loop $label$28
          (local.set $7
           (local.get $1)
          )
          (br_if $label$28
           (local.tee $4
            (i32.load
             (local.tee $1
              (i32.add
               (local.tee $3
                (local.get $4)
               )
               (i32.const 20)
              )
             )
            )
           )
          )
          (local.set $1
           (i32.add
            (local.get $3)
            (i32.const 16)
           )
          )
          (br_if $label$28
           (local.tee $4
            (i32.load offset=16
             (local.get $3)
            )
           )
          )
         )
         (br_if $label$1
          (i32.gt_u
           (i32.load
            (i32.const 2700)
           )
           (local.get $7)
          )
         )
         (i32.store
          (local.get $7)
          (i32.const 0)
         )
        )
        (br_if $label$20
         (i32.eqz
          (local.get $6)
         )
        )
        (block $label$29
         (if
          (i32.eq
           (local.get $5)
           (i32.load
            (local.tee $1
             (i32.add
              (i32.shl
               (local.tee $4
                (i32.load offset=28
                 (local.get $5)
                )
               )
               (i32.const 2)
              )
              (i32.const 2988)
             )
            )
           )
          )
          (block
           (i32.store
            (local.get $1)
            (local.get $3)
           )
           (br_if $label$29
            (local.get $3)
           )
           (i32.store
            (i32.const 2688)
            (i32.and
             (i32.load
              (i32.const 2688)
             )
             (i32.rotl
              (i32.const -2)
              (local.get $4)
             )
            )
           )
           (br $label$20)
          )
         )
         (br_if $label$1
          (i32.gt_u
           (i32.load
            (i32.const 2700)
           )
           (local.get $6)
          )
         )
         (i32.store
          (i32.add
           (local.get $6)
           (select
            (i32.const 16)
            (i32.const 20)
            (i32.eq
             (i32.load offset=16
              (local.get $6)
             )
             (local.get $5)
            )
           )
          )
          (local.get $3)
         )
         (br_if $label$20
          (i32.eqz
           (local.get $3)
          )
         )
        )
        (br_if $label$1
         (i32.gt_u
          (local.tee $4
           (i32.load
            (i32.const 2700)
           )
          )
          (local.get $3)
         )
        )
        (i32.store offset=24
         (local.get $3)
         (local.get $6)
        )
        (if
         (local.tee $1
          (i32.load offset=16
           (local.get $5)
          )
         )
         (block
          (br_if $label$1
           (i32.gt_u
            (local.get $4)
            (local.get $1)
           )
          )
          (i32.store offset=16
           (local.get $3)
           (local.get $1)
          )
          (i32.store offset=24
           (local.get $1)
           (local.get $3)
          )
         )
        )
        (br_if $label$20
         (i32.eqz
          (local.tee $1
           (i32.load offset=20
            (local.get $5)
           )
          )
         )
        )
        (br_if $label$1
         (i32.gt_u
          (i32.load
           (i32.const 2700)
          )
          (local.get $1)
         )
        )
        (i32.store offset=20
         (local.get $3)
         (local.get $1)
        )
        (i32.store offset=24
         (local.get $1)
         (local.get $3)
        )
       )
       (i32.store offset=4
        (local.get $2)
        (i32.or
         (local.tee $0
          (i32.add
           (i32.and
            (local.get $8)
            (i32.const -8)
           )
           (local.get $0)
          )
         )
         (i32.const 1)
        )
       )
       (i32.store
        (i32.add
         (local.get $0)
         (local.get $2)
        )
        (local.get $0)
       )
       (br_if $label$16
        (i32.ne
         (local.get $2)
         (i32.load
          (i32.const 2704)
         )
        )
       )
       (i32.store
        (i32.const 2692)
        (local.get $0)
       )
       (return)
      )
     )
     (i32.store offset=4
      (local.get $5)
      (i32.and
       (local.get $8)
       (i32.const -2)
      )
     )
     (i32.store offset=4
      (local.get $2)
      (i32.or
       (local.get $0)
       (i32.const 1)
      )
     )
     (i32.store
      (i32.add
       (local.get $0)
       (local.get $2)
      )
      (local.get $0)
     )
    )
    (if
     (i32.le_u
      (local.get $0)
      (i32.const 255)
     )
     (block
      (local.set $0
       (i32.add
        (i32.shl
         (local.tee $1
          (i32.shr_u
           (local.get $0)
           (i32.const 3)
          )
         )
         (i32.const 3)
        )
        (i32.const 2724)
       )
      )
      (block $label$33
       (if
        (i32.eqz
         (i32.and
          (local.tee $4
           (i32.load
            (i32.const 2684)
           )
          )
          (local.tee $1
           (i32.shl
            (i32.const 1)
            (local.get $1)
           )
          )
         )
        )
        (block
         (i32.store
          (i32.const 2684)
          (i32.or
           (local.get $1)
           (local.get $4)
          )
         )
         (local.set $1
          (local.get $0)
         )
         (br $label$33)
        )
       )
       (br_if $label$1
        (i32.gt_u
         (i32.load
          (i32.const 2700)
         )
         (local.tee $1
          (i32.load offset=8
           (local.get $0)
          )
         )
        )
       )
      )
      (i32.store offset=8
       (local.get $0)
       (local.get $2)
      )
      (i32.store offset=12
       (local.get $1)
       (local.get $2)
      )
      (i32.store offset=12
       (local.get $2)
       (local.get $0)
      )
      (i32.store offset=8
       (local.get $2)
       (local.get $1)
      )
      (return)
     )
    )
    (i64.store offset=16 align=4
     (local.get $2)
     (i64.const 0)
    )
    (i32.store offset=28
     (local.get $2)
     (local.tee $1
      (block $label$35 (result i32)
       (drop
        (br_if $label$35
         (i32.const 0)
         (i32.eqz
          (local.tee $4
           (i32.shr_u
            (local.get $0)
            (i32.const 8)
           )
          )
         )
        )
       )
       (drop
        (br_if $label$35
         (i32.const 31)
         (i32.gt_u
          (local.get $0)
          (i32.const 16777215)
         )
        )
       )
       (i32.add
        (i32.or
         (i32.shl
          (local.tee $1
           (i32.sub
            (i32.shr_u
             (i32.shl
              (local.tee $3
               (i32.shl
                (local.tee $4
                 (i32.shl
                  (local.get $4)
                  (local.tee $1
                   (i32.and
                    (i32.shr_u
                     (i32.add
                      (local.get $4)
                      (i32.const 1048320)
                     )
                     (i32.const 16)
                    )
                    (i32.const 8)
                   )
                  )
                 )
                )
                (local.tee $4
                 (i32.and
                  (i32.shr_u
                   (i32.add
                    (local.get $4)
                    (i32.const 520192)
                   )
                   (i32.const 16)
                  )
                  (i32.const 4)
                 )
                )
               )
              )
              (local.tee $3
               (i32.and
                (i32.shr_u
                 (i32.add
                  (local.get $3)
                  (i32.const 245760)
                 )
                 (i32.const 16)
                )
                (i32.const 2)
               )
              )
             )
             (i32.const 15)
            )
            (i32.or
             (i32.or
              (local.get $1)
              (local.get $4)
             )
             (local.get $3)
            )
           )
          )
          (i32.const 1)
         )
         (i32.and
          (i32.shr_u
           (local.get $0)
           (i32.add
            (local.get $1)
            (i32.const 21)
           )
          )
          (i32.const 1)
         )
        )
        (i32.const 28)
       )
      )
     )
    )
    (local.set $4
     (i32.add
      (i32.shl
       (local.get $1)
       (i32.const 2)
      )
      (i32.const 2988)
     )
    )
    (block $label$36
     (if
      (i32.eqz
       (i32.and
        (local.tee $3
         (i32.load
          (i32.const 2688)
         )
        )
        (local.tee $5
         (i32.shl
          (i32.const 1)
          (local.get $1)
         )
        )
       )
      )
      (block
       (i32.store
        (i32.const 2688)
        (i32.or
         (local.get $3)
         (local.get $5)
        )
       )
       (i32.store
        (local.get $4)
        (local.get $2)
       )
       (i32.store offset=12
        (local.get $2)
        (local.get $2)
       )
       (i32.store offset=24
        (local.get $2)
        (local.get $4)
       )
       (i32.store offset=8
        (local.get $2)
        (local.get $2)
       )
       (br $label$36)
      )
     )
     (local.set $1
      (i32.shl
       (local.get $0)
       (select
        (i32.const 0)
        (i32.sub
         (i32.const 25)
         (i32.shr_u
          (local.get $1)
          (i32.const 1)
         )
        )
        (i32.eq
         (local.get $1)
         (i32.const 31)
        )
       )
      )
     )
     (local.set $3
      (i32.load
       (local.get $4)
      )
     )
     (block $label$38
      (loop $label$39
       (br_if $label$38
        (i32.eq
         (i32.and
          (i32.load offset=4
           (local.tee $4
            (local.get $3)
           )
          )
          (i32.const -8)
         )
         (local.get $0)
        )
       )
       (local.set $3
        (i32.shr_u
         (local.get $1)
         (i32.const 29)
        )
       )
       (local.set $1
        (i32.shl
         (local.get $1)
         (i32.const 1)
        )
       )
       (br_if $label$39
        (local.tee $3
         (i32.load
          (local.tee $5
           (i32.add
            (i32.add
             (local.get $4)
             (i32.and
              (local.get $3)
              (i32.const 4)
             )
            )
            (i32.const 16)
           )
          )
         )
        )
       )
      )
      (br_if $label$1
       (i32.gt_u
        (i32.load
         (i32.const 2700)
        )
        (local.get $5)
       )
      )
      (i32.store
       (local.get $5)
       (local.get $2)
      )
      (i32.store offset=12
       (local.get $2)
       (local.get $2)
      )
      (i32.store offset=24
       (local.get $2)
       (local.get $4)
      )
      (i32.store offset=8
       (local.get $2)
       (local.get $2)
      )
      (br $label$36)
     )
     (br_if $label$1
      (i32.gt_u
       (local.tee $1
        (i32.load
         (i32.const 2700)
        )
       )
       (local.tee $0
        (i32.load offset=8
         (local.get $4)
        )
       )
      )
     )
     (br_if $label$1
      (i32.gt_u
       (local.get $1)
       (local.get $4)
      )
     )
     (i32.store offset=12
      (local.get $0)
      (local.get $2)
     )
     (i32.store offset=8
      (local.get $4)
      (local.get $2)
     )
     (i32.store offset=24
      (local.get $2)
      (i32.const 0)
     )
     (i32.store offset=12
      (local.get $2)
      (local.get $4)
     )
     (i32.store offset=8
      (local.get $2)
      (local.get $0)
     )
    )
    (i32.store
     (i32.const 2716)
     (local.tee $2
      (i32.add
       (i32.load
        (i32.const 2716)
       )
       (i32.const -1)
      )
     )
    )
    (br_if $label$2
     (local.get $2)
    )
    (local.set $2
     (i32.const 3140)
    )
    (loop $label$40
     (local.set $2
      (i32.add
       (local.tee $0
        (i32.load
         (local.get $2)
        )
       )
       (i32.const 8)
      )
     )
     (br_if $label$40
      (local.get $0)
     )
    )
    (i32.store
     (i32.const 2716)
     (i32.const -1)
    )
   )
   (return)
  )
  (call $abort)
  (unreachable)
 )
 (func $setThrew (; 39 ;) (type $2) (param $0 i32) (param $1 i32)
  (if
   (i32.eqz
    (i32.load
     (i32.const 3180)
    )
   )
   (block
    (i32.store
     (i32.const 3184)
     (local.get $1)
    )
    (i32.store
     (i32.const 3180)
     (local.get $0)
    )
   )
  )
 )
 (func $stackSave (; 40 ;) (type $6) (result i32)
  (global.get $global$0)
 )
 (func $stackAlloc (; 41 ;) (type $4) (param $0 i32) (result i32)
  (global.set $global$0
   (local.tee $0
    (i32.and
     (i32.sub
      (global.get $global$0)
      (local.get $0)
     )
     (i32.const -16)
    )
   )
  )
  (local.get $0)
 )
 (func $stackRestore (; 42 ;) (type $13) (param $0 i32)
  (global.set $global$0
   (local.get $0)
  )
 )
 (func $__growWasmMemory (; 43 ;) (type $4) (param $0 i32) (result i32)
  (grow_memory
   (local.get $0)
  )
 )
 (func $dynCall_iidiiii (; 44 ;) (type $14) (param $0 i32) (param $1 i32) (param $2 f64) (param $3 i32) (param $4 i32) (param $5 i32) (param $6 i32) (result i32)
  (call_indirect (type $1)
   (local.get $1)
   (local.get $2)
   (local.get $3)
   (local.get $4)
   (local.get $5)
   (local.get $6)
   (local.get $0)
  )
 )
 (func $dynCall_ii (; 45 ;) (type $3) (param $0 i32) (param $1 i32) (result i32)
  (call_indirect (type $4)
   (local.get $1)
   (local.get $0)
  )
 )
 (func $dynCall_iiii (; 46 ;) (type $15) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (call_indirect (type $0)
   (local.get $1)
   (local.get $2)
   (local.get $3)
   (local.get $0)
  )
 )
 (func $legalstub$dynCall_jiji (; 47 ;) (type $16) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (result i32)
  (local $5 i64)
  (call $setTempRet0
   (i32.wrap_i64
    (i64.shr_u
     (local.tee $5
      (call_indirect (type $12)
       (local.get $1)
       (i64.or
        (i64.extend_i32_u
         (local.get $2)
        )
        (i64.shl
         (i64.extend_i32_u
          (local.get $3)
         )
         (i64.const 32)
        )
       )
       (local.get $4)
       (local.get $0)
      )
     )
     (i64.const 32)
    )
   )
  )
  (i32.wrap_i64
   (local.get $5)
  )
 )
 ;; custom section "sourceMappingURL", size 22
 ;; custom section "sourceMappingURL", size 22
 ;; custom section ".debug_info", size 723
 ;; custom section ".debug_macinfo", size 2
 ;; custom section ".debug_loc", size 62
 ;; custom section ".debug_abbrev", size 438
 ;; custom section ".debug_line", size 457
 ;; custom section ".debug_str", size 704
)

