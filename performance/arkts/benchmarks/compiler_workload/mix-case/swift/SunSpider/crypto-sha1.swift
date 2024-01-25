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

let chrsz = 8
let hexcase = false

func rol(_ num: UInt32, _ cnt: UInt32) -> UInt32 {
    return (num << cnt) | (num >> (32 - cnt))
}

func safe_add(_ x: UInt32, _ y: UInt32) -> UInt32 {
    let lsw = (x & 0xFFFF) + (y & 0xFFFF)
    let msw = (x >> 16) + (y >> 16) + (lsw >> 16)
    return (msw << 16) | (lsw & 0xFFFF)
}

func binb2hex(_ binarray: [UInt32]) -> String {
    let hex_tab: String = hexcase ? "0123456789ABCDEF" : "0123456789abcdef"
    var str: String = ""
    for i in 0..<(binarray.count * 4) {
        str += String(hex_tab[hex_tab.index(hex_tab.startIndex, offsetBy: Int((binarray[i >> 2] >> ((3 - i % 4) * 8 + 4)) & 0xF))])
        str += String(hex_tab[hex_tab.index(hex_tab.startIndex, offsetBy: Int((binarray[i >> 2] >> ((3 - i % 4) * 8)) & 0xF))])
    }
    return str
}


func sha1_kt(_ t: Int)-> UInt32 {
  return (t < 20) ? 0x5A827999 : (t < 40) ? 0x6ED9EBA1 :
         (t < 60) ? 0x8F1BBCDC : 0xCA62C1D6;
}

func sha1_ft(_ t: Int, _ b: UInt32, _ c: UInt32, _ d: UInt32) -> UInt32 {
    if t < 20 {
        return (b & c) | ((~b) & d)
    } else if t < 40 {
        return b ^ c ^ d
    } else if t < 60 {
        return (b & c) | (b & d) | (c & d)
    } else {
        return b ^ c ^ d
    }
}

func str2binb(_ str:String)-> [UInt32]{
    var bin: [UInt32] = []
    let mask: UInt32 = (1 << chrsz) - 1
    for i in stride(from: 0, to: str.count * Int(chrsz), by: Int(chrsz)) {
        let index = i / Int(chrsz)
        let charIndex = str.index(str.startIndex, offsetBy: index)
        let char = str[charIndex]
        let charCode = UInt32(char.asciiValue ?? 0)
        
        let eIndex = i >> 5
        if eIndex+1 > bin.count{
            bin.append(0)
        }
        bin[eIndex] |= (charCode & mask) << (UInt32(32 - chrsz - i % 32))
    }
    return bin
}

func core_sha1(_ xx: [UInt32],_ len:Int) -> [UInt32] {
    var x = xx
    let eIndex1 = len>>5
    let eIndex2 = (((len + 64) >> 9) << 4) + 15
    let maxIndex = (eIndex1 > eIndex2) ? eIndex1 : eIndex2
    if maxIndex+1 > x.count{
        for _ in 0..<maxIndex+1-x.count{
            x.append(0)
        }
    }
    x[eIndex1] |= 0x80 << (24 - len % 32);
    x[eIndex2] = UInt32(len)

    var w = [UInt32](repeating: 0, count: 80)

    var a: UInt32 = 0x67452301
    var b: UInt32 = 0xEFCDAB89
    var c: UInt32 = 0x98BADCFE
    var d: UInt32 = 0x10325476
    var e: UInt32 = 0xC3D2E1F0

    for i in stride(from: 0, to: x.count, by: 16) {
        let olda = a
        let oldb = b
        let oldc = c
        let oldd = d
        let olde = e

        for j in 0..<80 {
            if j < 16{
                w[j] = x[i+j]
            }else{
                w[j] = rol(w[j-3] ^ w[j-8] ^ w[j-14] ^ w[j-16],1)
            }
            let t = safe_add(safe_add(rol(a, 5),sha1_ft(j,b,c,d)),safe_add(safe_add(e, w[j]),sha1_kt(j)))
            e = d
            d = c
            c = rol(b, 30)
            b = a
            a = t
        }

        a = safe_add(a, olda)
        b = safe_add(b, oldb)
        c = safe_add(c, oldc)
        d = safe_add(d, oldd)
        e = safe_add(e, olde)
    }
    return [a,b,c,d,e]    
}

func hex_sha1(_ s:String)->String{
    return binb2hex(core_sha1(str2binb(s),s.count * chrsz))
}

func sha1Run() throws {
    var plainText = "Two households, both alike in dignity,\nIn fair Verona, where we lay our scene,\nFrom ancient grudge break to new mutiny,\nWhere civil blood makes civil hands unclean.\nFrom forth the fatal loins of these two foes\nA pair of star-cross'd lovers take their life;\nWhole misadventured piteous overthrows\nDo with their death bury their parents' strife.\nThe fearful passage of their death-mark'd love,\nAnd the continuance of their parents' rage,\nWhich, but their children's end, nought could remove,\nIs now the two hours' traffic of our stage;\nThe which if you with patient ears attend,\nWhat here shall miss, our toil shall strive to mend."
    for _ in 0..<4 {
        plainText += plainText
    }

    let sha1Output = hex_sha1(plainText)
    let expected = "2524d264def74cce2498bf112bedf00e6c0b796d"

    if sha1Output != expected {
        throw BenchmarkError.WrongResult("ERROR: bad result: expected \(expected) but got \(sha1Output)")
    }
}

/**************************configure and run benchmark********************************/
let benchmarkRun = BenchmarkRun(name: "crypto-sha1", doWarmup: true, doDeterministic: true, run: sha1Run,minIterations: 25)
benchmarkRun.run()

