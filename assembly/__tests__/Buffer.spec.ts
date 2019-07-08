import { Buffer } from "../buffer/Buffer";

describe("Buffer", () => {
  it("should return a buffer", () => {
    let b = new Buffer(3);
    expect<Buffer>(b).not.toBeNull();
    assert(b instanceof Buffer);

    b[0] = <u8>0;
    b[1] = <u8>1;
    b[2] = <u8>2;

    expect<u8>(b[0]).toBe(0);
    expect<u8>(b[1]).toBe(1);
    expect<u8>(b[2]).toBe(2);
  });

  it("should create a buffer from an i32[]", () => {
    let i32array: i32[] = [1, 2, 3, 4, 5, 6, 257];
    let buffer = Buffer.from<i32[]>(i32array);
    expect<i32>(buffer[0]).toBe(1);
    expect<i32>(buffer[1]).toBe(2);
    expect<i32>(buffer[2]).toBe(3);
    expect<i32>(buffer[3]).toBe(4);
    expect<i32>(buffer[4]).toBe(5);
    expect<i32>(buffer[5]).toBe(6);
    expect<i32>(buffer[6]).toBe(1);
  });

  it("should create a buffer from a f64[]", () => {
    let f64array: f64[] = [1.1, 2.2, 3.3, 4.4];
    let buffer = Buffer.from<f64[]>(f64array);
    expect<u8>(buffer[0]).toBe(1);
    expect<u8>(buffer[1]).toBe(2);
    expect<u8>(buffer[2]).toBe(3);
    expect<u8>(buffer[3]).toBe(4);
  });

  it("should create a buffer from a string using utf8 by default", () => {
    let buffer = Buffer.from<string>("abcdef");
    expect<u8>(buffer[0]).toBe(0x61);
    expect<u8>(buffer[1]).toBe(0x62);
    expect<u8>(buffer[2]).toBe(0x63);
    expect<u8>(buffer[3]).toBe(0x64);
    expect<u8>(buffer[4]).toBe(0x65);
    expect<u8>(buffer[5]).toBe(0x66);
  });

  it("should create a buffer from a string using utf16", () => {
    let buffer = Buffer.from<string>("abc123", "utf16le");
    expect<u8>(buffer[0]).toBe(0x61);
    expect<u8>(buffer[1]).toBe(0x0);
    expect<u8>(buffer[2]).toBe(0x62);
    expect<u8>(buffer[3]).toBe(0x0);
    expect<u8>(buffer[4]).toBe(0x63);
    expect<u8>(buffer[5]).toBe(0x0);
    expect<u8>(buffer[6]).toBe(0x31);
    expect<u8>(buffer[7]).toBe(0x0);
    expect<u8>(buffer[8]).toBe(0x32);
    expect<u8>(buffer[9]).toBe(0x0);
    expect<u8>(buffer[10]).toBe(0x33);
    expect<u8>(buffer[11]).toBe(0x0);
  });

  it("should read BE and LE i64 values", () => {
    let buffer = Buffer.from<i8[]>([1, 2, 3, 4, 5, 6, 7, 8]);
    let BE = buffer.readBigInt64BE(0);
    let LE = buffer.readBigInt64LE(0);
    expect<i64>(BE).toBe(0x102030405060708);
    expect<i64>(LE).toBe(0x807060504030201);
  });

  itThrows("when readBigInt64BE offset is out of range", () => {
    let buffer = new Buffer(8);
    buffer.readBigInt64BE(1); // throws here
  });

  itThrows("when readBigInt64LE offset is out of range", () => {
    let buffer = new Buffer(8);
    buffer.readBigInt64LE(1); // throws here
  });

  it("should read BE and LE u64 values", () => {
    let buffer = Buffer.from<i32[]>([0xDE, 0xAD, 0xBE, 0xEF, 0xDE, 0xAD, 0xBE, 0xEF]);
    let BE = buffer.readBigUInt64BE(0);
    let LE = buffer.readBigUInt64LE(0);
    expect<i64>(BE).toBe(0xDEADBEEFDEADBEEF);
    expect<i64>(LE).toBe(0xEFBEADDEEFBEADDE);
  });

  itThrows("when readBigUInt64BE offset is out of range", () => {
    let buffer = new Buffer(8);
    buffer.readBigUInt64BE(1); // throws here
  });

  itThrows("when readBigInt64LE offset is out of range", () => {
    let buffer = new Buffer(8);
    buffer.readBigUInt64LE(1); // throws here
  });

  it("should read BE and LE f64 values", () => {
    const buf = Buffer.from<i32[]>([1, 2, 3, 4, 5, 6, 7, 8]);

    let BE = buf.readDoubleBE(0);
    let LE = buf.readDoubleLE(0);
    expect<f64>(BE).toBe(8.20788039913184e-304);
    expect<f64>(LE).toBe(5.447603722011605e-270);
  });

  itThrows("when readDoubleBE offset is out of range", () => {
    let buffer = new Buffer(8);
    buffer.readDoubleBE(1); // throws here
  });

  itThrows("when readDoubleLE offset is out of range", () => {
    let buffer = new Buffer(8);
    buffer.readDoubleLE(1); // throws here
  });

  it("should read BE and LE f32 values", () => {
    const buf = Buffer.from<i32[]>([1, 2, 3, 4]);

    let BE = buf.readFloatBE(0);
    let LE = buf.readFloatLE(0);
    expect<f32>(BE).toBe(2.387939260590663e-38);
    expect<f32>(LE).toBe(1.539989614439558e-36);
  });

  itThrows("when readFloatBE offset is out of range", () => {
    let buffer = new Buffer(4);
    buffer.readFloatBE(1); // throws here
  });

  itThrows("when readFloatLE offset is out of range", () => {
    let buffer = new Buffer(4);
    buffer.readFloatLE(1); // throws here
  });

  it("should read single bytes", () => {
    let buffer = Buffer.from<i32[]>([-1]);
    let i8value = buffer.readInt8(0);
    let u8value = buffer.readUInt8(0);
    expect<u8>(u8value).toBe(255);
    expect<i8>(i8value).toBe(-1);
  });

  itThrows("when offset is out of range for u8", () => {
    let buffer = new Buffer(1);
    let result = buffer[1]; // throws
  });

  itThrows("when offset is out of range for i8", () => {
    let buffer = new Buffer(1);
    let result = buffer.readInt8(1); // throws
  });

  it("should read BE and LE i16 values", () => {
    const buf = Buffer.from<i32[]>([0, 5]);

    let BE = buf.readInt16BE(0);
    let LE = buf.readInt16LE(0);
    expect<i16>(BE).toBe(5);
    expect<i16>(LE).toBe(1280);
  });

  itThrows("when readInt16BE offset is out of range", () => {
    let buffer = new Buffer(2);
    buffer.readInt16BE(1); // throws here
  });

  itThrows("when readInt16LE offset is out of range", () => {
    let buffer = new Buffer(2);
    buffer.readInt16LE(1); // throws here
  });

  it("should read BE and LE u16 values", () => {
    const buf = Buffer.from<i32[]>([0, 5]);

    let BE = buf.readUInt16BE(0);
    let LE = buf.readUInt16LE(0);
    expect<u16>(BE).toBe(5);
    expect<u16>(LE).toBe(1280);
  });

  itThrows("when readUInt16BE offset is out of range", () => {
    let buffer = new Buffer(2);
    buffer.readUInt16BE(1); // throws here
  });

  itThrows("when readInt16LE offset is out of range", () => {
    let buffer = new Buffer(2);
    buffer.readUInt16LE(1); // throws here
  });

  it("should read BE and LE i32 values", () => {
    let buf = Buffer.from<i32[]>([0x12, 0x34, 0x56, 0x78]);

    let BE = buf.readInt32BE(0);
    let LE = buf.readInt32LE(0);
    expect<i32>(LE).toBe(0x78563412);
    expect<i32>(BE).toBe(0x12345678);
  });

  itThrows("when readInt32BE offset is out of range", () => {
    let buffer = new Buffer(4);
    buffer.readInt32BE(1); // throws here
  });

  itThrows("when readInt32LE offset is out of range", () => {
    let buffer = new Buffer(4);
    buffer.readInt32LE(1); // throws here
  });

  it("should read BE and LE u32 values", () => {
    let buf = Buffer.from<i32[]>([0x12, 0x34, 0x56, 0x78]);

    let BE = buf.readUInt32BE(0);
    let LE = buf.readUInt32LE(0);
    expect<u32>(LE).toBe(0x78563412);
    expect<u32>(BE).toBe(0x12345678);
  });

  itThrows("when readUInt32BE offset is out of range", () => {
    let buffer = new Buffer(4);
    buffer.readUInt32BE(1); // throws here
  });

  itThrows("when readUInt32LE offset is out of range", () => {
    let buffer = new Buffer(4);
    buffer.readUInt32LE(1); // throws here
  });

  it("should make a subarray", () => {
    let arr = Buffer.from<i32[]>([1, 2, 3]);

    let subarray = arr.subarray(1, 2);
    expect<Buffer>(subarray).toHaveLength(1);
    expect<i32>(subarray.byteLength).toBe(1);
    expect<i32>(subarray.byteOffset).toBe(1);
    expect<u8>(subarray[0]).toBe(2);
  });
});
