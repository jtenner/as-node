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

  itThrows("when readBigInt64BE offset is out of range", () => {
    let buffer = new Buffer(8);
    buffer.readBigInt64BE(1); // throws here
  });

  itThrows("when readBigInt64LE offset is out of range", () => {
    let buffer = new Buffer(8);
    buffer.readBigInt64LE(1); // throws here
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
});
