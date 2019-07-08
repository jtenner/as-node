import { Uint8Array } from "typedarray";
import { ArrayBufferView } from "arraybuffer";
import { TypeinfoFlags } from "shared/typeinfo";
import { Encoding } from "../encoding/HexEncoding";

export class Buffer extends Uint8Array {
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

      let encoded: ArrayBuffer;
      if (encoding == "utf8" || encoding == "utf-8") {
        encoded = String.UTF8.encode(source, false);
      } else if (encoding == "utf16le") {
        encoded = String.UTF16.encode(source);
      } else if (encoding == "hex") {
        encoded = Encoding.HEX.encode(source);
      }
      if (encoded != null) {
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

  readInt8(offset: usize): i8 {
    assert(offset < this.dataLength);
    return load<i8>(this.dataStart + offset);
  }

  readUInt8(offset: usize): u8 {
    assert(offset < this.dataLength);
    return load<u8>(this.dataStart + offset);
  }

  readInt16BE(offset: usize): i16 {
    assert(offset <= this.dataLength - 2);
    return bswap<i16>(load<i16>(this.dataStart + offset));
  }

  readInt16LE(offset: usize): i16 {
    assert(offset <= this.dataLength - 2);
    return load<i16>(this.dataStart + offset);
  }

  readUInt16BE(offset: usize): u16 {
    assert(offset <= this.dataLength - 2);
    return bswap<u16>(load<u16>(this.dataStart + offset));
  }

  readUInt16LE(offset: usize): u16 {
    assert(offset <= this.dataLength - 2);
    return load<u16>(this.dataStart + offset);
  }

  readInt32BE(offset: usize): i32 {
    assert(offset <= this.dataLength - 4);
    return bswap<i32>(load<i32>(this.dataStart + offset));
  }

  readInt32LE(offset: usize): i32 {
    assert(offset <= this.dataLength - 4);
    return load<i32>(this.dataStart + offset);
  }

  readUInt32BE(offset: usize): u32 {
    assert(offset <= this.dataLength - 4);
    return bswap<u32>(load<u32>(this.dataStart + offset));
  }

  readUInt32LE(offset: usize): u32 {
    assert(offset <= this.dataLength - 4);
    return load<u32>(this.dataStart + offset);
  }

  subarray(begin: i32 = 0, end: i32 = this.length): Buffer {
    var len = this.length;
    begin = begin < 0 ? max(len + begin, 0) : min(begin, len);
    end   = end   < 0 ? max(len + end,   0) : min(end,   len);
    end   = max(end, begin);
    var out = changetype<Buffer>(__alloc(offsetof<Buffer>(), idof<Buffer>())); // retains
    out.data = this.data; // retains
    out.dataStart = this.dataStart + (<usize>begin);
    out.dataLength = (end - begin);
    return out;
  }

  fill(value: i32, start: i32 = 0, end: i32 = i32.MAX_VALUE): Buffer {
    var dataStart = this.dataStart;
    var length = this.length;
    start = start < 0 ? max(length + start, 0) : min(start, length);
    end   = end   < 0 ? max(length + end,   0) : min(end,   length);
    if (sizeof<u8>() == 1) {
      if (start < end) memory.fill(dataStart + <usize>start, <u8>value, <usize>(end - start));
    } else {
      for (; start < end; ++start) {
        store<u8>(dataStart + (<usize>start), value);
      }
    }
    return this;
  }

  sort(comparator: (a: u8, b: u8) => i32 = BUFFER_COMPARATOR): Buffer {
    return <Buffer>super.sort(comparator);
  }

  includes<T>(value: T, byteOffset: i32 = 0, encoding: string = null): bool {
    return this.indexOf<T>(value, byteOffset, encoding) != -1;
  }

  indexOf<T>(value: T, byteOffset: i32 = 0, encoding: string = null): i32 {
    byteOffset = min<i32>(byteOffset, this.byteLength);
    let length = this.byteLength;
    let start = this.dataStart;
    if (isManaged<T>()) {
      if (value == null) return -1;
      if (value instanceof ArrayBuffer) {
        let valueByteLength = value.byteLength;
        let valueByteLengthOffset = length - valueByteLength;
        for (let i = byteOffset; i < valueByteLengthOffset; i++) {
          if (memory.compare(changetype<usize>(value), start + i, valueByteLength) == 0) return i;
        }
        // Naive implementation
      } else if (value instanceof Uint8Array || value instanceof Buffer) {
        let bufferDataLength = value.dataLength;
        let bufferDataOffset = value.dataStart;
        let bufferByteLength = length - bufferDataLength;
        for (let i = byteOffset; i < bufferByteLength; i++) {
          if (memory.compare(bufferDataOffset, start + i, bufferDataLength) == 0) return i;
        }
        // very naive implementation
      } else if (value instanceof String) {
        if (encoding == null) encoding = "utf8";
        let valueBuffer: ArrayBuffer = null;
        if (encoding == "utf8" || encoding == "utf-8") {
          valueBuffer = String.UTF8.encode(value, false);
        } else if (encoding == "utf16le") {
          valueBuffer = String.UTF16.encode(value);
        }

        if (valueBuffer != null) {
          let valueByteLength = valueBuffer.byteLength;
          let valueByteLengthOffset = length - valueByteLength;
          for (let i = byteOffset; i < valueByteLengthOffset; i++) {
            if (memory.compare(changetype<usize>(valueBuffer), start + i, valueByteLength) == 0) return i;
          }
        }
      }
    } else {
      let cast: u8 = (<u8>value);
      for (let i = byteOffset; i < length; i++) {
        if (load<u8>(start + i) == cast) return i;
      }
    }
    return -1;
  }

  swap16(): Buffer {
    let length = this.dataLength;
    assert((length & 0b1) == 0);
    length >>= 1;
    let start = this.dataStart;
    for (let i: u32 = 0; i < length; i++) {
      let index: usize = <usize>(i << 1) + start;
      store<u16>(index, bswap<u16>(load<u16>(index)));
    }
    return this;
  }

  swap32(): Buffer {
    let length = this.dataLength;
    assert((length & 0b11) == 0);
    length >>= 2;
    let start = this.dataStart;
    for (let i: u32 = 0; i < length; i++) {
      let index: usize = <usize>(i << 2) + start;
      store<u32>(index, bswap<u32>(load<u32>(index)));
    }
    return this;
  }

  swap64(): Buffer {
    let length = this.dataLength;
    assert((length & 0b111) == 0);
    length >>= 3;
    let start = this.dataStart;
    for (let i: u32 = 0; i < length; i++) {
      let index: usize = <usize>(i << 3) + start;
      store<u64>(index, bswap<u64>(load<u64>(index)));
    }
    return this;
  }

  write(value: string, offset: i32 = 0, length: i32 = <i32>this.dataLength, encoding: string = "utf8"): i32 {
    let buffer: ArrayBuffer;
    assert((offset >= 0) && (offset < <i32>this.dataLength));
    length = min<i32>(length, this.dataLength - offset);
    if (encoding == "utf8" || encoding == "utf-8") {
      buffer = String.UTF8.encode(value, false);
    } else if (encoding == "utf16le") {
      let count = min<i32>(value.length << 1, length);
      memory.copy(this.dataStart, changetype<usize>(value), count);
      return count;
    } else if (encoding == "hex") {
      buffer = Encoding.HEX.encode(value);
    } else {
      assert(false);
      return 0;
    }

    let written = min<i32>(buffer.byteLength, length);
    memory.copy(this.dataStart, changetype<usize>(buffer), written);
    return written;
  }

  toString(encoding: string = "utf8", begin: i32 = 0, end: i32 = this.length): string {
    var len = this.length;
    begin = begin < 0 ? max(len + begin, 0) : min(begin, len);
    end   = end   < 0 ? max(len + end,   0) : min(end,   len);
    end   = max(end, begin);
    if (encoding == "utf8" || encoding == "utf-8") {
      return String.UTF8.decodeUnsafe(this.dataStart + begin, end - begin, false);
    }
    if (encoding == "utf16le") {
      return String.UTF16.decodeUnsafe(this.dataStart + begin, end - begin);
    }
    if (encoding == "hex") {
      return Encoding.HEX.decodeUnsafe(this.dataStart + begin, end - begin);
    }
    assert(false);
    return null;
  }
}

@inline
function BUFFER_COMPARATOR(a: u8, b: u8): i32 {
  return i32(a > b) - i32(a < b);
}
