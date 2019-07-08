import { Uint8Array } from "typedarray";
import { ArrayBufferView } from "arraybuffer";
import { TypeinfoFlags } from "shared/typeinfo";

export class Buffer extends Uint8Array {

  // TODO: Add more
  private static NO_ENCODING: i32 = 0;
  private static UTF8_ENCODING: i32 = 1;
  private static UTF16_ENCODING: i32 = 2;
  private encoding: i32 = 0;

  constructor(size: i32) {
    super(size);
  }

  public static isBuffer<T>(obj: T): bool {
    return obj instanceof Buffer && obj != null;
  }

  public static from<T>(source: T, encoding: string = null): Buffer {
    if (source instanceof ArrayBuffer) {
      let buffer = changetype<Buffer>(__alloc(offsetof<Buffer>(), idof<Buffer>()));
      store<usize>(changetype<usize>(buffer), __retain(changetype<usize>(source)), offsetof<Buffer>("data"));
      store<usize>(changetype<usize>(buffer), changetype<usize>(source), offsetof<Buffer>("dataStart"));
      store<u32>(changetype<usize>(buffer), source.byteLength, offsetof<Buffer>("dataLength"));
      return buffer;
    } else if (source instanceof string) {
      if (encoding == null) encoding = "utf8";

      if (encoding == "utf8" || encoding == "utf16le") {
        let encoded =  encoding == "utf8"
          ? String.UTF8.encode(source)
          : String.UTF16.encode(source);
        let buffer = __alloc(offsetof<Buffer>(), idof<Buffer>());
        store<usize>(buffer, __retain(changetype<usize>(encoded)), offsetof<Buffer>("data"));
        store<usize>(buffer, changetype<usize>(encoded), offsetof<Buffer>("dataStart"));
        store<u32>(buffer, encoded.byteLength, offsetof<Buffer>("dataLength"));
        return changetype<Buffer>(buffer); // retains
      }
      assert(false);
    } else if (source instanceof ArrayBufferView) {
      var sourceInfo = __typeinfo(idof<T>());
      var sourceIsManaged = (sourceInfo & TypeinfoFlags.VALUE_MANAGED) != 0; // disallow this
      assert(!sourceIsManaged);
      let length = source.length;
      let buffer = new Buffer(length);
      for (let i = 0; i < length; i++) {
        buffer[i] = <u8>source[i];
      }
      return buffer;
    } else {
      assert(false);
    }
    return null;
  }

  readBigInt64BE(offset: usize): i64 {
    assert(offset <= this.dataLength - 8);
    return bswap<i64>(load<i64>(this.dataStart + offset));
  }

  readBigInt64LE(offset: usize): i64 {
    assert(offset <= this.dataLength - 8);
    return load<i64>(this.dataStart + offset);
  }

  readBigUInt64BE(offset: usize): u64 {
    assert(offset <= this.dataLength - 8);
    return bswap<u64>(load<u64>(this.dataStart + offset));
  }

  readBigUInt64LE(offset: usize): u64 {
    assert(offset <= this.dataLength - 8);
    return load<u64>(this.dataStart + offset);
  }

  readDoubleBE(offset: usize): f64 {
    assert(offset <= this.dataLength - 8);
    return reinterpret<f64>(bswap<u64>(load<u64>(this.dataStart + offset)));
  }

  readDoubleLE(offset: usize): f64 {
    assert(offset <= this.dataLength - 8);
    return load<f64>(this.dataStart + offset);
  }

  readFloatBE(offset: usize): f32 {
    assert(offset <= this.dataLength - 4);
    return reinterpret<f32>(bswap<u32>(load<u32>(this.dataStart + offset)));
  }

  readFloatLE(offset: usize): f32 {
    assert(offset <= this.dataLength - 4);
    return load<f32>(this.dataStart + offset);
  }
}
