
export namespace Encoding {
  export namespace HEX {
    function encodeChars(char1: u16, char2: u16): u8 {
      let result1 = charOf(char1);
      let result2 = charOf(char2);
      if (result1 == 255 || result2 == 255) return 255;
      return (result1 << 4) | result2;
    }

    @inline
    function charOf(char: u16): u8 {
      return (char >= 0x30 && char <= 0x39)
        ? <u8>(char - <u16>0x30)
        : (char >= 0x61 && char <= 0x66)
          ? <u8>(char - <u16>0x57)
          : (char >= 0x41 && char <= 0x46)
            ? <u8>(char - <u16>0x37)
            : 255;
    }

    export function encode(source: string): ArrayBuffer {
      let byteLength = (source.length >> 1);
      let buffer = __alloc(byteLength, idof<ArrayBuffer>());

      for (let i = 0, stringIndex = 0; i < byteLength; i++, stringIndex += 2) {
        let char1 = load<u16>(changetype<usize>(source) + (stringIndex << 1));
        let char2 = load<u16>(changetype<usize>(source) + (stringIndex << 1), 2);
        let encoded = encodeChars(char1, char2);
        if (encoded !== 255) {
          store<u8>(buffer + i, encoded);
        } else {
          __free(buffer);
          return new ArrayBuffer(0);
        }
      }
      return changetype<ArrayBuffer>(buffer); // retains
    }

    export function encodeUnsafe(value: string, target: usize, limit: i32): i32 {
      if (value.length & 1) return 0; // must always be an even number of characters
      for (let i = 0; i < value.length; i++) { // must always be a set of valid characters
        if (charOf(load<u16>(changetype<usize>(value) + (i << 1))) == 255) return 0;
      }


      // clamp limit to [0, string.length >> 1]
      limit = min<i32>(max<i32>(0, limit), value.length >> 1);
      for (let i = 0, stringIndex = 0; i < limit; i++, stringIndex += 2) {
        let char1 = load<u16>(changetype<usize>(value) + (stringIndex << 1));
        let char2 = load<u16>(changetype<usize>(value) + (stringIndex << 1), 2);
        store<u8>(target + i, encodeChars(char1, char2));
      }
      return limit;
    }

    @inline
    function charFrom(value: u8): u16 {
      return value <= 0x9
        ? <u16>(value + 0x30)
        : <u16>(value + 0x57);
    }

    export function decode(value: ArrayBuffer): string {
      let byteLength = value.byteLength;
      let output = __alloc(byteLength << 1, idof<String>());

      for (let i = 0; i < byteLength; i++) {
        let byte = load<u8>(changetype<usize>(value) + i);
        store<u16>(output + (i << 1), charFrom(byte >>> 4));
        store<u16>(output + (i << 1), charFrom(byte & 0xF), 2);
      }

      return changetype<String>(output); // retains
    }

    export function decodeUnsafe(pointer: usize, length: i32): string {
      let output = __alloc(length << 2, idof<String>());

      for (let i = 0, stringIndex = 0; i < length; i++, stringIndex += 2) {
        let byte = load<u8>(pointer + i);
        store<u16>(output + (stringIndex << 1), charFrom(byte >>> 4));
        store<u16>(output + (stringIndex << 1), charFrom(byte & 0xF), 2);
      }

      return changetype<String>(output); // retains
    }
  }
}