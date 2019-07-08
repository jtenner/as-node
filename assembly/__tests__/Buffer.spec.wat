(module
 (type $FUNCSIG$iii (func (param i32 i32) (result i32)))
 (type $FUNCSIG$v (func))
 (type $FUNCSIG$iiii (func (param i32 i32 i32) (result i32)))
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$vii (func (param i32 i32)))
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$viii (func (param i32 i32 i32)))
 (type $FUNCSIG$vi (func (param i32)))
 (type $FUNCSIG$i (func (result i32)))
 (type $FUNCSIG$iiiii (func (param i32 i32 i32 i32) (result i32)))
 (type $FUNCSIG$dii (func (param i32 i32) (result f64)))
 (type $FUNCSIG$iiiiii (func (param i32 i32 i32 i32 i32) (result i32)))
 (type $FUNCSIG$jii (func (param i32 i32) (result i64)))
 (type $FUNCSIG$jj (func (param i64) (result i64)))
 (type $FUNCSIG$ij (func (param i64) (result i32)))
 (type $FUNCSIG$iij (func (param i32 i64) (result i32)))
 (type $FUNCSIG$viji (func (param i32 i64 i32)))
 (type $FUNCSIG$id (func (param f64) (result i32)))
 (type $FUNCSIG$iid (func (param i32 f64) (result i32)))
 (type $FUNCSIG$vidi (func (param i32 f64 i32)))
 (type $FUNCSIG$fii (func (param i32 i32) (result f32)))
 (type $FUNCSIG$if (func (param f32) (result i32)))
 (type $FUNCSIG$iif (func (param i32 f32) (result i32)))
 (type $FUNCSIG$vifi (func (param i32 f32 i32)))
 (type $FUNCSIG$vdii (func (param f64 i32 i32)))
 (type $FUNCSIG$vdiii (func (param f64 i32 i32 i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (import "rtrace" "onalloc" (func $~lib/rt/rtrace/onalloc (param i32)))
 (import "rtrace" "onincrement" (func $~lib/rt/rtrace/onincrement (param i32)))
 (import "rtrace" "ondecrement" (func $~lib/rt/rtrace/ondecrement (param i32)))
 (import "rtrace" "onfree" (func $~lib/rt/rtrace/onfree (param i32)))
 (import "__aspect" "getStackTrace" (func $node_modules/as-pect/assembly/internal/report/reportActual/getStackTrace (result i32)))
 (import "__aspect" "reportInvalidExpectCall" (func $node_modules/as-pect/assembly/internal/report/reportExpected/reportInvalidExpectCall))
 (import "__aspect" "getStackTrace" (func $node_modules/as-pect/assembly/internal/report/reportExpected/getStackTrace (result i32)))
 (import "__aspect" "reportTest" (func $node_modules/as-pect/assembly/internal/Test/reportTest (param i32 i32)))
 (import "__aspect" "reportNegatedTest" (func $node_modules/as-pect/assembly/internal/Test/reportNegatedTest (param i32 i32 i32)))
 (import "__aspect" "reportDescribe" (func $node_modules/as-pect/assembly/internal/Describe/reportDescribe (param i32)))
 (import "__aspect" "reportEndDescribe" (func $node_modules/as-pect/assembly/internal/Describe/reportEndDescribe))
 (import "__aspect" "reportActualArray" (func $node_modules/as-pect/assembly/internal/report/reportActual/reportActualArray (param i32 i32)))
 (import "__aspect" "reportActualValue" (func $node_modules/as-pect/assembly/internal/report/reportActual/reportActualFloat (param f64 i32 i32)))
 (import "__aspect" "reportActualValue" (func $node_modules/as-pect/assembly/internal/report/reportActual/reportActualInteger (param i32 i32 i32)))
 (import "__aspect" "reportActualNull" (func $node_modules/as-pect/assembly/internal/report/reportActual/reportActualNull (param i32)))
 (import "__aspect" "reportActualReference" (func $node_modules/as-pect/assembly/internal/report/reportActual/reportActualReferenceExternal (param i32 i32 i32)))
 (import "__aspect" "reportActualString" (func $node_modules/as-pect/assembly/internal/report/reportActual/reportActualString (param i32 i32)))
 (import "__aspect" "reportActualLong" (func $node_modules/as-pect/assembly/internal/report/reportActual/reportActualLong (param i32 i32 i32)))
 (import "__aspect" "reportExpectedArray" (func $node_modules/as-pect/assembly/internal/report/reportExpected/reportExpectedArray (param i32 i32 i32)))
 (import "__aspect" "reportExpectedValue" (func $node_modules/as-pect/assembly/internal/report/reportExpected/reportExpectedFloat (param f64 i32 i32 i32)))
 (import "__aspect" "reportExpectedValue" (func $node_modules/as-pect/assembly/internal/report/reportExpected/reportExpectedInteger (param i32 i32 i32 i32)))
 (import "__aspect" "reportExpectedNull" (func $node_modules/as-pect/assembly/internal/report/reportExpected/reportExpectedNull (param i32 i32)))
 (import "__aspect" "reportExpectedReference" (func $node_modules/as-pect/assembly/internal/report/reportExpected/reportExpectedReferenceExternal (param i32 i32 i32 i32)))
 (import "__aspect" "reportExpectedString" (func $node_modules/as-pect/assembly/internal/report/reportExpected/reportExpectedString (param i32 i32 i32)))
 (import "__aspect" "reportExpectedFalsy" (func $node_modules/as-pect/assembly/internal/report/reportExpected/reportExpectedFalsy (param i32 i32)))
 (import "__aspect" "reportExpectedFinite" (func $node_modules/as-pect/assembly/internal/report/reportExpected/reportExpectedFinite (param i32 i32)))
 (import "__aspect" "reportExpectedTruthy" (func $node_modules/as-pect/assembly/internal/report/reportExpected/reportExpectedTruthy (param i32 i32)))
 (import "__aspect" "reportExpectedLong" (func $node_modules/as-pect/assembly/internal/report/reportExpected/reportExpectedLong (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "\1e\00\00\00\01\00\00\00\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00l\00s\00f\00.\00t\00s\00")
 (data (i32.const 56) "(\00\00\00\01\00\00\00\01\00\00\00(\00\00\00a\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e\00")
 (data (i32.const 112) "\1e\00\00\00\01\00\00\00\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00p\00u\00r\00e\00.\00t\00s\00")
 (data (i32.const 160) "$\00\00\00\01\00\00\00\01\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e\00")
 (data (i32.const 216) "\14\00\00\00\01\00\00\00\01\00\00\00\14\00\00\00~\00l\00i\00b\00/\00r\00t\00.\00t\00s\00")
 (data (i32.const 256) "\0c\00\00\00\01\00\00\00\01\00\00\00\0c\00\00\00B\00u\00f\00f\00e\00r\00")
 (data (i32.const 288) ",\00\00\00\01\00\00\00\01\00\00\00,\00\00\00s\00h\00o\00u\00l\00d\00 \00r\00e\00t\00u\00r\00n\00 \00a\00 \00b\00u\00f\00f\00e\00r\00")
 (data (i32.const 352) "\1c\00\00\00\01\00\00\00\01\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00l\00e\00n\00g\00t\00h\00")
 (data (i32.const 400) "&\00\00\00\01\00\00\00\01\00\00\00&\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s\00")
 (data (i32.const 456) "v\00\00\00\01\00\00\00\01\00\00\00v\00\00\00n\00o\00d\00e\00_\00m\00o\00d\00u\00l\00e\00s\00/\00a\00s\00-\00p\00e\00c\00t\00/\00a\00s\00s\00e\00m\00b\00l\00y\00/\00i\00n\00t\00e\00r\00n\00a\00l\00/\00c\00o\00m\00p\00a\00r\00i\00s\00o\00n\00/\00a\00s\00s\00e\00r\00t\00.\00t\00s\00")
 (data (i32.const 592) "\00\00\00\00\01\00\00\00\01\00\00\00\00\00\00\00")
 (data (i32.const 608) "B\00\00\00\01\00\00\00\01\00\00\00B\00\00\00a\00s\00s\00e\00m\00b\00l\00y\00/\00_\00_\00t\00e\00s\00t\00s\00_\00_\00/\00B\00u\00f\00f\00e\00r\00.\00s\00p\00e\00c\00.\00t\00s\00")
 (data (i32.const 696) "$\00\00\00\01\00\00\00\01\00\00\00$\00\00\00~\00l\00i\00b\00/\00t\00y\00p\00e\00d\00a\00r\00r\00a\00y\00.\00t\00s\00")
 (data (i32.const 752) "H\00\00\00\01\00\00\00\01\00\00\00H\00\00\00s\00h\00o\00u\00l\00d\00 \00c\00r\00e\00a\00t\00e\00 \00a\00 \00b\00u\00f\00f\00e\00r\00 \00f\00r\00o\00m\00 \00a\00n\00 \00i\003\002\00[\00]\00")
 (data (i32.const 840) "\1c\00\00\00\01\00\00\00\00\00\00\00\1c\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00\06\00\00\00\01\01\00\00")
 (data (i32.const 888) "2\00\00\00\01\00\00\00\01\00\00\002\00\00\00a\00s\00s\00e\00m\00b\00l\00y\00/\00b\00u\00f\00f\00e\00r\00/\00B\00u\00f\00f\00e\00r\00.\00t\00s\00")
 (data (i32.const 960) "\1a\00\00\00\01\00\00\00\01\00\00\00\1a\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s\00")
 (data (i32.const 1008) "F\00\00\00\01\00\00\00\01\00\00\00F\00\00\00s\00h\00o\00u\00l\00d\00 \00c\00r\00e\00a\00t\00e\00 \00a\00 \00b\00u\00f\00f\00e\00r\00 \00f\00r\00o\00m\00 \00a\00 \00f\006\004\00[\00]\00")
 (data (i32.const 1096) " \00\00\00\01\00\00\00\00\00\00\00 \00\00\00\9a\99\99\99\99\99\f1?\9a\99\99\99\99\99\01@ffffff\n@\9a\99\99\99\99\99\11@")
 (data (i32.const 1144) "t\00\00\00\01\00\00\00\01\00\00\00t\00\00\00s\00h\00o\00u\00l\00d\00 \00c\00r\00e\00a\00t\00e\00 \00a\00 \00b\00u\00f\00f\00e\00r\00 \00f\00r\00o\00m\00 \00a\00 \00s\00t\00r\00i\00n\00g\00 \00u\00s\00i\00n\00g\00 \00u\00t\00f\008\00 \00b\00y\00 \00d\00e\00f\00a\00u\00l\00t\00")
 (data (i32.const 1280) "\0c\00\00\00\01\00\00\00\01\00\00\00\0c\00\00\00a\00b\00c\00d\00e\00f\00")
 (data (i32.const 1312) "\08\00\00\00\01\00\00\00\01\00\00\00\08\00\00\00u\00t\00f\008\00")
 (data (i32.const 1336) "\0e\00\00\00\01\00\00\00\01\00\00\00\0e\00\00\00u\00t\00f\001\006\00l\00e\00")
 (data (i32.const 1368) "\1c\00\00\00\01\00\00\00\01\00\00\00\1c\00\00\00~\00l\00i\00b\00/\00s\00t\00r\00i\00n\00g\00.\00t\00s\00")
 (data (i32.const 1416) "`\00\00\00\01\00\00\00\01\00\00\00`\00\00\00s\00h\00o\00u\00l\00d\00 \00c\00r\00e\00a\00t\00e\00 \00a\00 \00b\00u\00f\00f\00e\00r\00 \00f\00r\00o\00m\00 \00a\00 \00s\00t\00r\00i\00n\00g\00 \00u\00s\00i\00n\00g\00 \00u\00t\00f\001\006\00")
 (data (i32.const 1528) "\0c\00\00\00\01\00\00\00\01\00\00\00\0c\00\00\00a\00b\00c\001\002\003\00")
 (data (i32.const 1560) "@\00\00\00\01\00\00\00\01\00\00\00@\00\00\00s\00h\00o\00u\00l\00d\00 \00r\00e\00a\00d\00 \00B\00E\00 \00a\00n\00d\00 \00L\00E\00 \00i\006\004\00 \00v\00a\00l\00u\00e\00s\00")
 (data (i32.const 1640) "\08\00\00\00\01\00\00\00\00\00\00\00\08\00\00\00\01\02\03\04\05\06\07\08")
 (data (i32.const 1664) "T\00\00\00\01\00\00\00\01\00\00\00T\00\00\00w\00h\00e\00n\00 \00r\00e\00a\00d\00B\00i\00g\00I\00n\00t\006\004\00B\00E\00 \00o\00f\00f\00s\00e\00t\00 \00i\00s\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e\00")
 (data (i32.const 1768) "T\00\00\00\01\00\00\00\01\00\00\00T\00\00\00w\00h\00e\00n\00 \00r\00e\00a\00d\00B\00i\00g\00I\00n\00t\006\004\00L\00E\00 \00o\00f\00f\00s\00e\00t\00 \00i\00s\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e\00")
 (data (i32.const 1872) "@\00\00\00\01\00\00\00\01\00\00\00@\00\00\00s\00h\00o\00u\00l\00d\00 \00r\00e\00a\00d\00 \00B\00E\00 \00a\00n\00d\00 \00L\00E\00 \00u\006\004\00 \00v\00a\00l\00u\00e\00s\00")
 (data (i32.const 1952) " \00\00\00\01\00\00\00\00\00\00\00 \00\00\00\de\00\00\00\ad\00\00\00\be\00\00\00\ef\00\00\00\de\00\00\00\ad\00\00\00\be\00\00\00\ef\00\00\00")
 (data (i32.const 2000) "V\00\00\00\01\00\00\00\01\00\00\00V\00\00\00w\00h\00e\00n\00 \00r\00e\00a\00d\00B\00i\00g\00U\00I\00n\00t\006\004\00B\00E\00 \00o\00f\00f\00s\00e\00t\00 \00i\00s\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e\00")
 (data (i32.const 2104) "@\00\00\00\01\00\00\00\01\00\00\00@\00\00\00s\00h\00o\00u\00l\00d\00 \00r\00e\00a\00d\00 \00B\00E\00 \00a\00n\00d\00 \00L\00E\00 \00f\006\004\00 \00v\00a\00l\00u\00e\00s\00")
 (data (i32.const 2184) " \00\00\00\01\00\00\00\00\00\00\00 \00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00\06\00\00\00\07\00\00\00\08\00\00\00")
 (data (i32.const 2232) "P\00\00\00\01\00\00\00\01\00\00\00P\00\00\00w\00h\00e\00n\00 \00r\00e\00a\00d\00D\00o\00u\00b\00l\00e\00B\00E\00 \00o\00f\00f\00s\00e\00t\00 \00i\00s\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e\00")
 (data (i32.const 2328) "P\00\00\00\01\00\00\00\01\00\00\00P\00\00\00w\00h\00e\00n\00 \00r\00e\00a\00d\00D\00o\00u\00b\00l\00e\00L\00E\00 \00o\00f\00f\00s\00e\00t\00 \00i\00s\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e\00")
 (data (i32.const 2424) "@\00\00\00\01\00\00\00\01\00\00\00@\00\00\00s\00h\00o\00u\00l\00d\00 \00r\00e\00a\00d\00 \00B\00E\00 \00a\00n\00d\00 \00L\00E\00 \00f\003\002\00 \00v\00a\00l\00u\00e\00s\00")
 (data (i32.const 2504) "\10\00\00\00\01\00\00\00\00\00\00\00\10\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00")
 (data (i32.const 2536) "N\00\00\00\01\00\00\00\01\00\00\00N\00\00\00w\00h\00e\00n\00 \00r\00e\00a\00d\00F\00l\00o\00a\00t\00B\00E\00 \00o\00f\00f\00s\00e\00t\00 \00i\00s\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e\00")
 (data (i32.const 2632) "N\00\00\00\01\00\00\00\01\00\00\00N\00\00\00w\00h\00e\00n\00 \00r\00e\00a\00d\00F\00l\00o\00a\00t\00L\00E\00 \00o\00f\00f\00s\00e\00t\00 \00i\00s\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e\00")
 (data (i32.const 2728) "0\00\00\00\01\00\00\00\01\00\00\000\00\00\00s\00h\00o\00u\00l\00d\00 \00r\00e\00a\00d\00 \00s\00i\00n\00g\00l\00e\00 \00b\00y\00t\00e\00s\00")
 (data (i32.const 2792) "\04\00\00\00\01\00\00\00\00\00\00\00\04\00\00\00\ff\ff\ff\ff")
 (data (i32.const 2816) "D\00\00\00\01\00\00\00\01\00\00\00D\00\00\00w\00h\00e\00n\00 \00o\00f\00f\00s\00e\00t\00 \00i\00s\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e\00 \00f\00o\00r\00 \00u\008\00")
 (data (i32.const 2904) "D\00\00\00\01\00\00\00\01\00\00\00D\00\00\00w\00h\00e\00n\00 \00o\00f\00f\00s\00e\00t\00 \00i\00s\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e\00 \00f\00o\00r\00 \00i\008\00")
 (data (i32.const 2992) "@\00\00\00\01\00\00\00\01\00\00\00@\00\00\00s\00h\00o\00u\00l\00d\00 \00r\00e\00a\00d\00 \00B\00E\00 \00a\00n\00d\00 \00L\00E\00 \00i\001\006\00 \00v\00a\00l\00u\00e\00s\00")
 (data (i32.const 3072) "\08\00\00\00\01\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\05\00\00\00")
 (data (i32.const 3096) "N\00\00\00\01\00\00\00\01\00\00\00N\00\00\00w\00h\00e\00n\00 \00r\00e\00a\00d\00I\00n\00t\001\006\00B\00E\00 \00o\00f\00f\00s\00e\00t\00 \00i\00s\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e\00")
 (data (i32.const 3192) "N\00\00\00\01\00\00\00\01\00\00\00N\00\00\00w\00h\00e\00n\00 \00r\00e\00a\00d\00I\00n\00t\001\006\00L\00E\00 \00o\00f\00f\00s\00e\00t\00 \00i\00s\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e\00")
 (data (i32.const 3288) "@\00\00\00\01\00\00\00\01\00\00\00@\00\00\00s\00h\00o\00u\00l\00d\00 \00r\00e\00a\00d\00 \00B\00E\00 \00a\00n\00d\00 \00L\00E\00 \00u\001\006\00 \00v\00a\00l\00u\00e\00s\00")
 (data (i32.const 3368) "\08\00\00\00\01\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\05\00\00\00")
 (data (i32.const 3392) "P\00\00\00\01\00\00\00\01\00\00\00P\00\00\00w\00h\00e\00n\00 \00r\00e\00a\00d\00U\00I\00n\00t\001\006\00B\00E\00 \00o\00f\00f\00s\00e\00t\00 \00i\00s\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e\00")
 (data (i32.const 3488) "@\00\00\00\01\00\00\00\01\00\00\00@\00\00\00s\00h\00o\00u\00l\00d\00 \00r\00e\00a\00d\00 \00B\00E\00 \00a\00n\00d\00 \00L\00E\00 \00i\003\002\00 \00v\00a\00l\00u\00e\00s\00")
 (data (i32.const 3568) "\10\00\00\00\01\00\00\00\00\00\00\00\10\00\00\00\12\00\00\004\00\00\00V\00\00\00x\00\00\00")
 (data (i32.const 3600) "N\00\00\00\01\00\00\00\01\00\00\00N\00\00\00w\00h\00e\00n\00 \00r\00e\00a\00d\00I\00n\00t\003\002\00B\00E\00 \00o\00f\00f\00s\00e\00t\00 \00i\00s\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e\00")
 (data (i32.const 3696) "N\00\00\00\01\00\00\00\01\00\00\00N\00\00\00w\00h\00e\00n\00 \00r\00e\00a\00d\00I\00n\00t\003\002\00L\00E\00 \00o\00f\00f\00s\00e\00t\00 \00i\00s\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e\00")
 (data (i32.const 3792) "@\00\00\00\01\00\00\00\01\00\00\00@\00\00\00s\00h\00o\00u\00l\00d\00 \00r\00e\00a\00d\00 \00B\00E\00 \00a\00n\00d\00 \00L\00E\00 \00u\003\002\00 \00v\00a\00l\00u\00e\00s\00")
 (data (i32.const 3872) "\10\00\00\00\01\00\00\00\00\00\00\00\10\00\00\00\12\00\00\004\00\00\00V\00\00\00x\00\00\00")
 (data (i32.const 3904) "P\00\00\00\01\00\00\00\01\00\00\00P\00\00\00w\00h\00e\00n\00 \00r\00e\00a\00d\00U\00I\00n\00t\003\002\00B\00E\00 \00o\00f\00f\00s\00e\00t\00 \00i\00s\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e\00")
 (data (i32.const 4000) "P\00\00\00\01\00\00\00\01\00\00\00P\00\00\00w\00h\00e\00n\00 \00r\00e\00a\00d\00U\00I\00n\00t\003\002\00L\00E\00 \00o\00f\00f\00s\00e\00t\00 \00i\00s\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e\00")
 (data (i32.const 4096) ",\00\00\00\01\00\00\00\01\00\00\00,\00\00\00s\00h\00o\00u\00l\00d\00 \00m\00a\00k\00e\00 \00a\00 \00s\00u\00b\00a\00r\00r\00a\00y\00")
 (data (i32.const 4160) "\0c\00\00\00\01\00\00\00\00\00\00\00\0c\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00")
 (data (i32.const 4192) "f\00\00\00\01\00\00\00\01\00\00\00f\00\00\00t\00o\00H\00a\00v\00e\00L\00e\00n\00g\00t\00h\00 \00a\00s\00s\00e\00r\00t\00i\00o\00n\00 \00c\00a\00l\00l\00e\00d\00 \00o\00n\00 \00n\00u\00l\00l\00 \00a\00c\00t\00u\00a\00l\00 \00v\00a\00l\00u\00e\00.\00")
 (data (i32.const 4312) "\14\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\001\00\00\00\02\00\00\001\00\00\00\03\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\93\04\00\00\02\00\00\00\10\00\00\00\00\00\00\00\13\0d\00\00\02\00\00\003\04\00\00\02\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\93\00\00\00\02\00\00\00")
 (table $0 36 funcref)
 (elem (i32.const 0) $null $start:assembly/__tests__/Buffer.spec~anonymous|0~anonymous|0 $start:assembly/__tests__/Buffer.spec~anonymous|0~anonymous|1 $start:assembly/__tests__/Buffer.spec~anonymous|0~anonymous|2 $start:assembly/__tests__/Buffer.spec~anonymous|0~anonymous|3 $start:assembly/__tests__/Buffer.spec~anonymous|0~anonymous|4 $start:assembly/__tests__/Buffer.spec~anonymous|0~anonymous|5 $start:assembly/__tests__/Buffer.spec~anonymous|0~anonymous|6 $start:assembly/__tests__/Buffer.spec~anonymous|0~anonymous|7 $start:assembly/__tests__/Buffer.spec~anonymous|0~anonymous|8 $start:assembly/__tests__/Buffer.spec~anonymous|0~anonymous|9 $start:assembly/__tests__/Buffer.spec~anonymous|0~anonymous|10 $start:assembly/__tests__/Buffer.spec~anonymous|0~anonymous|11 $start:assembly/__tests__/Buffer.spec~anonymous|0~anonymous|12 $start:assembly/__tests__/Buffer.spec~anonymous|0~anonymous|13 $start:assembly/__tests__/Buffer.spec~anonymous|0~anonymous|14 $start:assembly/__tests__/Buffer.spec~anonymous|0~anonymous|15 $start:assembly/__tests__/Buffer.spec~anonymous|0~anonymous|16 $start:assembly/__tests__/Buffer.spec~anonymous|0~anonymous|17 $start:assembly/__tests__/Buffer.spec~anonymous|0~anonymous|18 $start:assembly/__tests__/Buffer.spec~anonymous|0~anonymous|19 $start:assembly/__tests__/Buffer.spec~anonymous|0~anonymous|20 $start:assembly/__tests__/Buffer.spec~anonymous|0~anonymous|21 $start:assembly/__tests__/Buffer.spec~anonymous|0~anonymous|22 $start:assembly/__tests__/Buffer.spec~anonymous|0~anonymous|23 $start:assembly/__tests__/Buffer.spec~anonymous|0~anonymous|24 $start:assembly/__tests__/Buffer.spec~anonymous|0~anonymous|25 $start:assembly/__tests__/Buffer.spec~anonymous|0~anonymous|26 $start:assembly/__tests__/Buffer.spec~anonymous|0~anonymous|27 $start:assembly/__tests__/Buffer.spec~anonymous|0~anonymous|28 $start:assembly/__tests__/Buffer.spec~anonymous|0~anonymous|29 $start:assembly/__tests__/Buffer.spec~anonymous|0~anonymous|30 $start:assembly/__tests__/Buffer.spec~anonymous|0~anonymous|31 $start:assembly/__tests__/Buffer.spec~anonymous|0~anonymous|32 $start:assembly/__tests__/Buffer.spec~anonymous|0 $start:node_modules/as-pect/assembly/internal/noOp~anonymous|0)
 (global $~lib/rt/tlsf/ROOT (mut i32) (i32.const 0))
 (global $~lib/rt/pure/CUR (mut i32) (i32.const 0))
 (global $~lib/rt/pure/END (mut i32) (i32.const 0))
 (global $~lib/rt/pure/ROOTS (mut i32) (i32.const 0))
 (global $~lib/ASC_SHRINK_LEVEL i32 (i32.const 0))
 (global $assembly/buffer/Buffer/Buffer.NO_ENCODING (mut i32) (i32.const 0))
 (global $assembly/buffer/Buffer/Buffer.UTF8_ENCODING (mut i32) (i32.const 1))
 (global $assembly/buffer/Buffer/Buffer.UTF16_ENCODING (mut i32) (i32.const 2))
 (global $node_modules/as-pect/assembly/internal/report/reportActual/Actual.type (mut i32) (i32.const 0))
 (global $node_modules/as-pect/assembly/internal/report/reportActual/Actual.signed (mut i32) (i32.const 0))
 (global $node_modules/as-pect/assembly/internal/report/reportActual/Actual.float (mut f64) (f64.const 0))
 (global $node_modules/as-pect/assembly/internal/report/reportActual/Actual.integer (mut i32) (i32.const 0))
 (global $node_modules/as-pect/assembly/internal/report/reportActual/Actual.reference (mut i32) (i32.const 0))
 (global $node_modules/as-pect/assembly/internal/report/reportActual/Actual.offset (mut i32) (i32.const 0))
 (global $node_modules/as-pect/assembly/internal/report/reportActual/Actual.stackTrace (mut i32) (i32.const -1))
 (global $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.ready (mut i32) (i32.const 0))
 (global $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.type (mut i32) (i32.const 0))
 (global $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.signed (mut i32) (i32.const 0))
 (global $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.float (mut f64) (f64.const 0))
 (global $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.integer (mut i32) (i32.const 0))
 (global $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.reference (mut i32) (i32.const 0))
 (global $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.offset (mut i32) (i32.const 0))
 (global $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.negated (mut i32) (i32.const 0))
 (global $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.stackTrace (mut i32) (i32.const 0))
 (global $node_modules/as-pect/assembly/internal/noOp/noOp i32 (i32.const 35))
 (global $~lib/argc (mut i32) (i32.const 0))
 (global $node_modules/as-pect/assembly/internal/log/ignoreLogs (mut i32) (i32.const 0))
 (global $node_modules/as-pect/assembly/internal/RTrace/RTrace.enabled (mut i32) (i32.const 1))
 (global $~lib/started (mut i32) (i32.const 0))
 (global $~lib/rt/__rtti_base i32 (i32.const 4312))
 (global $~lib/heap/__heap_base i32 (i32.const 4476))
 (export "__start" (func $start))
 (export "memory" (memory $0))
 (export "__alloc" (func $~lib/rt/tlsf/__alloc))
 (export "__retain" (func $~lib/rt/pure/__retain))
 (export "__release" (func $~lib/rt/pure/__release))
 (export "__collect" (func $~lib/rt/pure/__collect))
 (export "__rtti_base" (global $~lib/rt/__rtti_base))
 (export "__ready" (func $node_modules/as-pect/assembly/index/__ready))
 (export "__call" (func $node_modules/as-pect/assembly/internal/call/__call))
 (export "__sendActual" (func $node_modules/as-pect/assembly/internal/report/reportActual/__sendActual))
 (export "__sendExpected" (func $node_modules/as-pect/assembly/internal/report/reportExpected/__sendExpected))
 (export "__ignoreLogs" (func $node_modules/as-pect/assembly/internal/log/__ignoreLogs))
 (export "__disableRTrace" (func $node_modules/as-pect/assembly/internal/RTrace/__disableRTrace))
 (export "__getUsizeArrayId" (func $node_modules/as-pect/assembly/internal/RTrace/__getUsizeArrayId))
 (export "__cleanup" (func $node_modules/as-pect/assembly/internal/Expectation/__cleanup))
 (func $~lib/rt/tlsf/removeBlock (; 29 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
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
  local.get $1
  i32.load
  local.set $2
  local.get $2
  i32.const 1
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 277
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.set $3
  local.get $3
  i32.const 16
  i32.ge_u
  if (result i32)
   local.get $3
   i32.const 1073741808
   i32.lt_u
  else   
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 279
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 256
  i32.lt_u
  if
   i32.const 0
   local.set $4
   local.get $3
   i32.const 4
   i32.shr_u
   local.set $5
  else   
   i32.const 31
   local.get $3
   i32.clz
   i32.sub
   local.set $4
   local.get $3
   local.get $4
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 1
   i32.const 4
   i32.shl
   i32.xor
   local.set $5
   local.get $4
   i32.const 8
   i32.const 1
   i32.sub
   i32.sub
   local.set $4
  end
  local.get $4
  i32.const 23
  i32.lt_u
  if (result i32)
   local.get $5
   i32.const 16
   i32.lt_u
  else   
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 292
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load offset=16
  local.set $6
  local.get $1
  i32.load offset=20
  local.set $7
  local.get $6
  if
   local.get $6
   local.get $7
   i32.store offset=20
  end
  local.get $7
  if
   local.get $7
   local.get $6
   i32.store offset=16
  end
  local.get $1
  local.get $0
  local.set $10
  local.get $4
  local.set $9
  local.get $5
  local.set $8
  local.get $10
  local.get $9
  i32.const 4
  i32.shl
  local.get $8
  i32.add
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=96
  i32.eq
  if
   local.get $0
   local.set $11
   local.get $4
   local.set $10
   local.get $5
   local.set $9
   local.get $7
   local.set $8
   local.get $11
   local.get $10
   i32.const 4
   i32.shl
   local.get $9
   i32.add
   i32.const 2
   i32.shl
   i32.add
   local.get $8
   i32.store offset=96
   local.get $7
   i32.eqz
   if
    local.get $0
    local.set $9
    local.get $4
    local.set $8
    local.get $9
    local.get $8
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=4
    local.set $9
    local.get $0
    local.set $8
    local.get $4
    local.set $11
    local.get $9
    i32.const 1
    local.get $5
    i32.shl
    i32.const -1
    i32.xor
    i32.and
    local.tee $9
    local.set $10
    local.get $8
    local.get $11
    i32.const 2
    i32.shl
    i32.add
    local.get $10
    i32.store offset=4
    local.get $9
    i32.eqz
    if
     local.get $0
     local.get $0
     i32.load
     i32.const 1
     local.get $4
     i32.shl
     i32.const -1
     i32.xor
     i32.and
     i32.store
    end
   end
  end
 )
 (func $~lib/rt/tlsf/insertBlock (; 30 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
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
  local.get $1
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 205
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load
  local.set $2
  local.get $2
  i32.const 1
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 207
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.set $3
  local.get $3
  i32.const 16
  i32.add
  local.get $3
  i32.load
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  i32.add
  local.set $4
  local.get $4
  i32.load
  local.set $5
  local.get $5
  i32.const 1
  i32.and
  if
   local.get $2
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.const 16
   i32.add
   local.get $5
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.add
   local.set $3
   local.get $3
   i32.const 1073741808
   i32.lt_u
   if
    local.get $0
    local.get $4
    call $~lib/rt/tlsf/removeBlock
    local.get $1
    local.get $2
    i32.const 3
    i32.and
    local.get $3
    i32.or
    local.tee $2
    i32.store
    local.get $1
    local.set $6
    local.get $6
    i32.const 16
    i32.add
    local.get $6
    i32.load
    i32.const 3
    i32.const -1
    i32.xor
    i32.and
    i32.add
    local.set $4
    local.get $4
    i32.load
    local.set $5
   end
  end
  local.get $2
  i32.const 2
  i32.and
  if
   local.get $1
   local.set $6
   local.get $6
   i32.const 4
   i32.sub
   i32.load
   local.set $6
   local.get $6
   i32.load
   local.set $3
   local.get $3
   i32.const 1
   i32.and
   i32.eqz
   if
    i32.const 0
    i32.const 24
    i32.const 228
    i32.const 15
    call $~lib/builtins/abort
    unreachable
   end
   local.get $3
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.const 16
   i32.add
   local.get $2
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.add
   local.set $7
   local.get $7
   i32.const 1073741808
   i32.lt_u
   if
    local.get $0
    local.get $6
    call $~lib/rt/tlsf/removeBlock
    local.get $6
    local.get $3
    i32.const 3
    i32.and
    local.get $7
    i32.or
    local.tee $2
    i32.store
    local.get $6
    local.set $1
   end
  end
  local.get $4
  local.get $5
  i32.const 2
  i32.or
  i32.store
  local.get $2
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.set $8
  local.get $8
  i32.const 16
  i32.ge_u
  if (result i32)
   local.get $8
   i32.const 1073741808
   i32.lt_u
  else   
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 243
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 16
  i32.add
  local.get $8
  i32.add
  local.get $4
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 244
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  i32.const 4
  i32.sub
  local.get $1
  i32.store
  local.get $8
  i32.const 256
  i32.lt_u
  if
   i32.const 0
   local.set $9
   local.get $8
   i32.const 4
   i32.shr_u
   local.set $10
  else   
   i32.const 31
   local.get $8
   i32.clz
   i32.sub
   local.set $9
   local.get $8
   local.get $9
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 1
   i32.const 4
   i32.shl
   i32.xor
   local.set $10
   local.get $9
   i32.const 8
   i32.const 1
   i32.sub
   i32.sub
   local.set $9
  end
  local.get $9
  i32.const 23
  i32.lt_u
  if (result i32)
   local.get $10
   i32.const 16
   i32.lt_u
  else   
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 260
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.set $7
  local.get $9
  local.set $3
  local.get $10
  local.set $6
  local.get $7
  local.get $3
  i32.const 4
  i32.shl
  local.get $6
  i32.add
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=96
  local.set $11
  local.get $1
  i32.const 0
  i32.store offset=16
  local.get $1
  local.get $11
  i32.store offset=20
  local.get $11
  if
   local.get $11
   local.get $1
   i32.store offset=16
  end
  local.get $0
  local.set $12
  local.get $9
  local.set $7
  local.get $10
  local.set $3
  local.get $1
  local.set $6
  local.get $12
  local.get $7
  i32.const 4
  i32.shl
  local.get $3
  i32.add
  i32.const 2
  i32.shl
  i32.add
  local.get $6
  i32.store offset=96
  local.get $0
  local.get $0
  i32.load
  i32.const 1
  local.get $9
  i32.shl
  i32.or
  i32.store
  local.get $0
  local.set $13
  local.get $9
  local.set $12
  local.get $0
  local.set $3
  local.get $9
  local.set $6
  local.get $3
  local.get $6
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=4
  i32.const 1
  local.get $10
  i32.shl
  i32.or
  local.set $7
  local.get $13
  local.get $12
  i32.const 2
  i32.shl
  i32.add
  local.get $7
  i32.store offset=4
 )
 (func $~lib/rt/tlsf/addMemory (; 31 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  local.get $1
  local.get $2
  i32.le_u
  if (result i32)
   local.get $1
   i32.const 15
   i32.and
   i32.eqz
  else   
   i32.const 0
  end
  if (result i32)
   local.get $2
   i32.const 15
   i32.and
   i32.eqz
  else   
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 386
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.set $3
  local.get $3
  i32.load offset=1568
  local.set $4
  i32.const 0
  local.set $5
  local.get $4
  if
   local.get $1
   local.get $4
   i32.const 16
   i32.add
   i32.ge_u
   i32.eqz
   if
    i32.const 0
    i32.const 24
    i32.const 396
    i32.const 15
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   i32.const 16
   i32.sub
   local.get $4
   i32.eq
   if
    local.get $1
    i32.const 16
    i32.sub
    local.set $1
    local.get $4
    i32.load
    local.set $5
   else    
    nop
   end
  else   
   local.get $1
   local.get $0
   i32.const 1572
   i32.add
   i32.ge_u
   i32.eqz
   if
    i32.const 0
    i32.const 24
    i32.const 408
    i32.const 4
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $2
  local.get $1
  i32.sub
  local.set $6
  local.get $6
  i32.const 48
  i32.lt_u
  if
   i32.const 0
   return
  end
  local.get $6
  i32.const 2
  i32.const 16
  i32.mul
  i32.sub
  local.set $7
  local.get $1
  local.set $8
  local.get $8
  local.get $7
  i32.const 1
  i32.or
  local.get $5
  i32.const 2
  i32.and
  i32.or
  i32.store
  local.get $8
  i32.const 0
  i32.store offset=16
  local.get $8
  i32.const 0
  i32.store offset=20
  local.get $1
  local.get $6
  i32.add
  i32.const 16
  i32.sub
  local.set $4
  local.get $4
  i32.const 0
  i32.const 2
  i32.or
  i32.store
  local.get $0
  local.set $9
  local.get $4
  local.set $3
  local.get $9
  local.get $3
  i32.store offset=1568
  local.get $0
  local.get $8
  call $~lib/rt/tlsf/insertBlock
  i32.const 1
 )
 (func $~lib/rt/tlsf/initializeRoot (; 32 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  global.get $~lib/heap/__heap_base
  i32.const 15
  i32.add
  i32.const 15
  i32.const -1
  i32.xor
  i32.and
  local.set $0
  memory.size
  local.set $1
  local.get $0
  i32.const 1572
  i32.add
  i32.const 65535
  i32.add
  i32.const 65535
  i32.const -1
  i32.xor
  i32.and
  i32.const 16
  i32.shr_u
  local.set $2
  local.get $2
  local.get $1
  i32.gt_s
  if (result i32)
   local.get $2
   local.get $1
   i32.sub
   memory.grow
   i32.const 0
   i32.lt_s
  else   
   i32.const 0
  end
  if
   unreachable
  end
  local.get $0
  local.set $3
  local.get $3
  i32.const 0
  i32.store
  local.get $3
  local.set $5
  i32.const 0
  local.set $4
  local.get $5
  local.get $4
  i32.store offset=1568
  block $break|0
   i32.const 0
   local.set $5
   loop $loop|0
    local.get $5
    i32.const 23
    i32.lt_u
    i32.eqz
    br_if $break|0
    local.get $3
    local.set $7
    local.get $5
    local.set $6
    i32.const 0
    local.set $4
    local.get $7
    local.get $6
    i32.const 2
    i32.shl
    i32.add
    local.get $4
    i32.store offset=4
    block $break|1
     i32.const 0
     local.set $7
     loop $loop|1
      local.get $7
      i32.const 16
      i32.lt_u
      i32.eqz
      br_if $break|1
      local.get $3
      local.set $9
      local.get $5
      local.set $8
      local.get $7
      local.set $6
      i32.const 0
      local.set $4
      local.get $9
      local.get $8
      i32.const 4
      i32.shl
      local.get $6
      i32.add
      i32.const 2
      i32.shl
      i32.add
      local.get $4
      i32.store offset=96
      local.get $7
      i32.const 1
      i32.add
      local.set $7
      br $loop|1
     end
     unreachable
    end
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $loop|0
   end
   unreachable
  end
  local.get $3
  local.get $0
  i32.const 1572
  i32.add
  i32.const 15
  i32.add
  i32.const 15
  i32.const -1
  i32.xor
  i32.and
  memory.size
  i32.const 16
  i32.shl
  call $~lib/rt/tlsf/addMemory
  drop
  local.get $3
  global.set $~lib/rt/tlsf/ROOT
 )
 (func $~lib/rt/tlsf/prepareSize (; 33 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.const 1073741808
  i32.ge_u
  if
   i32.const 72
   i32.const 24
   i32.const 448
   i32.const 29
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 15
  i32.add
  i32.const 15
  i32.const -1
  i32.xor
  i32.and
  local.tee $1
  i32.const 16
  local.tee $2
  local.get $1
  local.get $2
  i32.gt_u
  select
 )
 (func $~lib/rt/tlsf/searchBlock (; 34 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  local.get $1
  i32.const 256
  i32.lt_u
  if
   i32.const 0
   local.set $2
   local.get $1
   i32.const 4
   i32.shr_u
   local.set $3
  else   
   local.get $1
   i32.const 536870904
   i32.lt_u
   if (result i32)
    local.get $1
    i32.const 1
    i32.const 27
    local.get $1
    i32.clz
    i32.sub
    i32.shl
    i32.add
    i32.const 1
    i32.sub
   else    
    local.get $1
   end
   local.set $4
   i32.const 31
   local.get $4
   i32.clz
   i32.sub
   local.set $2
   local.get $4
   local.get $2
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 1
   i32.const 4
   i32.shl
   i32.xor
   local.set $3
   local.get $2
   i32.const 8
   i32.const 1
   i32.sub
   i32.sub
   local.set $2
  end
  local.get $2
  i32.const 23
  i32.lt_u
  if (result i32)
   local.get $3
   i32.const 16
   i32.lt_u
  else   
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 338
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.set $5
  local.get $2
  local.set $4
  local.get $5
  local.get $4
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=4
  i32.const 0
  i32.const -1
  i32.xor
  local.get $3
  i32.shl
  i32.and
  local.set $6
  i32.const 0
  local.set $7
  local.get $6
  i32.eqz
  if
   local.get $0
   i32.load
   i32.const 0
   i32.const -1
   i32.xor
   local.get $2
   i32.const 1
   i32.add
   i32.shl
   i32.and
   local.set $5
   local.get $5
   i32.eqz
   if
    i32.const 0
    local.set $7
   else    
    local.get $5
    i32.ctz
    local.set $2
    local.get $0
    local.set $8
    local.get $2
    local.set $4
    local.get $8
    local.get $4
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=4
    local.set $6
    local.get $6
    i32.eqz
    if
     i32.const 0
     i32.const 24
     i32.const 351
     i32.const 17
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.set $9
    local.get $2
    local.set $8
    local.get $6
    i32.ctz
    local.set $4
    local.get $9
    local.get $8
    i32.const 4
    i32.shl
    local.get $4
    i32.add
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=96
    local.set $7
   end
  else   
   local.get $0
   local.set $9
   local.get $2
   local.set $8
   local.get $6
   i32.ctz
   local.set $4
   local.get $9
   local.get $8
   i32.const 4
   i32.shl
   local.get $4
   i32.add
   i32.const 2
   i32.shl
   i32.add
   i32.load offset=96
   local.set $7
  end
  local.get $7
 )
 (func $~lib/rt/tlsf/growMemory (; 35 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  memory.size
  local.set $2
  local.get $1
  i32.const 65535
  i32.add
  i32.const 65535
  i32.const -1
  i32.xor
  i32.and
  i32.const 16
  i32.shr_u
  local.set $3
  local.get $2
  local.tee $4
  local.get $3
  local.tee $5
  local.get $4
  local.get $5
  i32.gt_s
  select
  local.set $6
  local.get $6
  memory.grow
  i32.const 0
  i32.lt_s
  if
   local.get $3
   memory.grow
   i32.const 0
   i32.lt_s
   if
    unreachable
   end
  end
  memory.size
  local.set $7
  local.get $0
  local.get $2
  i32.const 16
  i32.shl
  local.get $7
  i32.const 16
  i32.shl
  call $~lib/rt/tlsf/addMemory
  drop
 )
 (func $~lib/rt/tlsf/prepareBlock (; 36 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $1
  i32.load
  local.set $3
  local.get $2
  i32.const 15
  i32.and
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 365
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.get $2
  i32.sub
  local.set $4
  local.get $4
  i32.const 32
  i32.ge_u
  if
   local.get $1
   local.get $2
   local.get $3
   i32.const 2
   i32.and
   i32.or
   i32.store
   local.get $1
   i32.const 16
   i32.add
   local.get $2
   i32.add
   local.set $5
   local.get $5
   local.get $4
   i32.const 16
   i32.sub
   i32.const 1
   i32.or
   i32.store
   local.get $0
   local.get $5
   call $~lib/rt/tlsf/insertBlock
  else   
   local.get $1
   local.get $3
   i32.const 1
   i32.const -1
   i32.xor
   i32.and
   i32.store
   local.get $1
   local.set $5
   local.get $5
   i32.const 16
   i32.add
   local.get $5
   i32.load
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.add
   local.get $1
   local.set $5
   local.get $5
   i32.const 16
   i32.add
   local.get $5
   i32.load
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.add
   i32.load
   i32.const 2
   i32.const -1
   i32.xor
   i32.and
   i32.store
  end
 )
 (func $~lib/rt/tlsf/allocateBlock (; 37 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/tlsf/prepareSize
  local.set $2
  local.get $0
  local.get $2
  call $~lib/rt/tlsf/searchBlock
  local.set $3
  local.get $3
  i32.eqz
  if
   local.get $0
   local.get $2
   call $~lib/rt/tlsf/growMemory
   local.get $0
   local.get $2
   call $~lib/rt/tlsf/searchBlock
   local.set $3
   local.get $3
   i32.eqz
   if
    i32.const 0
    i32.const 24
    i32.const 478
    i32.const 15
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $3
  i32.load
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.get $2
  i32.ge_u
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 480
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 0
  i32.store offset=4
  local.get $3
  local.get $1
  i32.store offset=12
  local.get $0
  local.get $3
  call $~lib/rt/tlsf/removeBlock
  local.get $0
  local.get $3
  local.get $2
  call $~lib/rt/tlsf/prepareBlock
  local.get $3
  call $~lib/rt/rtrace/onalloc
  local.get $3
 )
 (func $~lib/rt/tlsf/__alloc (; 38 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/rt/tlsf/ROOT
  local.set $2
  local.get $2
  i32.eqz
  if
   call $~lib/rt/tlsf/initializeRoot
   global.get $~lib/rt/tlsf/ROOT
   local.set $2
  end
  local.get $2
  local.get $0
  call $~lib/rt/tlsf/allocateBlock
  local.set $3
  local.get $3
  local.get $1
  i32.store offset=8
  local.get $3
  i32.const 16
  i32.add
 )
 (func $~lib/rt/pure/increment (; 39 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  local.get $0
  i32.load offset=4
  local.set $1
  local.get $1
  i32.const 268435455
  i32.const -1
  i32.xor
  i32.and
  local.get $1
  i32.const 1
  i32.add
  i32.const 268435455
  i32.const -1
  i32.xor
  i32.and
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 128
   i32.const 104
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  i32.const 1
  i32.add
  i32.store offset=4
  local.get $0
  call $~lib/rt/rtrace/onincrement
  local.get $0
  i32.load
  i32.const 1
  i32.and
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 128
   i32.const 107
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~lib/rt/pure/__retain (; 40 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  global.get $~lib/heap/__heap_base
  i32.gt_u
  if
   local.get $0
   i32.const 16
   i32.sub
   call $~lib/rt/pure/increment
  end
  local.get $0
 )
 (func $~lib/rt/tlsf/freeBlock (; 41 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $1
  i32.load
  local.set $2
  local.get $2
  i32.const 1
  i32.and
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 537
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.get $2
  i32.const 1
  i32.or
  i32.store
  local.get $0
  local.get $1
  call $~lib/rt/tlsf/insertBlock
  local.get $1
  call $~lib/rt/rtrace/onfree
 )
 (func $~lib/rt/__typeinfo (; 42 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/rt/__rtti_base
  local.set $1
  local.get $0
  local.get $1
  i32.load
  i32.gt_u
  if
   i32.const 176
   i32.const 232
   i32.const 22
   i32.const 27
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 4
  i32.add
  local.get $0
  i32.const 8
  i32.mul
  i32.add
  i32.load
 )
 (func $~lib/util/memory/memcpy (; 43 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  block $break|0
   loop $continue|0
    local.get $2
    if (result i32)
     local.get $1
     i32.const 3
     i32.and
    else     
     i32.const 0
    end
    i32.eqz
    br_if $break|0
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
    i32.load8_u
    i32.store8
    local.get $2
    i32.const 1
    i32.sub
    local.set $2
    br $continue|0
   end
   unreachable
  end
  local.get $0
  i32.const 3
  i32.and
  i32.const 0
  i32.eq
  if
   block $break|1
    loop $continue|1
     local.get $2
     i32.const 16
     i32.ge_u
     i32.eqz
     br_if $break|1
     local.get $0
     local.get $1
     i32.load
     i32.store
     local.get $0
     i32.const 4
     i32.add
     local.get $1
     i32.const 4
     i32.add
     i32.load
     i32.store
     local.get $0
     i32.const 8
     i32.add
     local.get $1
     i32.const 8
     i32.add
     i32.load
     i32.store
     local.get $0
     i32.const 12
     i32.add
     local.get $1
     i32.const 12
     i32.add
     i32.load
     i32.store
     local.get $1
     i32.const 16
     i32.add
     local.set $1
     local.get $0
     i32.const 16
     i32.add
     local.set $0
     local.get $2
     i32.const 16
     i32.sub
     local.set $2
     br $continue|1
    end
    unreachable
   end
   local.get $2
   i32.const 8
   i32.and
   if
    local.get $0
    local.get $1
    i32.load
    i32.store
    local.get $0
    i32.const 4
    i32.add
    local.get $1
    i32.const 4
    i32.add
    i32.load
    i32.store
    local.get $0
    i32.const 8
    i32.add
    local.set $0
    local.get $1
    i32.const 8
    i32.add
    local.set $1
   end
   local.get $2
   i32.const 4
   i32.and
   if
    local.get $0
    local.get $1
    i32.load
    i32.store
    local.get $0
    i32.const 4
    i32.add
    local.set $0
    local.get $1
    i32.const 4
    i32.add
    local.set $1
   end
   local.get $2
   i32.const 2
   i32.and
   if
    local.get $0
    local.get $1
    i32.load16_u
    i32.store16
    local.get $0
    i32.const 2
    i32.add
    local.set $0
    local.get $1
    i32.const 2
    i32.add
    local.set $1
   end
   local.get $2
   i32.const 1
   i32.and
   if
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
    i32.load8_u
    i32.store8
   end
   return
  end
  local.get $2
  i32.const 32
  i32.ge_u
  if
   block $break|2
    block $case2|2
     block $case1|2
      block $case0|2
       local.get $0
       i32.const 3
       i32.and
       local.set $5
       local.get $5
       i32.const 1
       i32.eq
       br_if $case0|2
       local.get $5
       i32.const 2
       i32.eq
       br_if $case1|2
       local.get $5
       i32.const 3
       i32.eq
       br_if $case2|2
       br $break|2
      end
      local.get $1
      i32.load
      local.set $3
      local.get $0
      local.tee $5
      i32.const 1
      i32.add
      local.set $0
      local.get $5
      local.get $1
      local.tee $5
      i32.const 1
      i32.add
      local.set $1
      local.get $5
      i32.load8_u
      i32.store8
      local.get $0
      local.tee $5
      i32.const 1
      i32.add
      local.set $0
      local.get $5
      local.get $1
      local.tee $5
      i32.const 1
      i32.add
      local.set $1
      local.get $5
      i32.load8_u
      i32.store8
      local.get $0
      local.tee $5
      i32.const 1
      i32.add
      local.set $0
      local.get $5
      local.get $1
      local.tee $5
      i32.const 1
      i32.add
      local.set $1
      local.get $5
      i32.load8_u
      i32.store8
      local.get $2
      i32.const 3
      i32.sub
      local.set $2
      block $break|3
       loop $continue|3
        local.get $2
        i32.const 17
        i32.ge_u
        i32.eqz
        br_if $break|3
        local.get $1
        i32.const 1
        i32.add
        i32.load
        local.set $4
        local.get $0
        local.get $3
        i32.const 24
        i32.shr_u
        local.get $4
        i32.const 8
        i32.shl
        i32.or
        i32.store
        local.get $1
        i32.const 5
        i32.add
        i32.load
        local.set $3
        local.get $0
        i32.const 4
        i32.add
        local.get $4
        i32.const 24
        i32.shr_u
        local.get $3
        i32.const 8
        i32.shl
        i32.or
        i32.store
        local.get $1
        i32.const 9
        i32.add
        i32.load
        local.set $4
        local.get $0
        i32.const 8
        i32.add
        local.get $3
        i32.const 24
        i32.shr_u
        local.get $4
        i32.const 8
        i32.shl
        i32.or
        i32.store
        local.get $1
        i32.const 13
        i32.add
        i32.load
        local.set $3
        local.get $0
        i32.const 12
        i32.add
        local.get $4
        i32.const 24
        i32.shr_u
        local.get $3
        i32.const 8
        i32.shl
        i32.or
        i32.store
        local.get $1
        i32.const 16
        i32.add
        local.set $1
        local.get $0
        i32.const 16
        i32.add
        local.set $0
        local.get $2
        i32.const 16
        i32.sub
        local.set $2
        br $continue|3
       end
       unreachable
      end
      br $break|2
     end
     local.get $1
     i32.load
     local.set $3
     local.get $0
     local.tee $5
     i32.const 1
     i32.add
     local.set $0
     local.get $5
     local.get $1
     local.tee $5
     i32.const 1
     i32.add
     local.set $1
     local.get $5
     i32.load8_u
     i32.store8
     local.get $0
     local.tee $5
     i32.const 1
     i32.add
     local.set $0
     local.get $5
     local.get $1
     local.tee $5
     i32.const 1
     i32.add
     local.set $1
     local.get $5
     i32.load8_u
     i32.store8
     local.get $2
     i32.const 2
     i32.sub
     local.set $2
     block $break|4
      loop $continue|4
       local.get $2
       i32.const 18
       i32.ge_u
       i32.eqz
       br_if $break|4
       local.get $1
       i32.const 2
       i32.add
       i32.load
       local.set $4
       local.get $0
       local.get $3
       i32.const 16
       i32.shr_u
       local.get $4
       i32.const 16
       i32.shl
       i32.or
       i32.store
       local.get $1
       i32.const 6
       i32.add
       i32.load
       local.set $3
       local.get $0
       i32.const 4
       i32.add
       local.get $4
       i32.const 16
       i32.shr_u
       local.get $3
       i32.const 16
       i32.shl
       i32.or
       i32.store
       local.get $1
       i32.const 10
       i32.add
       i32.load
       local.set $4
       local.get $0
       i32.const 8
       i32.add
       local.get $3
       i32.const 16
       i32.shr_u
       local.get $4
       i32.const 16
       i32.shl
       i32.or
       i32.store
       local.get $1
       i32.const 14
       i32.add
       i32.load
       local.set $3
       local.get $0
       i32.const 12
       i32.add
       local.get $4
       i32.const 16
       i32.shr_u
       local.get $3
       i32.const 16
       i32.shl
       i32.or
       i32.store
       local.get $1
       i32.const 16
       i32.add
       local.set $1
       local.get $0
       i32.const 16
       i32.add
       local.set $0
       local.get $2
       i32.const 16
       i32.sub
       local.set $2
       br $continue|4
      end
      unreachable
     end
     br $break|2
    end
    local.get $1
    i32.load
    local.set $3
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
    i32.load8_u
    i32.store8
    local.get $2
    i32.const 1
    i32.sub
    local.set $2
    block $break|5
     loop $continue|5
      local.get $2
      i32.const 19
      i32.ge_u
      i32.eqz
      br_if $break|5
      local.get $1
      i32.const 3
      i32.add
      i32.load
      local.set $4
      local.get $0
      local.get $3
      i32.const 8
      i32.shr_u
      local.get $4
      i32.const 24
      i32.shl
      i32.or
      i32.store
      local.get $1
      i32.const 7
      i32.add
      i32.load
      local.set $3
      local.get $0
      i32.const 4
      i32.add
      local.get $4
      i32.const 8
      i32.shr_u
      local.get $3
      i32.const 24
      i32.shl
      i32.or
      i32.store
      local.get $1
      i32.const 11
      i32.add
      i32.load
      local.set $4
      local.get $0
      i32.const 8
      i32.add
      local.get $3
      i32.const 8
      i32.shr_u
      local.get $4
      i32.const 24
      i32.shl
      i32.or
      i32.store
      local.get $1
      i32.const 15
      i32.add
      i32.load
      local.set $3
      local.get $0
      i32.const 12
      i32.add
      local.get $4
      i32.const 8
      i32.shr_u
      local.get $3
      i32.const 24
      i32.shl
      i32.or
      i32.store
      local.get $1
      i32.const 16
      i32.add
      local.set $1
      local.get $0
      i32.const 16
      i32.add
      local.set $0
      local.get $2
      i32.const 16
      i32.sub
      local.set $2
      br $continue|5
     end
     unreachable
    end
    br $break|2
   end
  end
  local.get $2
  i32.const 16
  i32.and
  if
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
  end
  local.get $2
  i32.const 8
  i32.and
  if
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
  end
  local.get $2
  i32.const 4
  i32.and
  if
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
  end
  local.get $2
  i32.const 2
  i32.and
  if
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
  end
  local.get $2
  i32.const 1
  i32.and
  if
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
  end
 )
 (func $~lib/memory/memory.copy (; 44 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  block $~lib/util/memory/memmove|inlined.0
   local.get $0
   local.set $5
   local.get $1
   local.set $4
   local.get $2
   local.set $3
   local.get $5
   local.get $4
   i32.eq
   if
    br $~lib/util/memory/memmove|inlined.0
   end
   local.get $4
   local.get $3
   i32.add
   local.get $5
   i32.le_u
   if (result i32)
    i32.const 1
   else    
    local.get $5
    local.get $3
    i32.add
    local.get $4
    i32.le_u
   end
   if
    local.get $5
    local.get $4
    local.get $3
    call $~lib/util/memory/memcpy
    br $~lib/util/memory/memmove|inlined.0
   end
   local.get $5
   local.get $4
   i32.lt_u
   if
    local.get $4
    i32.const 7
    i32.and
    local.get $5
    i32.const 7
    i32.and
    i32.eq
    if
     block $break|0
      loop $continue|0
       local.get $5
       i32.const 7
       i32.and
       i32.eqz
       br_if $break|0
       local.get $3
       i32.eqz
       if
        br $~lib/util/memory/memmove|inlined.0
       end
       local.get $3
       i32.const 1
       i32.sub
       local.set $3
       local.get $5
       local.tee $6
       i32.const 1
       i32.add
       local.set $5
       local.get $6
       local.get $4
       local.tee $6
       i32.const 1
       i32.add
       local.set $4
       local.get $6
       i32.load8_u
       i32.store8
       br $continue|0
      end
      unreachable
     end
     block $break|1
      loop $continue|1
       local.get $3
       i32.const 8
       i32.ge_u
       i32.eqz
       br_if $break|1
       local.get $5
       local.get $4
       i64.load
       i64.store
       local.get $3
       i32.const 8
       i32.sub
       local.set $3
       local.get $5
       i32.const 8
       i32.add
       local.set $5
       local.get $4
       i32.const 8
       i32.add
       local.set $4
       br $continue|1
      end
      unreachable
     end
    end
    block $break|2
     loop $continue|2
      local.get $3
      i32.eqz
      br_if $break|2
      local.get $5
      local.tee $6
      i32.const 1
      i32.add
      local.set $5
      local.get $6
      local.get $4
      local.tee $6
      i32.const 1
      i32.add
      local.set $4
      local.get $6
      i32.load8_u
      i32.store8
      local.get $3
      i32.const 1
      i32.sub
      local.set $3
      br $continue|2
     end
     unreachable
    end
   else    
    local.get $4
    i32.const 7
    i32.and
    local.get $5
    i32.const 7
    i32.and
    i32.eq
    if
     block $break|3
      loop $continue|3
       local.get $5
       local.get $3
       i32.add
       i32.const 7
       i32.and
       i32.eqz
       br_if $break|3
       local.get $3
       i32.eqz
       if
        br $~lib/util/memory/memmove|inlined.0
       end
       local.get $5
       local.get $3
       i32.const 1
       i32.sub
       local.tee $3
       i32.add
       local.get $4
       local.get $3
       i32.add
       i32.load8_u
       i32.store8
       br $continue|3
      end
      unreachable
     end
     block $break|4
      loop $continue|4
       local.get $3
       i32.const 8
       i32.ge_u
       i32.eqz
       br_if $break|4
       local.get $3
       i32.const 8
       i32.sub
       local.set $3
       local.get $5
       local.get $3
       i32.add
       local.get $4
       local.get $3
       i32.add
       i64.load
       i64.store
       br $continue|4
      end
      unreachable
     end
    end
    block $break|5
     loop $continue|5
      local.get $3
      i32.eqz
      br_if $break|5
      local.get $5
      local.get $3
      i32.const 1
      i32.sub
      local.tee $3
      i32.add
      local.get $4
      local.get $3
      i32.add
      i32.load8_u
      i32.store8
      br $continue|5
     end
     unreachable
    end
   end
  end
 )
 (func $~lib/rt/tlsf/__free (; 45 ;) (type $FUNCSIG$vi) (param $0 i32)
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 567
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 0
  i32.ne
  if (result i32)
   local.get $0
   i32.const 15
   i32.and
   i32.eqz
  else   
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 568
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/rt/tlsf/ROOT
  local.get $0
  i32.const 16
  i32.sub
  call $~lib/rt/tlsf/freeBlock
 )
 (func $~lib/rt/pure/growRoots (; 46 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/rt/pure/ROOTS
  local.set $0
  global.get $~lib/rt/pure/CUR
  local.get $0
  i32.sub
  local.set $1
  local.get $1
  i32.const 2
  i32.mul
  local.tee $2
  i32.const 64
  i32.const 2
  i32.shl
  local.tee $3
  local.get $2
  local.get $3
  i32.gt_u
  select
  local.set $4
  local.get $4
  i32.const 0
  call $~lib/rt/tlsf/__alloc
  local.set $5
  local.get $5
  i32.const 16
  i32.sub
  call $~lib/rt/rtrace/onfree
  local.get $5
  local.get $0
  local.get $1
  call $~lib/memory/memory.copy
  local.get $0
  if
   local.get $0
   i32.const 16
   i32.sub
   call $~lib/rt/rtrace/onalloc
   local.get $0
   call $~lib/rt/tlsf/__free
  end
  local.get $5
  global.set $~lib/rt/pure/ROOTS
  local.get $5
  local.get $1
  i32.add
  global.set $~lib/rt/pure/CUR
  local.get $5
  local.get $4
  i32.add
  global.set $~lib/rt/pure/END
 )
 (func $~lib/rt/pure/appendRoot (; 47 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  global.get $~lib/rt/pure/CUR
  local.set $1
  local.get $1
  global.get $~lib/rt/pure/END
  i32.ge_u
  if
   call $~lib/rt/pure/growRoots
   global.get $~lib/rt/pure/CUR
   local.set $1
  end
  local.get $1
  local.get $0
  i32.store
  local.get $1
  i32.const 4
  i32.add
  global.set $~lib/rt/pure/CUR
 )
 (func $~lib/rt/pure/decrement (; 48 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.load offset=4
  local.set $1
  local.get $1
  i32.const 268435455
  i32.and
  local.set $2
  local.get $0
  call $~lib/rt/rtrace/ondecrement
  local.get $0
  i32.load
  i32.const 1
  i32.and
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 128
   i32.const 115
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 1
  i32.eq
  if
   local.get $0
   i32.const 16
   i32.add
   i32.const 1
   call $~lib/rt/__visit_members
   local.get $1
   i32.const -2147483648
   i32.and
   i32.eqz
   if
    global.get $~lib/rt/tlsf/ROOT
    local.get $0
    call $~lib/rt/tlsf/freeBlock
   else    
    local.get $0
    i32.const -2147483648
    i32.const 0
    i32.or
    i32.const 0
    i32.or
    i32.store offset=4
   end
  else   
   local.get $2
   i32.const 0
   i32.gt_u
   i32.eqz
   if
    i32.const 0
    i32.const 128
    i32.const 124
    i32.const 15
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   i32.load offset=8
   call $~lib/rt/__typeinfo
   i32.const 16
   i32.and
   i32.eqz
   if
    local.get $0
    i32.const -2147483648
    i32.const 805306368
    i32.or
    local.get $2
    i32.const 1
    i32.sub
    i32.or
    i32.store offset=4
    local.get $1
    i32.const -2147483648
    i32.and
    i32.eqz
    if
     local.get $0
     call $~lib/rt/pure/appendRoot
    end
   else    
    local.get $0
    local.get $1
    i32.const 268435455
    i32.const -1
    i32.xor
    i32.and
    local.get $2
    i32.const 1
    i32.sub
    i32.or
    i32.store offset=4
   end
  end
 )
 (func $~lib/rt/pure/__release (; 49 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  global.get $~lib/heap/__heap_base
  i32.gt_u
  if
   local.get $0
   i32.const 16
   i32.sub
   call $~lib/rt/pure/decrement
  end
 )
 (func $~lib/rt/pure/markGray (; 50 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  local.get $0
  i32.load offset=4
  local.set $1
  local.get $1
  i32.const 1879048192
  i32.and
  i32.const 268435456
  i32.ne
  if
   local.get $0
   local.get $1
   i32.const 1879048192
   i32.const -1
   i32.xor
   i32.and
   i32.const 268435456
   i32.or
   i32.store offset=4
   local.get $0
   i32.const 16
   i32.add
   i32.const 2
   call $~lib/rt/__visit_members
  end
 )
 (func $~lib/rt/pure/scanBlack (; 51 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  local.get $0
  i32.load offset=4
  i32.const 1879048192
  i32.const -1
  i32.xor
  i32.and
  i32.const 0
  i32.or
  i32.store offset=4
  local.get $0
  i32.const 16
  i32.add
  i32.const 4
  call $~lib/rt/__visit_members
 )
 (func $~lib/rt/pure/scan (; 52 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  local.get $0
  i32.load offset=4
  local.set $1
  local.get $1
  i32.const 1879048192
  i32.and
  i32.const 268435456
  i32.eq
  if
   local.get $1
   i32.const 268435455
   i32.and
   i32.const 0
   i32.gt_u
   if
    local.get $0
    call $~lib/rt/pure/scanBlack
   else    
    local.get $0
    local.get $1
    i32.const 1879048192
    i32.const -1
    i32.xor
    i32.and
    i32.const 536870912
    i32.or
    i32.store offset=4
    local.get $0
    i32.const 16
    i32.add
    i32.const 3
    call $~lib/rt/__visit_members
   end
  end
 )
 (func $~lib/rt/pure/collectWhite (; 53 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  local.get $0
  i32.load offset=4
  local.set $1
  local.get $1
  i32.const 1879048192
  i32.and
  i32.const 536870912
  i32.eq
  if (result i32)
   local.get $1
   i32.const -2147483648
   i32.and
   i32.eqz
  else   
   i32.const 0
  end
  if
   local.get $0
   local.get $1
   i32.const 1879048192
   i32.const -1
   i32.xor
   i32.and
   i32.const 0
   i32.or
   i32.store offset=4
   local.get $0
   i32.const 16
   i32.add
   i32.const 5
   call $~lib/rt/__visit_members
   global.get $~lib/rt/tlsf/ROOT
   local.get $0
   call $~lib/rt/tlsf/freeBlock
  end
 )
 (func $~lib/rt/pure/__collect (; 54 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/rt/pure/ROOTS
  local.set $0
  local.get $0
  local.set $1
  block $break|0
   local.get $1
   local.set $2
   global.get $~lib/rt/pure/CUR
   local.set $3
   loop $loop|0
    local.get $2
    local.get $3
    i32.lt_u
    i32.eqz
    br_if $break|0
    local.get $2
    i32.load
    local.set $4
    local.get $4
    i32.load offset=4
    local.set $5
    local.get $5
    i32.const 1879048192
    i32.and
    i32.const 805306368
    i32.eq
    if (result i32)
     local.get $5
     i32.const 268435455
     i32.and
     i32.const 0
     i32.gt_u
    else     
     i32.const 0
    end
    if
     local.get $4
     call $~lib/rt/pure/markGray
     local.get $1
     local.get $4
     i32.store
     local.get $1
     i32.const 4
     i32.add
     local.set $1
    else     
     local.get $5
     i32.const 1879048192
     i32.and
     i32.const 0
     i32.eq
     if (result i32)
      local.get $5
      i32.const 268435455
      i32.and
      i32.eqz
     else      
      i32.const 0
     end
     if
      global.get $~lib/rt/tlsf/ROOT
      local.get $4
      call $~lib/rt/tlsf/freeBlock
     else      
      local.get $4
      local.get $5
      i32.const -2147483648
      i32.const -1
      i32.xor
      i32.and
      i32.store offset=4
     end
    end
    local.get $2
    i32.const 4
    i32.add
    local.set $2
    br $loop|0
   end
   unreachable
  end
  local.get $1
  global.set $~lib/rt/pure/CUR
  block $break|1
   local.get $0
   local.set $5
   loop $loop|1
    local.get $5
    local.get $1
    i32.lt_u
    i32.eqz
    br_if $break|1
    local.get $5
    i32.load
    call $~lib/rt/pure/scan
    local.get $5
    i32.const 4
    i32.add
    local.set $5
    br $loop|1
   end
   unreachable
  end
  block $break|2
   local.get $0
   local.set $5
   loop $loop|2
    local.get $5
    local.get $1
    i32.lt_u
    i32.eqz
    br_if $break|2
    local.get $5
    i32.load
    local.set $4
    local.get $4
    local.get $4
    i32.load offset=4
    i32.const -2147483648
    i32.const -1
    i32.xor
    i32.and
    i32.store offset=4
    local.get $4
    call $~lib/rt/pure/collectWhite
    local.get $5
    i32.const 4
    i32.add
    local.set $5
    br $loop|2
   end
   unreachable
  end
  local.get $0
  global.set $~lib/rt/pure/CUR
 )
 (func $~lib/memory/memory.fill (; 55 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i64)
  block $~lib/util/memory/memset|inlined.0
   local.get $0
   local.set $5
   local.get $1
   local.set $4
   local.get $2
   local.set $3
   local.get $3
   i32.eqz
   if
    br $~lib/util/memory/memset|inlined.0
   end
   local.get $5
   local.get $4
   i32.store8
   local.get $5
   local.get $3
   i32.add
   i32.const 1
   i32.sub
   local.get $4
   i32.store8
   local.get $3
   i32.const 2
   i32.le_u
   if
    br $~lib/util/memory/memset|inlined.0
   end
   local.get $5
   i32.const 1
   i32.add
   local.get $4
   i32.store8
   local.get $5
   i32.const 2
   i32.add
   local.get $4
   i32.store8
   local.get $5
   local.get $3
   i32.add
   i32.const 2
   i32.sub
   local.get $4
   i32.store8
   local.get $5
   local.get $3
   i32.add
   i32.const 3
   i32.sub
   local.get $4
   i32.store8
   local.get $3
   i32.const 6
   i32.le_u
   if
    br $~lib/util/memory/memset|inlined.0
   end
   local.get $5
   i32.const 3
   i32.add
   local.get $4
   i32.store8
   local.get $5
   local.get $3
   i32.add
   i32.const 4
   i32.sub
   local.get $4
   i32.store8
   local.get $3
   i32.const 8
   i32.le_u
   if
    br $~lib/util/memory/memset|inlined.0
   end
   i32.const 0
   local.get $5
   i32.sub
   i32.const 3
   i32.and
   local.set $6
   local.get $5
   local.get $6
   i32.add
   local.set $5
   local.get $3
   local.get $6
   i32.sub
   local.set $3
   local.get $3
   i32.const -4
   i32.and
   local.set $3
   i32.const -1
   i32.const 255
   i32.div_u
   local.get $4
   i32.const 255
   i32.and
   i32.mul
   local.set $7
   local.get $5
   local.get $7
   i32.store
   local.get $5
   local.get $3
   i32.add
   i32.const 4
   i32.sub
   local.get $7
   i32.store
   local.get $3
   i32.const 8
   i32.le_u
   if
    br $~lib/util/memory/memset|inlined.0
   end
   local.get $5
   i32.const 4
   i32.add
   local.get $7
   i32.store
   local.get $5
   i32.const 8
   i32.add
   local.get $7
   i32.store
   local.get $5
   local.get $3
   i32.add
   i32.const 12
   i32.sub
   local.get $7
   i32.store
   local.get $5
   local.get $3
   i32.add
   i32.const 8
   i32.sub
   local.get $7
   i32.store
   local.get $3
   i32.const 24
   i32.le_u
   if
    br $~lib/util/memory/memset|inlined.0
   end
   local.get $5
   i32.const 12
   i32.add
   local.get $7
   i32.store
   local.get $5
   i32.const 16
   i32.add
   local.get $7
   i32.store
   local.get $5
   i32.const 20
   i32.add
   local.get $7
   i32.store
   local.get $5
   i32.const 24
   i32.add
   local.get $7
   i32.store
   local.get $5
   local.get $3
   i32.add
   i32.const 28
   i32.sub
   local.get $7
   i32.store
   local.get $5
   local.get $3
   i32.add
   i32.const 24
   i32.sub
   local.get $7
   i32.store
   local.get $5
   local.get $3
   i32.add
   i32.const 20
   i32.sub
   local.get $7
   i32.store
   local.get $5
   local.get $3
   i32.add
   i32.const 16
   i32.sub
   local.get $7
   i32.store
   i32.const 24
   local.get $5
   i32.const 4
   i32.and
   i32.add
   local.set $6
   local.get $5
   local.get $6
   i32.add
   local.set $5
   local.get $3
   local.get $6
   i32.sub
   local.set $3
   local.get $7
   i64.extend_i32_u
   local.get $7
   i64.extend_i32_u
   i64.const 32
   i64.shl
   i64.or
   local.set $8
   block $break|0
    loop $continue|0
     local.get $3
     i32.const 32
     i32.ge_u
     i32.eqz
     br_if $break|0
     local.get $5
     local.get $8
     i64.store
     local.get $5
     i32.const 8
     i32.add
     local.get $8
     i64.store
     local.get $5
     i32.const 16
     i32.add
     local.get $8
     i64.store
     local.get $5
     i32.const 24
     i32.add
     local.get $8
     i64.store
     local.get $3
     i32.const 32
     i32.sub
     local.set $3
     local.get $5
     i32.const 32
     i32.add
     local.set $5
     br $continue|0
    end
    unreachable
   end
  end
 )
 (func $~lib/arraybuffer/ArrayBufferView#constructor (; 56 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $1
  i32.const 1073741808
  local.get $2
  i32.shr_u
  i32.gt_u
  if
   i32.const 368
   i32.const 416
   i32.const 14
   i32.const 56
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.get $2
  i32.shl
  local.tee $1
  i32.const 0
  call $~lib/rt/tlsf/__alloc
  local.set $3
  local.get $3
  i32.const 0
  local.get $1
  call $~lib/memory/memory.fill
  local.get $0
  i32.eqz
  if
   i32.const 12
   i32.const 2
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store offset=8
  local.get $0
  local.tee $4
  local.get $3
  local.tee $5
  local.get $4
  i32.load
  local.tee $4
  i32.ne
  if
   local.get $5
   call $~lib/rt/pure/__retain
   drop
   local.get $4
   call $~lib/rt/pure/__release
  end
  local.get $5
  i32.store
  local.get $0
  local.get $3
  i32.store offset=4
  local.get $0
  local.get $1
  i32.store offset=8
  local.get $0
 )
 (func $~lib/typedarray/Uint8Array#constructor (; 57 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  if (result i32)
   local.get $0
  else   
   i32.const 12
   i32.const 3
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
  end
  local.get $1
  i32.const 0
  call $~lib/arraybuffer/ArrayBufferView#constructor
  local.set $0
  local.get $0
 )
 (func $assembly/buffer/Buffer/Buffer#constructor (; 58 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  if (result i32)
   local.get $0
  else   
   i32.const 16
   i32.const 4
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
  end
  local.get $1
  call $~lib/typedarray/Uint8Array#constructor
  local.set $0
  local.get $0
  i32.const 0
  i32.store offset=12
  local.get $0
 )
 (func $node_modules/as-pect/assembly/internal/Expectation/Expectation<assembly/buffer/Buffer/Buffer>#constructor (; 59 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i32.eqz
  if
   i32.const 8
   i32.const 5
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  local.tee $2
  local.get $1
  local.tee $3
  local.get $2
  i32.load offset=4
  local.tee $2
  i32.ne
  if
   local.get $3
   call $~lib/rt/pure/__retain
   drop
   local.get $2
   call $~lib/rt/pure/__release
  end
  local.get $3
  i32.store offset=4
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
 )
 (func $node_modules/as-pect/assembly/internal/Expectation/expect<assembly/buffer/Buffer/Buffer> (; 60 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  i32.const 0
  local.get $0
  call $node_modules/as-pect/assembly/internal/Expectation/Expectation<assembly/buffer/Buffer/Buffer>#constructor
  local.set $1
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
 )
 (func $node_modules/as-pect/assembly/internal/Expectation/Expectation<assembly/buffer/Buffer/Buffer>#get:not (; 61 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 1
  i32.store
  local.get $0
  call $~lib/rt/pure/__retain
 )
 (func $node_modules/as-pect/assembly/internal/report/reportActual/Actual.clear (; 62 ;) (type $FUNCSIG$v)
  i32.const 0
  global.set $node_modules/as-pect/assembly/internal/report/reportActual/Actual.type
  global.get $node_modules/as-pect/assembly/internal/report/reportActual/Actual.reference
  i32.const 0
  i32.gt_u
  if
   global.get $node_modules/as-pect/assembly/internal/report/reportActual/Actual.reference
   call $~lib/rt/pure/__release
   i32.const 0
   global.set $node_modules/as-pect/assembly/internal/report/reportActual/Actual.reference
  end
  i32.const -1
  global.set $node_modules/as-pect/assembly/internal/report/reportActual/Actual.stackTrace
 )
 (func $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.clear (; 63 ;) (type $FUNCSIG$v)
  i32.const 0
  global.set $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.type
  global.get $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.reference
  i32.const 0
  i32.gt_u
  if
   global.get $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.reference
   call $~lib/rt/pure/__release
   i32.const 0
   global.set $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.reference
  end
 )
 (func $node_modules/as-pect/assembly/internal/Expectation/Expectation<assembly/buffer/Buffer/Buffer>#toBeNull (; 64 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i32.load offset=4
  call $~lib/rt/pure/__retain
  local.set $4
  local.get $0
  i32.load
  local.set $3
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $2
  local.get $4
  call $~lib/rt/pure/__retain
  local.set $5
  call $node_modules/as-pect/assembly/internal/report/reportActual/getStackTrace
  global.set $node_modules/as-pect/assembly/internal/report/reportActual/Actual.stackTrace
  local.get $5
  local.set $6
  local.get $5
  i32.const 0
  i32.eq
  if
   i32.const 1
   global.set $node_modules/as-pect/assembly/internal/report/reportActual/Actual.type
  else   
   local.get $6
   call $~lib/rt/pure/__retain
   drop
   global.get $node_modules/as-pect/assembly/internal/report/reportActual/Actual.reference
   call $~lib/rt/pure/__release
   local.get $6
   global.set $node_modules/as-pect/assembly/internal/report/reportActual/Actual.reference
   i32.const 4
   global.set $node_modules/as-pect/assembly/internal/report/reportActual/Actual.type
   i32.const 16
   global.set $node_modules/as-pect/assembly/internal/report/reportActual/Actual.offset
  end
  local.get $5
  call $~lib/rt/pure/__release
  block $node_modules/as-pect/assembly/internal/report/reportExpected/reportExpected<assembly/buffer/Buffer/Buffer>|inlined.0
   i32.const 0
   call $~lib/rt/pure/__retain
   local.set $5
   local.get $3
   local.set $6
   global.get $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.ready
   i32.eqz
   if
    call $node_modules/as-pect/assembly/internal/report/reportExpected/reportInvalidExpectCall
    local.get $5
    call $~lib/rt/pure/__release
    br $node_modules/as-pect/assembly/internal/report/reportExpected/reportExpected<assembly/buffer/Buffer/Buffer>|inlined.0
   end
   call $node_modules/as-pect/assembly/internal/report/reportExpected/getStackTrace
   global.set $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.stackTrace
   local.get $6
   global.set $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.negated
   local.get $5
   i32.const 0
   i32.eq
   if
    i32.const 1
    global.set $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.type
   else    
    local.get $5
    local.set $7
    local.get $7
    call $~lib/rt/pure/__retain
    drop
    global.get $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.reference
    call $~lib/rt/pure/__release
    local.get $7
    global.set $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.reference
    i32.const 4
    global.set $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.type
    i32.const 16
    global.set $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.offset
   end
   local.get $5
   call $~lib/rt/pure/__release
  end
  local.get $3
  local.get $4
  i32.const 0
  i32.eq
  i32.xor
  local.set $6
  local.get $2
  call $~lib/rt/pure/__retain
  local.set $7
  local.get $6
  i32.eqz
  if
   local.get $7
   call $~lib/rt/pure/__release
   local.get $7
   i32.const 472
   i32.const 11
   i32.const 18
   call $~lib/builtins/abort
   unreachable
  end
  local.get $7
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  call $node_modules/as-pect/assembly/internal/report/reportActual/Actual.clear
  call $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.clear
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Uint8Array#__set (; 65 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.ge_u
  if
   i32.const 176
   i32.const 712
   i32.const 127
   i32.const 44
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.add
  local.get $2
  i32.store8
 )
 (func $~lib/typedarray/Uint8Array#__get (; 66 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.ge_u
  if
   i32.const 176
   i32.const 712
   i32.const 121
   i32.const 44
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.add
  i32.load8_u
 )
 (func $node_modules/as-pect/assembly/internal/Expectation/Expectation<u8>#constructor (; 67 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 5
   i32.const 6
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store8 offset=4
  local.get $0
  local.get $1
  i32.store8 offset=4
  local.get $0
 )
 (func $node_modules/as-pect/assembly/internal/Expectation/expect<u8> (; 68 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  i32.const 0
  local.get $0
  call $node_modules/as-pect/assembly/internal/Expectation/Expectation<u8>#constructor
 )
 (func $node_modules/as-pect/assembly/internal/Expectation/Expectation<u8>#toBe (; 69 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i32.load8_u offset=4
  local.set $6
  local.get $1
  local.set $5
  local.get $0
  i32.load
  local.set $4
  local.get $2
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $6
  local.set $7
  call $node_modules/as-pect/assembly/internal/report/reportActual/getStackTrace
  global.set $node_modules/as-pect/assembly/internal/report/reportActual/Actual.stackTrace
  i32.const 3
  global.set $node_modules/as-pect/assembly/internal/report/reportActual/Actual.type
  local.get $7
  drop
  i32.const 0
  global.set $node_modules/as-pect/assembly/internal/report/reportActual/Actual.signed
  local.get $7
  global.set $node_modules/as-pect/assembly/internal/report/reportActual/Actual.integer
  block $node_modules/as-pect/assembly/internal/report/reportExpected/reportExpected<u8>|inlined.0
   local.get $5
   local.set $8
   local.get $4
   local.set $7
   global.get $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.ready
   i32.eqz
   if
    call $node_modules/as-pect/assembly/internal/report/reportExpected/reportInvalidExpectCall
    br $node_modules/as-pect/assembly/internal/report/reportExpected/reportExpected<u8>|inlined.0
   end
   call $node_modules/as-pect/assembly/internal/report/reportExpected/getStackTrace
   global.set $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.stackTrace
   local.get $7
   global.set $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.negated
   i32.const 3
   global.set $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.type
   local.get $8
   drop
   i32.const 0
   global.set $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.signed
   local.get $8
   i32.const 255
   i32.and
   global.set $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.integer
  end
  local.get $4
  local.get $5
  i32.const 255
  i32.and
  local.get $6
  i32.eq
  i32.xor
  local.set $8
  local.get $3
  call $~lib/rt/pure/__retain
  local.set $7
  local.get $8
  i32.eqz
  if
   local.get $7
   call $~lib/rt/pure/__release
   local.get $7
   i32.const 472
   i32.const 11
   i32.const 18
   call $~lib/builtins/abort
   unreachable
  end
  local.get $7
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  call $node_modules/as-pect/assembly/internal/report/reportActual/Actual.clear
  call $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.clear
  local.get $2
  call $~lib/rt/pure/__release
 )
 (func $start:assembly/__tests__/Buffer.spec~anonymous|0~anonymous|0 (; 70 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  i32.const 0
  i32.const 3
  call $assembly/buffer/Buffer/Buffer#constructor
  local.set $0
  local.get $0
  call $node_modules/as-pect/assembly/internal/Expectation/expect<assembly/buffer/Buffer/Buffer>
  local.tee $1
  call $node_modules/as-pect/assembly/internal/Expectation/Expectation<assembly/buffer/Buffer/Buffer>#get:not
  local.tee $2
  i32.const 608
  call $node_modules/as-pect/assembly/internal/Expectation/Expectation<assembly/buffer/Buffer/Buffer>#toBeNull
  local.get $0
  drop
  i32.const 1
  i32.eqz
  if
   i32.const 0
   i32.const 624
   i32.const 7
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 0
  i32.const 0
  call $~lib/typedarray/Uint8Array#__set
  local.get $0
  i32.const 1
  i32.const 1
  call $~lib/typedarray/Uint8Array#__set
  local.get $0
  i32.const 2
  i32.const 2
  call $~lib/typedarray/Uint8Array#__set
  local.get $0
  i32.const 0
  call $~lib/typedarray/Uint8Array#__get
  call $node_modules/as-pect/assembly/internal/Expectation/expect<u8>
  local.tee $3
  i32.const 0
  i32.const 608
  call $node_modules/as-pect/assembly/internal/Expectation/Expectation<u8>#toBe
  local.get $0
  i32.const 1
  call $~lib/typedarray/Uint8Array#__get
  call $node_modules/as-pect/assembly/internal/Expectation/expect<u8>
  local.tee $4
  i32.const 1
  i32.const 608
  call $node_modules/as-pect/assembly/internal/Expectation/Expectation<u8>#toBe
  local.get $0
  i32.const 2
  call $~lib/typedarray/Uint8Array#__get
  call $node_modules/as-pect/assembly/internal/Expectation/expect<u8>
  local.tee $5
  i32.const 2
  i32.const 608
  call $node_modules/as-pect/assembly/internal/Expectation/Expectation<u8>#toBe
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
 )
 (func $node_modules/as-pect/assembly/internal/Test/it (; 71 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  local.get $1
  call $node_modules/as-pect/assembly/internal/Test/reportTest
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $~lib/rt/__allocArray (; 72 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  i32.const 16
  local.get $2
  call $~lib/rt/tlsf/__alloc
  local.set $4
  local.get $0
  local.get $1
  i32.shl
  local.set $5
  local.get $5
  i32.const 0
  call $~lib/rt/tlsf/__alloc
  local.set $6
  local.get $4
  local.get $6
  call $~lib/rt/pure/__retain
  i32.store
  local.get $4
  local.get $6
  i32.store offset=4
  local.get $4
  local.get $5
  i32.store offset=8
  local.get $4
  local.get $0
  i32.store offset=12
  local.get $3
  if
   local.get $6
   local.get $3
   local.get $5
   call $~lib/memory/memory.copy
  end
  local.get $4
 )
 (func $~lib/array/Array<i32>#get:length (; 73 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/array/Array<i32>#__unchecked_get (; 74 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
 )
 (func $~lib/array/Array<i32>#__get (; 75 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.ge_u
  if
   i32.const 176
   i32.const 976
   i32.const 109
   i32.const 61
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<i32>#__unchecked_get
 )
 (func $assembly/buffer/Buffer/Buffer.from<~lib/array/Array<i32>> (; 76 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  i32.const 7
  call $~lib/rt/__typeinfo
  local.set $2
  local.get $2
  i32.const 8192
  i32.and
  i32.const 0
  i32.ne
  local.set $3
  local.get $3
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 904
   i32.const 45
   i32.const 6
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/array/Array<i32>#get:length
  local.set $4
  i32.const 0
  local.get $4
  call $assembly/buffer/Buffer/Buffer#constructor
  local.set $5
  block $break|0
   i32.const 0
   local.set $6
   loop $loop|0
    local.get $6
    local.get $4
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $5
    local.get $6
    local.get $0
    local.get $6
    call $~lib/array/Array<i32>#__get
    i32.const 255
    i32.and
    call $~lib/typedarray/Uint8Array#__set
    local.get $6
    i32.const 1
    i32.add
    local.set $6
    br $loop|0
   end
   unreachable
  end
  local.get $5
  local.set $6
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $6
  return
 )
 (func $node_modules/as-pect/assembly/internal/Expectation/Expectation<i32>#constructor (; 77 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 8
   i32.const 8
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
 )
 (func $node_modules/as-pect/assembly/internal/Expectation/expect<i32> (; 78 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  i32.const 0
  local.get $0
  call $node_modules/as-pect/assembly/internal/Expectation/Expectation<i32>#constructor
 )
 (func $node_modules/as-pect/assembly/internal/Expectation/Expectation<i32>#toBe (; 79 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i32.load offset=4
  local.set $6
  local.get $1
  local.set $5
  local.get $0
  i32.load
  local.set $4
  local.get $2
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $6
  local.set $7
  call $node_modules/as-pect/assembly/internal/report/reportActual/getStackTrace
  global.set $node_modules/as-pect/assembly/internal/report/reportActual/Actual.stackTrace
  i32.const 3
  global.set $node_modules/as-pect/assembly/internal/report/reportActual/Actual.type
  local.get $7
  drop
  i32.const 1
  global.set $node_modules/as-pect/assembly/internal/report/reportActual/Actual.signed
  local.get $7
  global.set $node_modules/as-pect/assembly/internal/report/reportActual/Actual.integer
  block $node_modules/as-pect/assembly/internal/report/reportExpected/reportExpected<i32>|inlined.0
   local.get $5
   local.set $8
   local.get $4
   local.set $7
   global.get $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.ready
   i32.eqz
   if
    call $node_modules/as-pect/assembly/internal/report/reportExpected/reportInvalidExpectCall
    br $node_modules/as-pect/assembly/internal/report/reportExpected/reportExpected<i32>|inlined.0
   end
   call $node_modules/as-pect/assembly/internal/report/reportExpected/getStackTrace
   global.set $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.stackTrace
   local.get $7
   global.set $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.negated
   i32.const 3
   global.set $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.type
   local.get $8
   drop
   i32.const 1
   global.set $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.signed
   local.get $8
   global.set $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.integer
  end
  local.get $4
  local.get $5
  local.get $6
  i32.eq
  i32.xor
  local.set $8
  local.get $3
  call $~lib/rt/pure/__retain
  local.set $7
  local.get $8
  i32.eqz
  if
   local.get $7
   call $~lib/rt/pure/__release
   local.get $7
   i32.const 472
   i32.const 11
   i32.const 18
   call $~lib/builtins/abort
   unreachable
  end
  local.get $7
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  call $node_modules/as-pect/assembly/internal/report/reportActual/Actual.clear
  call $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.clear
  local.get $2
  call $~lib/rt/pure/__release
 )
 (func $start:assembly/__tests__/Buffer.spec~anonymous|0~anonymous|1 (; 80 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  i32.const 7
  i32.const 2
  i32.const 7
  i32.const 856
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $1
  call $~lib/rt/pure/__retain
  local.set $0
  local.get $0
  i32.const 0
  call $assembly/buffer/Buffer/Buffer.from<~lib/array/Array<i32>>
  local.set $2
  local.get $2
  i32.const 0
  call $~lib/typedarray/Uint8Array#__get
  call $node_modules/as-pect/assembly/internal/Expectation/expect<i32>
  local.tee $3
  i32.const 1
  i32.const 608
  call $node_modules/as-pect/assembly/internal/Expectation/Expectation<i32>#toBe
  local.get $2
  i32.const 1
  call $~lib/typedarray/Uint8Array#__get
  call $node_modules/as-pect/assembly/internal/Expectation/expect<i32>
  local.tee $4
  i32.const 2
  i32.const 608
  call $node_modules/as-pect/assembly/internal/Expectation/Expectation<i32>#toBe
  local.get $2
  i32.const 2
  call $~lib/typedarray/Uint8Array#__get
  call $node_modules/as-pect/assembly/internal/Expectation/expect<i32>
  local.tee $5
  i32.const 3
  i32.const 608
  call $node_modules/as-pect/assembly/internal/Expectation/Expectation<i32>#toBe
  local.get $2
  i32.const 3
  call $~lib/typedarray/Uint8Array#__get
  call $node_modules/as-pect/assembly/internal/Expectation/expect<i32>
  local.tee $6
  i32.const 4
  i32.const 608
  call $node_modules/as-pect/assembly/internal/Expectation/Expectation<i32>#toBe
  local.get $2
  i32.const 4
  call $~lib/typedarray/Uint8Array#__get
  call $node_modules/as-pect/assembly/internal/Expectation/expect<i32>
  local.tee $7
  i32.const 5
  i32.const 608
  call $node_modules/as-pect/assembly/internal/Expectation/Expectation<i32>#toBe
  local.get $2
  i32.const 5
  call $~lib/typedarray/Uint8Array#__get
  call $node_modules/as-pect/assembly/internal/Expectation/expect<i32>
  local.tee $8
  i32.const 6
  i32.const 608
  call $node_modules/as-pect/assembly/internal/Expectation/Expectation<i32>#toBe
  local.get $2
  i32.const 6
  call $~lib/typedarray/Uint8Array#__get
  call $node_modules/as-pect/assembly/internal/Expectation/expect<i32>
  local.tee $9
  i32.const 1
  i32.const 608
  call $node_modules/as-pect/assembly/internal/Expectation/Expectation<i32>#toBe
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  local.get $7
  call $~lib/rt/pure/__release
  local.get $8
  call $~lib/rt/pure/__release
  local.get $9
  call $~lib/rt/pure/__release
 )
 (func $~lib/array/Array<f64>#get:length (; 81 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/array/Array<f64>#__unchecked_get (; 82 ;) (type $FUNCSIG$dii) (param $0 i32) (param $1 i32) (result f64)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 3
  i32.shl
  i32.add
  f64.load
 )
 (func $~lib/array/Array<f64>#__get (; 83 ;) (type $FUNCSIG$dii) (param $0 i32) (param $1 i32) (result f64)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 3
  i32.shr_u
  i32.ge_u
  if
   i32.const 176
   i32.const 976
   i32.const 109
   i32.const 61
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<f64>#__unchecked_get
 )
 (func $assembly/buffer/Buffer/Buffer.from<~lib/array/Array<f64>> (; 84 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  i32.const 9
  call $~lib/rt/__typeinfo
  local.set $2
  local.get $2
  i32.const 8192
  i32.and
  i32.const 0
  i32.ne
  local.set $3
  local.get $3
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 904
   i32.const 45
   i32.const 6
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/array/Array<f64>#get:length
  local.set $4
  i32.const 0
  local.get $4
  call $assembly/buffer/Buffer/Buffer#constructor
  local.set $5
  block $break|0
   i32.const 0
   local.set $6
   loop $loop|0
    local.get $6
    local.get $4
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $5
    local.get $6
    local.get $0
    local.get $6
    call $~lib/array/Array<f64>#__get
    i32.trunc_f64_u
    i32.const 255
    i32.and
    call $~lib/typedarray/Uint8Array#__set
    local.get $6
    i32.const 1
    i32.add
    local.set $6
    br $loop|0
   end
   unreachable
  end
  local.get $5
  local.set $6
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $6
  return
 )
 (func $start:assembly/__tests__/Buffer.spec~anonymous|0~anonymous|2 (; 85 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  i32.const 4
  i32.const 3
  i32.const 9
  i32.const 1112
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $1
  call $~lib/rt/pure/__retain
  local.set $0
  local.get $0
  i32.const 0
  call $assembly/buffer/Buffer/Buffer.from<~lib/array/Array<f64>>
  local.set $2
  local.get $2
  i32.const 0
  call $~lib/typedarray/Uint8Array#__get
  call $node_modules/as-pect/assembly/internal/Expectation/expect<u8>
  local.tee $3
  i32.const 1
  i32.const 608
  call $node_modules/as-pect/assembly/internal/Expectation/Expectation<u8>#toBe
  local.get $2
  i32.const 1
  call $~lib/typedarray/Uint8Array#__get
  call $node_modules/as-pect/assembly/internal/Expectation/expect<u8>
  local.tee $4
  i32.const 2
  i32.const 608
  call $node_modules/as-pect/assembly/internal/Expectation/Expectation<u8>#toBe
  local.get $2
  i32.const 2
  call $~lib/typedarray/Uint8Array#__get
  call $node_modules/as-pect/assembly/internal/Expectation/expect<u8>
  local.tee $5
  i32.const 3
  i32.const 608
  call $node_modules/as-pect/assembly/internal/Expectation/Expectation<u8>#toBe
  local.get $2
  i32.const 3
  call $~lib/typedarray/Uint8Array#__get
  call $node_modules/as-pect/assembly/internal/Expectation/expect<u8>
  local.tee $6
  i32.const 4
  i32.const 608
  call $node_modules/as-pect/assembly/internal/Expectation/Expectation<u8>#toBe
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
 )
 (func $~lib/string/String#get:length (; 86 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 16
  i32.sub
  i32.load offset=12
  i32.const 1
  i32.shr_u
 )
 (func $~lib/util/string/compareImpl (; 87 ;) (type $FUNCSIG$iiiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (result i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  i32.const 0
  local.set $5
  local.get $0
  local.get $1
  i32.const 1
  i32.shl
  i32.add
  local.set $6
  local.get $2
  local.get $3
  i32.const 1
  i32.shl
  i32.add
  local.set $7
  block $break|0
   loop $continue|0
    local.get $4
    if (result i32)
     local.get $6
     i32.load16_u
     local.get $7
     i32.load16_u
     i32.sub
     local.tee $5
     i32.eqz
    else     
     i32.const 0
    end
    i32.eqz
    br_if $break|0
    local.get $4
    i32.const 1
    i32.sub
    local.set $4
    local.get $6
    i32.const 2
    i32.add
    local.set $6
    local.get $7
    i32.const 2
    i32.add
    local.set $7
    br $continue|0
   end
   unreachable
  end
  local.get $5
  local.set $8
  local.get $0
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $8
 )
 (func $~lib/string/String.__eq (; 88 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  local.get $1
  i32.eq
  if
   i32.const 1
   local.set $2
   local.get $0
   call $~lib/rt/pure/__release
   local.get $1
   call $~lib/rt/pure/__release
   local.get $2
   return
  end
  local.get $0
  i32.const 0
  i32.eq
  if (result i32)
   i32.const 1
  else   
   local.get $1
   i32.const 0
   i32.eq
  end
  if
   i32.const 0
   local.set $2
   local.get $0
   call $~lib/rt/pure/__release
   local.get $1
   call $~lib/rt/pure/__release
   local.get $2
   return
  end
  local.get $0
  call $~lib/string/String#get:length
  local.set $3
  local.get $3
  local.get $1
  call $~lib/string/String#get:length
  i32.ne
  if
   i32.const 0
   local.set $2
   local.get $0
   call $~lib/rt/pure/__release
   local.get $1
   call $~lib/rt/pure/__release
   local.get $2
   return
  end
  local.get $0
  i32.const 0
  local.get $1
  i32.const 0
  local.get $3
  call $~lib/util/string/compareImpl
  i32.eqz
  local.set $2
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
 )
 (func $~lib/string/String.UTF8.byteLength (; 89 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  local.set $2
  local.get $2
  local.get $0
  i32.const 16
  i32.sub
  i32.load offset=12
  i32.add
  local.set $3
  local.get $1
  if (result i32)
   i32.const 1
  else   
   i32.const 0
  end
  local.set $4
  block $break|0
   loop $continue|0
    local.get $2
    local.get $3
    i32.lt_u
    i32.eqz
    br_if $break|0
    local.get $2
    i32.load16_u
    local.set $5
    local.get $5
    i32.const 128
    i32.lt_u
    if
     local.get $1
     if (result i32)
      local.get $5
      i32.eqz
     else      
      i32.const 0
     end
     if
      br $break|0
     end
     local.get $4
     i32.const 1
     i32.add
     local.set $4
     local.get $2
     i32.const 2
     i32.add
     local.set $2
    else     
     local.get $5
     i32.const 2048
     i32.lt_u
     if
      local.get $4
      i32.const 2
      i32.add
      local.set $4
      local.get $2
      i32.const 2
      i32.add
      local.set $2
     else      
      local.get $5
      i32.const 64512
      i32.and
      i32.const 55296
      i32.eq
      if (result i32)
       local.get $2
       i32.const 2
       i32.add
       local.get $3
       i32.lt_u
      else       
       i32.const 0
      end
      if
       local.get $2
       i32.load16_u offset=2
       i32.const 64512
       i32.and
       i32.const 56320
       i32.eq
       if
        local.get $2
        i32.const 4
        i32.add
        local.set $2
        local.get $4
        i32.const 4
        i32.add
        local.set $4
        br $continue|0
       end
      end
      local.get $2
      i32.const 2
      i32.add
      local.set $2
      local.get $4
      i32.const 3
      i32.add
      local.set $4
     end
    end
    br $continue|0
   end
   unreachable
  end
  local.get $4
  local.set $5
  local.get $0
  call $~lib/rt/pure/__release
  local.get $5
 )
 (func $~lib/rt/tlsf/reallocateBlock (; 90 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $2
  call $~lib/rt/tlsf/prepareSize
  local.set $3
  local.get $1
  i32.load
  local.set $4
  local.get $4
  i32.const 1
  i32.and
  i32.eqz
  if (result i32)
   local.get $1
   i32.load offset=4
   i32.const 268435455
   i32.const -1
   i32.xor
   i32.and
   i32.eqz
  else   
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 495
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  local.get $4
  i32.const -4
  i32.and
  i32.le_u
  if
   local.get $0
   local.get $1
   local.get $3
   call $~lib/rt/tlsf/prepareBlock
   local.get $1
   local.get $2
   i32.store offset=12
   local.get $1
   return
  end
  local.get $1
  local.set $5
  local.get $5
  i32.const 16
  i32.add
  local.get $5
  i32.load
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  i32.add
  local.set $6
  local.get $6
  i32.load
  local.set $7
  local.get $7
  i32.const 1
  i32.and
  if
   local.get $4
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.const 16
   i32.add
   local.get $7
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.add
   local.set $5
   local.get $5
   local.get $3
   i32.ge_u
   if
    local.get $0
    local.get $6
    call $~lib/rt/tlsf/removeBlock
    local.get $1
    local.get $4
    i32.const 3
    i32.and
    local.get $5
    i32.or
    i32.store
    local.get $1
    local.get $2
    i32.store offset=12
    local.get $0
    local.get $1
    local.get $3
    call $~lib/rt/tlsf/prepareBlock
    local.get $1
    return
   end
  end
  local.get $0
  local.get $2
  call $~lib/rt/tlsf/allocateBlock
  local.set $8
  local.get $8
  local.get $1
  i32.load offset=8
  i32.store offset=8
  local.get $8
  i32.const 16
  i32.add
  local.get $1
  i32.const 16
  i32.add
  local.get $2
  call $~lib/memory/memory.copy
  local.get $1
  local.get $4
  i32.const 1
  i32.or
  i32.store
  local.get $0
  local.get $1
  call $~lib/rt/tlsf/insertBlock
  local.get $1
  call $~lib/rt/rtrace/onfree
  local.get $8
 )
 (func $~lib/rt/tlsf/__realloc (; 91 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 559
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 0
  i32.ne
  if (result i32)
   local.get $0
   i32.const 15
   i32.and
   i32.eqz
  else   
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 560
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/rt/tlsf/ROOT
  local.get $0
  i32.const 16
  i32.sub
  local.get $1
  call $~lib/rt/tlsf/reallocateBlock
  i32.const 16
  i32.add
 )
 (func $~lib/string/String.UTF8.encode (; 92 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  local.set $2
  local.get $0
  local.get $0
  i32.const 16
  i32.sub
  i32.load offset=12
  i32.add
  local.set $3
  local.get $0
  local.get $1
  call $~lib/string/String.UTF8.byteLength
  i32.const 0
  call $~lib/rt/tlsf/__alloc
  local.set $4
  local.get $4
  local.set $5
  block $break|0
   loop $continue|0
    local.get $2
    local.get $3
    i32.lt_u
    i32.eqz
    br_if $break|0
    local.get $2
    i32.load16_u
    local.set $6
    local.get $6
    i32.const 128
    i32.lt_u
    if
     local.get $1
     if (result i32)
      local.get $6
      i32.eqz
     else      
      i32.const 0
     end
     if
      br $break|0
     end
     local.get $5
     local.get $6
     i32.store8
     local.get $5
     i32.const 1
     i32.add
     local.set $5
     local.get $2
     i32.const 2
     i32.add
     local.set $2
    else     
     local.get $6
     i32.const 2048
     i32.lt_u
     if
      local.get $5
      local.get $6
      i32.const 6
      i32.shr_u
      i32.const 192
      i32.or
      i32.store8
      local.get $5
      local.get $6
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      i32.store8 offset=1
      local.get $5
      i32.const 2
      i32.add
      local.set $5
      local.get $2
      i32.const 2
      i32.add
      local.set $2
     else      
      local.get $6
      i32.const 64512
      i32.and
      i32.const 55296
      i32.eq
      if (result i32)
       local.get $2
       i32.const 2
       i32.add
       local.get $3
       i32.lt_u
      else       
       i32.const 0
      end
      if
       local.get $2
       i32.load16_u offset=2
       local.set $7
       local.get $7
       i32.const 64512
       i32.and
       i32.const 56320
       i32.eq
       if
        i32.const 65536
        local.get $6
        i32.const 1023
        i32.and
        i32.const 10
        i32.shl
        i32.add
        local.get $7
        i32.const 1023
        i32.and
        i32.add
        local.set $6
        local.get $5
        local.get $6
        i32.const 18
        i32.shr_u
        i32.const 240
        i32.or
        i32.store8
        local.get $5
        local.get $6
        i32.const 12
        i32.shr_u
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        i32.store8 offset=1
        local.get $5
        local.get $6
        i32.const 6
        i32.shr_u
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        i32.store8 offset=2
        local.get $5
        local.get $6
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        i32.store8 offset=3
        local.get $2
        i32.const 4
        i32.add
        local.set $2
        local.get $5
        i32.const 4
        i32.add
        local.set $5
        br $continue|0
       end
      end
      local.get $5
      local.get $6
      i32.const 12
      i32.shr_u
      i32.const 224
      i32.or
      i32.store8
      local.get $5
      local.get $6
      i32.const 6
      i32.shr_u
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      i32.store8 offset=1
      local.get $5
      local.get $6
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      i32.store8 offset=2
      local.get $2
      i32.const 2
      i32.add
      local.set $2
      local.get $5
      i32.const 3
      i32.add
      local.set $5
     end
    end
    br $continue|0
   end
   unreachable
  end
  local.get $1
  if
   local.get $2
   local.get $3
   i32.le_u
   i32.eqz
   if
    i32.const 0
    i32.const 1384
    i32.const 592
    i32.const 8
    call $~lib/builtins/abort
    unreachable
   end
   local.get $4
   local.get $5
   local.get $4
   i32.sub
   i32.const 1
   i32.add
   call $~lib/rt/tlsf/__realloc
   local.set $4
   local.get $5
   i32.const 0
   i32.store8
  else   
   local.get $2
   local.get $3
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 1384
    i32.const 596
    i32.const 8
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $4
  call $~lib/rt/pure/__retain
  local.set $6
  local.get $0
  call $~lib/rt/pure/__release
  local.get $6
 )
 (func $~lib/string/String.UTF16.encode (; 93 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i32.const 16
  i32.sub
  i32.load offset=12
  local.set $1
  local.get $1
  i32.const 0
  call $~lib/rt/tlsf/__alloc
  local.set $2
  local.get $2
  local.get $0
  local.get $1
  call $~lib/memory/memory.copy
  local.get $2
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $0
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $~lib/arraybuffer/ArrayBuffer#get:byteLength (; 94 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 16
  i32.sub
  i32.load offset=12
 )
 (func $assembly/buffer/Buffer/Buffer.from<~lib/string/String> (; 95 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $1
  i32.const 0
  call $~lib/string/String.__eq
  if
   i32.const 1328
   local.tee $2
   local.get $1
   local.tee $3
   i32.ne
   if
    local.get $2
    call $~lib/rt/pure/__retain
    drop
    local.get $3
    call $~lib/rt/pure/__release
   end
   local.get $2
   local.set $1
  end
  local.get $1
  i32.const 1328
  call $~lib/string/String.__eq
  if (result i32)
   i32.const 1
  else   
   local.get $1
   i32.const 1352
   call $~lib/string/String.__eq
  end
  if
   local.get $1
   i32.const 1328
   call $~lib/string/String.__eq
   if (result i32)
    local.get $0
    i32.const 0
    call $~lib/string/String.UTF8.encode
   else    
    local.get $0
    call $~lib/string/String.UTF16.encode
   end
   local.set $2
   i32.const 16
   i32.const 4
   call $~lib/rt/tlsf/__alloc
   local.set $3
   local.get $3
   local.get $2
   call $~lib/rt/pure/__retain
   i32.store
   local.get $3
   local.get $2
   i32.store offset=4
   local.get $3
   local.get $2
   call $~lib/arraybuffer/ArrayBuffer#get:byteLength
   i32.store offset=8
   local.get $3
   call $~lib/rt/pure/__retain
   local.set $4
   local.get $2
   call $~lib/rt/pure/__release
   local.get $0
   call $~lib/rt/pure/__release
   local.get $1
   call $~lib/rt/pure/__release
   local.get $4
   return
  end
  i32.const 0
  i32.eqz
  if
   i32.const 0
   i32.const 904
   i32.const 41
   i32.const 6
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $start:assembly/__tests__/Buffer.spec~anonymous|0~anonymous|3 (; 96 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  i32.const 1296
  i32.const 0
  call $assembly/buffer/Buffer/Buffer.from<~lib/string/String>
  local.set $0
  local.get $0
  i32.const 0
  call $~lib/typedarray/Uint8Array#__get
  call $node_modules/as-pect/assembly/internal/Expectation/expect<u8>
  local.tee $1
  i32.const 97
  i32.const 608
  call $node_modules/as-pect/assembly/internal/Expectation/Expectation<u8>#toBe
  local.get $0
  i32.const 1
  call $~lib/typedarray/Uint8Array#__get
  call $node_modules/as-pect/assembly/internal/Expectation/expect<u8>
  local.tee $2
  i32.const 98
  i32.const 608
  call $node_modules/as-pect/assembly/internal/Expectation/Expectation<u8>#toBe
  local.get $0
  i32.const 2
  call $~lib/typedarray/Uint8Array#__get
  call $node_modules/as-pect/assembly/internal/Expectation/expect<u8>
  local.tee $3
  i32.const 99
  i32.const 608
  call $node_modules/as-pect/assembly/internal/Expectation/Expectation<u8>#toBe
  local.get $0
  i32.const 3
  call $~lib/typedarray/Uint8Array#__get
  call $node_modules/as-pect/assembly/internal/Expectation/expect<u8>
  local.tee $4
  i32.const 100
  i32.const 608
  call $node_modules/as-pect/assembly/internal/Expectation/Expectation<u8>#toBe
  local.get $0
  i32.const 4
  call $~lib/typedarray/Uint8Array#__get
  call $node_modules/as-pect/assembly/internal/Expectation/expect<u8>
  local.tee $5
  i32.const 101
  i32.const 608
  call $node_modules/as-pect/assembly/internal/Expectation/Expectation<u8>#toBe
  local.get $0
  i32.const 5
  call $~lib/typedarray/Uint8Array#__get
  call $node_modules/as-pect/assembly/internal/Expectation/expect<u8>
  local.tee $6
  i32.const 102
  i32.const 608
  call $node_modules/as-pect/assembly/internal/Expectation/Expectation<u8>#toBe
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
 )
 (func $start:assembly/__tests__/Buffer.spec~anonymous|0~anonymous|4 (; 97 ;) (type $FUNCSIG$v)
  (local $0 i32)
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
  i32.const 1544
  i32.const 1352
  call $assembly/buffer/Buffer/Buffer.from<~lib/string/String>
  local.set $0
  local.get $0
  i32.const 0
  call $~lib/typedarray/Uint8Array#__get
  call $node_modules/as-pect/assembly/internal/Expectation/expect<u8>
  local.tee $1
  i32.const 97
  i32.const 608
  call $node_modules/as-pect/assembly/internal/Expectation/Expectation<u8>#toBe
  local.get $0
  i32.const 1
  call $~lib/typedarray/Uint8Array#__get
  call $node_modules/as-pect/assembly/internal/Expectation/expect<u8>
  local.tee $2
  i32.const 0
  i32.const 608
  call $node_modules/as-pect/assembly/internal/Expectation/Expectation<u8>#toBe
  local.get $0
  i32.const 2
  call $~lib/typedarray/Uint8Array#__get
  call $node_modules/as-pect/assembly/internal/Expectation/expect<u8>
  local.tee $3
  i32.const 98
  i32.const 608
  call $node_modules/as-pect/assembly/internal/Expectation/Expectation<u8>#toBe
  local.get $0
  i32.const 3
  call $~lib/typedarray/Uint8Array#__get
  call $node_modules/as-pect/assembly/internal/Expectation/expect<u8>
  local.tee $4
  i32.const 0
  i32.const 608
  call $node_modules/as-pect/assembly/internal/Expectation/Expectation<u8>#toBe
  local.get $0
  i32.const 4
  call $~lib/typedarray/Uint8Array#__get
  call $node_modules/as-pect/assembly/internal/Expectation/expect<u8>
  local.tee $5
  i32.const 99
  i32.const 608
  call $node_modules/as-pect/assembly/internal/Expectation/Expectation<u8>#toBe
  local.get $0
  i32.const 5
  call $~lib/typedarray/Uint8Array#__get
  call $node_modules/as-pect/assembly/internal/Expectation/expect<u8>
  local.tee $6
  i32.const 0
  i32.const 608
  call $node_modules/as-pect/assembly/internal/Expectation/Expectation<u8>#toBe
  local.get $0
  i32.const 6
  call $~lib/typedarray/Uint8Array#__get
  call $node_modules/as-pect/assembly/internal/Expectation/expect<u8>
  local.tee $7
  i32.const 49
  i32.const 608
  call $node_modules/as-pect/assembly/internal/Expectation/Expectation<u8>#toBe
  local.get $0
  i32.const 7
  call $~lib/typedarray/Uint8Array#__get
  call $node_modules/as-pect/assembly/internal/Expectation/expect<u8>
  local.tee $8
  i32.const 0
  i32.const 608
  call $node_modules/as-pect/assembly/internal/Expectation/Expectation<u8>#toBe
  local.get $0
  i32.const 8
  call $~lib/typedarray/Uint8Array#__get
  call $node_modules/as-pect/assembly/internal/Expectation/expect<u8>
  local.tee $9
  i32.const 50
  i32.const 608
  call $node_modules/as-pect/assembly/internal/Expectation/Expectation<u8>#toBe
  local.get $0
  i32.const 9
  call $~lib/typedarray/Uint8Array#__get
  call $node_modules/as-pect/assembly/internal/Expectation/expect<u8>
  local.tee $10
  i32.const 0
  i32.const 608
  call $node_modules/as-pect/assembly/internal/Expectation/Expectation<u8>#toBe
  local.get $0
  i32.const 10
  call $~lib/typedarray/Uint8Array#__get
  call $node_modules/as-pect/assembly/internal/Expectation/expect<u8>
  local.tee $11
  i32.const 51
  i32.const 608
  call $node_modules/as-pect/assembly/internal/Expectation/Expectation<u8>#toBe
  local.get $0
  i32.const 11
  call $~lib/typedarray/Uint8Array#__get
  call $node_modules/as-pect/assembly/internal/Expectation/expect<u8>
  local.tee $12
  i32.const 0
  i32.const 608
  call $node_modules/as-pect/assembly/internal/Expectation/Expectation<u8>#toBe
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  local.get $7
  call $~lib/rt/pure/__release
  local.get $8
  call $~lib/rt/pure/__release
  local.get $9
  call $~lib/rt/pure/__release
  local.get $10
  call $~lib/rt/pure/__release
  local.get $11
  call $~lib/rt/pure/__release
  local.get $12
  call $~lib/rt/pure/__release
 )
 (func $~lib/array/Array<i8>#get:length (; 98 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/array/Array<i8>#__unchecked_get (; 99 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 0
  i32.shl
  i32.add
  i32.load8_s
 )
 (func $~lib/array/Array<i8>#__get (; 100 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 0
  i32.shr_u
  i32.ge_u
  if
   i32.const 176
   i32.const 976
   i32.const 109
   i32.const 61
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<i8>#__unchecked_get
 )
 (func $assembly/buffer/Buffer/Buffer.from<~lib/array/Array<i8>> (; 101 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  i32.const 10
  call $~lib/rt/__typeinfo
  local.set $2
  local.get $2
  i32.const 8192
  i32.and
  i32.const 0
  i32.ne
  local.set $3
  local.get $3
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 904
   i32.const 45
   i32.const 6
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/array/Array<i8>#get:length
  local.set $4
  i32.const 0
  local.get $4
  call $assembly/buffer/Buffer/Buffer#constructor
  local.set $5
  block $break|0
   i32.const 0
   local.set $6
   loop $loop|0
    local.get $6
    local.get $4
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $5
    local.get $6
    local.get $0
    local.get $6
    call $~lib/array/Array<i8>#__get
    i32.const 255
    i32.and
    call $~lib/typedarray/Uint8Array#__set
    local.get $6
    i32.const 1
    i32.add
    local.set $6
    br $loop|0
   end
   unreachable
  end
  local.get $5
  local.set $6
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $6
  return
 )
 (func $~lib/polyfills/bswap<i64> (; 102 ;) (type $FUNCSIG$jj) (param $0 i64) (result i64)
  (local $1 i64)
  (local $2 i64)
  (local $3 i64)
  local.get $0
  i64.const 8
  i64.shr_u
  i64.const 71777214294589695
  i64.and
  local.set $1
  local.get $0
  i64.const 71777214294589695
  i64.and
  i64.const 8
  i64.shl
  local.set $2
  local.get $1
  local.get $2
  i64.or
  local.set $3
  local.get $3
  i64.const 16
  i64.shr_u
  i64.const 281470681808895
  i64.and
  local.set $1
  local.get $3
  i64.const 281470681808895
  i64.and
  i64.const 16
  i64.shl
  local.set $2
  local.get $1
  local.get $2
  i64.or
  i64.const 32
  i64.rotr
  return
 )
 (func $assembly/buffer/Buffer/Buffer#readBigInt64BE (; 103 ;) (type $FUNCSIG$jii) (param $0 i32) (param $1 i32) (result i64)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 8
  i32.sub
  i32.le_u
  i32.eqz
  if
   i32.const 0
   i32.const 904
   i32.const 59
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.add
  i64.load
  call $~lib/polyfills/bswap<i64>
 )
 (func $assembly/buffer/Buffer/Buffer#readBigInt64LE (; 104 ;) (type $FUNCSIG$jii) (param $0 i32) (param $1 i32) (result i64)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 8
  i32.sub
  i32.le_u
  i32.eqz
  if
   i32.const 0
   i32.const 904
   i32.const 64
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.add
  i64.load
 )
 (func $node_modules/as-pect/assembly/internal/Expectation/Expectation<i64>#constructor (; 105 ;) (type $FUNCSIG$iij) (param $0 i32) (param $1 i64) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 16
   i32.const 11
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  i64.const 0
  i64.store offset=8
  local.get $0
  local.get $1
  i64.store offset=8
  local.get $0
 )
 (func $node_modules/as-pect/assembly/internal/Expectation/expect<i64> (; 106 ;) (type $FUNCSIG$ij) (param $0 i64) (result i32)
  i32.const 0
  local.get $0
  call $node_modules/as-pect/assembly/internal/Expectation/Expectation<i64>#constructor
 )
 (func $node_modules/as-pect/assembly/internal/report/Box/Box<i64>#constructor (; 107 ;) (type $FUNCSIG$iij) (param $0 i32) (param $1 i64) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 8
   i32.const 12
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  local.get $1
  i64.store
  local.get $0
 )
 (func $node_modules/as-pect/assembly/internal/Expectation/Expectation<i64>#toBe (; 108 ;) (type $FUNCSIG$viji) (param $0 i32) (param $1 i64) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i64)
  (local $7 i64)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i64.load offset=8
  local.set $6
  local.get $1
  local.set $5
  local.get $0
  i32.load
  local.set $4
  local.get $2
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $6
  local.set $7
  call $node_modules/as-pect/assembly/internal/report/reportActual/getStackTrace
  global.set $node_modules/as-pect/assembly/internal/report/reportActual/Actual.stackTrace
  i32.const 10
  global.set $node_modules/as-pect/assembly/internal/report/reportActual/Actual.type
  local.get $7
  drop
  i32.const 1
  global.set $node_modules/as-pect/assembly/internal/report/reportActual/Actual.signed
  i32.const 0
  local.get $7
  call $node_modules/as-pect/assembly/internal/report/Box/Box<i64>#constructor
  local.set $8
  local.get $8
  local.set $9
  local.get $9
  call $~lib/rt/pure/__retain
  drop
  global.get $node_modules/as-pect/assembly/internal/report/reportActual/Actual.reference
  call $~lib/rt/pure/__release
  local.get $9
  global.set $node_modules/as-pect/assembly/internal/report/reportActual/Actual.reference
  local.get $8
  call $~lib/rt/pure/__release
  block $node_modules/as-pect/assembly/internal/report/reportExpected/reportExpected<i64>|inlined.0
   local.get $5
   local.set $7
   local.get $4
   local.set $8
   global.get $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.ready
   i32.eqz
   if
    call $node_modules/as-pect/assembly/internal/report/reportExpected/reportInvalidExpectCall
    br $node_modules/as-pect/assembly/internal/report/reportExpected/reportExpected<i64>|inlined.0
   end
   call $node_modules/as-pect/assembly/internal/report/reportExpected/getStackTrace
   global.set $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.stackTrace
   local.get $8
   global.set $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.negated
   i32.const 10
   global.set $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.type
   local.get $7
   drop
   i32.const 1
   global.set $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.signed
   i32.const 0
   local.get $7
   call $node_modules/as-pect/assembly/internal/report/Box/Box<i64>#constructor
   local.set $9
   local.get $9
   local.set $10
   local.get $10
   call $~lib/rt/pure/__retain
   drop
   global.get $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.reference
   call $~lib/rt/pure/__release
   local.get $10
   global.set $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.reference
   local.get $9
   call $~lib/rt/pure/__release
  end
  local.get $4
  local.get $5
  local.get $6
  i64.eq
  i32.xor
  local.set $10
  local.get $3
  call $~lib/rt/pure/__retain
  local.set $9
  local.get $10
  i32.eqz
  if
   local.get $9
   call $~lib/rt/pure/__release
   local.get $9
   i32.const 472
   i32.const 11
   i32.const 18
   call $~lib/builtins/abort
   unreachable
  end
  local.get $9
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  call $node_modules/as-pect/assembly/internal/report/reportActual/Actual.clear
  call $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.clear
  local.get $2
  call $~lib/rt/pure/__release
 )
 (func $start:assembly/__tests__/Buffer.spec~anonymous|0~anonymous|5 (; 109 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i64)
  (local $3 i64)
  (local $4 i32)
  (local $5 i32)
  i32.const 8
  i32.const 0
  i32.const 10
  i32.const 1656
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $1
  i32.const 0
  call $assembly/buffer/Buffer/Buffer.from<~lib/array/Array<i8>>
  local.set $0
  local.get $0
  i32.const 0
  call $assembly/buffer/Buffer/Buffer#readBigInt64BE
  local.set $2
  local.get $0
  i32.const 0
  call $assembly/buffer/Buffer/Buffer#readBigInt64LE
  local.set $3
  local.get $2
  call $node_modules/as-pect/assembly/internal/Expectation/expect<i64>
  local.tee $4
  i64.const 72623859790382856
  i32.const 608
  call $node_modules/as-pect/assembly/internal/Expectation/Expectation<i64>#toBe
  local.get $3
  call $node_modules/as-pect/assembly/internal/Expectation/expect<i64>
  local.tee $5
  i64.const 578437695752307201
  i32.const 608
  call $node_modules/as-pect/assembly/internal/Expectation/Expectation<i64>#toBe
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
 )
 (func $start:assembly/__tests__/Buffer.spec~anonymous|0~anonymous|6 (; 110 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 0
  i32.const 8
  call $assembly/buffer/Buffer/Buffer#constructor
  local.set $0
  local.get $0
  i32.const 1
  call $assembly/buffer/Buffer/Buffer#readBigInt64BE
  drop
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $node_modules/as-pect/assembly/internal/Test/itThrows (; 111 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  local.get $1
  local.get $2
  call $node_modules/as-pect/assembly/internal/Test/reportNegatedTest
  local.get $0
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
 )
 (func $start:assembly/__tests__/Buffer.spec~anonymous|0~anonymous|7 (; 112 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 0
  i32.const 8
  call $assembly/buffer/Buffer/Buffer#constructor
  local.set $0
  local.get $0
  i32.const 1
  call $assembly/buffer/Buffer/Buffer#readBigInt64LE
  drop
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $~lib/polyfills/bswap<u64> (; 113 ;) (type $FUNCSIG$jj) (param $0 i64) (result i64)
  (local $1 i64)
  (local $2 i64)
  (local $3 i64)
  local.get $0
  i64.const 8
  i64.shr_u
  i64.const 71777214294589695
  i64.and
  local.set $1
  local.get $0
  i64.const 71777214294589695
  i64.and
  i64.const 8
  i64.shl
  local.set $2
  local.get $1
  local.get $2
  i64.or
  local.set $3
  local.get $3
  i64.const 16
  i64.shr_u
  i64.const 281470681808895
  i64.and
  local.set $1
  local.get $3
  i64.const 281470681808895
  i64.and
  i64.const 16
  i64.shl
  local.set $2
  local.get $1
  local.get $2
  i64.or
  i64.const 32
  i64.rotr
  return
 )
 (func $assembly/buffer/Buffer/Buffer#readBigUInt64BE (; 114 ;) (type $FUNCSIG$jii) (param $0 i32) (param $1 i32) (result i64)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 8
  i32.sub
  i32.le_u
  i32.eqz
  if
   i32.const 0
   i32.const 904
   i32.const 69
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.add
  i64.load
  call $~lib/polyfills/bswap<u64>
 )
 (func $assembly/buffer/Buffer/Buffer#readBigUInt64LE (; 115 ;) (type $FUNCSIG$jii) (param $0 i32) (param $1 i32) (result i64)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 8
  i32.sub
  i32.le_u
  i32.eqz
  if
   i32.const 0
   i32.const 904
   i32.const 74
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.add
  i64.load
 )
 (func $start:assembly/__tests__/Buffer.spec~anonymous|0~anonymous|8 (; 116 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i64)
  (local $3 i64)
  (local $4 i32)
  (local $5 i32)
  i32.const 8
  i32.const 2
  i32.const 7
  i32.const 1968
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $1
  i32.const 0
  call $assembly/buffer/Buffer/Buffer.from<~lib/array/Array<i32>>
  local.set $0
  local.get $0
  i32.const 0
  call $assembly/buffer/Buffer/Buffer#readBigUInt64BE
  local.set $2
  local.get $0
  i32.const 0
  call $assembly/buffer/Buffer/Buffer#readBigUInt64LE
  local.set $3
  local.get $2
  call $node_modules/as-pect/assembly/internal/Expectation/expect<i64>
  local.tee $4
  i64.const -2401053088876216593
  i32.const 608
  call $node_modules/as-pect/assembly/internal/Expectation/Expectation<i64>#toBe
  local.get $3
  call $node_modules/as-pect/assembly/internal/Expectation/expect<i64>
  local.tee $5
  i64.const -1171307680053154338
  i32.const 608
  call $node_modules/as-pect/assembly/internal/Expectation/Expectation<i64>#toBe
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
 )
 (func $start:assembly/__tests__/Buffer.spec~anonymous|0~anonymous|9 (; 117 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 0
  i32.const 8
  call $assembly/buffer/Buffer/Buffer#constructor
  local.set $0
  local.get $0
  i32.const 1
  call $assembly/buffer/Buffer/Buffer#readBigUInt64BE
  drop
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $start:assembly/__tests__/Buffer.spec~anonymous|0~anonymous|10 (; 118 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 0
  i32.const 8
  call $assembly/buffer/Buffer/Buffer#constructor
  local.set $0
  local.get $0
  i32.const 1
  call $assembly/buffer/Buffer/Buffer#readBigUInt64LE
  drop
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $assembly/buffer/Buffer/Buffer#readDoubleBE (; 119 ;) (type $FUNCSIG$dii) (param $0 i32) (param $1 i32) (result f64)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 8
  i32.sub
  i32.le_u
  i32.eqz
  if
   i32.const 0
   i32.const 904
   i32.const 79
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.add
  i64.load
  call $~lib/polyfills/bswap<u64>
  f64.reinterpret_i64
 )
 (func $assembly/buffer/Buffer/Buffer#readDoubleLE (; 120 ;) (type $FUNCSIG$dii) (param $0 i32) (param $1 i32) (result f64)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 8
  i32.sub
  i32.le_u
  i32.eqz
  if
   i32.const 0
   i32.const 904
   i32.const 84
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.add
  f64.load
 )
 (func $node_modules/as-pect/assembly/internal/Expectation/Expectation<f64>#constructor (; 121 ;) (type $FUNCSIG$iid) (param $0 i32) (param $1 f64) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 16
   i32.const 13
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  f64.const 0
  f64.store offset=8
  local.get $0
  local.get $1
  f64.store offset=8
  local.get $0
 )
 (func $node_modules/as-pect/assembly/internal/Expectation/expect<f64> (; 122 ;) (type $FUNCSIG$id) (param $0 f64) (result i32)
  i32.const 0
  local.get $0
  call $node_modules/as-pect/assembly/internal/Expectation/Expectation<f64>#constructor
 )
 (func $node_modules/as-pect/assembly/internal/Expectation/Expectation<f64>#toBe (; 123 ;) (type $FUNCSIG$vidi) (param $0 i32) (param $1 f64) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 f64)
  (local $6 f64)
  (local $7 f64)
  (local $8 i32)
  (local $9 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  f64.load offset=8
  local.set $6
  local.get $1
  local.set $5
  local.get $0
  i32.load
  local.set $4
  local.get $2
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $6
  local.set $7
  call $node_modules/as-pect/assembly/internal/report/reportActual/getStackTrace
  global.set $node_modules/as-pect/assembly/internal/report/reportActual/Actual.stackTrace
  i32.const 2
  global.set $node_modules/as-pect/assembly/internal/report/reportActual/Actual.type
  local.get $7
  global.set $node_modules/as-pect/assembly/internal/report/reportActual/Actual.float
  block $node_modules/as-pect/assembly/internal/report/reportExpected/reportExpected<f64>|inlined.0
   local.get $5
   local.set $7
   local.get $4
   local.set $8
   global.get $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.ready
   i32.eqz
   if
    call $node_modules/as-pect/assembly/internal/report/reportExpected/reportInvalidExpectCall
    br $node_modules/as-pect/assembly/internal/report/reportExpected/reportExpected<f64>|inlined.0
   end
   call $node_modules/as-pect/assembly/internal/report/reportExpected/getStackTrace
   global.set $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.stackTrace
   local.get $8
   global.set $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.negated
   i32.const 2
   global.set $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.type
   local.get $7
   global.set $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.float
  end
  local.get $4
  local.get $5
  local.get $6
  f64.eq
  i32.xor
  local.set $9
  local.get $3
  call $~lib/rt/pure/__retain
  local.set $8
  local.get $9
  i32.eqz
  if
   local.get $8
   call $~lib/rt/pure/__release
   local.get $8
   i32.const 472
   i32.const 11
   i32.const 18
   call $~lib/builtins/abort
   unreachable
  end
  local.get $8
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  call $node_modules/as-pect/assembly/internal/report/reportActual/Actual.clear
  call $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.clear
  local.get $2
  call $~lib/rt/pure/__release
 )
 (func $start:assembly/__tests__/Buffer.spec~anonymous|0~anonymous|11 (; 124 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 f64)
  (local $3 f64)
  (local $4 i32)
  (local $5 i32)
  i32.const 8
  i32.const 2
  i32.const 7
  i32.const 2200
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $1
  i32.const 0
  call $assembly/buffer/Buffer/Buffer.from<~lib/array/Array<i32>>
  local.set $0
  local.get $0
  i32.const 0
  call $assembly/buffer/Buffer/Buffer#readDoubleBE
  local.set $2
  local.get $0
  i32.const 0
  call $assembly/buffer/Buffer/Buffer#readDoubleLE
  local.set $3
  local.get $2
  call $node_modules/as-pect/assembly/internal/Expectation/expect<f64>
  local.tee $4
  f64.const 8.20788039913184e-304
  i32.const 608
  call $node_modules/as-pect/assembly/internal/Expectation/Expectation<f64>#toBe
  local.get $3
  call $node_modules/as-pect/assembly/internal/Expectation/expect<f64>
  local.tee $5
  f64.const 5.447603722011605e-270
  i32.const 608
  call $node_modules/as-pect/assembly/internal/Expectation/Expectation<f64>#toBe
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
 )
 (func $start:assembly/__tests__/Buffer.spec~anonymous|0~anonymous|12 (; 125 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 0
  i32.const 8
  call $assembly/buffer/Buffer/Buffer#constructor
  local.set $0
  local.get $0
  i32.const 1
  call $assembly/buffer/Buffer/Buffer#readDoubleBE
  drop
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $start:assembly/__tests__/Buffer.spec~anonymous|0~anonymous|13 (; 126 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 0
  i32.const 8
  call $assembly/buffer/Buffer/Buffer#constructor
  local.set $0
  local.get $0
  i32.const 1
  call $assembly/buffer/Buffer/Buffer#readDoubleLE
  drop
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $~lib/polyfills/bswap<u32> (; 127 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const -16711936
  i32.and
  i32.const 8
  i32.rotl
  local.get $0
  i32.const 16711935
  i32.and
  i32.const 8
  i32.rotr
  i32.or
  return
 )
 (func $assembly/buffer/Buffer/Buffer#readFloatBE (; 128 ;) (type $FUNCSIG$fii) (param $0 i32) (param $1 i32) (result f32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 4
  i32.sub
  i32.le_u
  i32.eqz
  if
   i32.const 0
   i32.const 904
   i32.const 89
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.add
  i32.load
  call $~lib/polyfills/bswap<u32>
  f32.reinterpret_i32
 )
 (func $assembly/buffer/Buffer/Buffer#readFloatLE (; 129 ;) (type $FUNCSIG$fii) (param $0 i32) (param $1 i32) (result f32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 4
  i32.sub
  i32.le_u
  i32.eqz
  if
   i32.const 0
   i32.const 904
   i32.const 94
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.add
  f32.load
 )
 (func $node_modules/as-pect/assembly/internal/Expectation/Expectation<f32>#constructor (; 130 ;) (type $FUNCSIG$iif) (param $0 i32) (param $1 f32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 8
   i32.const 14
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  f32.const 0
  f32.store offset=4
  local.get $0
  local.get $1
  f32.store offset=4
  local.get $0
 )
 (func $node_modules/as-pect/assembly/internal/Expectation/expect<f32> (; 131 ;) (type $FUNCSIG$if) (param $0 f32) (result i32)
  i32.const 0
  local.get $0
  call $node_modules/as-pect/assembly/internal/Expectation/Expectation<f32>#constructor
 )
 (func $node_modules/as-pect/assembly/internal/Expectation/Expectation<f32>#toBe (; 132 ;) (type $FUNCSIG$vifi) (param $0 i32) (param $1 f32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 f32)
  (local $6 f32)
  (local $7 f32)
  (local $8 i32)
  (local $9 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  f32.load offset=4
  local.set $6
  local.get $1
  local.set $5
  local.get $0
  i32.load
  local.set $4
  local.get $2
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $6
  local.set $7
  call $node_modules/as-pect/assembly/internal/report/reportActual/getStackTrace
  global.set $node_modules/as-pect/assembly/internal/report/reportActual/Actual.stackTrace
  i32.const 2
  global.set $node_modules/as-pect/assembly/internal/report/reportActual/Actual.type
  local.get $7
  f64.promote_f32
  global.set $node_modules/as-pect/assembly/internal/report/reportActual/Actual.float
  block $node_modules/as-pect/assembly/internal/report/reportExpected/reportExpected<f32>|inlined.0
   local.get $5
   local.set $7
   local.get $4
   local.set $8
   global.get $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.ready
   i32.eqz
   if
    call $node_modules/as-pect/assembly/internal/report/reportExpected/reportInvalidExpectCall
    br $node_modules/as-pect/assembly/internal/report/reportExpected/reportExpected<f32>|inlined.0
   end
   call $node_modules/as-pect/assembly/internal/report/reportExpected/getStackTrace
   global.set $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.stackTrace
   local.get $8
   global.set $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.negated
   i32.const 2
   global.set $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.type
   local.get $7
   f64.promote_f32
   global.set $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.float
  end
  local.get $4
  local.get $5
  local.get $6
  f32.eq
  i32.xor
  local.set $9
  local.get $3
  call $~lib/rt/pure/__retain
  local.set $8
  local.get $9
  i32.eqz
  if
   local.get $8
   call $~lib/rt/pure/__release
   local.get $8
   i32.const 472
   i32.const 11
   i32.const 18
   call $~lib/builtins/abort
   unreachable
  end
  local.get $8
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  call $node_modules/as-pect/assembly/internal/report/reportActual/Actual.clear
  call $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.clear
  local.get $2
  call $~lib/rt/pure/__release
 )
 (func $start:assembly/__tests__/Buffer.spec~anonymous|0~anonymous|14 (; 133 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 f32)
  (local $3 f32)
  (local $4 i32)
  (local $5 i32)
  i32.const 4
  i32.const 2
  i32.const 7
  i32.const 2520
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $1
  i32.const 0
  call $assembly/buffer/Buffer/Buffer.from<~lib/array/Array<i32>>
  local.set $0
  local.get $0
  i32.const 0
  call $assembly/buffer/Buffer/Buffer#readFloatBE
  local.set $2
  local.get $0
  i32.const 0
  call $assembly/buffer/Buffer/Buffer#readFloatLE
  local.set $3
  local.get $2
  call $node_modules/as-pect/assembly/internal/Expectation/expect<f32>
  local.tee $4
  f32.const 2.387939260590663e-38
  i32.const 608
  call $node_modules/as-pect/assembly/internal/Expectation/Expectation<f32>#toBe
  local.get $3
  call $node_modules/as-pect/assembly/internal/Expectation/expect<f32>
  local.tee $5
  f32.const 1.539989614439558e-36
  i32.const 608
  call $node_modules/as-pect/assembly/internal/Expectation/Expectation<f32>#toBe
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
 )
 (func $start:assembly/__tests__/Buffer.spec~anonymous|0~anonymous|15 (; 134 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 0
  i32.const 4
  call $assembly/buffer/Buffer/Buffer#constructor
  local.set $0
  local.get $0
  i32.const 1
  call $assembly/buffer/Buffer/Buffer#readFloatBE
  drop
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $start:assembly/__tests__/Buffer.spec~anonymous|0~anonymous|16 (; 135 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 0
  i32.const 4
  call $assembly/buffer/Buffer/Buffer#constructor
  local.set $0
  local.get $0
  i32.const 1
  call $assembly/buffer/Buffer/Buffer#readFloatLE
  drop
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $assembly/buffer/Buffer/Buffer#readInt8 (; 136 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.lt_u
  i32.eqz
  if
   i32.const 0
   i32.const 904
   i32.const 99
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.add
  i32.load8_s
 )
 (func $assembly/buffer/Buffer/Buffer#readUInt8 (; 137 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.lt_u
  i32.eqz
  if
   i32.const 0
   i32.const 904
   i32.const 104
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.add
  i32.load8_u
 )
 (func $node_modules/as-pect/assembly/internal/Expectation/Expectation<i8>#constructor (; 138 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 5
   i32.const 15
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store8 offset=4
  local.get $0
  local.get $1
  i32.store8 offset=4
  local.get $0
 )
 (func $node_modules/as-pect/assembly/internal/Expectation/expect<i8> (; 139 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  i32.const 0
  local.get $0
  call $node_modules/as-pect/assembly/internal/Expectation/Expectation<i8>#constructor
 )
 (func $node_modules/as-pect/assembly/internal/Expectation/Expectation<i8>#toBe (; 140 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i32.load8_s offset=4
  local.set $6
  local.get $1
  local.set $5
  local.get $0
  i32.load
  local.set $4
  local.get $2
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $6
  local.set $7
  call $node_modules/as-pect/assembly/internal/report/reportActual/getStackTrace
  global.set $node_modules/as-pect/assembly/internal/report/reportActual/Actual.stackTrace
  i32.const 3
  global.set $node_modules/as-pect/assembly/internal/report/reportActual/Actual.type
  local.get $7
  drop
  i32.const 0
  global.set $node_modules/as-pect/assembly/internal/report/reportActual/Actual.signed
  local.get $7
  global.set $node_modules/as-pect/assembly/internal/report/reportActual/Actual.integer
  block $node_modules/as-pect/assembly/internal/report/reportExpected/reportExpected<i8>|inlined.0
   local.get $5
   local.set $8
   local.get $4
   local.set $7
   global.get $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.ready
   i32.eqz
   if
    call $node_modules/as-pect/assembly/internal/report/reportExpected/reportInvalidExpectCall
    br $node_modules/as-pect/assembly/internal/report/reportExpected/reportExpected<i8>|inlined.0
   end
   call $node_modules/as-pect/assembly/internal/report/reportExpected/getStackTrace
   global.set $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.stackTrace
   local.get $7
   global.set $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.negated
   i32.const 3
   global.set $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.type
   local.get $8
   drop
   i32.const 0
   global.set $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.signed
   local.get $8
   i32.const 24
   i32.shl
   i32.const 24
   i32.shr_s
   global.set $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.integer
  end
  local.get $4
  local.get $5
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  local.get $6
  i32.eq
  i32.xor
  local.set $8
  local.get $3
  call $~lib/rt/pure/__retain
  local.set $7
  local.get $8
  i32.eqz
  if
   local.get $7
   call $~lib/rt/pure/__release
   local.get $7
   i32.const 472
   i32.const 11
   i32.const 18
   call $~lib/builtins/abort
   unreachable
  end
  local.get $7
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  call $node_modules/as-pect/assembly/internal/report/reportActual/Actual.clear
  call $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.clear
  local.get $2
  call $~lib/rt/pure/__release
 )
 (func $start:assembly/__tests__/Buffer.spec~anonymous|0~anonymous|17 (; 141 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  i32.const 1
  i32.const 2
  i32.const 7
  i32.const 2808
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $1
  i32.const 0
  call $assembly/buffer/Buffer/Buffer.from<~lib/array/Array<i32>>
  local.set $0
  local.get $0
  i32.const 0
  call $assembly/buffer/Buffer/Buffer#readInt8
  local.set $2
  local.get $0
  i32.const 0
  call $assembly/buffer/Buffer/Buffer#readUInt8
  local.set $3
  local.get $3
  call $node_modules/as-pect/assembly/internal/Expectation/expect<u8>
  local.tee $4
  i32.const 255
  i32.const 608
  call $node_modules/as-pect/assembly/internal/Expectation/Expectation<u8>#toBe
  local.get $2
  call $node_modules/as-pect/assembly/internal/Expectation/expect<i8>
  local.tee $5
  i32.const -1
  i32.const 608
  call $node_modules/as-pect/assembly/internal/Expectation/Expectation<i8>#toBe
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
 )
 (func $start:assembly/__tests__/Buffer.spec~anonymous|0~anonymous|18 (; 142 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 0
  i32.const 1
  call $assembly/buffer/Buffer/Buffer#constructor
  local.set $0
  local.get $0
  i32.const 1
  call $~lib/typedarray/Uint8Array#__get
  local.set $1
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $start:assembly/__tests__/Buffer.spec~anonymous|0~anonymous|19 (; 143 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 0
  i32.const 1
  call $assembly/buffer/Buffer/Buffer#constructor
  local.set $0
  local.get $0
  i32.const 1
  call $assembly/buffer/Buffer/Buffer#readInt8
  local.set $1
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $~lib/polyfills/bswap<i16> (; 144 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 8
  i32.shl
  local.get $0
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  i32.const 8
  i32.shr_s
  i32.const 255
  i32.and
  i32.or
  return
 )
 (func $assembly/buffer/Buffer/Buffer#readInt16BE (; 145 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.sub
  i32.le_u
  i32.eqz
  if
   i32.const 0
   i32.const 904
   i32.const 109
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.add
  i32.load16_s
  call $~lib/polyfills/bswap<i16>
 )
 (func $assembly/buffer/Buffer/Buffer#readInt16LE (; 146 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.sub
  i32.le_u
  i32.eqz
  if
   i32.const 0
   i32.const 904
   i32.const 114
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.add
  i32.load16_s
 )
 (func $node_modules/as-pect/assembly/internal/Expectation/Expectation<i16>#constructor (; 147 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 6
   i32.const 16
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store16 offset=4
  local.get $0
  local.get $1
  i32.store16 offset=4
  local.get $0
 )
 (func $node_modules/as-pect/assembly/internal/Expectation/expect<i16> (; 148 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  i32.const 0
  local.get $0
  call $node_modules/as-pect/assembly/internal/Expectation/Expectation<i16>#constructor
 )
 (func $node_modules/as-pect/assembly/internal/Expectation/Expectation<i16>#toBe (; 149 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i32.load16_s offset=4
  local.set $6
  local.get $1
  local.set $5
  local.get $0
  i32.load
  local.set $4
  local.get $2
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $6
  local.set $7
  call $node_modules/as-pect/assembly/internal/report/reportActual/getStackTrace
  global.set $node_modules/as-pect/assembly/internal/report/reportActual/Actual.stackTrace
  i32.const 3
  global.set $node_modules/as-pect/assembly/internal/report/reportActual/Actual.type
  local.get $7
  drop
  i32.const 0
  global.set $node_modules/as-pect/assembly/internal/report/reportActual/Actual.signed
  local.get $7
  global.set $node_modules/as-pect/assembly/internal/report/reportActual/Actual.integer
  block $node_modules/as-pect/assembly/internal/report/reportExpected/reportExpected<i16>|inlined.0
   local.get $5
   local.set $8
   local.get $4
   local.set $7
   global.get $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.ready
   i32.eqz
   if
    call $node_modules/as-pect/assembly/internal/report/reportExpected/reportInvalidExpectCall
    br $node_modules/as-pect/assembly/internal/report/reportExpected/reportExpected<i16>|inlined.0
   end
   call $node_modules/as-pect/assembly/internal/report/reportExpected/getStackTrace
   global.set $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.stackTrace
   local.get $7
   global.set $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.negated
   i32.const 3
   global.set $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.type
   local.get $8
   drop
   i32.const 0
   global.set $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.signed
   local.get $8
   i32.const 16
   i32.shl
   i32.const 16
   i32.shr_s
   global.set $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.integer
  end
  local.get $4
  local.get $5
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  local.get $6
  i32.eq
  i32.xor
  local.set $8
  local.get $3
  call $~lib/rt/pure/__retain
  local.set $7
  local.get $8
  i32.eqz
  if
   local.get $7
   call $~lib/rt/pure/__release
   local.get $7
   i32.const 472
   i32.const 11
   i32.const 18
   call $~lib/builtins/abort
   unreachable
  end
  local.get $7
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  call $node_modules/as-pect/assembly/internal/report/reportActual/Actual.clear
  call $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.clear
  local.get $2
  call $~lib/rt/pure/__release
 )
 (func $start:assembly/__tests__/Buffer.spec~anonymous|0~anonymous|20 (; 150 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  i32.const 2
  i32.const 2
  i32.const 7
  i32.const 3088
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $1
  i32.const 0
  call $assembly/buffer/Buffer/Buffer.from<~lib/array/Array<i32>>
  local.set $0
  local.get $0
  i32.const 0
  call $assembly/buffer/Buffer/Buffer#readInt16BE
  local.set $2
  local.get $0
  i32.const 0
  call $assembly/buffer/Buffer/Buffer#readInt16LE
  local.set $3
  local.get $2
  call $node_modules/as-pect/assembly/internal/Expectation/expect<i16>
  local.tee $4
  i32.const 5
  i32.const 608
  call $node_modules/as-pect/assembly/internal/Expectation/Expectation<i16>#toBe
  local.get $3
  call $node_modules/as-pect/assembly/internal/Expectation/expect<i16>
  local.tee $5
  i32.const 1280
  i32.const 608
  call $node_modules/as-pect/assembly/internal/Expectation/Expectation<i16>#toBe
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
 )
 (func $start:assembly/__tests__/Buffer.spec~anonymous|0~anonymous|21 (; 151 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 0
  i32.const 2
  call $assembly/buffer/Buffer/Buffer#constructor
  local.set $0
  local.get $0
  i32.const 1
  call $assembly/buffer/Buffer/Buffer#readInt16BE
  drop
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $start:assembly/__tests__/Buffer.spec~anonymous|0~anonymous|22 (; 152 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 0
  i32.const 2
  call $assembly/buffer/Buffer/Buffer#constructor
  local.set $0
  local.get $0
  i32.const 1
  call $assembly/buffer/Buffer/Buffer#readInt16LE
  drop
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $~lib/polyfills/bswap<u16> (; 153 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 8
  i32.shl
  local.get $0
  i32.const 65535
  i32.and
  i32.const 8
  i32.shr_u
  i32.const 255
  i32.and
  i32.or
  return
 )
 (func $assembly/buffer/Buffer/Buffer#readUInt16BE (; 154 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.sub
  i32.le_u
  i32.eqz
  if
   i32.const 0
   i32.const 904
   i32.const 119
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.add
  i32.load16_u
  call $~lib/polyfills/bswap<u16>
 )
 (func $assembly/buffer/Buffer/Buffer#readUInt16LE (; 155 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.sub
  i32.le_u
  i32.eqz
  if
   i32.const 0
   i32.const 904
   i32.const 124
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.add
  i32.load16_u
 )
 (func $node_modules/as-pect/assembly/internal/Expectation/Expectation<u16>#constructor (; 156 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 6
   i32.const 17
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store16 offset=4
  local.get $0
  local.get $1
  i32.store16 offset=4
  local.get $0
 )
 (func $node_modules/as-pect/assembly/internal/Expectation/expect<u16> (; 157 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  i32.const 0
  local.get $0
  call $node_modules/as-pect/assembly/internal/Expectation/Expectation<u16>#constructor
 )
 (func $node_modules/as-pect/assembly/internal/Expectation/Expectation<u16>#toBe (; 158 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i32.load16_u offset=4
  local.set $6
  local.get $1
  local.set $5
  local.get $0
  i32.load
  local.set $4
  local.get $2
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $6
  local.set $7
  call $node_modules/as-pect/assembly/internal/report/reportActual/getStackTrace
  global.set $node_modules/as-pect/assembly/internal/report/reportActual/Actual.stackTrace
  i32.const 3
  global.set $node_modules/as-pect/assembly/internal/report/reportActual/Actual.type
  local.get $7
  drop
  i32.const 0
  global.set $node_modules/as-pect/assembly/internal/report/reportActual/Actual.signed
  local.get $7
  global.set $node_modules/as-pect/assembly/internal/report/reportActual/Actual.integer
  block $node_modules/as-pect/assembly/internal/report/reportExpected/reportExpected<u16>|inlined.0
   local.get $5
   local.set $8
   local.get $4
   local.set $7
   global.get $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.ready
   i32.eqz
   if
    call $node_modules/as-pect/assembly/internal/report/reportExpected/reportInvalidExpectCall
    br $node_modules/as-pect/assembly/internal/report/reportExpected/reportExpected<u16>|inlined.0
   end
   call $node_modules/as-pect/assembly/internal/report/reportExpected/getStackTrace
   global.set $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.stackTrace
   local.get $7
   global.set $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.negated
   i32.const 3
   global.set $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.type
   local.get $8
   drop
   i32.const 0
   global.set $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.signed
   local.get $8
   i32.const 65535
   i32.and
   global.set $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.integer
  end
  local.get $4
  local.get $5
  i32.const 65535
  i32.and
  local.get $6
  i32.eq
  i32.xor
  local.set $8
  local.get $3
  call $~lib/rt/pure/__retain
  local.set $7
  local.get $8
  i32.eqz
  if
   local.get $7
   call $~lib/rt/pure/__release
   local.get $7
   i32.const 472
   i32.const 11
   i32.const 18
   call $~lib/builtins/abort
   unreachable
  end
  local.get $7
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  call $node_modules/as-pect/assembly/internal/report/reportActual/Actual.clear
  call $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.clear
  local.get $2
  call $~lib/rt/pure/__release
 )
 (func $start:assembly/__tests__/Buffer.spec~anonymous|0~anonymous|23 (; 159 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  i32.const 2
  i32.const 2
  i32.const 7
  i32.const 3384
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $1
  i32.const 0
  call $assembly/buffer/Buffer/Buffer.from<~lib/array/Array<i32>>
  local.set $0
  local.get $0
  i32.const 0
  call $assembly/buffer/Buffer/Buffer#readUInt16BE
  local.set $2
  local.get $0
  i32.const 0
  call $assembly/buffer/Buffer/Buffer#readUInt16LE
  local.set $3
  local.get $2
  call $node_modules/as-pect/assembly/internal/Expectation/expect<u16>
  local.tee $4
  i32.const 5
  i32.const 608
  call $node_modules/as-pect/assembly/internal/Expectation/Expectation<u16>#toBe
  local.get $3
  call $node_modules/as-pect/assembly/internal/Expectation/expect<u16>
  local.tee $5
  i32.const 1280
  i32.const 608
  call $node_modules/as-pect/assembly/internal/Expectation/Expectation<u16>#toBe
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
 )
 (func $start:assembly/__tests__/Buffer.spec~anonymous|0~anonymous|24 (; 160 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 0
  i32.const 2
  call $assembly/buffer/Buffer/Buffer#constructor
  local.set $0
  local.get $0
  i32.const 1
  call $assembly/buffer/Buffer/Buffer#readUInt16BE
  drop
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $start:assembly/__tests__/Buffer.spec~anonymous|0~anonymous|25 (; 161 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 0
  i32.const 2
  call $assembly/buffer/Buffer/Buffer#constructor
  local.set $0
  local.get $0
  i32.const 1
  call $assembly/buffer/Buffer/Buffer#readUInt16LE
  drop
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $~lib/polyfills/bswap<i32> (; 162 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const -16711936
  i32.and
  i32.const 8
  i32.rotl
  local.get $0
  i32.const 16711935
  i32.and
  i32.const 8
  i32.rotr
  i32.or
  return
 )
 (func $assembly/buffer/Buffer/Buffer#readInt32BE (; 163 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 4
  i32.sub
  i32.le_u
  i32.eqz
  if
   i32.const 0
   i32.const 904
   i32.const 129
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.add
  i32.load
  call $~lib/polyfills/bswap<i32>
 )
 (func $assembly/buffer/Buffer/Buffer#readInt32LE (; 164 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 4
  i32.sub
  i32.le_u
  i32.eqz
  if
   i32.const 0
   i32.const 904
   i32.const 134
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.add
  i32.load
 )
 (func $start:assembly/__tests__/Buffer.spec~anonymous|0~anonymous|26 (; 165 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  i32.const 4
  i32.const 2
  i32.const 7
  i32.const 3584
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $1
  i32.const 0
  call $assembly/buffer/Buffer/Buffer.from<~lib/array/Array<i32>>
  local.set $0
  local.get $0
  i32.const 0
  call $assembly/buffer/Buffer/Buffer#readInt32BE
  local.set $2
  local.get $0
  i32.const 0
  call $assembly/buffer/Buffer/Buffer#readInt32LE
  local.set $3
  local.get $3
  call $node_modules/as-pect/assembly/internal/Expectation/expect<i32>
  local.tee $4
  i32.const 2018915346
  i32.const 608
  call $node_modules/as-pect/assembly/internal/Expectation/Expectation<i32>#toBe
  local.get $2
  call $node_modules/as-pect/assembly/internal/Expectation/expect<i32>
  local.tee $5
  i32.const 305419896
  i32.const 608
  call $node_modules/as-pect/assembly/internal/Expectation/Expectation<i32>#toBe
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
 )
 (func $start:assembly/__tests__/Buffer.spec~anonymous|0~anonymous|27 (; 166 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 0
  i32.const 4
  call $assembly/buffer/Buffer/Buffer#constructor
  local.set $0
  local.get $0
  i32.const 1
  call $assembly/buffer/Buffer/Buffer#readInt32BE
  drop
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $start:assembly/__tests__/Buffer.spec~anonymous|0~anonymous|28 (; 167 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 0
  i32.const 4
  call $assembly/buffer/Buffer/Buffer#constructor
  local.set $0
  local.get $0
  i32.const 1
  call $assembly/buffer/Buffer/Buffer#readInt32LE
  drop
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $assembly/buffer/Buffer/Buffer#readUInt32BE (; 168 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 4
  i32.sub
  i32.le_u
  i32.eqz
  if
   i32.const 0
   i32.const 904
   i32.const 139
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.add
  i32.load
  call $~lib/polyfills/bswap<u32>
 )
 (func $assembly/buffer/Buffer/Buffer#readUInt32LE (; 169 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 4
  i32.sub
  i32.le_u
  i32.eqz
  if
   i32.const 0
   i32.const 904
   i32.const 144
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.add
  i32.load
 )
 (func $node_modules/as-pect/assembly/internal/Expectation/Expectation<u32>#constructor (; 170 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 8
   i32.const 18
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
 )
 (func $node_modules/as-pect/assembly/internal/Expectation/expect<u32> (; 171 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  i32.const 0
  local.get $0
  call $node_modules/as-pect/assembly/internal/Expectation/Expectation<u32>#constructor
 )
 (func $node_modules/as-pect/assembly/internal/Expectation/Expectation<u32>#toBe (; 172 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i32.load offset=4
  local.set $6
  local.get $1
  local.set $5
  local.get $0
  i32.load
  local.set $4
  local.get $2
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $6
  local.set $7
  call $node_modules/as-pect/assembly/internal/report/reportActual/getStackTrace
  global.set $node_modules/as-pect/assembly/internal/report/reportActual/Actual.stackTrace
  i32.const 3
  global.set $node_modules/as-pect/assembly/internal/report/reportActual/Actual.type
  local.get $7
  drop
  i32.const 0
  global.set $node_modules/as-pect/assembly/internal/report/reportActual/Actual.signed
  local.get $7
  global.set $node_modules/as-pect/assembly/internal/report/reportActual/Actual.integer
  block $node_modules/as-pect/assembly/internal/report/reportExpected/reportExpected<u32>|inlined.0
   local.get $5
   local.set $8
   local.get $4
   local.set $7
   global.get $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.ready
   i32.eqz
   if
    call $node_modules/as-pect/assembly/internal/report/reportExpected/reportInvalidExpectCall
    br $node_modules/as-pect/assembly/internal/report/reportExpected/reportExpected<u32>|inlined.0
   end
   call $node_modules/as-pect/assembly/internal/report/reportExpected/getStackTrace
   global.set $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.stackTrace
   local.get $7
   global.set $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.negated
   i32.const 3
   global.set $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.type
   local.get $8
   drop
   i32.const 0
   global.set $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.signed
   local.get $8
   global.set $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.integer
  end
  local.get $4
  local.get $5
  local.get $6
  i32.eq
  i32.xor
  local.set $8
  local.get $3
  call $~lib/rt/pure/__retain
  local.set $7
  local.get $8
  i32.eqz
  if
   local.get $7
   call $~lib/rt/pure/__release
   local.get $7
   i32.const 472
   i32.const 11
   i32.const 18
   call $~lib/builtins/abort
   unreachable
  end
  local.get $7
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  call $node_modules/as-pect/assembly/internal/report/reportActual/Actual.clear
  call $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.clear
  local.get $2
  call $~lib/rt/pure/__release
 )
 (func $start:assembly/__tests__/Buffer.spec~anonymous|0~anonymous|29 (; 173 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  i32.const 4
  i32.const 2
  i32.const 7
  i32.const 3888
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $1
  i32.const 0
  call $assembly/buffer/Buffer/Buffer.from<~lib/array/Array<i32>>
  local.set $0
  local.get $0
  i32.const 0
  call $assembly/buffer/Buffer/Buffer#readUInt32BE
  local.set $2
  local.get $0
  i32.const 0
  call $assembly/buffer/Buffer/Buffer#readUInt32LE
  local.set $3
  local.get $3
  call $node_modules/as-pect/assembly/internal/Expectation/expect<u32>
  local.tee $4
  i32.const 2018915346
  i32.const 608
  call $node_modules/as-pect/assembly/internal/Expectation/Expectation<u32>#toBe
  local.get $2
  call $node_modules/as-pect/assembly/internal/Expectation/expect<u32>
  local.tee $5
  i32.const 305419896
  i32.const 608
  call $node_modules/as-pect/assembly/internal/Expectation/Expectation<u32>#toBe
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
 )
 (func $start:assembly/__tests__/Buffer.spec~anonymous|0~anonymous|30 (; 174 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 0
  i32.const 4
  call $assembly/buffer/Buffer/Buffer#constructor
  local.set $0
  local.get $0
  i32.const 1
  call $assembly/buffer/Buffer/Buffer#readUInt32BE
  drop
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $start:assembly/__tests__/Buffer.spec~anonymous|0~anonymous|31 (; 175 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 0
  i32.const 4
  call $assembly/buffer/Buffer/Buffer#constructor
  local.set $0
  local.get $0
  i32.const 1
  call $assembly/buffer/Buffer/Buffer#readUInt32LE
  drop
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $~lib/arraybuffer/ArrayBufferView#get:byteLength (; 176 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=8
 )
 (func $~lib/typedarray/Uint8Array#get:length (; 177 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/arraybuffer/ArrayBufferView#get:byteLength
 )
 (func $assembly/buffer/Buffer/Buffer#subarray (; 178 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  call $~lib/typedarray/Uint8Array#get:length
  local.set $3
  local.get $1
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $3
   local.get $1
   i32.add
   local.tee $4
   i32.const 0
   local.tee $5
   local.get $4
   local.get $5
   i32.gt_s
   select
  else   
   local.get $1
   local.tee $4
   local.get $3
   local.tee $5
   local.get $4
   local.get $5
   i32.lt_s
   select
  end
  local.set $1
  local.get $2
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $3
   local.get $2
   i32.add
   local.tee $4
   i32.const 0
   local.tee $5
   local.get $4
   local.get $5
   i32.gt_s
   select
  else   
   local.get $2
   local.tee $4
   local.get $3
   local.tee $5
   local.get $4
   local.get $5
   i32.lt_s
   select
  end
  local.set $2
  local.get $2
  local.tee $4
  local.get $1
  local.tee $5
  local.get $4
  local.get $5
  i32.gt_s
  select
  local.set $2
  i32.const 16
  i32.const 4
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.set $6
  local.get $6
  local.tee $4
  local.get $0
  i32.load
  local.tee $5
  local.get $4
  i32.load
  local.tee $4
  i32.ne
  if
   local.get $5
   call $~lib/rt/pure/__retain
   drop
   local.get $4
   call $~lib/rt/pure/__release
  end
  local.get $5
  i32.store
  local.get $6
  local.get $0
  i32.load offset=4
  local.get $1
  i32.add
  i32.store offset=4
  local.get $6
  local.get $2
  local.get $1
  i32.sub
  i32.store offset=8
  local.get $6
 )
 (func $node_modules/as-pect/assembly/internal/Expectation/Expectation<assembly/buffer/Buffer/Buffer>#toHaveLength (; 179 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
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
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i32.load offset=4
  call $~lib/rt/pure/__retain
  local.set $6
  local.get $1
  local.set $5
  local.get $0
  i32.load
  local.set $4
  local.get $2
  call $~lib/rt/pure/__retain
  local.set $3
  i32.const 0
  local.set $7
  local.get $6
  i32.const 0
  i32.eq
  if
   local.get $6
   call $~lib/rt/pure/__retain
   local.set $10
   i32.const 1
   local.set $9
   i32.const 4208
   call $~lib/rt/pure/__retain
   local.set $8
   local.get $10
   call $~lib/rt/pure/__retain
   local.set $11
   call $node_modules/as-pect/assembly/internal/report/reportActual/getStackTrace
   global.set $node_modules/as-pect/assembly/internal/report/reportActual/Actual.stackTrace
   local.get $11
   local.set $12
   local.get $11
   i32.const 0
   i32.eq
   if
    i32.const 1
    global.set $node_modules/as-pect/assembly/internal/report/reportActual/Actual.type
   else    
    local.get $12
    call $~lib/rt/pure/__retain
    drop
    global.get $node_modules/as-pect/assembly/internal/report/reportActual/Actual.reference
    call $~lib/rt/pure/__release
    local.get $12
    global.set $node_modules/as-pect/assembly/internal/report/reportActual/Actual.reference
    i32.const 4
    global.set $node_modules/as-pect/assembly/internal/report/reportActual/Actual.type
    i32.const 16
    global.set $node_modules/as-pect/assembly/internal/report/reportActual/Actual.offset
   end
   local.get $11
   call $~lib/rt/pure/__release
   block $node_modules/as-pect/assembly/internal/report/reportExpected/reportExpected<assembly/buffer/Buffer/Buffer>|inlined.1
    i32.const 0
    call $~lib/rt/pure/__retain
    local.set $11
    local.get $9
    local.set $12
    global.get $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.ready
    i32.eqz
    if
     call $node_modules/as-pect/assembly/internal/report/reportExpected/reportInvalidExpectCall
     local.get $11
     call $~lib/rt/pure/__release
     br $node_modules/as-pect/assembly/internal/report/reportExpected/reportExpected<assembly/buffer/Buffer/Buffer>|inlined.1
    end
    call $node_modules/as-pect/assembly/internal/report/reportExpected/getStackTrace
    global.set $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.stackTrace
    local.get $12
    global.set $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.negated
    local.get $11
    i32.const 0
    i32.eq
    if
     i32.const 1
     global.set $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.type
    else     
     local.get $11
     local.set $13
     local.get $13
     call $~lib/rt/pure/__retain
     drop
     global.get $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.reference
     call $~lib/rt/pure/__release
     local.get $13
     global.set $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.reference
     i32.const 4
     global.set $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.type
     i32.const 16
     global.set $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.offset
    end
    local.get $11
    call $~lib/rt/pure/__release
   end
   local.get $9
   local.get $10
   i32.const 0
   i32.eq
   i32.xor
   local.set $12
   local.get $8
   call $~lib/rt/pure/__retain
   local.set $13
   local.get $12
   i32.eqz
   if
    local.get $13
    call $~lib/rt/pure/__release
    local.get $13
    i32.const 472
    i32.const 11
    i32.const 18
    call $~lib/builtins/abort
    unreachable
   end
   local.get $13
   call $~lib/rt/pure/__release
   local.get $8
   call $~lib/rt/pure/__release
   local.get $10
   call $~lib/rt/pure/__release
  else   
   local.get $6
   call $~lib/typedarray/Uint8Array#get:length
   local.set $7
  end
  local.get $7
  local.set $11
  call $node_modules/as-pect/assembly/internal/report/reportActual/getStackTrace
  global.set $node_modules/as-pect/assembly/internal/report/reportActual/Actual.stackTrace
  i32.const 3
  global.set $node_modules/as-pect/assembly/internal/report/reportActual/Actual.type
  local.get $11
  drop
  i32.const 1
  global.set $node_modules/as-pect/assembly/internal/report/reportActual/Actual.signed
  local.get $11
  global.set $node_modules/as-pect/assembly/internal/report/reportActual/Actual.integer
  block $node_modules/as-pect/assembly/internal/report/reportExpected/reportExpected<i32>|inlined.1
   local.get $5
   local.set $12
   local.get $4
   local.set $13
   global.get $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.ready
   i32.eqz
   if
    call $node_modules/as-pect/assembly/internal/report/reportExpected/reportInvalidExpectCall
    br $node_modules/as-pect/assembly/internal/report/reportExpected/reportExpected<i32>|inlined.1
   end
   call $node_modules/as-pect/assembly/internal/report/reportExpected/getStackTrace
   global.set $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.stackTrace
   local.get $13
   global.set $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.negated
   i32.const 3
   global.set $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.type
   local.get $12
   drop
   i32.const 1
   global.set $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.signed
   local.get $12
   global.set $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.integer
  end
  local.get $4
  local.get $7
  local.get $5
  i32.eq
  i32.xor
  local.set $9
  local.get $3
  call $~lib/rt/pure/__retain
  local.set $8
  local.get $9
  i32.eqz
  if
   local.get $8
   call $~lib/rt/pure/__release
   local.get $8
   i32.const 472
   i32.const 11
   i32.const 18
   call $~lib/builtins/abort
   unreachable
  end
  local.get $8
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  call $node_modules/as-pect/assembly/internal/report/reportActual/Actual.clear
  call $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.clear
  local.get $2
  call $~lib/rt/pure/__release
 )
 (func $~lib/arraybuffer/ArrayBufferView#get:byteOffset (; 180 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $0
  i32.load
  i32.sub
 )
 (func $start:assembly/__tests__/Buffer.spec~anonymous|0~anonymous|32 (; 181 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  i32.const 3
  i32.const 2
  i32.const 7
  i32.const 4176
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $1
  i32.const 0
  call $assembly/buffer/Buffer/Buffer.from<~lib/array/Array<i32>>
  local.set $0
  local.get $0
  i32.const 1
  i32.const 2
  call $assembly/buffer/Buffer/Buffer#subarray
  local.set $2
  local.get $2
  call $node_modules/as-pect/assembly/internal/Expectation/expect<assembly/buffer/Buffer/Buffer>
  local.tee $3
  i32.const 1
  i32.const 608
  call $node_modules/as-pect/assembly/internal/Expectation/Expectation<assembly/buffer/Buffer/Buffer>#toHaveLength
  local.get $2
  call $~lib/arraybuffer/ArrayBufferView#get:byteLength
  call $node_modules/as-pect/assembly/internal/Expectation/expect<i32>
  local.tee $4
  i32.const 1
  i32.const 608
  call $node_modules/as-pect/assembly/internal/Expectation/Expectation<i32>#toBe
  local.get $2
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  call $node_modules/as-pect/assembly/internal/Expectation/expect<i32>
  local.tee $5
  i32.const 1
  i32.const 608
  call $node_modules/as-pect/assembly/internal/Expectation/Expectation<i32>#toBe
  local.get $2
  i32.const 0
  call $~lib/typedarray/Uint8Array#__get
  call $node_modules/as-pect/assembly/internal/Expectation/expect<u8>
  local.tee $6
  i32.const 2
  i32.const 608
  call $node_modules/as-pect/assembly/internal/Expectation/Expectation<u8>#toBe
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
 )
 (func $start:assembly/__tests__/Buffer.spec~anonymous|0 (; 182 ;) (type $FUNCSIG$v)
  i32.const 304
  i32.const 1
  call $node_modules/as-pect/assembly/internal/Test/it
  i32.const 768
  i32.const 2
  call $node_modules/as-pect/assembly/internal/Test/it
  i32.const 1024
  i32.const 3
  call $node_modules/as-pect/assembly/internal/Test/it
  i32.const 1160
  i32.const 4
  call $node_modules/as-pect/assembly/internal/Test/it
  i32.const 1432
  i32.const 5
  call $node_modules/as-pect/assembly/internal/Test/it
  i32.const 1576
  i32.const 6
  call $node_modules/as-pect/assembly/internal/Test/it
  i32.const 1680
  i32.const 7
  i32.const 608
  call $node_modules/as-pect/assembly/internal/Test/itThrows
  i32.const 1784
  i32.const 8
  i32.const 608
  call $node_modules/as-pect/assembly/internal/Test/itThrows
  i32.const 1888
  i32.const 9
  call $node_modules/as-pect/assembly/internal/Test/it
  i32.const 2016
  i32.const 10
  i32.const 608
  call $node_modules/as-pect/assembly/internal/Test/itThrows
  i32.const 1784
  i32.const 11
  i32.const 608
  call $node_modules/as-pect/assembly/internal/Test/itThrows
  i32.const 2120
  i32.const 12
  call $node_modules/as-pect/assembly/internal/Test/it
  i32.const 2248
  i32.const 13
  i32.const 608
  call $node_modules/as-pect/assembly/internal/Test/itThrows
  i32.const 2344
  i32.const 14
  i32.const 608
  call $node_modules/as-pect/assembly/internal/Test/itThrows
  i32.const 2440
  i32.const 15
  call $node_modules/as-pect/assembly/internal/Test/it
  i32.const 2552
  i32.const 16
  i32.const 608
  call $node_modules/as-pect/assembly/internal/Test/itThrows
  i32.const 2648
  i32.const 17
  i32.const 608
  call $node_modules/as-pect/assembly/internal/Test/itThrows
  i32.const 2744
  i32.const 18
  call $node_modules/as-pect/assembly/internal/Test/it
  i32.const 2832
  i32.const 19
  i32.const 608
  call $node_modules/as-pect/assembly/internal/Test/itThrows
  i32.const 2920
  i32.const 20
  i32.const 608
  call $node_modules/as-pect/assembly/internal/Test/itThrows
  i32.const 3008
  i32.const 21
  call $node_modules/as-pect/assembly/internal/Test/it
  i32.const 3112
  i32.const 22
  i32.const 608
  call $node_modules/as-pect/assembly/internal/Test/itThrows
  i32.const 3208
  i32.const 23
  i32.const 608
  call $node_modules/as-pect/assembly/internal/Test/itThrows
  i32.const 3304
  i32.const 24
  call $node_modules/as-pect/assembly/internal/Test/it
  i32.const 3408
  i32.const 25
  i32.const 608
  call $node_modules/as-pect/assembly/internal/Test/itThrows
  i32.const 3208
  i32.const 26
  i32.const 608
  call $node_modules/as-pect/assembly/internal/Test/itThrows
  i32.const 3504
  i32.const 27
  call $node_modules/as-pect/assembly/internal/Test/it
  i32.const 3616
  i32.const 28
  i32.const 608
  call $node_modules/as-pect/assembly/internal/Test/itThrows
  i32.const 3712
  i32.const 29
  i32.const 608
  call $node_modules/as-pect/assembly/internal/Test/itThrows
  i32.const 3808
  i32.const 30
  call $node_modules/as-pect/assembly/internal/Test/it
  i32.const 3920
  i32.const 31
  i32.const 608
  call $node_modules/as-pect/assembly/internal/Test/itThrows
  i32.const 4016
  i32.const 32
  i32.const 608
  call $node_modules/as-pect/assembly/internal/Test/itThrows
  i32.const 4112
  i32.const 33
  call $node_modules/as-pect/assembly/internal/Test/it
 )
 (func $start:node_modules/as-pect/assembly/internal/noOp~anonymous|0 (; 183 ;) (type $FUNCSIG$v)
  nop
 )
 (func $node_modules/as-pect/assembly/internal/Describe/describe (; 184 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  call $node_modules/as-pect/assembly/internal/Describe/reportDescribe
  i32.const 0
  global.set $~lib/argc
  local.get $1
  call_indirect (type $FUNCSIG$v)
  call $node_modules/as-pect/assembly/internal/Describe/reportEndDescribe
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $start:assembly/__tests__/Buffer.spec (; 185 ;) (type $FUNCSIG$v)
  i32.const 272
  i32.const 34
  call $node_modules/as-pect/assembly/internal/Describe/describe
 )
 (func $node_modules/as-pect/assembly/index/__ready (; 186 ;) (type $FUNCSIG$v)
  i32.const 1
  global.set $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.ready
 )
 (func $node_modules/as-pect/assembly/internal/call/__call (; 187 ;) (type $FUNCSIG$vi) (param $0 i32)
  i32.const 0
  global.set $~lib/argc
  local.get $0
  call_indirect (type $FUNCSIG$v)
 )
 (func $node_modules/as-pect/assembly/internal/report/reportActual/__sendActual (; 188 ;) (type $FUNCSIG$v)
  (local $0 i32)
  block $break|0
   block $case7|0
    block $case6|0
     block $case5|0
      block $case4|0
       block $case3|0
        block $case2|0
         block $case1|0
          block $case0|0
           global.get $node_modules/as-pect/assembly/internal/report/reportActual/Actual.type
           local.set $0
           local.get $0
           i32.const 0
           i32.eq
           br_if $case0|0
           local.get $0
           i32.const 6
           i32.eq
           br_if $case1|0
           local.get $0
           i32.const 2
           i32.eq
           br_if $case2|0
           local.get $0
           i32.const 3
           i32.eq
           br_if $case3|0
           local.get $0
           i32.const 1
           i32.eq
           br_if $case4|0
           local.get $0
           i32.const 4
           i32.eq
           br_if $case5|0
           local.get $0
           i32.const 5
           i32.eq
           br_if $case6|0
           local.get $0
           i32.const 10
           i32.eq
           br_if $case7|0
           br $break|0
          end
          return
         end
         global.get $node_modules/as-pect/assembly/internal/report/reportActual/Actual.reference
         global.get $node_modules/as-pect/assembly/internal/report/reportActual/Actual.stackTrace
         call $node_modules/as-pect/assembly/internal/report/reportActual/reportActualArray
         br $break|0
        end
        global.get $node_modules/as-pect/assembly/internal/report/reportActual/Actual.float
        i32.const 1
        global.get $node_modules/as-pect/assembly/internal/report/reportActual/Actual.stackTrace
        call $node_modules/as-pect/assembly/internal/report/reportActual/reportActualFloat
        br $break|0
       end
       global.get $node_modules/as-pect/assembly/internal/report/reportActual/Actual.integer
       global.get $node_modules/as-pect/assembly/internal/report/reportActual/Actual.signed
       global.get $node_modules/as-pect/assembly/internal/report/reportActual/Actual.stackTrace
       call $node_modules/as-pect/assembly/internal/report/reportActual/reportActualInteger
       br $break|0
      end
      global.get $node_modules/as-pect/assembly/internal/report/reportActual/Actual.stackTrace
      call $node_modules/as-pect/assembly/internal/report/reportActual/reportActualNull
      br $break|0
     end
     global.get $node_modules/as-pect/assembly/internal/report/reportActual/Actual.reference
     global.get $node_modules/as-pect/assembly/internal/report/reportActual/Actual.offset
     global.get $node_modules/as-pect/assembly/internal/report/reportActual/Actual.stackTrace
     call $node_modules/as-pect/assembly/internal/report/reportActual/reportActualReferenceExternal
     br $break|0
    end
    global.get $node_modules/as-pect/assembly/internal/report/reportActual/Actual.reference
    global.get $node_modules/as-pect/assembly/internal/report/reportActual/Actual.stackTrace
    call $node_modules/as-pect/assembly/internal/report/reportActual/reportActualString
    br $break|0
   end
   global.get $node_modules/as-pect/assembly/internal/report/reportActual/Actual.reference
   global.get $node_modules/as-pect/assembly/internal/report/reportActual/Actual.signed
   global.get $node_modules/as-pect/assembly/internal/report/reportActual/Actual.stackTrace
   call $node_modules/as-pect/assembly/internal/report/reportActual/reportActualLong
   br $break|0
  end
 )
 (func $node_modules/as-pect/assembly/internal/report/reportExpected/__sendExpected (; 189 ;) (type $FUNCSIG$v)
  (local $0 i32)
  block $break|0
   block $case9|0
    block $case8|0
     block $case7|0
      block $case6|0
       block $case5|0
        block $case4|0
         block $case3|0
          block $case2|0
           block $case1|0
            block $case0|0
             global.get $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.type
             local.set $0
             local.get $0
             i32.const 6
             i32.eq
             br_if $case0|0
             local.get $0
             i32.const 2
             i32.eq
             br_if $case1|0
             local.get $0
             i32.const 3
             i32.eq
             br_if $case2|0
             local.get $0
             i32.const 1
             i32.eq
             br_if $case3|0
             local.get $0
             i32.const 4
             i32.eq
             br_if $case4|0
             local.get $0
             i32.const 5
             i32.eq
             br_if $case5|0
             local.get $0
             i32.const 7
             i32.eq
             br_if $case6|0
             local.get $0
             i32.const 9
             i32.eq
             br_if $case7|0
             local.get $0
             i32.const 8
             i32.eq
             br_if $case8|0
             local.get $0
             i32.const 10
             i32.eq
             br_if $case9|0
             br $break|0
            end
            global.get $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.reference
            global.get $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.negated
            global.get $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.stackTrace
            call $node_modules/as-pect/assembly/internal/report/reportExpected/reportExpectedArray
            br $break|0
           end
           global.get $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.float
           i32.const 1
           global.get $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.negated
           global.get $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.stackTrace
           call $node_modules/as-pect/assembly/internal/report/reportExpected/reportExpectedFloat
           br $break|0
          end
          global.get $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.integer
          global.get $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.signed
          global.get $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.negated
          global.get $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.stackTrace
          call $node_modules/as-pect/assembly/internal/report/reportExpected/reportExpectedInteger
          br $break|0
         end
         global.get $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.negated
         global.get $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.stackTrace
         call $node_modules/as-pect/assembly/internal/report/reportExpected/reportExpectedNull
         br $break|0
        end
        global.get $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.reference
        global.get $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.offset
        global.get $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.negated
        global.get $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.stackTrace
        call $node_modules/as-pect/assembly/internal/report/reportExpected/reportExpectedReferenceExternal
        br $break|0
       end
       global.get $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.reference
       global.get $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.negated
       global.get $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.stackTrace
       call $node_modules/as-pect/assembly/internal/report/reportExpected/reportExpectedString
       br $break|0
      end
      global.get $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.negated
      global.get $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.stackTrace
      call $node_modules/as-pect/assembly/internal/report/reportExpected/reportExpectedFalsy
      br $break|0
     end
     global.get $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.negated
     global.get $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.stackTrace
     call $node_modules/as-pect/assembly/internal/report/reportExpected/reportExpectedFinite
     br $break|0
    end
    global.get $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.negated
    global.get $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.stackTrace
    call $node_modules/as-pect/assembly/internal/report/reportExpected/reportExpectedTruthy
    br $break|0
   end
   global.get $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.reference
   global.get $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.signed
   global.get $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.negated
   global.get $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.stackTrace
   call $node_modules/as-pect/assembly/internal/report/reportExpected/reportExpectedLong
   br $break|0
  end
 )
 (func $node_modules/as-pect/assembly/internal/log/__ignoreLogs (; 190 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  i32.const 0
  i32.ne
  global.set $node_modules/as-pect/assembly/internal/log/ignoreLogs
 )
 (func $node_modules/as-pect/assembly/internal/RTrace/__disableRTrace (; 191 ;) (type $FUNCSIG$v)
  i32.const 0
  global.set $node_modules/as-pect/assembly/internal/RTrace/RTrace.enabled
 )
 (func $node_modules/as-pect/assembly/internal/RTrace/__getUsizeArrayId (; 192 ;) (type $FUNCSIG$i) (result i32)
  i32.const 19
 )
 (func $node_modules/as-pect/assembly/internal/Expectation/__cleanup (; 193 ;) (type $FUNCSIG$v)
  call $node_modules/as-pect/assembly/internal/report/reportExpected/Expected.clear
  call $node_modules/as-pect/assembly/internal/report/reportActual/Actual.clear
 )
 (func $start (; 194 ;) (type $FUNCSIG$v)
  global.get $~lib/started
  if
   return
  else   
   i32.const 1
   global.set $~lib/started
  end
  call $start:assembly/__tests__/Buffer.spec
 )
 (func $~lib/array/Array<i32>#__visit_impl (; 195 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  nop
 )
 (func $~lib/array/Array<f64>#__visit_impl (; 196 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  nop
 )
 (func $~lib/array/Array<i8>#__visit_impl (; 197 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  nop
 )
 (func $~lib/array/Array<usize>#__visit_impl (; 198 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  nop
 )
 (func $~lib/rt/pure/__visit (; 199 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  global.get $~lib/heap/__heap_base
  i32.lt_u
  if
   return
  end
  local.get $0
  i32.const 16
  i32.sub
  local.set $2
  block $break|0
   block $case5|0
    block $case4|0
     block $case3|0
      block $case2|0
       block $case1|0
        block $case0|0
         local.get $1
         local.set $3
         local.get $3
         i32.const 1
         i32.eq
         br_if $case0|0
         local.get $3
         i32.const 2
         i32.eq
         br_if $case1|0
         local.get $3
         i32.const 3
         i32.eq
         br_if $case2|0
         local.get $3
         i32.const 4
         i32.eq
         br_if $case3|0
         local.get $3
         i32.const 5
         i32.eq
         br_if $case4|0
         br $case5|0
        end
        local.get $2
        call $~lib/rt/pure/decrement
        br $break|0
       end
       local.get $2
       i32.load offset=4
       i32.const 268435455
       i32.and
       i32.const 0
       i32.gt_u
       i32.eqz
       if
        i32.const 0
        i32.const 128
        i32.const 75
        i32.const 17
        call $~lib/builtins/abort
        unreachable
       end
       local.get $2
       local.get $2
       i32.load offset=4
       i32.const 1
       i32.sub
       i32.store offset=4
       local.get $2
       call $~lib/rt/pure/markGray
       br $break|0
      end
      local.get $2
      call $~lib/rt/pure/scan
      br $break|0
     end
     local.get $2
     i32.load offset=4
     local.set $3
     local.get $3
     i32.const 268435455
     i32.const -1
     i32.xor
     i32.and
     local.get $3
     i32.const 1
     i32.add
     i32.const 268435455
     i32.const -1
     i32.xor
     i32.and
     i32.eq
     i32.eqz
     if
      i32.const 0
      i32.const 128
      i32.const 86
      i32.const 6
      call $~lib/builtins/abort
      unreachable
     end
     local.get $2
     local.get $3
     i32.const 1
     i32.add
     i32.store offset=4
     local.get $3
     i32.const 1879048192
     i32.and
     i32.const 0
     i32.ne
     if
      local.get $2
      call $~lib/rt/pure/scanBlack
     end
     br $break|0
    end
    local.get $2
    call $~lib/rt/pure/collectWhite
    br $break|0
   end
   i32.const 0
   i32.eqz
   if
    i32.const 0
    i32.const 128
    i32.const 97
    i32.const 24
    call $~lib/builtins/abort
    unreachable
   end
  end
 )
 (func $~lib/rt/__visit_members (; 200 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  block $block$4$break
   block $switch$1$default
    block $switch$1$case$21
     block $switch$1$case$12
      block $switch$1$case$11
       block $switch$1$case$9
        block $switch$1$case$7
         block $switch$1$case$4
          block $switch$1$case$2
           local.get $0
           i32.const 8
           i32.sub
           i32.load
           br_table $switch$1$case$2 $switch$1$case$2 $switch$1$case$4 $switch$1$case$4 $switch$1$case$4 $switch$1$case$7 $switch$1$case$2 $switch$1$case$9 $switch$1$case$2 $switch$1$case$11 $switch$1$case$12 $switch$1$case$2 $switch$1$case$2 $switch$1$case$2 $switch$1$case$2 $switch$1$case$2 $switch$1$case$2 $switch$1$case$2 $switch$1$case$2 $switch$1$case$21 $switch$1$default
          end
          return
         end
         br $block$4$break
        end
        local.get $0
        i32.load offset=4
        local.tee $2
        if
         local.get $2
         local.get $1
         call $~lib/rt/pure/__visit
        end
        return
       end
       local.get $0
       local.get $1
       call $~lib/array/Array<i32>#__visit_impl
       br $block$4$break
      end
      local.get $0
      local.get $1
      call $~lib/array/Array<f64>#__visit_impl
      br $block$4$break
     end
     local.get $0
     local.get $1
     call $~lib/array/Array<i8>#__visit_impl
     br $block$4$break
    end
    local.get $0
    local.get $1
    call $~lib/array/Array<usize>#__visit_impl
    br $block$4$break
   end
   unreachable
  end
  local.get $0
  i32.load
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/pure/__visit
  end
  return
 )
 (func $null (; 201 ;) (type $FUNCSIG$v)
 )
)
