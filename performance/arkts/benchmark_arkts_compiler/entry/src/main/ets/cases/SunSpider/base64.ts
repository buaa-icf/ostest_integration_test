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

const toBase64Table:string = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/';
const base64Pad:string = '=';

const toBinaryTable:number[] = [
    -1,-1,-1,-1, -1,-1,-1,-1, -1,-1,-1,-1, -1,-1,-1,-1,
    -1,-1,-1,-1, -1,-1,-1,-1, -1,-1,-1,-1, -1,-1,-1,-1,
    -1,-1,-1,-1, -1,-1,-1,-1, -1,-1,-1,62, -1,-1,-1,63,
    52,53,54,55, 56,57,58,59, 60,61,-1,-1, -1, 0,-1,-1,
    -1, 0, 1, 2,  3, 4, 5, 6,  7, 8, 9,10, 11,12,13,14,
    15,16,17,18, 19,20,21,22, 23,24,25,-1, -1,-1,-1,-1,
    -1,26,27,28, 29,30,31,32, 33,34,35,36, 37,38,39,40,
    41,42,43,44, 45,46,47,48, 49,50,51,-1, -1,-1,-1,-1
];

function base64ToString(data: string): string {
    let result: string = '';
    let leftbits: number = 0;
    let leftdata: number = 0; 

    for (let i = 0; i < data.length; i++) {
        let c: number = toBinaryTable[data.charCodeAt(i) & 0x7f];
        let padding: boolean = (data.charCodeAt(i) == base64Pad.charCodeAt(0));
        if (c == -1) continue;
        leftdata = (leftdata << 6) | c;
        leftbits += 6;
        if (leftbits >= 8) {
            leftbits -= 8;
            if (!padding)
                result += String.fromCharCode((leftdata >> leftbits) & 0xff);
            leftdata &= (1 << leftbits) - 1;
        }
    }
    if (leftbits)
        throw new Error('Corrupted base64 string');
     return result;
}


function toBase64(data: string): string {
    let result: string = '';
    const length: number = data.length;
    let i: number;

    for (i = 0; i < (length - 2); i += 3) {
        result += toBase64Table[data.charCodeAt(i) >> 2];
        result += toBase64Table[((data.charCodeAt(i) & 0x03) << 4) + (data.charCodeAt(i+1) >> 4)];
        result += toBase64Table[((data.charCodeAt(i+1) & 0x0f) << 2) + (data.charCodeAt(i+2) >> 6)];
        result += toBase64Table[data.charCodeAt(i+2) & 0x3f];
    }
    if (length % 3) {
        i = length - (length % 3);
        result += toBase64Table[data.charCodeAt(i) >> 2];
        if ((length % 3) == 2) {
            result += toBase64Table[((data.charCodeAt(i) & 0x03) << 4) + (data.charCodeAt(i+1) >> 4)];
            result += toBase64Table[(data.charCodeAt(i+1) & 0x0f) << 2];
            result += base64Pad;
        } else {
            result += toBase64Table[(data.charCodeAt(i) & 0x03) << 4];
            result += base64Pad + base64Pad;
        }
    }
     return result;
}


function Base64Run(): void {
    let str: string = "";
     for (let i = 0; i < 8192; i++) {
        str += String.fromCharCode((25 * Math.random()) + 97);
    }
     for (let i: number = 8192; i <= 16384; i *= 2) {
        let base64: string;
         base64 = toBase64(str);
        let encoded: string = base64ToString(base64);
        if (encoded !== str) {
            throw new Error("ERROR: bad result: expected " + str + " but got " + encoded);
        }
         // Double the string
        str += str;
    }
}



/**************************configure and run benchmark********************************/
const benchmarkRun = new BenchmarkRun('base64', true, true, Base64Run,undefined,undefined,undefined,8)
benchmarkRun.run()
