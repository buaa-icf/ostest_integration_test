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

enum Direction: Int {
    case NONE = 0
    case FORWARD = 1
    case BACKWARD = -1
}

class Strength {
    var strengthValue: Int
    var name: String
     static let REQUIRED = Strength(0, "required")
    static let STONG_PREFERRED = Strength(1, "strongPreferred")
    static let PREFERRED = Strength(2, "preferred")
    static let STRONG_DEFAULT = Strength(3, "strongDefault")
    static let NORMAL = Strength(4, "normal")
    static let WEAK_DEFAULT = Strength(5, "weakDefault")
    static let WEAKEST = Strength(6, "weakest")
     init(_ strengthValue: Int, _ name: String) {
        self.strengthValue = strengthValue
        self.name = name
    }
    
    static func stronger(_ s1: Strength, _ s2: Strength) -> Bool {
        return s1.strengthValue < s2.strengthValue
    }
    static func weaker(_ s1: Strength, _ s2: Strength) -> Bool {
        return s1.strengthValue > s2.strengthValue
    }
    
    static func weakestOf(_ s1: Strength, _ s2: Strength) -> Strength {
        return weaker(s1, s2) ? s1 : s2
    }
     static func strongest(_ s1: Strength, _ s2: Strength) -> Strength {
        return stronger(s1, s2) ? s1 : s2
    }
    
    func nextWeaker() -> Strength {
        switch self.strengthValue {
        case 0: return Strength.WEAKEST
        case 1: return Strength.WEAK_DEFAULT
        case 2: return Strength.NORMAL
        case 3: return Strength.STRONG_DEFAULT
        case 4: return Strength.PREFERRED
        case 5: return Strength.REQUIRED
        default: return Strength(0, "")
        }
    }
}

class Constraint:Equatable{
    var strength: Strength
    
    func addToGraph() {
        fatalError("Subclasses must override the addToGraph method.")
    }
     func chooseMethod(mark: Int) {
        fatalError("Subclasses must override the chooseMethod method.")
    }
     func isSatisfied() -> Bool {
        fatalError("Subclasses must override the isSatisfied method.")
    }
     func markInputs(mark: Int) {
        fatalError("Subclasses must override the markInputs method.")
    }
     func output() -> Variable {
        fatalError("Subclasses must override the output method.")
    }
     func removeFromGraph() {
        fatalError("Subclasses must override the removeFromGraph method.")
    }
     func markUnsatisfied() {
        fatalError("Subclasses must override the markUnsatisfied method.")
    }
     func execute() {
        fatalError("Subclasses must override the execute method.")
    }
     func inputsKnown(mark: Int) -> Bool {
        fatalError("Subclasses must override the inputsKnown method.")
    }
     func recalculate() {
        fatalError("Subclasses must override the recalculate method.")
    }
     init(strength: Strength) {
        self.strength = strength
    }
     func addConstraint() {
        self.addToGraph()
        planner.incrementalAdd(c:self)
    }
    func satisfy(mark: Int) -> Constraint? {
        self.chooseMethod(mark:mark)
        if !self.isSatisfied() {
            if self.strength === Strength.REQUIRED {
                print("Could not satisfy a required constraint!")
            }
            return nil
        }
        self.markInputs(mark:mark)
        let out: Variable = self.output()
        let overridden: Constraint? = out.determinedBy
        if overridden != nil {
            overridden!.markUnsatisfied()
        }
        out.determinedBy = self
        if !planner.addPropagate(c:self, mark:mark) {
            print("Cycle encountered")
        }
        out.mark = mark
        return overridden
    }
    
    func destroyConstraint() {
        if self.isSatisfied() {
            planner.incrementalRemove(c:self)
        } else {
            self.removeFromGraph()
        }
    }
    
    func isInput() -> Bool {
        return false
    }

    static func ==(c1:Constraint,c2:Constraint)->Bool{
        return c1 === c2;
    }
}

class BinaryConstraint: Constraint {
    var v1: Variable
    var v2: Variable
    var direction: Direction
    init(var1: Variable, var2: Variable, strength: Strength) {
        self.v1 = var1
        self.v2 = var2
        self.direction = Direction.NONE
        super.init(strength: strength)
    }
    
    
    override func chooseMethod(mark: Int) {
        if self.v1.mark == mark {
            self.direction = (self.v2.mark != mark && Strength.stronger(self.strength, self.v2.walkStrength))
                ? Direction.FORWARD
                : Direction.NONE
        }
        if self.v2.mark == mark {
            self.direction = (self.v1.mark != mark && Strength.stronger(self.strength, self.v1.walkStrength))
                ? Direction.BACKWARD
                : Direction.NONE
        }
        if Strength.weaker(self.v1.walkStrength, self.v2.walkStrength) {
            self.direction = Strength.stronger(self.strength, self.v1.walkStrength)
                ? Direction.BACKWARD
                : Direction.NONE
        } else {
            self.direction = Strength.stronger(self.strength, self.v2.walkStrength)
                ? Direction.FORWARD
                : Direction.BACKWARD
        }
    }
     override func addToGraph() {
        self.v1.addConstraint(self)
        self.v2.addConstraint(self)
        self.direction = Direction.NONE
    }
     override func isSatisfied() -> Bool {
        return self.direction != Direction.NONE
    }
     override func markInputs(mark: Int) {
        self.input().mark = mark
    }
     func input() -> Variable {
        return (self.direction == Direction.FORWARD) ? self.v1 : self.v2
    }
     override func output() -> Variable {
        return (self.direction == Direction.FORWARD) ? self.v2 : self.v1
    }
     override func recalculate() {
        let ihn: Variable = self.input()
        let out: Variable = self.output()
        out.walkStrength = Strength.weakestOf(self.strength, ihn.walkStrength)
        out.stay = ihn.stay
        if out.stay {
            self.execute()
        }
    }
    override func markUnsatisfied() {
        self.direction = Direction.NONE
    }
     override func inputsKnown(mark: Int) -> Bool {
        let i: Variable = self.input()
        return i.mark == mark || i.stay || i.determinedBy == nil
    }
    override func removeFromGraph() {
        self.v1.removeConstraint(self);
        self.v2.removeConstraint(self);
        self.direction = Direction.NONE
    }
}

class ScaleConstraint: BinaryConstraint {
    var scale: Variable
    var offset: Variable
    init(src: Variable, scale: Variable, offset: Variable, dest: Variable, strength: Strength) {
        self.scale = scale
        self.offset = offset
        super.init(var1: src, var2: dest, strength: strength)
        self.direction = Direction.NONE
        self.addScaAndOffToGraph()
        self.addConstraint()
    }
     func addScaAndOffToGraph() {
        self.scale.addConstraint(self)
        self.offset.addConstraint(self)
    }
     override func removeFromGraph() {
        self.scale.removeConstraint(self);
        self.offset.removeConstraint(self);
    }
     override func markInputs(mark: Int) {
        self.scale.mark = mark
        self.offset.mark = mark
    }
     override func execute() {
        if self.direction == Direction.FORWARD {
            self.v2.value = self.v1.value * self.scale.value + self.offset.value
        } else {
            self.v1.value = (self.v2.value - self.offset.value) / self.scale.value
        }
    }
    override func recalculate() {
        let ihn: Variable = self.input()
        let out: Variable = self.output()
        out.walkStrength = Strength.weakestOf(self.strength, ihn.walkStrength)
        out.stay = ihn.stay && self.scale.stay && self.offset.stay
        if out.stay {
            self.execute()
        }
    }
}

class EqualityConstraint: BinaryConstraint {
    override init(var1: Variable, var2: Variable, strength: Strength) {
        super.init(var1: var1, var2: var2, strength: strength)
        self.addConstraint()
    }
    override func execute() {
        self.output().value = self.input().value
    }
}

class UnaryConstraint: Constraint {
    var myOutput: Variable
    var satisfied: Bool
    init(v: Variable, strength: Strength) {
        self.myOutput = v
        self.satisfied = false
        super.init(strength: strength)
        self.addConstraint()
    }
    override func addToGraph() {
        self.myOutput.addConstraint(self)
        self.satisfied = false
    }
    override func chooseMethod(mark: Int) {
        self.satisfied = (self.myOutput.mark != mark) && Strength.stronger(self.strength, self.myOutput.walkStrength)
    }
    override func isSatisfied() -> Bool {
        return self.satisfied
    }
    override func markInputs(mark: Int) {
        // has no inputs
    }
    override func output() -> Variable {
        return self.myOutput
    }
    override func recalculate() {
        self.myOutput.walkStrength = self.strength
        self.myOutput.stay = !self.isInput()
        if self.myOutput.stay {
            self.execute()
        }
    }
    override func markUnsatisfied() {
        self.satisfied = false
    }
    override func inputsKnown(mark: Int) -> Bool {
        return true
    }
    override func removeFromGraph() {
        myOutput.removeConstraint(self)
        self.satisfied = false
    }
}

class EditConstraint: UnaryConstraint {
    init(v: Variable, str: Strength) {
        super.init(v: v, strength: str)
    }
    override func isInput() -> Bool {
        return true
    }
    override func execute() {
        // Implementation
    }
}
 class StayConstraint: UnaryConstraint {
    init(v: Variable, str: Strength) {
        super.init(v: v, strength: str)
    }
    override func execute() {
        // Implementation
    }
}

class OrderedCollection<T> where T:Equatable{
    var elms: [T]
     init() {
        self.elms = []
    }
     func add(elm: T) {
        self.elms.append(elm)
    }
     func at(index: Int) -> T {
        return self.elms[index]
    }
     func size() -> Int {
        return self.elms.count
    }
     func removeFirst() -> T? {
        return self.elms.popLast()
    }
    
    func remove(elm: T) {
        var index = 0
        var skipped = 0
         for i in 0..<self.elms.count {
            let value = self.elms[i]
            if value != elm {
                self.elms[index] = value
                index += 1
            } else {
                skipped += 1
            }
        }
        for _ in 0..<skipped {
            self.elms.removeLast()
        }
    }
}

class Variable:Equatable {
    var value: Double
    var constraints: OrderedCollection<Constraint>
    var determinedBy: Constraint?
    var mark: Int
    var walkStrength: Strength
    var stay: Bool
    var name: String
     init(name: String, initialValue: Double? = nil) {
        self.value = initialValue ?? 0
        self.constraints = OrderedCollection<Constraint>()
        self.determinedBy = nil
        self.mark = 0
        self.walkStrength = Strength.WEAKEST
        self.stay = true
        self.name = name
    }
     func addConstraint(_ c: Constraint) {
        self.constraints.add(elm:c)
    }
     func removeConstraint(_ c: Constraint) {
        self.constraints.remove(elm:c)
        if self.determinedBy === c {
            self.determinedBy = nil
        }
    }

    static func ==(c1:Variable,c2:Variable)->Bool{
        return c1 === c2;
    }
}

class Plan {
    var v: OrderedCollection<Constraint>
     init() {
        self.v = OrderedCollection()
    }
     func addConstraint(c: Constraint) {
        self.v.add(elm:c)
    }
     func size() -> Int {
        return self.v.size()
    }
     func constraintAt(index: Int) -> Constraint {
        return self.v.at(index:index)
    }
    
    func execute() {
        for i in 0..<self.size() {
            let c: Constraint = self.constraintAt(index: i)
            c.execute()
        }
    }
}

class Planner {
    var currentMark: Int
     init() {
        self.currentMark = 0
    }
     func incrementalAdd(c: Constraint) {
        let mark: Int = self.newMark()
        var overridden: Constraint? = c.satisfy(mark:mark)
        while overridden != nil {
            overridden = overridden!.satisfy(mark:mark)
        }
    }
     func incrementalRemove(c: Constraint) {
        let out: Variable = c.output()
        c.markUnsatisfied()
        c.removeFromGraph()
        let unsatisfied = self.removePropagateFrom(out:out)
        var strength: Strength = Strength.REQUIRED
        repeat {
            for i in 0..<unsatisfied.size() {
                let u = unsatisfied.at(index:i)
                if u.strength === strength {
                    self.incrementalAdd(c:u)
                }
            }
            strength = strength.nextWeaker()
        } while strength !== Strength.WEAKEST
    }
     func newMark() -> Int {
        self.currentMark += 1
        return self.currentMark
    }
    
    func makePlan(sources: OrderedCollection<Constraint>) -> Plan {
        let mark = self.newMark()
        let plan = Plan()
        var todo = sources
        while todo.size() > 0 {
            let c: Constraint? = todo.removeFirst()
            if c!.output().mark != mark && c!.inputsKnown(mark:mark) {
                plan.addConstraint(c:c!)
                c!.output().mark = mark
                self.addConstraintsConsumingTo(v: c!.output(), coll: &todo)
            }
        }
        return plan
    }
     func extractPlanFromConstraints(constraints: OrderedCollection<Constraint>) -> Plan {
        let sources: OrderedCollection<Constraint> = OrderedCollection()
        for i in 0..<constraints.size() {
            let c: Constraint = constraints.at(index:i)
            if c.isInput() && c.isSatisfied() {
                sources.add(elm:c)
            }
        }
        return self.makePlan(sources: sources)
    }
     func addPropagate(c: Constraint, mark: Int) -> Bool {
        var todo: OrderedCollection<Constraint> = OrderedCollection()
        todo.add(elm:c)
        while todo.size() > 0 {
            let d: Constraint? = todo.removeFirst()
            if d!.output().mark == mark {
                self.incrementalRemove(c:c)
                return false
            }
            d!.recalculate()
            self.addConstraintsConsumingTo(v: d!.output(), coll: &todo)
        }
        return true
    }
     func removePropagateFrom(out: Variable) -> OrderedCollection<Constraint> {
        out.determinedBy = nil
        out.walkStrength = Strength.WEAKEST
        out.stay = true
        let unsatisfied: OrderedCollection<Constraint> = OrderedCollection()
        let todo: OrderedCollection<Variable> = OrderedCollection()
        todo.add(elm:out)
        while todo.size() > 0 {
            let v: Variable? = todo.removeFirst()
            for i in 0..<v!.constraints.size() {
                let c: Constraint = v!.constraints.at(index:i)
                if !c.isSatisfied() {
                    unsatisfied.add(elm:c)
                }
            }
            let determining = v!.determinedBy
            for i in 0..<v!.constraints.size() {
                let next = v!.constraints.at(index:i)
                if next != determining && next.isSatisfied() {
                    next.recalculate()
                    todo.add(elm:next.output())
                }
            }
        }
        return unsatisfied
    }
    func addConstraintsConsumingTo(v: Variable, coll: inout OrderedCollection<Constraint>) {
        let determining: Constraint? = v.determinedBy
        let cc: OrderedCollection<Constraint> = v.constraints
        for i in 0..<cc.size() {
            let c: Constraint = cc.at(index:i)
            if c != determining && c.isSatisfied() {
                coll.add(elm:c)
            }
        }
    }
}

func change(v: Variable, newValue: Double) {
    let edit: EditConstraint = EditConstraint(v: v, str: Strength.PREFERRED)
    let edits: OrderedCollection<Constraint> = OrderedCollection()
    edits.add(elm:edit)
    let plan: Plan = planner.extractPlanFromConstraints(constraints: edits)
    for _ in 0..<10 {
        v.value = newValue;
        plan.execute()
    }
    edit.destroyConstraint()
}

var planner:Planner = Planner();

func chainTest(n: Int) throws {
    planner = Planner()
    var prev: Variable? = nil, first: Variable? = nil, last: Variable? = nil
    for i in 0...n {
        let name: String = "v\(i)"
        let v: Variable = Variable(name: name)
        if prev != nil {
            _ = EqualityConstraint(var1: prev!, var2: v, strength: Strength.REQUIRED)
        }
        if i == 0 {
            first = v
        }
        if i == n {
            last = v
        }
        prev = v
    }
    _ = StayConstraint(v: last!, str: Strength.STRONG_DEFAULT)
    let edit: EditConstraint = EditConstraint(v: first!, str: Strength.PREFERRED)
    let edits: OrderedCollection<Constraint> = OrderedCollection()
    edits.add(elm:edit)
    let plan: Plan = planner.extractPlanFromConstraints(constraints: edits)
    for i in 0..<100 {
        first!.value = Double(i)
        plan.execute()
        if last!.value != Double(i) {
            throw BenchmarkError.WrongResult("Chain test failed.")
        }
    }
}

func projectionTest(n: Int) throws {
    planner = Planner()
    let scale: Variable = Variable(name: "scale", initialValue: 10)
    let offset: Variable = Variable(name: "offset", initialValue: 1000)
    var src: Variable = Variable(name:""), dst: Variable = Variable(name:"");
    let dests: OrderedCollection<Variable> = OrderedCollection()
    for i in 0..<n {
        src = Variable(name: "src\(i)", initialValue: Double(i));
        dst = Variable(name: "dst\(i)", initialValue: Double(i));
        dests.add(elm: dst)
        _ = StayConstraint(v: src, str: Strength.NORMAL)
        _ = ScaleConstraint(src: src, scale: scale, offset: offset, dest: dst, strength: Strength.REQUIRED)
    }
    change(v: src, newValue: 17.0)
    if dst.value != 1170.0 {
        throw BenchmarkError.WrongResult("Projection 1 failed")
    }
    change(v: dst, newValue: 1050)
    if src.value != 5.0 {
        throw BenchmarkError.WrongResult("Projection 2 failed")
    }
    change(v: scale, newValue: 5)
    for i in 0..<n-1 {
        if dests.at(index: i).value != Double(i * 5 + 1000) {
            throw BenchmarkError.WrongResult("Projection 3 failed")
        }
    }
    change(v: offset, newValue: 2000)
    for i in 0..<n-1 {
        if dests.at(index: i).value != Double(i * 5 + 2000) {
            throw BenchmarkError.WrongResult("Projection 4 failed")
        }
    }
}

func deltablueRun() throws {
    try chainTest(n: 100)
    try projectionTest(n: 100)
}

/**************************configure and run benchmark********************************/
let benchmarkRun = BenchmarkRun(name: "deltablue", doWarmup: true, doDeterministic: true, run: deltablueRun,minIterations: 4400)
benchmarkRun.run()
