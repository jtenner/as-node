
export namespace Encoding {
  export namespace HEX {
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
        let char1 = charOf(load<u16>(changetype<usize>(source) + (stringIndex << 1)));
        let char2 = charOf(load<u16>(changetype<usize>(source) + (stringIndex << 1), 2));

        if (char1 !== 255 && char2 !== 255) {
          let byte: u8 = (char1 << 4) | char2;
          store<u8>(buffer + i, byte);
        } else {
          __free(buffer);
          return new ArrayBuffer(0);
        }
      }
      return changetype<ArrayBuffer>(buffer); // retains
    }

    @inline
    function charFrom(value: u8): u16 {
      return value <= 0x9
        ? <u16>(value + 0x30)
        : <u16>(value + 0x57)
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