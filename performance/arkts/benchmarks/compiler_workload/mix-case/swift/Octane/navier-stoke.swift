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

class FluidField {
    var iterations: Int = 10
    var visc: Double = 0.5
    var dt: Double = 0.1
    var dens: [Double] = []
    var dens_prev: [Double] = []
    var u: [Double] = []
    var u_prev: [Double] = []
    var v: [Double] = []
    var v_prev: [Double] = []
    var width: Int = 0
    var height: Int = 0
    var rowSize: Int = 0
    var size: Int = 0
    
    init() {
        _ = setResolution(hRes: 64, wRes: 64)
    }
    
    func addFields(x: inout [Double], s: [Double], dt: Double) {
        for i in 0..<size {
            x[i] += dt * s[i]
        }
    }

    func set_bnd(b: Int, x: inout [Double]) {
        if b == 1 {
            for i in 1...self.width {
                x[i] = x[i + self.rowSize]
                x[i + (self.height + 1) * self.rowSize] = x[i + self.height * self.rowSize]
            }
            for j in 1...self.height {
                x[j * self.rowSize] = -x[1 + j * self.rowSize]
                x[(self.width + 1) + j * self.rowSize] = -x[self.width + j * self.rowSize]
            }
        }
        else if b == 2 {
            for i in 1...self.width {
                x[i] = -x[i + self.rowSize]
                x[i + (self.height + 1) * self.rowSize] = -x[i + self.height * self.rowSize]
            }
            for j in 1...self.height {
                x[j * self.rowSize] = x[1 + j * self.rowSize]
                x[(self.width + 1) + j * self.rowSize] = x[self.width + j * self.rowSize]
            }
        }
        else {
            for i in 1...self.width {
                x[i] = x[i + self.rowSize]
                x[i + (self.height + 1) * self.rowSize] = x[i + self.height * self.rowSize]
            }
            for j in 1...self.height {
                x[j * self.rowSize] = x[1 + j * self.rowSize]
                x[(self.width + 1) + j * self.rowSize] = x[self.width + j * self.rowSize]
            }
        }
        
        let maxEdge = (self.height + 1) * self.rowSize
        x[0] = 0.5 * (x[1] + x[self.rowSize])
        x[maxEdge] = 0.5 * (x[1 + maxEdge] + x[self.height * self.rowSize])
        x[(self.width + 1)] = 0.5 * (x[self.width] + x[(self.width + 1) + self.rowSize])
        x[(self.width + 1) + maxEdge] = 0.5 * (x[self.width + maxEdge] + x[(self.width + 1) + self.height * self.rowSize])
    }

    func lin_solve(b: Int, x: inout [Double], x0: [Double], a: Int, c: Int) {
        if a == 0 && c == 1 {
            for j in 1...height {
                var currentRow = j * rowSize
                currentRow += 1
                for _ in 1...width {
                    x[currentRow] = x0[currentRow]
                    currentRow += 1
                }
            }
            set_bnd(b: b, x: &x)
        } else {
            let invC = 1 / Double(c)
            for _ in 0..<iterations {
                for j in 1...self.height {
                    var lastRow = (j - 1) * self.rowSize
                    var currentRow = j * self.rowSize
                    var nextRow = (j + 1) * self.rowSize
                    var lastX = x[currentRow]
                    currentRow += 1
                    for _ in 1...self.width {
                        x[currentRow] = (x0[currentRow] + Double(a) * (lastX + x[currentRow + 1] + x[lastRow + 1] + x[nextRow + 1])) * invC
                        lastX = x[currentRow]
                        currentRow += 1
                        lastRow += 1
                        nextRow += 1
                    }
                }
                set_bnd(b: b, x: &x)
            }
        }
    }
    
    func diffuse(b: Int, x: inout [Double], x0: [Double], dt: Double) {
        let a = 0
        lin_solve(b: b, x: &x, x0: x0, a: a, c: 1 + 4 * a)
    }
    
    func lin_solve2(x: inout [Double], x0: [Double], y: inout [Double], y0: [Double], a: Int, c: Int) {
        if a == 0 && c == 1 {
            for j in 1...height {
                var currentRow = j * rowSize
                currentRow += 1
                for _ in 1...width {
                    x[currentRow] = x0[currentRow]
                    y[currentRow] = y0[currentRow]
                    currentRow += 1
                }
            }
            set_bnd(b: 1, x: &x)
            set_bnd(b: 2, x: &y)
        } else {
            let invC = 1 / Double(c)
            for _ in 0..<iterations {
                for j in 1...self.height {
                    var lastRow = (j - 1) * self.rowSize
                    var currentRow = j * self.rowSize
                    var nextRow = (j + 1) * self.rowSize
                    var lastX = x[currentRow]
                    var lastY = y[currentRow]
                    currentRow += 1
                    for _ in 1...self.width {
                        x[currentRow] = (x0[currentRow] + Double(a) * (lastX + x[currentRow] + x[lastRow] + x[nextRow])) * invC
                        lastX = x[currentRow]
                        y[currentRow] = (y0[currentRow] + Double(a) * (lastY + y[currentRow + 1] + y[lastRow + 1] + y[nextRow + 1])) * invC
                        lastY = y[currentRow]
                        currentRow += 1
                        lastRow += 1
                        nextRow += 1
                    }
                }
                set_bnd(b: 1, x: &x)
                set_bnd(b: 2, x: &y)
            }
        }
    }
    
    func diffuse2(x: inout [Double], x0: [Double], y: inout [Double], y0: [Double], dt: Double) {
        let a = 0
        lin_solve2(x: &x, x0: x0, y: &y, y0: y0, a: a, c: 1 + 4 * a)
    }

    func advect( b: Int,  d: inout [Double], d0: [Double],  u: [Double],  v: [Double],  dt: Double) {

        let Wdt0 = dt * Double(self.width)
        let Hdt0 = dt * Double(self.height)
        let Wp5 = Double(self.width) + 0.5
        let Hp5 = Double(self.height) + 0.5
        
        for j in 1...self.height {
            var pos = j * self.rowSize
            for i in 1...self.width {
                pos += 1
                var x = Double(i) - Wdt0 * u[pos]
                var y = Double(j) - Hdt0 * v[pos]
                
                if x < 0.5 {
                    x = 0.5
                } else if x > Wp5 {
                    x = Wp5
                }
                
                let i0 = Int(x)
                let i1 = i0 + 1
                
                if y < 0.5 {
                    y = 0.5
                } else if y > Hp5 {
                    y = Hp5
                }
                
                let j0 = Int(y)
                let j1 = j0 + 1
                
                let s1 = x - Double(i0)
                let s0 = 1 - s1
                let t1 = y - Double(j0)
                let t0 = 1 - t1
                
                let row1 = j0 * self.rowSize
                let row2 = j1 * self.rowSize
                
                d[pos] = s0 * (t0 * d0[i0 + row1] + t1 * d0[i0 + row2]) + s1 * (t0 * d0[i1 + row1] + t1 * d0[i1 + row2])
                
            }
        }
        self.set_bnd(b:b, x:&d)
    }
    
    func project(u: inout [Double], v: inout [Double], p: inout [Double], div: inout [Double]) {
        let h = -0.5 / sqrt(Double(width) * Double(height))
        for j in 1...height {
            let row = j * rowSize
            var previousRow = (j - 1) * rowSize
            var prevValue = row - 1
            var currentRow = row
            var nextValue = row + 1
            var nextRow = (j + 1) * rowSize
            for _ in 1...width {
                currentRow += 1
                nextValue += 1
                prevValue += 1
                nextRow += 1
                previousRow += 1
                div[currentRow] = Double(h) * (u[nextValue] - u[prevValue] + v[nextRow] - v[previousRow])
                p[currentRow] = 0.0
            }
        }
        
        set_bnd(b: 0, x: &div)
        set_bnd(b: 0, x: &p)
        lin_solve(b: 0, x: &p, x0: div, a: 1, c: 4)

        let wScale = 0.5 * Double(width)
        let hScale = 0.5 * Double(height)
        for j in 1...height {
            var prevPos = j * rowSize - 1
            var currentPos = j * rowSize
            var nextPos = j * rowSize + 1
            var prevRow = (j - 1) * rowSize
            var nextRow = (j + 1) * rowSize
            for _ in 1...width {
                currentPos+=1
                nextPos+=1;
                prevPos+=1
                u[currentPos] -= wScale * (p[nextPos] - p[prevPos])
  
                nextRow+=1
                prevRow+=1
                v[currentPos] -= hScale * (p[nextRow] - p[prevRow])
            }
        }

        set_bnd(b: 1, x: &u)

        set_bnd(b: 2, x: &v)
    }
    
    func dens_step(x: inout [Double], x0: inout [Double], u: [Double], v: [Double], dt: Double) {
        addFields(x: &x, s: x0, dt: dt)

        diffuse(b: 0, x: &x0, x0: x, dt: dt)

        advect(b: 0, d: &x, d0: x0, u: u, v: v, dt: dt)
    }
    
    func vel_step(u: inout [Double], v: inout [Double], u0: inout [Double], v0: inout [Double], dt: Double) {
        addFields(x: &u, s: u0, dt: dt)
        addFields(x: &v, s: v0, dt: dt)
        (u, u0) = (u0, u)
        (v, v0) = (v0, v)
        diffuse2(x: &u, x0: u0, y: &v, y0: v0, dt: dt)
        project(u: &u, v: &v, p: &u0, div: &v0)

        (u, u0) = (u0, u)
        (v, v0) = (v0, v)



        advect(b: 1, d: &u, d0: u0, u: u0, v: v0, dt: dt)
        advect(b: 2, d: &v, d0: v0, u: u0, v: v0, dt: dt)
        project(u: &u, v: &v, p: &u0, div: &v0)
    }
    
    func queryUI(d: inout [Double], u: inout [Double], v: inout [Double]) {
        for i in 0..<size {
            u[i] = 0.0
            v[i] = 0.0
            d[i] = 0.0
        }
        prepareFrame(fdens: &d, fu: &u, fv: &v)
    }


    func setDensity(fdens:inout[Double],x: Int, y: Int, d: Double) {
        fdens[(x + 1) + (y + 1) * rowSize] = d
    }
    
    
    func setVelocity(fu:inout [Double],fv:inout [Double],x: Int, y: Int, xv: Double, yv: Double) {
        fu[(x + 1) + (y + 1) * rowSize] = xv
        fv[(x + 1) + (y + 1) * rowSize] = yv
    }

    func prepareFrame(fdens:inout[Double],fu:inout [Double], fv:inout [Double]){
        if framesTillAddingPoints == 0 {
            let n = 64
            for i in 1...n {
                setVelocity(fu:&fu,fv:&fv,x: i, y: i, xv: Double(n), yv: Double(n))
                setDensity(fdens:&fdens,x: i, y: i, d: 5)
                setVelocity(fu:&fu,fv:&fv,x: i, y: n - i, xv: Double(-n), yv: Double(-n))
                setDensity(fdens:&fdens,x: i, y: n - i, d: 20)
                setVelocity(fu:&fu,fv:&fv,x: 128 - i, y: n + i, xv: Double(-n), yv: Double(-n))
                setDensity(fdens:&fdens,x: 128 - i, y: n + i, d: 30)
            }
            framesTillAddingPoints = framesBetweenAddingPoints
            framesBetweenAddingPoints += 1
        } else {
            framesTillAddingPoints -= 1
        }
    }
    
    func update() {
        queryUI(d: &dens_prev, u: &u_prev, v: &v_prev)
        vel_step(u: &u, v: &v, u0: &u_prev, v0: &v_prev, dt: dt)
        dens_step(x: &dens, x0: &dens_prev, u: u, v: v, dt: dt)
    }
    func setIterations(iters: Int) {
        if iters > 0 && iters <= 100 {
            iterations = iters
        }
    }
     
    func reset() {
        rowSize = width + 2
        size = rowSize * (height + 2)
        dens = Array(repeating: 0, count: size)
        dens_prev = Array(repeating: 0, count: size)
        u = Array(repeating: 0, count: size)
        u_prev = Array(repeating: 0, count: size)
        v = Array(repeating: 0, count: size)
        v_prev = Array(repeating: 0, count: size)
    }
    
    func getDens() -> [Double] {
        return dens
    }
    
    func setResolution(hRes: Int, wRes: Int) -> Bool {
        let res = wRes * hRes
        if res > 0 && res < 1000000 && (wRes != width || hRes != height) {
            width = wRes
            height = hRes
            reset()
            return true
        } else {
            return false
        }
    }
}

var framesTillAddingPoints = 0
var framesBetweenAddingPoints = 5

let solver = FluidField()
var nsFrameCounter = 0
var count33 = 0

func navierStokesSetup() {
    _ = solver.setResolution(hRes: 128, wRes: 128)
    solver.setIterations(iters: 20)
    solver.reset()
}

func navierStokesRun() throws {
    solver.update()
    nsFrameCounter += 1
    if nsFrameCounter == 15 {
        try checkResult(dens: solver.getDens())
    }
}

func checkResult(dens: [Double]) throws {
    var result = 0
    for i in 7000..<7100 {
        result+=Int(dens[i]*10)
    }
    if result != 77 {
        throw BenchmarkError.WrongResult("checksum failed")
    }
}

/**************************configure and run benchmark********************************/
let benchmarkRun = BenchmarkRun(name: "navier-stokes", doWarmup: true, doDeterministic: true, run: navierStokesRun,setup: navierStokesSetup,minIterations: 180)
benchmarkRun.run()

