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

let hexcase = false
let chrsz = 8

func safe_add(_ x: UInt32, _ y: UInt32) -> UInt32 {
    let lsw = (x & 0xFFFF) &+ (y & 0xFFFF)
    let msw = (x >> 16) &+ (y >> 16) &+ (lsw >> 16)
    return (msw << 16) | (lsw & 0xFFFF)
}

func bit_rol(_ num: UInt32, _ cnt: UInt32) -> UInt32 {
    return (num << cnt) | (num >> (32 - cnt))
}

func md5_cmn(_ q: UInt32, _ a: UInt32, _ b: UInt32, _ x: UInt32, _ s: UInt32, _ t: UInt32) -> UInt32 {
    return safe_add(bit_rol(safe_add(safe_add(a, q), safe_add(x, t)), s), b)
}

func md5_ff(_ a: UInt32, _ b: UInt32, _ c: UInt32, _ d: UInt32, _ x: UInt32, _ s: UInt32, _ t: UInt32) -> UInt32 {
    return md5_cmn((b & c) | ((~b) & d), a, b, x, s, t)
}

func md5_gg(_ a: UInt32, _ b: UInt32, _ c: UInt32, _ d: UInt32, _ x: UInt32, _ s: UInt32, _ t: UInt32) -> UInt32 {
    return md5_cmn((b & d) | (c & (~d)), a, b, x, s, t)
}

func md5_hh(_ a: UInt32, _ b: UInt32, _ c: UInt32, _ d: UInt32, _ x: UInt32, _ s: UInt32, _ t: UInt32) -> UInt32 {
    return md5_cmn(b ^ c ^ d, a, b, x, s, t)
}

func md5_ii(_ a: UInt32, _ b: UInt32, _ c: UInt32, _ d: UInt32, _ x: UInt32, _ s: UInt32, _ t: UInt32) -> UInt32 {
    return md5_cmn(c ^ (b | (~d)), a, b, x, s, t)
}



func str2binl(_ str: String) -> [UInt32] {
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

        bin[eIndex] |= (charCode & mask) << (UInt32(i) % 32)
    }
    return bin
}

func core_md5(_ xx:[UInt32], _ len:Int)->[UInt32]{
    var x = xx
    
    let eIndex1 = len>>5
    let eIndex2 = (((len + 64) >> 9) << 4) + 14

    let maxIndex = (eIndex1 > eIndex2) ? eIndex1 : eIndex2
    if maxIndex+1 > x.count{
        for _ in 0..<maxIndex+1-x.count{
            x.append(0)
        }
    }

    x[eIndex1] |= 0x80 << ((len) % 32);
    x[eIndex2] = UInt32(len)

    var a: UInt32 = 0x67452301
    var b: UInt32 = 0xEFCDAB89
    var c: UInt32 = 0x98BADCFE
    var d: UInt32 = 0x10325476
    
    for _ in 0..<(16 - (x.count%16)){
        x.append(0)
    }


    for i in stride(from: 0, to: x.count, by: 16) {
        let olda = a;
        let oldb = b;
        let oldc = c;
        let oldd = d;
        a = md5_ff(a, b, c, d, x[i + 0], 7, 0xd76aa478);
        d = md5_ff(d, a, b, c, x[i + 1], 12, 0xe8c7b756);
        c = md5_ff(c, d, a, b, x[i + 2], 17, 0x242070db);
        b = md5_ff(b, c, d, a, x[i + 3], 22, 0xc1bdceee);
        a = md5_ff(a, b, c, d, x[i + 4], 7, 0xf57c0faf);
        d = md5_ff(d, a, b, c, x[i + 5], 12, 0x4787c62a);
        c = md5_ff(c, d, a, b, x[i + 6], 17, 0xa8304613);
        b = md5_ff(b, c, d, a, x[i + 7], 22, 0xfd469501);

        a = md5_ff(a, b, c, d, x[i + 8], 7, 0x698098d8);
        d = md5_ff(d, a, b, c, x[i + 9], 12, 0x8b44f7af);
        c = md5_ff(c, d, a, b, x[i + 10], 17, 0xffff5bb1);
        b = md5_ff(b, c, d, a, x[i + 11], 22, 0x895cd7be);
        a = md5_ff(a, b, c, d, x[i + 12], 7, 0x6b901122);
        d = md5_ff(d, a, b, c, x[i + 13], 12, 0xfd987193);
        c = md5_ff(c, d, a, b, x[i + 14], 17, 0xa679438e);
        b = md5_ff(b, c, d, a, x[i + 15], 22, 0x49b40821);

        a = md5_gg(a, b, c, d, x[i + 1], 5, 0xf61e2562);
        d = md5_gg(d, a, b, c, x[i + 6], 9, 0xc040b340);
        c = md5_gg(c, d, a, b, x[i + 11], 14, 0x265e5a51);
        b = md5_gg(b, c, d, a, x[i + 0], 20, 0xe9b6c7aa);
        a = md5_gg(a, b, c, d, x[i + 5], 5, 0xd62f105d);
        d = md5_gg(d, a, b, c, x[i + 10], 9, 0x02441453);
        c = md5_gg(c, d, a, b, x[i + 15], 14, 0xd8a1e681);
        b = md5_gg(b, c, d, a, x[i + 4], 20, 0xe7d3fbc8);

        a = md5_gg(a, b, c, d, x[i + 9], 5, 0x21e1cde6);
        d = md5_gg(d, a, b, c, x[i + 14], 9, 0xc33707d6);
        c = md5_gg(c, d, a, b, x[i + 3], 14, 0xf4d50d87);
        b = md5_gg(b, c, d, a, x[i + 8], 20, 0x455a14ed);
        a = md5_gg(a, b, c, d, x[i + 13], 5, 0xa9e3e905);
        d = md5_gg(d, a, b, c, x[i + 2], 9, 0xfcefa3f8);
        c = md5_gg(c, d, a, b, x[i + 7], 14, 0x676f02d9);
        b = md5_gg(b, c, d, a, x[i + 12], 20, 0x8d2a4c8a);


        a = md5_hh(a, b, c, d, x[i + 5], 4, 0xfffa3942);
        d = md5_hh(d, a, b, c, x[i + 8], 11, 0x8771f681);
        c = md5_hh(c, d, a, b, x[i + 11], 16, 0x6d9d6122);
        b = md5_hh(b, c, d, a, x[i + 14], 23, 0xfde5380c);

        a = md5_hh(a, b, c, d, x[i + 1], 4, 0xa4beea44);
        d = md5_hh(d, a, b, c, x[i + 4], 11, 0x4bdecfa9);
        c = md5_hh(c, d, a, b, x[i + 7], 16, 0xf6bb4b60);
        b = md5_hh(b, c, d, a, x[i + 10], 23, 0xbebfbc70);

        a = md5_hh(a, b, c, d, x[i + 13], 4, 0x289b7ec6);
        d = md5_hh(d, a, b, c, x[i + 0], 11, 0xeaa127fa);
        c = md5_hh(c, d, a, b, x[i + 3], 16, 0xd4ef3085);
        b = md5_hh(b, c, d, a, x[i + 6], 23, 0x04881d05);

        a = md5_hh(a, b, c, d, x[i + 9], 4, 0xd9d4d039);
        d = md5_hh(d, a, b, c, x[i + 12], 11, 0xe6db99e5);
        c = md5_hh(c, d, a, b, x[i + 15], 16, 0x1fa27cf8);
        b = md5_hh(b, c, d, a, x[i + 2], 23, 0xc4ac5665);


        a = md5_ii(a, b, c, d, x[i + 0], 6, 0xf4292244);
        d = md5_ii(d, a, b, c, x[i + 7], 10, 0x432aff97);
        c = md5_ii(c, d, a, b, x[i + 14], 15, 0xab9423a7);
        b = md5_ii(b, c, d, a, x[i + 5], 21, 0xfc93a039);

        a = md5_ii(a, b, c, d, x[i + 12], 6, 0x655b59c3);
        d = md5_ii(d, a, b, c, x[i + 3], 10, 0x8f0ccc92);
        c = md5_ii(c, d, a, b, x[i + 10], 15, 0xffeff47d);
        b = md5_ii(b, c, d, a, x[i + 1], 21, 0x85845dd1);

        a = md5_ii(a, b, c, d, x[i + 8], 6, 0x6fa87e4f);
        d = md5_ii(d, a, b, c, x[i + 15], 10, 0xfe2ce6e0);
        c = md5_ii(c, d, a, b, x[i + 6], 15, 0xa3014314);
        b = md5_ii(b, c, d, a, x[i + 13], 21, 0x4e0811a1);

        a = md5_ii(a, b, c, d, x[i + 4], 6, 0xf7537e82);
        d = md5_ii(d, a, b, c, x[i + 11], 10, 0xbd3af235);
        c = md5_ii(c, d, a, b, x[i + 2], 15, 0x2ad7d2bb);
        b = md5_ii(b, c, d, a, x[i + 9], 21, 0xeb86d391);
        a = safe_add(a, olda);
        b = safe_add(b, oldb);
        c = safe_add(c, oldc);
        d = safe_add(d, oldd);
    }
    return [a, b, c, d];
}


func binl2hex(_ binarray: [UInt32]) -> String {
    let hex_tab: String = hexcase ? "0123456789ABCDEF" : "0123456789abcdef"
    var str: String = ""
    for i in 0..<(binarray.count * 4) {
        let index = i >> 2
        let shift = (i % 4) * 8
        let hexChar1 = hex_tab[hex_tab.index(hex_tab.startIndex, offsetBy: Int((binarray[index] >> (shift + 4)) & 0xF))]
        let hexChar2 = hex_tab[hex_tab.index(hex_tab.startIndex, offsetBy: Int((binarray[index] >> shift) & 0xF))]
        str += String(hexChar1) + String(hexChar2)
    }
    return str
}

func hex_md5(_ s:String)->String{
    return binl2hex(core_md5(str2binl(s), s.length * chrsz)); 
}


func Md5Run() throws {

    var plainText = "Rebellious subjects, enemies to peace,\nProfaners of this neighbour-stained steel,--\nWill they not hear? What, ho! you men, you beasts,\nThat quench the fire of your pernicious rage\nWith purple fountains issuing from your veins,\nOn pain of torture, from those bloody hands\nThrow your mistemper'd weapons to the ground,\nAnd hear the sentence of your moved prince.\nThree civil brawls, bred of an airy word,\nBy thee, old Capulet, and Montague,\nHave thrice disturb'd the quiet of our streets,\nAnd made Verona's ancient citizens\nCast by their grave beseeming ornaments,\nTo wield old partisans, in hands as old,\nCanker'd with peace, to part your canker'd hate:\nIf ever you disturb our streets again,\nYour lives shall pay the forfeit of the peace.\nFor this time, all the rest depart away:\nYou Capulet; shall go along with me:\nAnd, Montague, come you this afternoon,\nTo know our further pleasure in this case,\nTo old Free-town, our common judgment-place.\nOnce more, on pain of death, all men depart.";
    for _ in 0..<4 {
        plainText += plainText;
    }
    let md5Output = hex_md5(plainText);
    let expected = "a831e91e0f70eddcb70dc61c6f82f6cd";
    if (md5Output != expected) {
        throw BenchmarkError.WrongResult("ERROR: bad result: expected \(expected) but got \(md5Output)");
    }
}

/**************************configure and run benchmark********************************/
let benchmarkRun = BenchmarkRun(name: "crypto-md5", doWarmup: true, doDeterministic: true, run: Md5Run,minIterations: 22)
benchmarkRun.run()

