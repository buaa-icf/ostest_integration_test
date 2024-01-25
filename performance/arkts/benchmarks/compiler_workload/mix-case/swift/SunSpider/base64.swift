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

let toBase64Table: [Character] = Array("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/")
let base64Pad: Character = "="

let toBinaryTable:[Int] = [
    -1,-1,-1,-1, -1,-1,-1,-1, -1,-1,-1,-1, -1,-1,-1,-1,
    -1,-1,-1,-1, -1,-1,-1,-1, -1,-1,-1,-1, -1,-1,-1,-1,
    -1,-1,-1,-1, -1,-1,-1,-1, -1,-1,-1,62, -1,-1,-1,63,
    52,53,54,55, 56,57,58,59, 60,61,-1,-1, -1, 0,-1,-1,
    -1, 0, 1, 2,  3, 4, 5, 6,  7, 8, 9,10, 11,12,13,14,
    15,16,17,18, 19,20,21,22, 23,24,25,-1, -1,-1,-1,-1,
    -1,26,27,28, 29,30,31,32, 33,34,35,36, 37,38,39,40,
    41,42,43,44, 45,46,47,48, 49,50,51,-1, -1,-1,-1,-1
];

func toBase64(data: String) -> String {
    var result = ""
    let length = data.count
    var i = 0
    
    while i < (length - 2) {
        result.append(toBase64Table[Int(data[data.index(data.startIndex, offsetBy: i)].asciiValue!) >> 2])
        result.append(toBase64Table[((Int(data[data.index(data.startIndex, offsetBy: i)].asciiValue!) & 0x03) << 4) + (Int(data[data.index(data.startIndex, offsetBy: i + 1)].asciiValue!) >> 4)])
        result.append(toBase64Table[((Int(data[data.index(data.startIndex, offsetBy: i + 1)].asciiValue!) & 0x0f) << 2) + (Int(data[data.index(data.startIndex, offsetBy: i + 2)].asciiValue!) >> 6)])
        result.append(toBase64Table[Int(data[data.index(data.startIndex, offsetBy: i + 2)].asciiValue!) & 0x3f])
        i += 3
    }
    
    if length % 3 != 0 {
        i = length - (length % 3)
        result.append(toBase64Table[Int(data[data.index(data.startIndex, offsetBy: i)].asciiValue!) >> 2])
        
        if length % 3 == 2 {
            result.append(toBase64Table[((Int(data[data.index(data.startIndex, offsetBy: i)].asciiValue!) & 0x03) << 4) + (Int(data[data.index(data.startIndex, offsetBy: i + 1)].asciiValue!) >> 4)])
            result.append(toBase64Table[(Int(data[data.index(data.startIndex, offsetBy: i + 1)].asciiValue!) & 0x0f) << 2])
            result.append(base64Pad)
        } else {
            result.append(toBase64Table[(Int(data[data.index(data.startIndex, offsetBy: i)].asciiValue!) & 0x03) << 4])
            result.append(base64Pad)
            result.append(base64Pad)
        }
    }
    return result
}

func base64ToString(data: String) -> String {
    var result = ""
    var leftbits = 0
    var leftdata = 0

    for i in 0..<data.count {
        let charCode = data[data.index(data.startIndex, offsetBy: i)].unicodeScalars.first!.value
        let c = toBinaryTable[Int(charCode) & 0x7f]
        let padding = (charCode == base64Pad.unicodeScalars.first!.value)
        if c == -1 { continue }
        leftdata = (leftdata << 6) | c
        leftbits += 6
        if leftbits >= 8 {
            leftbits -= 8
            if !padding {
                result += String(UnicodeScalar((leftdata >> leftbits) & 0xff)!)
            }
            leftdata &= (1 << leftbits) - 1
        }
    }
    if leftbits != 0 {
        fatalError("Corrupted base64 string")
    }
    return result
}


func base64Run() throws {

    var str = ""
    for _ in 0..<8192 {
        let randomChar = Character(UnicodeScalar(Int(25 * BenchmarkRNG.nextDouble() + 97))!)
        str += String(randomChar)
    }
    
    for _ in stride(from: 8192, through: 16384, by: 8192) {
        let base64 = toBase64(data: str)
        let encoded = base64ToString(data:base64)
        if encoded != str {
            throw BenchmarkError.WrongResult("ERROR: bad result: expected \(str) but got \(encoded)")
        }
        str += str
    }
    
}

/**************************configure and run benchmark********************************/
let benchmarkRun = BenchmarkRun(name: "base64", doWarmup: true, doDeterministic: true, run: base64Run,minIterations: 8)
benchmarkRun.run()

