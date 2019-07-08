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

  it("should fill a buffer", () => {
    let arr = new Buffer(100);
    arr.fill<i32>(100);
    for(let i = 0; i < 100; i++) expect<u8>(arr[i]).toBe(100);
  });

  it("should sort a buffer", () => {
    let array = Buffer.from<i32[]>([5, 2, 3, 1, 4]).sort();
    expect<u8>(array[0]).toBe(1);
    expect<u8>(array[1]).toBe(2);
    expect<u8>(array[2]).toBe(3);
    expect<u8>(array[3]).toBe(4);
    expect<u8>(array[4]).toBe(5);
  });

  it("should include values", () => {
    let buffer = Buffer.from<i32[]>([1, 2, 3, 4, 5, 6, 7, 8, 9, 10]);
    let included = Buffer.from<i32[]>([4, 5, 6]);
    expect<bool>(buffer.includes<Buffer>(included)).toBeTruthy();
  });

  it("should not include values", () => {
    let buffer = Buffer.from<i32[]>([1, 2, 3, 4, 5, 6, 7, 8, 9, 10]);
    let included = Buffer.from<i32[]>([2, 5, 6]);
    expect<bool>(buffer.includes<Buffer>(included)).toBeFalsy()
  });

  it("should include utf8 values", () => {
    let buffer = Buffer.from<string>("valid aBcDeFgHiJkLmNoP", "utf8");
    expect<bool>(buffer.includes<string>("DeFg", 0, "utf8")).toBeTruthy();
  });

  it("should include utf16 values", () => {
    let buffer = Buffer.from<string>("valid aBcDeFgHiJkLmNoP", "utf16le");
    expect<bool>(buffer.includes<string>("DeFg", 0, "utf16le")).toBeTruthy();
  });

  it("should swap 16 bit values", () => {
    let buffer = Buffer.from<i32[]>([0x1, 0x2, 0x3, 0x4, 0x5, 0x6, 0x7, 0x8]);
    buffer.swap16();
    expect<u8>(buffer[0]).toBe(0x2);
    expect<u8>(buffer[1]).toBe(0x1);
    expect<u8>(buffer[2]).toBe(0x4);
    expect<u8>(buffer[3]).toBe(0x3);
    expect<u8>(buffer[4]).toBe(0x6);
    expect<u8>(buffer[5]).toBe(0x5);
    expect<u8>(buffer[6]).toBe(0x8);
    expect<u8>(buffer[7]).toBe(0x7);
  });

  itThrows("when the buffer length is not the correct size for swap16", () => {
    let buffer = Buffer.from<i32[]>([0x1, 0x2, 0x3, 0x4, 0x5, 0x6, 0x7, 0x8, 0x9]);
    buffer.swap16();
  });

  it("should swap 32 bit values", () => {
    let buffer = Buffer.from<i32[]>([0x1, 0x2, 0x3, 0x4, 0x5, 0x6, 0x7, 0x8]);
    buffer.swap32();
    expect<u8>(buffer[0]).toBe(0x4);
    expect<u8>(buffer[1]).toBe(0x3);
    expect<u8>(buffer[2]).toBe(0x2);
    expect<u8>(buffer[3]).toBe(0x1);
    expect<u8>(buffer[4]).toBe(0x8);
    expect<u8>(buffer[5]).toBe(0x7);
    expect<u8>(buffer[6]).toBe(0x6);
    expect<u8>(buffer[7]).toBe(0x5);
  });

  itThrows("when the buffer length is not the correct size for swap32", () => {
    let buffer = Buffer.from<i32[]>([0x1, 0x2, 0x3, 0x4, 0x5, 0x6, 0x7, 0x8, 0x9]);
    buffer.swap32();
  });

  it("should swap 64 bit values", () => {
    let buffer = Buffer.from<i32[]>([0x1, 0x2, 0x3, 0x4, 0x5, 0x6, 0x7, 0x8, 0x9, 0xA, 0xB, 0xC, 0xD, 0xE, 0xF, 0x10]);
    buffer.swap64();
    expect<u8>(buffer[0]).toBe(0x8);
    expect<u8>(buffer[1]).toBe(0x7);
    expect<u8>(buffer[2]).toBe(0x6);
    expect<u8>(buffer[3]).toBe(0x5);
    expect<u8>(buffer[4]).toBe(0x4);
    expect<u8>(buffer[5]).toBe(0x3);
    expect<u8>(buffer[6]).toBe(0x2);
    expect<u8>(buffer[7]).toBe(0x1);
    expect<u8>(buffer[8]).toBe(0x10);
    expect<u8>(buffer[9]).toBe(0xF);
    expect<u8>(buffer[10]).toBe(0xE);
    expect<u8>(buffer[11]).toBe(0xD);
    expect<u8>(buffer[12]).toBe(0xC);
    expect<u8>(buffer[13]).toBe(0xB);
    expect<u8>(buffer[14]).toBe(0xA);
    expect<u8>(buffer[15]).toBe(0x9);
  });

  itThrows("when the buffer length is not the correct size for swap64", () => {
    let buffer = Buffer.from<i32[]>([0x1, 0x2, 0x3, 0x4, 0x5, 0x6, 0x7, 0x8, 0x9]);
    buffer.swap64();
  });

  it("should return 'hello world' with toString using utf8 encoding", () => {
    let buff = Buffer.from<i32[]>([0x68, 0x65, 0x6c, 0x6c, 0x6f, 0x20, 0x77, 0x6f, 0x72, 0x6c, 0x64]);
    expect<string>(buff.toString()).toBe("hello world");
  });

  it("should initialize a hello world string from hex", () => {
    let buff = Buffer.from<string>("68656c6c6f20776f726c64", "hex");
    expect<string>(buff.toString()).toBe("hello world");
  });

  it("should return strings with correct values using hex encoding", () => {
    let actual: string = Buffer.from<string>("hello world").toString("hex");
    expect<string>(actual).toBe("68656c6c6f20776f726c64");
  });

  it("should write strings in hex", () => {
    let target = new Buffer(10);
    target.write("DEADBEEF", 0, 4, "hex");
    expect<u8>(target[0]).toBe(0xDE);
    expect<u8>(target[1]).toBe(0xAD);
    expect<u8>(target[2]).toBe(0xBE);
    expect<u8>(target[3]).toBe(0xEF);
    expect<u8>(target[4]).toBe(0x00);
    expect<u8>(target[5]).toBe(0x00);
    expect<u8>(target[6]).toBe(0x00);
    expect<u8>(target[7]).toBe(0x00);
    expect<u8>(target[8]).toBe(0x00);
    expect<u8>(target[9]).toBe(0x00);
  });

  it("should write hello world in utf8", () => {
    let target = new Buffer(11);
    target.write("hello world");

    expect<u8>(target[0]).toBe(0x68);
    expect<u8>(target[1]).toBe(0x65);
    expect<u8>(target[2]).toBe(0x6c);
    expect<u8>(target[3]).toBe(0x6c);
    expect<u8>(target[4]).toBe(0x6f);
    expect<u8>(target[5]).toBe(0x20);
    expect<u8>(target[6]).toBe(0x77);
    expect<u8>(target[7]).toBe(0x6f);
    expect<u8>(target[8]).toBe(0x72);
    expect<u8>(target[9]).toBe(0x6c);
    expect<u8>(target[10]).toBe(0x64);
  });

  it("should write hello world in utf16", () => {
    let expected = Buffer.from<string>("hello world", "utf16le");
    let target = new Buffer(22);
    target.write("hello world", 0, 22, "utf16le");
    for (let i = 0; i < 22; i++) expect<u8>(target[i]).toBe(expected[i]);
  });

  it("should allocate buffers with initialized data", () => {
    let buff = Buffer.alloc<i32>(20, 42);
    for (let i = 0; i < 20; i++) expect<u8>(buff[i]).toBe(42);
  });

  it("should fill buffers with 0xDEADBEEF", () => {
    let target = new Buffer(10);
    target.fill<Buffer>(Buffer.from<i32[]>([0xDE, 0xAD, 0xBE, 0xEF]));

    expect<u8>(target[0]).toBe(0xDE);
    expect<u8>(target[1]).toBe(0xAD);
    expect<u8>(target[2]).toBe(0xBE);
    expect<u8>(target[3]).toBe(0xEF);
    expect<u8>(target[4]).toBe(0xDE);
    expect<u8>(target[5]).toBe(0xAD);
    expect<u8>(target[6]).toBe(0xBE);
    expect<u8>(target[7]).toBe(0xEF);
    expect<u8>(target[8]).toBe(0xDE);
    expect<u8>(target[9]).toBe(0xAD);
  });

  it("should fill buffers with 'DEADBEEF' in hex", () => {
    let target = new Buffer(10);
    target.fill<string>("DEADBEEF", 0, 10, "hex");

    expect<u8>(target[0]).toBe(0xDE);
    expect<u8>(target[1]).toBe(0xAD);
    expect<u8>(target[2]).toBe(0xBE);
    expect<u8>(target[3]).toBe(0xEF);
    expect<u8>(target[4]).toBe(0xDE);
    expect<u8>(target[5]).toBe(0xAD);
    expect<u8>(target[6]).toBe(0xBE);
    expect<u8>(target[7]).toBe(0xEF);
    expect<u8>(target[8]).toBe(0xDE);
    expect<u8>(target[9]).toBe(0xAD);
  });
});
