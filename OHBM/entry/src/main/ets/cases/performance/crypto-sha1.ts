/*
 * Copyright (c) 2023 Shenzhen Kaihong Digital Industry Development Co., Ltd.
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */


import { BenchmarkRun } from "../BenchmarkMeasure";


/**************************source code********************************/

const chrsz: number = 8;
const hexcase: number = 0;

function binb2hex(binarray: number[]): string {
  const hex_tab: string = hexcase ? "0123456789ABCDEF" : "0123456789abcdef";
  let str: string = "";
  for (let i: number = 0; i < binarray.length * 4; i++) {
    str += hex_tab.charAt((binarray[i >> 2] >> ((3 - i % 4) * 8 + 4)) & 0xF) +
    hex_tab.charAt((binarray[i >> 2] >> ((3 - i % 4) * 8)) & 0xF);
  }
  return str;
}

function str2binb(str: string): number[] {
  const bin: number[] = [];
  const mask: number = (1 << chrsz) - 1;
  for (let i: number = 0; i < str.length * chrsz; i += chrsz) {
    bin[i >> 5] |= (str.charCodeAt(i / chrsz) & mask) << (32 - chrsz - i % 32);
  }
  return bin;
}

function safe_add(x: number, y: number): number {
  const lsw: number = (x & 0xFFFF) + (y & 0xFFFF);
  const msw: number = (x >> 16) + (y >> 16) + (lsw >> 16);
  return (msw << 16) | (lsw & 0xFFFF);
}

function rol(num: number, cnt: number): number {
  return (num << cnt) | (num >>> (32 - cnt));
}

function sha1_ft(t: number, b: number, c: number, d: number): number {
  if (t < 20) {
    return (b & c) | ((~b) & d);
  }
  if (t < 40) {
    return b ^ c ^ d;
  }
  if (t < 60) {
    return (b & c) | (b & d) | (c & d);
  }
  return b ^ c ^ d;
}

function sha1_kt(t: number): number {
  return (t < 20) ? 1518500249 : (t < 40) ? 1859775393 :
    (t < 60) ? -1894007588 : -899497514;
}

function core_sha1(x: number[], len: number): number[] {
  x[len >> 5] |= 0x80 << (24 - len % 32);
  x[((len + 64 >> 9) << 4) + 15] = len;
  const w: number[] = new Array(80);
  let a: number = 1732584193;
  let b: number = -271733879;
  let c: number = -1732584194;
  let d: number = 271733878;
  let e: number = -1009589776;
  for (let i: number = 0; i < x.length; i += 16) {
    const olda: number = a;
    const oldb: number = b;
    const oldc: number = c;
    const oldd: number = d;
    const olde: number = e;
    for (let j: number = 0; j < 80; j++) {
      if (j < 16) {
        w[j] = x[i + j];
      } else {
        w[j] = rol(w[j - 3] ^ w[j - 8] ^ w[j - 14] ^ w[j - 16], 1);
      }
      const t: number = safe_add(safe_add(rol(a, 5), sha1_ft(j, b, c, d)),
        safe_add(safe_add(e, w[j]), sha1_kt(j)));
      e = d;
      d = c;
      c = rol(b, 30);
      b = a;
      a = t;
    }
    a = safe_add(a, olda);
    b = safe_add(b, oldb);
    c = safe_add(c, oldc);
    d = safe_add(d, oldd);
    e = safe_add(e, olde);
  }
  return [a, b, c, d, e];
}

function hex_sha1(s: string): string {
  return binb2hex(core_sha1(str2binb(s), s.length * chrsz));
}


function Sha1Run(): void {
  let plainText: string = "Two households, both alike in dignity,\n\
In fair Verona, where we lay our scene,\n\
From ancient grudge break to new mutiny,\n\
Where civil blood makes civil hands unclean.\n\
From forth the fatal loins of these two foes\n\
A pair of star-cross'd lovers take their life;\n\
Whole misadventured piteous overthrows\n\
Do with their death bury their parents' strife.\n\
The fearful passage of their death-mark'd love,\n\
And the continuance of their parents' rage,\n\
Which, but their children's end, nought could remove,\n\
Is now the two hours' traffic of our stage;\n\
The which if you with patient ears attend,\n\
What here shall miss, our toil shall strive to mend.";
  for (let i: number = 0; i < 4; i++) {
    plainText += plainText;
  }
  let sha1Output: string = hex_sha1(plainText);
  let expected: string = "2524d264def74cce2498bf112bedf00e6c0b796d";
  if (sha1Output != expected) {
    throw "ERROR: bad result: expected " + expected + " but got " + sha1Output;
  }
}


/**************************configure and run benchmark********************************/
export { Sha1Run }