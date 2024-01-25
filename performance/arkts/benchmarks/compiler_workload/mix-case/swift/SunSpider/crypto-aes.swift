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


import Foundation

struct defaultRNG: RandomNumberGenerator {
    var seed: UInt64 = 49734321
    mutating func next() -> UInt64 {
        seed = ((seed &+ 0x7ed55d16) &+ (seed << 12)) & 0xffffffff
        seed = ((seed ^ 0xc761c23c) ^ (seed >> 19)) & 0xffffffff
        seed = ((seed &+ 0x165667b1) &+ (seed << 5)) & 0xffffffff
        seed = ((seed &+ 0xd3a2646c) ^ (seed << 9)) & 0xffffffff
        seed = ((seed &+ 0xfd7046c5) &+ (seed << 3)) & 0xffffffff
        seed = ((seed ^ 0xb55a4f09) ^ (seed >> 16)) & 0xffffffff
        return seed
    }
    
    mutating func nextDouble() -> Double {
        let seedI = next()
        let randomDouble = Double(seedI&0xfffffff) / 0x10000000
        return randomDouble
    }
}

class BenchmarkRNG{
    static var rng = defaultRNG()

    static func nextDouble()->Double{
        return BenchmarkRNG.rng.nextDouble()
    }

    static func resetRNG(){
        BenchmarkRNG.rng = defaultRNG()
    }

}

enum BenchmarkError:Error{
    case WrongResult(String)
}

class BenchmarkResult {
    var time: Double
    var latency: Double
    
    init(time: Double, latency: Double) {
        self.time = time
        self.latency = latency
    }
}

class Benchmark {
    var name: String
    var doWarmup: Bool
    var doDeterministic: Bool
    var run: () throws -> Void
    var setup: (() -> Void)?
    var tearDown: (() -> Void)?
    var rmsResult: (() -> Double)?
    var minIterations: Int
    var data: (runs: Int, elapsed: Int)?
    
    init(name: String, doWarmup: Bool, doDeterministic: Bool,
        run: @escaping () throws -> Void,
        setup: (() -> Void)? = nil, 
        tearDown: (() -> Void)? = nil,
        rmsResult: (() -> Double)? = nil, 
        minIterations: Int? = nil) {
            self.name = name
            self.doWarmup = doWarmup
            self.doDeterministic = doDeterministic
            self.run = run
            self.setup = setup
            self.tearDown = tearDown
            self.minIterations = minIterations ?? 32
            self.data = nil
    }
    
    func runSetup(benchmarkResult: inout BenchmarkResult) throws {
        setup?()
        try runBenchmark(benchmarkResult: &benchmarkResult)
    }
    
    func runBenchmark(benchmarkResult: inout BenchmarkResult)throws {
        try runSingle(benchmarkResult:&benchmarkResult)
        if data == nil {
            runTearDown()
        } else {
            try runBenchmark(benchmarkResult: &benchmarkResult)
        }
    }
    
    func runTearDown() {
        tearDown?()
    }
    
    func runSingle(benchmarkResult: inout BenchmarkResult) throws {
        if !doWarmup && data == nil {
            data = (runs: 0, elapsed: 0)
        }
        
        if data == nil {
            try measure()
            data = (runs: 0, elapsed: 0)
        } else {
            try measure()
            if data!.runs < minIterations { return }
            let usec: Double = Double(data!.elapsed * 1000) / Double(data!.runs)
            let rms: Double = (rmsResult != nil) ? rmsResult!() : 0
            benchmarkResult.time = usec
            benchmarkResult.latency = rms
            data = nil
        }
    }
    
    func measure() throws {
        var elapsed: Int = 0
        let start: Int = Int(Date().timeIntervalSince1970 * 1000)
        
        var i = 0
        while (doDeterministic ? i < minIterations : elapsed < 1000) {
            try run()
            elapsed = Int(Date().timeIntervalSince1970 * 1000) - start
            i += 1
        }
        
        if data != nil {
            data!.runs += i
            data!.elapsed += elapsed
        }
    }
}


class BenchmarkRun {
    var benchmark: Benchmark

    init(name: String, doWarmup: Bool, doDeterministic: Bool,
        run: @escaping () throws -> Void,
        setup: (() -> Void)? = nil, 
        tearDown: (() -> Void)? = nil,
        rmsResult: (() -> Double)? = nil, 
        minIterations: Int? = nil){
        self.benchmark = Benchmark(name:name,doWarmup: doWarmup,doDeterministic:doDeterministic,run:run,setup:setup,tearDown:tearDown,rmsResult:rmsResult,minIterations:minIterations)
    }
    
    func run(){
	BenchmarkRNG.resetRNG()
        var result = BenchmarkResult(time: 0, latency: 0)
        do{
            try self.benchmark.runSetup(benchmarkResult: &result)
            printResult(result)
        }catch let BenchmarkError.WrongResult(errMsg){
            prinErrorMessage(errMsg)
        }catch{
            prinErrorMessage("unknown error!")
        }
        
    }

    func printResult(_ result:BenchmarkResult){
        print("\(self.benchmark.name): usec = \(result.time)\n\(self.benchmark.name): latency = \(result.latency)")
    }
    

    func prinErrorMessage(_ errorMessage:String){
        print("\(self.benchmark.name) Error: \(errorMessage)")
    }
}

/**************************source code********************************/

let Rcon: [[UInt16]] = [
    [0x00, 0x00, 0x00, 0x00],
    [0x01, 0x00, 0x00, 0x00],
    [0x02, 0x00, 0x00, 0x00],
    [0x04, 0x00, 0x00, 0x00],
    [0x08, 0x00, 0x00, 0x00],
    [0x10, 0x00, 0x00, 0x00],
    [0x20, 0x00, 0x00, 0x00],
    [0x40, 0x00, 0x00, 0x00],
    [0x80, 0x00, 0x00, 0x00],
    [0x1b, 0x00, 0x00, 0x00],
    [0x36, 0x00, 0x00, 0x00]
]

let Sbox: [UInt16] = [0x63, 0x7c, 0x77, 0x7b, 0xf2, 0x6b, 0x6f, 0xc5, 0x30, 0x01, 0x67, 0x2b, 0xfe, 0xd7, 0xab, 0x76,
                     0xca, 0x82, 0xc9, 0x7d, 0xfa, 0x59, 0x47, 0xf0, 0xad, 0xd4, 0xa2, 0xaf, 0x9c, 0xa4, 0x72, 0xc0,
                     0xb7, 0xfd, 0x93, 0x26, 0x36, 0x3f, 0xf7, 0xcc, 0x34, 0xa5, 0xe5, 0xf1, 0x71, 0xd8, 0x31, 0x15,
                     0x04, 0xc7, 0x23, 0xc3, 0x18, 0x96, 0x05, 0x9a, 0x07, 0x12, 0x80, 0xe2, 0xeb, 0x27, 0xb2, 0x75,
                     0x09, 0x83, 0x2c, 0x1a, 0x1b, 0x6e, 0x5a, 0xa0, 0x52, 0x3b, 0xd6, 0xb3, 0x29, 0xe3, 0x2f, 0x84,
                     0x53, 0xd1, 0x00, 0xed, 0x20, 0xfc, 0xb1, 0x5b, 0x6a, 0xcb, 0xbe, 0x39, 0x4a, 0x4c, 0x58, 0xcf,
                     0xd0, 0xef, 0xaa, 0xfb, 0x43, 0x4d, 0x33, 0x85, 0x45, 0xf9, 0x02, 0x7f, 0x50, 0x3c, 0x9f, 0xa8,
                     0x51, 0xa3, 0x40, 0x8f, 0x92, 0x9d, 0x38, 0xf5, 0xbc, 0xb6, 0xda, 0x21, 0x10, 0xff, 0xf3, 0xd2,
                     0xcd, 0x0c, 0x13, 0xec, 0x5f, 0x97, 0x44, 0x17, 0xc4, 0xa7, 0x7e, 0x3d, 0x64, 0x5d, 0x19, 0x73,
                     0x60, 0x81, 0x4f, 0xdc, 0x22, 0x2a, 0x90, 0x88, 0x46, 0xee, 0xb8, 0x14, 0xde, 0x5e, 0x0b, 0xdb,
                     0xe0, 0x32, 0x3a, 0x0a, 0x49, 0x06, 0x24, 0x5c, 0xc2, 0xd3, 0xac, 0x62, 0x91, 0x95, 0xe4, 0x79,
                     0xe7, 0xc8, 0x37, 0x6d, 0x8d, 0xd5, 0x4e, 0xa9, 0x6c, 0x56, 0xf4, 0xea, 0x65, 0x7a, 0xae, 0x08,
                     0xba, 0x78, 0x25, 0x2e, 0x1c, 0xa6, 0xb4, 0xc6, 0xe8, 0xdd, 0x74, 0x1f, 0x4b, 0xbd, 0x8b, 0x8a,
                     0x70, 0x3e, 0xb5, 0x66, 0x48, 0x03, 0xf6, 0x0e, 0x61, 0x35, 0x57, 0xb9, 0x86, 0xc1, 0x1d, 0x9e,
                     0xe1, 0xf8, 0x98, 0x11, 0x69, 0xd9, 0x8e, 0x94, 0x9b, 0x1e, 0x87, 0xe9, 0xce, 0x55, 0x28, 0xdf,
                     0x8c, 0xa1, 0x89, 0x0d, 0xbf, 0xe6, 0x42, 0x68, 0x41, 0x99, 0x2d, 0x0f, 0xb0, 0x54, 0xbb, 0x16]


func RotWord(_ ww: [UInt16]) -> [UInt16] {
    var w = ww
    w.append(0)
    w[4] = w[0]
    for i in 0..<4 {
        w[i] = w[i + 1]
    }
    return w
}

func SubWord(_ ww: [UInt16]) -> [UInt16] {
    var w = ww
    for i in 0..<4 {
        w[i] = Sbox[Int(w[i])]
    }
    return w
}

func keyExpansion(_ key: [UInt16]) -> [[UInt16]] {
    let Nb: Int = 4
    let Nk: Int = key.count / 4
    let Nr: Int = Nk + 6
    var w: [[UInt16]] = Array(repeating: Array(repeating: 0, count: 4), count: Nb * (Nr + 1))
    var temp: [UInt16] = Array(repeating: 0, count: 4)
    
    for i in 0..<Nk {
        let r: [UInt16] = [key[4 * i], key[4 * i + 1], key[4 * i + 2], key[4 * i + 3]]
        w[i] = r
    }

    
    for i in Nk..<(Nb * (Nr + 1)) {
        // w[i] = Array(repeating: 0, count: 4)
        for t in 0..<4 {
            temp[t] = w[i - 1][t]
        }
        
        if i % Nk == 0 {
            temp = SubWord(RotWord(temp))
            for t in 0..<4 {
                temp[t] ^= Rcon[i / Nk][t]
            }
        } else if Nk > 6 && i % Nk == 4 {
            temp = SubWord(temp)
        }
        
        for t in 0..<4 {
            w[i][t] = w[i - Nk][t] ^ temp[t]
        }
    }
    
    return w
}


func AddRoundKey(_ state: inout [[UInt16]], _ w: [[UInt16]], _ rnd: Int, _ Nb: Int) -> [[UInt16]] {
    for r in 0..<4 {
        for c in 0..<Nb {
            state[r][c] ^= w[rnd * 4 + c][r]
        }
    }
    return state
}

func subBytes(_ s: [[UInt16]], _ Nb: Int) -> [[UInt16]] {
    var newState = s
    for r in 0..<4 {
        for c in 0..<Nb {
            newState[r][c] = Sbox[Int(s[r][c])]
        }
    }
    return newState
}

func shiftRows(_ s: [[UInt16]], _ Nb: Int) -> [[UInt16]] {
    var newState = s
    for r in 1..<4 {
        var t = [UInt16](repeating: 0, count: 4)
        for c in 0..<4 {
            t[c] = s[r][(c + r) % Nb]
        }
        for c in 0..<4 {
            newState[r][c] = t[c]
        }
    }
    return newState
}

func mixColumns(_ ss: [[UInt16]], _ Nb: Int) -> [[UInt16]] {
    var s = ss
    for c in 0..<4 {
        var a = [UInt16](repeating: 0, count: 4)
        var b = [UInt16](repeating: 0, count: 4)
        
        for i in 0..<4 {
            a[i] = s[i][c]
            b[i] = s[i][c] & 0x80 != 0 ? s[i][c] << 1 ^ 0x011b : s[i][c] << 1
        }
        
        s[0][c] = b[0] ^ a[1] ^ b[1] ^ a[2] ^ a[3]
        s[1][c] = a[0] ^ b[1] ^ a[2] ^ b[2] ^ a[3]
        s[2][c] = a[0] ^ a[1] ^ b[2] ^ a[3] ^ b[3]
        s[3][c] = a[0] ^ b[0] ^ a[1] ^ a[2] ^ b[3]
    }
    
    return s
}

func addRoundKey(_ ss:  [[UInt16]], _ w: [[UInt16]], _ rnd: Int, _ Nb: Int) -> [[UInt16]] {
    var state = ss
    for r in 0..<4 {
        for c in 0..<Nb {
            state[r][c] ^= w[rnd * 4 + c][r]
        }
    }
    return state
}


func cipher(_ input: [UInt16], _ w: [[UInt16]]) -> [UInt16] {
    let Nb = 4 // block size (in words): no of columns in state (fixed at 4 for AES)
    let Nr = w.count / Nb - 1 // no of rounds: 10/12/14 for 128/192/256-bit keys
    var state: [[UInt16]] = [[], [], [], []] // initialise 4xNb byte-array 'state' with input [§3.4]
    for i in 0..<4 * Nb {
        state[i % 4].append(input[i])
    }
    
    state = addRoundKey(state, w, 0, Nb)
    
    for round in 1..<Nr {
        state = subBytes(state, Nb)
        state = shiftRows(state, Nb)
        state = mixColumns(state, Nb)
        state = addRoundKey(state, w, round, Nb)
    }
    
    state = subBytes(state, Nb)
    state = shiftRows(state, Nb)
    state = addRoundKey(state, w, Nr, Nb)
    
    var output = [UInt16](repeating: 0, count: 4 * Nb) // convert state to 1-d array before returning [§3.4]
    for i in 0..<4 * Nb {
        output[i] = state[i % 4][i / 4]
    }
    return output
}


func escCtrlChars(_ str: String) -> String {
    var result = ""
    for c in str {
        switch c {
        case "\0", "\t", "\n", "\u{000B}", "\u{000C}", "\r", "\u{00A0}", "'", "\"", "!", "-":
            result += "!" + String(Int(c.unicodeScalars.first!.value)) + "!"
        default:
            result += String(c)
        }
    }
    return result
}

func AESEncryptCtr(_ plaintext: String, _ password: String, _ nBits: Int) -> String {
    if !(nBits == 128 || nBits == 192 || nBits == 256) {
        return ""
    }
    
    let nBytes: Int = nBits / 8
    var pwBytes = [UInt16](repeating: 0, count: nBytes)
    
    for i in 0..<nBytes {
        if i<password.count{
            let char = password[password.index(password.startIndex, offsetBy: i)]
            pwBytes[i] = UInt16(char.asciiValue! & 0xff)
        }else{
            pwBytes[i] = 0
        }

    }
   
    var key = cipher(pwBytes, keyExpansion(pwBytes))
    

    key += Array(key[0..<(nBytes - 16)])
    
    let blockSize: Int = 16
    var counterBlock = [UInt16](repeating: 0, count: blockSize)
    let nonce: Int = Int(Date().timeIntervalSince1970)
    
    for i in 0..<4 {
        counterBlock[i] = UInt16((nonce >> (i * 8)) & 0xff)
    }
    for i in 0..<4 {
        counterBlock[i + 4] = UInt16((((nonce / 0x100000000) >> i) * 8) & 0xff)
    }

    let keySchedule = keyExpansion(key)


    let blockCount: Int = Int(ceil(Double(plaintext.count) / Double(blockSize)))
    var ciphertext: [String] = [String](repeating: "", count: blockCount)
    for b in 0..<blockCount {
        for c in 0..<4 {
            counterBlock[15 - c] = UInt16((b >> (c * 8)) & 0xff)
        }
        for c in 0..<4 {
            counterBlock[15 - c - 4] = UInt16((b / 0x100000000 >> c) * 8) & 0xff
        }
        
        
        let cipherCntr = cipher(counterBlock, keySchedule)
        let blockLength: Int = (b < blockCount - 1) ? blockSize : (plaintext.count - 1) % blockSize + 1
        var ct: String = ""

        for i in 0..<blockLength {
            let plaintextByte = UInt16(plaintext.utf16[plaintext.utf16.index(plaintext.utf16.startIndex, offsetBy: b * blockSize + i)])
            let cipherByte = plaintextByte ^ cipherCntr[i]
            ct += String(Character(UnicodeScalar(cipherByte)!))
        }
        ciphertext[b] = escCtrlChars(ct)
    }
    var ctrTxt = ""
    for i in 0..<8 {
        ctrTxt += String(Character(UnicodeScalar(counterBlock[i])!))
    }
    ctrTxt = escCtrlChars(ctrTxt)
    return ctrTxt + "-" + ciphertext.joined(separator: "-")
}


func unescCtrlChars(_ str: String) -> String {
    var result = str
    let pattern = "!\\d\\d?\\d?!"
    let regex = try! NSRegularExpression(pattern: pattern, options: [])
    
    while let match = regex.firstMatch(in: result, options: [], range: NSRange(location: 0, length: result.utf16.count)) {
        let matchStr = (result as NSString).substring(with: match.range)
        let charCode = Int(String(matchStr.dropFirst().dropLast()))!
        let replacement = String(Character(UnicodeScalar(charCode)!))
        result = regex.stringByReplacingMatches(in: result, options: [], range: match.range, withTemplate: replacement)
    }
    
    return result
}

func AESDecryptCtr(_ ciphertexta: String, _ password: String, _ nBits: Int) -> String {
    if !(nBits == 128 || nBits == 192 || nBits == 256) {
        return ""
    }
    let nBytes = nBits / 8 // no bytes in key
    var pwBytes: [UInt16] = []
    for i in 0..<nBytes {
        if i < password.count{
            pwBytes.append(UInt16(password.utf8CString[i]) & 0xff)
        }else{
            pwBytes.append(0)
        }
        
    }

    let pwKeySchedule = keyExpansion(pwBytes)


    var key = cipher(pwBytes, pwKeySchedule)
    key += key[0..<(nBytes - 16)]
    let keySchedule = keyExpansion(key)
    

    var ciphertext = ciphertexta.split(separator: "-").map { String($0) }
    let blockSize = 16
    var counterBlock: [UInt16] = Array(repeating: 0, count: blockSize)

    let ctrTxt = unescCtrlChars(ciphertext[0])

    ctrTxt.utf16.enumerated().prefix(8).forEach { index, value in
        counterBlock[index] = UInt16(value)
    }
    
    var plaintext: [String] = Array(repeating: "", count: ciphertext.count - 1)
    for b in 1..<ciphertext.count {
        for c in 0..<4 {
            counterBlock[15 - c] = UInt16((b - 1) >> (c * 8)) & 0xff
        }

        for c in 0..<4 {
            counterBlock[15 - c - 4] = ((UInt16(b / 0x100000000) >> c) * 8) & 0xff        
        }

        let cipherCntr = cipher(counterBlock, keySchedule)
        ciphertext[b] = unescCtrlChars(ciphertext[b])
        var pt = ""
        for i in 0..<ciphertext[b].count {
            let ciphertextByte = UInt16((ciphertext[b] as NSString).character(at: i))
            let plaintextByte = ciphertextByte ^ cipherCntr[i]
            pt += String(Character(UnicodeScalar(plaintextByte)!))
        }
        plaintext[b - 1] = pt
    }
    return plaintext.joined()
}



func AESRun() throws {
    let plainText = "ROMEO: But, soft! what light through yonder window breaks?\nIt is the east, and Juliet is the sun.\nArise, fair sun, and kill the envious moon,\nWho is already sick and pale with grief,\nThat thou her maid art far more fair than she:\nBe not her maid, since she is envious;\nHer vestal livery is but sick and green\nAnd none but fools do wear it; cast it off.\nIt is my lady, O, it is my love!\nO, that she knew she were!\nShe speaks yet she says nothing: what of that?\nHer eye discourses; I will answer it.\nI am too bold, 'tis not to me she speaks:\nTwo of the fairest stars in all the heaven,\nHaving some business, do entreat her eyes\nTo twinkle in their spheres till they return.\nWhat if her eyes were there, they in her head?\nThe brightness of her cheek would shame those stars,\nAs daylight doth a lamp; her eyes in heaven\nWould through the airy region stream so bright\nThat birds would sing and think it were not night.\nSee, how she leans her cheek upon her hand!\nO, that I were a glove upon that hand,\nThat I might touch that cheek!\nJULIET: Ay me!\nROMEO: She speaks:\nO, speak again, bright angel! for thou art\nAs glorious to this night, being o'er my head\nAs is a winged messenger of heaven\nUnto the white-upturned wondering eyes\nOf mortals that fall back to gaze on him\nWhen he bestrides the lazy-pacing clouds\nAnd sails upon the bosom of the air.";
  
    let password = "O Romeo, Romeo! wherefore art thou Romeo?"
    let cipherText = AESEncryptCtr(plainText, password, 256)
    let decryptedText = AESDecryptCtr(cipherText, password, 256)
    if decryptedText != plainText {
        throw BenchmarkError.WrongResult("ERROR: bad result: expected \(plainText) but got \(decryptedText)")
    }
}

/**************************configure and run benchmark********************************/
let benchmarkRun = BenchmarkRun(name: "crypto-aes", doWarmup: true, doDeterministic: true, run: AESRun,minIterations: 8)
benchmarkRun.run()

