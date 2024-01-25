import { BenchmarkRun } from "../BenchmarkMeasure";


/**************************source code********************************/

const Rcon:number[][] = [ [0x00, 0x00, 0x00, 0x00],
             [0x01, 0x00, 0x00, 0x00],
             [0x02, 0x00, 0x00, 0x00],
             [0x04, 0x00, 0x00, 0x00],
             [0x08, 0x00, 0x00, 0x00],
             [0x10, 0x00, 0x00, 0x00],
             [0x20, 0x00, 0x00, 0x00],
             [0x40, 0x00, 0x00, 0x00],
             [0x80, 0x00, 0x00, 0x00],
             [0x1b, 0x00, 0x00, 0x00],
             [0x36, 0x00, 0x00, 0x00] ]; 



const Sbox:number[] =  [0x63,0x7c,0x77,0x7b,0xf2,0x6b,0x6f,0xc5,0x30,0x01,0x67,0x2b,0xfe,0xd7,0xab,0x76,
  0xca,0x82,0xc9,0x7d,0xfa,0x59,0x47,0xf0,0xad,0xd4,0xa2,0xaf,0x9c,0xa4,0x72,0xc0,
  0xb7,0xfd,0x93,0x26,0x36,0x3f,0xf7,0xcc,0x34,0xa5,0xe5,0xf1,0x71,0xd8,0x31,0x15,
  0x04,0xc7,0x23,0xc3,0x18,0x96,0x05,0x9a,0x07,0x12,0x80,0xe2,0xeb,0x27,0xb2,0x75,
  0x09,0x83,0x2c,0x1a,0x1b,0x6e,0x5a,0xa0,0x52,0x3b,0xd6,0xb3,0x29,0xe3,0x2f,0x84,
  0x53,0xd1,0x00,0xed,0x20,0xfc,0xb1,0x5b,0x6a,0xcb,0xbe,0x39,0x4a,0x4c,0x58,0xcf,
  0xd0,0xef,0xaa,0xfb,0x43,0x4d,0x33,0x85,0x45,0xf9,0x02,0x7f,0x50,0x3c,0x9f,0xa8,
  0x51,0xa3,0x40,0x8f,0x92,0x9d,0x38,0xf5,0xbc,0xb6,0xda,0x21,0x10,0xff,0xf3,0xd2,
  0xcd,0x0c,0x13,0xec,0x5f,0x97,0x44,0x17,0xc4,0xa7,0x7e,0x3d,0x64,0x5d,0x19,0x73,
  0x60,0x81,0x4f,0xdc,0x22,0x2a,0x90,0x88,0x46,0xee,0xb8,0x14,0xde,0x5e,0x0b,0xdb,
  0xe0,0x32,0x3a,0x0a,0x49,0x06,0x24,0x5c,0xc2,0xd3,0xac,0x62,0x91,0x95,0xe4,0x79,
  0xe7,0xc8,0x37,0x6d,0x8d,0xd5,0x4e,0xa9,0x6c,0x56,0xf4,0xea,0x65,0x7a,0xae,0x08,
  0xba,0x78,0x25,0x2e,0x1c,0xa6,0xb4,0xc6,0xe8,0xdd,0x74,0x1f,0x4b,0xbd,0x8b,0x8a,
  0x70,0x3e,0xb5,0x66,0x48,0x03,0xf6,0x0e,0x61,0x35,0x57,0xb9,0x86,0xc1,0x1d,0x9e,
  0xe1,0xf8,0x98,0x11,0x69,0xd9,0x8e,0x94,0x9b,0x1e,0x87,0xe9,0xce,0x55,0x28,0xdf,
  0x8c,0xa1,0x89,0x0d,0xbf,0xe6,0x42,0x68,0x41,0x99,0x2d,0x0f,0xb0,0x54,0xbb,0x16];


function RotWord(w: number[]): number[] {
  w[4] = w[0];
  for (let i = 0; i < 4; i++) w[i] = w[i + 1];
  return w;
}

function SubWord(w: number[]): number[] {
  for (let i = 0; i < 4; i++) 
    w[i] = Sbox[w[i]];
  return w;
}

function KeyExpansion(key: number[]): number[][] {
  const Nb: number = 4;
  const Nk: number = key.length / 4;
  const Nr: number = Nk + 6;
  const w: number[][] = new Array(Nb * (Nr + 1));
  let temp: number[] = new Array(4);
  for (let i = 0; i < Nk; i++) {
    const r: number[] = [key[4 * i], key[4 * i + 1], key[4 * i + 2], key[4 * i + 3]];
    w[i] = r;
  }
  for (let i = Nk; i < Nb * (Nr + 1); i++) {
    w[i] = new Array(4);
    for (let t = 0; t < 4; t++) temp[t] = w[i - 1][t];
    if (i % Nk === 0) {
      temp = SubWord(RotWord(temp));
      for (let t = 0; t < 4; t++) temp[t] ^= Rcon[i / Nk][t];
    } else if (Nk > 6 && i % Nk === 4) {
      temp = SubWord(temp);
    }
    for (let t = 0; t < 4; t++) w[i][t] = w[i - Nk][t] ^ temp[t];
  }
  return w;
}


function escCtrlChars(str: string): string {
  return str.replace(/[\0\t\n\v\f\r\xa0'"!-]/g, function(c) { return '!' + c.charCodeAt(0) + '!'; });
}

function unescCtrlChars(str: string): string {
  return str.replace(/!\d\d?\d?!/g, function(c) { return String.fromCharCode(Number(c.slice(1, -1))); });
}

function AddRoundKey(state: number[][], w: number[][], rnd: number, Nb: number): number[][] {
  for (let r = 0; r < 4; r++) {
    for (let c = 0; c < Nb; c++) state[r][c] ^= w[rnd * 4 + c][r];
  }
  return state;
}
 function SubBytes(s: number[][], Nb: number): number[][] {
  for (let r = 0; r < 4; r++) {
    for (let c = 0; c < Nb; c++) s[r][c] = Sbox[s[r][c]];
  }
  return s;
}
 function ShiftRows(s: number[][], Nb: number): number[][] {
  const t: number[] = new Array(4);
  for (let r = 1; r < 4; r++) {
    for (let c = 0; c < 4; c++) t[c] = s[r][(c + r) % Nb];  // shift into temp copy
    for (let c = 0; c < 4; c++) s[r][c] = t[c];         // and copy back
  }
  return s;
}

function MixColumns(s: number[][], Nb: number): number[][] {   
  for (let c = 0; c < 4; c++) {
    const a: number[] = [];  // 'a' is a copy of the current column from 's'
    const b: number[] = [];  // 'b' is a•{02} in GF(2^8)
    for (let i = 0; i < 4; i++) {
      a[i] = s[i][c];
      b[i] = s[i][c] & 0x80 ? s[i][c] << 1 ^ 0x011b : s[i][c] << 1;
    }
    // a[n] ^ b[n] is a•{03} in GF(2^8)
    s[0][c] = b[0] ^ a[1] ^ b[1] ^ a[2] ^ a[3]; // 2*a0 + 3*a1 + a2 + a3
    s[1][c] = a[0] ^ b[1] ^ a[2] ^ b[2] ^ a[3]; // a0 * 2*a1 + 3*a2 + a3
    s[2][c] = a[0] ^ a[1] ^ b[2] ^ a[3] ^ b[3]; // a0 + a1 + 2*a2 + 3*a3
    s[3][c] = a[0] ^ b[0] ^ a[1] ^ a[2] ^ b[3]; // 3*a0 + a1 + a2 + 2*a3
  }
  return s;
}

function Cipher(input: number[], w: number[][]): number[] {
  const Nb: number = 4;               // block size (in words): no of columns in state (fixed at 4 for AES)
  const Nr: number = w.length / Nb - 1; // no of rounds: 10/12/14 for 128/192/256-bit keys
   let state: number[][] = [[], [], [], []];  // initialise 4xNb byte-array 'state' with input [§3.4]
  for (let i = 0; i < 4 * Nb; i++) state[i % 4][Math.floor(i / 4)] = input[i];
   state = AddRoundKey(state, w, 0, Nb);
   for (let round = 1; round < Nr; round++) {
    state = SubBytes(state, Nb);
    state = ShiftRows(state, Nb);
    state = MixColumns(state, Nb);
    state = AddRoundKey(state, w, round, Nb);
  }
   state = SubBytes(state, Nb);
  state = ShiftRows(state, Nb);
  state = AddRoundKey(state, w, Nr, Nb);
   const output: number[] = new Array(4 * Nb);  // convert state to 1-d array before returning [§3.4]
  for (let i = 0; i < 4 * Nb; i++) output[i] = state[i % 4][Math.floor(i / 4)];
  return output;
}


function AESEncryptCtr(plaintext: string, password: string, nBits: number): string {
  if (!(nBits === 128 || nBits === 192 || nBits === 256)) return '';
  const nBytes: number = nBits / 8;
  const pwBytes: number[] = new Array(nBytes);
  for (let i = 0; i < nBytes; i++) pwBytes[i] = password.charCodeAt(i) & 0xff;
  let key: number[] = Cipher(pwBytes, KeyExpansion(pwBytes));
  key = key.concat(key.slice(0, nBytes - 16));
  const blockSize: number = 16;
  const counterBlock: number[] = new Array(blockSize);
  const nonce: number = (new Date()).getTime();

  for (let i = 0; i < 4; i++) counterBlock[i] = (nonce >>> i * 8) & 0xff;
  for (let i = 0; i < 4; i++) counterBlock[i + 4] = (nonce / 0x100000000 >>> i * 8) & 0xff;
  const keySchedule: number[][] = KeyExpansion(key);
  const blockCount: number = Math.ceil(plaintext.length / blockSize);
  const ciphertext: string[] = new Array(blockCount);
  for (let b = 0; b < blockCount; b++) {
    for (let c = 0; c < 4; c++) counterBlock[15 - c] = (b >>> c * 8) & 0xff;
    for (let c = 0; c < 4; c++) counterBlock[15 - c - 4] = (b / 0x100000000 >>> c * 8);
    const cipherCntr: number[] = Cipher(counterBlock, keySchedule);
    const blockLength: number = b < blockCount - 1 ? blockSize : (plaintext.length - 1) % blockSize + 1;
    let ct: string = '';
    for (let i = 0; i < blockLength; i++) {
      const plaintextByte: number = plaintext.charCodeAt(b * blockSize + i);
      const cipherByte: number = plaintextByte ^ cipherCntr[i];
      ct += String.fromCharCode(cipherByte);
    }
     ciphertext[b] = escCtrlChars(ct);
  }

  let ctrTxt: string = '';
  for (let i = 0; i < 8; i++) ctrTxt += String.fromCharCode(counterBlock[i]);
  ctrTxt = escCtrlChars(ctrTxt);
  return ctrTxt + '-' + ciphertext.join('-');
}


function AESDecryptCtr(ciphertexta: string, password: string, nBits: number): string {
  if (!(nBits === 128 || nBits === 192 || nBits === 256)) return '';  // standard allows 128/192/256 bit keys
  const nBytes: number = nBits / 8;  // no bytes in key
  const pwBytes: number[] = [];
  for (let i = 0; i < nBytes; i++) pwBytes[i] = password.charCodeAt(i) & 0xff;
  const pwKeySchedule: number[][] = KeyExpansion(pwBytes);
  let key: number[] = Cipher(pwBytes, pwKeySchedule);
  key = key.concat(key.slice(0, nBytes - 16));
  const keySchedule: number[][] = KeyExpansion(key);
  
  const ciphertext:string[] = ciphertexta.split('-');
  const blockSize: number = 16;
  const counterBlock: number[] = new Array(blockSize);
  const ctrTxt: string = unescCtrlChars(ciphertext[0]);
  for (let i = 0; i < 8; i++) counterBlock[i] = ctrTxt.charCodeAt(i);
  const plaintext: string[] = new Array(ciphertext.length - 1);
  for (let b = 1; b < ciphertext.length; b++) {
    for (let c = 0; c < 4; c++) counterBlock[15 - c] = ((b - 1) >>> c * 8) & 0xff;
    for (let c = 0; c < 4; c++) counterBlock[15 - c - 4] = ((b / 0x100000000 - 1) >>> c * 8) & 0xff;
    const cipherCntr: number[] = Cipher(counterBlock, keySchedule);
    ciphertext[b] = unescCtrlChars(ciphertext[b]);
    let pt: string = '';
    for (let i = 0; i < ciphertext[b].length; i++) {
      const ciphertextByte: number = ciphertext[b].charCodeAt(i);
      const plaintextByte: number = ciphertextByte ^ cipherCntr[i];
      pt += String.fromCharCode(plaintextByte);
    }
    plaintext[b - 1] = pt;
  }
  return plaintext.join('');
}


function AESRun(){
  const plainText:string = "ROMEO: But, soft! what light through yonder window breaks?\n\
  It is the east, and Juliet is the sun.\n\
  Arise, fair sun, and kill the envious moon,\n\
  Who is already sick and pale with grief,\n\
  That thou her maid art far more fair than she:\n\
  Be not her maid, since she is envious;\n\
  Her vestal livery is but sick and green\n\
  And none but fools do wear it; cast it off.\n\
  It is my lady, O, it is my love!\n\
  O, that she knew she were!\n\
  She speaks yet she says nothing: what of that?\n\
  Her eye discourses; I will answer it.\n\
  I am too bold, 'tis not to me she speaks:\n\
  Two of the fairest stars in all the heaven,\n\
  Having some business, do entreat her eyes\n\
  To twinkle in their spheres till they return.\n\
  What if her eyes were there, they in her head?\n\
  The brightness of her cheek would shame those stars,\n\
  As daylight doth a lamp; her eyes in heaven\n\
  Would through the airy region stream so bright\n\
  That birds would sing and think it were not night.\n\
  See, how she leans her cheek upon her hand!\n\
  O, that I were a glove upon that hand,\n\
  That I might touch that cheek!\n\
  JULIET: Ay me!\n\
  ROMEO: She speaks:\n\
  O, speak again, bright angel! for thou art\n\
  As glorious to this night, being o'er my head\n\
  As is a winged messenger of heaven\n\
  Unto the white-upturned wondering eyes\n\
  Of mortals that fall back to gaze on him\n\
  When he bestrides the lazy-pacing clouds\n\
  And sails upon the bosom of the air.";

  const password: string = "O Romeo, Romeo! wherefore art thou Romeo?";
  const cipherText: string = AESEncryptCtr(plainText, password, 256);
  const decryptedText: string = AESDecryptCtr(cipherText, password, 256);
  if (decryptedText !== plainText) {
    throw new Error(`ERROR: bad result: expected ${plainText} but got ${decryptedText}`);
  }
}

/**************************configure and run benchmark********************************/
const benchmarkRun = new BenchmarkRun('crypto-aes', true, true, AESRun,undefined,undefined,undefined,8)
benchmarkRun.run()
