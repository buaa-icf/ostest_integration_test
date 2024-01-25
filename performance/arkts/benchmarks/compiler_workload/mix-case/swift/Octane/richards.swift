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

class Scheduler {
    var queueCount: Int
    var holdCount: Int
    var blocks: [TaskControlBlock?]
    var list: TaskControlBlock?
    var currentTcb: TaskControlBlock?
    var currentId: Int?
    
    init() {
        self.queueCount = 0
        self.holdCount = 0
        self.blocks = Array(repeating: nil, count: NUMBER_OF_IDS)
        self.list = nil
        self.currentTcb = nil
        self.currentId = nil
    }
    
    func addIdleTask(id: Int, priority: Int, queue: Packet?, count: Int) {
        addRunningTask(id: id, priority: priority, queue: queue, task: IdleTask(scheduler: self, v1: 1, count: count))
    }
    
    func addWorkerTask(id: Int, priority: Int, queue: Packet) {
        addTask(id: id, priority: priority, queue: queue, task: WorkerTask(scheduler: self, v1: ID_HANDLER_A, v2: 0))
    }
    
    func addHandlerTask(id: Int, priority: Int, queue: Packet) {
        addTask(id: id, priority: priority, queue: queue, task: HandlerTask(scheduler: self))
    }
    
    func addDeviceTask(id: Int, priority: Int, queue: Packet?) {
        addTask(id: id, priority: priority, queue: queue, task: DeviceTask(scheduler: self))
    }
    
    func addRunningTask(id: Int, priority: Int, queue: Packet?, task: Task) {
        addTask(id: id, priority: priority, queue: queue, task: task)
        self.currentTcb!.setRunning()
    }
    
    func addTask(id: Int, priority: Int, queue: Packet?, task: Task) {
        currentTcb = TaskControlBlock(link: list, id: id, priority: priority, queue: queue, task: task)
        list = currentTcb
        blocks[id] = currentTcb
    }
    
    func schedule() {
        currentTcb = list
        while currentTcb != nil {
            if currentTcb!.isHeldOrSuspended() {
                currentTcb = currentTcb!.link
            } else {
                currentId = currentTcb!.id
                currentTcb = currentTcb!.run()
            }
        }
    }
    
    func release(id: Int) -> TaskControlBlock? {
        let tcb = blocks[id]
        if tcb == nil { return tcb }
        tcb!.markAsNotHeld()
        if tcb!.priority > currentTcb!.priority {
            return tcb
        } else {
            return currentTcb
        }
    }
    
    func holdCurrent() -> TaskControlBlock? {
        holdCount += 1
        currentTcb?.markAsHeld()
        return currentTcb?.link
    }
    
    func suspendCurrent() -> TaskControlBlock? {
        currentTcb?.markAsSuspended()
        return currentTcb
    }
    
    func queue(packet: Packet) -> TaskControlBlock? {
        let t = blocks[packet.id]
        if t == nil { return t }
        queueCount += 1
        packet.link = nil
        packet.id = currentId!
        return t!.checkPriorityAdd(taskControlBlock:currentTcb!, packet: packet)
    }
}

let ID_IDLE = 0
let ID_WORKER = 1
let ID_HANDLER_A = 2
let ID_HANDLER_B = 3
let ID_DEVICE_A = 4
let ID_DEVICE_B = 5
let NUMBER_OF_IDS = 6

let KIND_DEVICE = 0
let KIND_WORK = 1


class TaskControlBlock {
    var link: TaskControlBlock?
    var id: Int
    var priority: Int
    var queue: Packet?
    var task: Task
    var state: Int
    
    init(link: TaskControlBlock?, id: Int, priority: Int, queue: Packet?, task: Task) {
        self.link = link
        self.id = id
        self.priority = priority
        self.queue = queue
        self.task = task
        if queue == nil {
            self.state = STATE_SUSPENDED
        } else {
            self.state = STATE_SUSPENDED_RUNNABLE
        }
    }
    
    func setRunning() {
        state = STATE_RUNNING
    }
    
    func markAsNotHeld() {
        state = state & STATE_NOT_HELD
    }
    
    func markAsHeld() {
        state = state | STATE_HELD
    }
    
    func isHeldOrSuspended() -> Bool {
        return (state & STATE_HELD) != 0 || (state == STATE_SUSPENDED)
    }
    
    func markAsSuspended() {
        state = state | STATE_SUSPENDED
    }
    
    func markAsRunnable() {
        state = state | STATE_RUNNABLE
    }
    
    func run() -> TaskControlBlock? {
        var packet: Packet?
        if state == STATE_SUSPENDED_RUNNABLE {
            packet = queue
            queue = packet?.link
            if queue == nil {
                state = STATE_RUNNING
            } else {
                state = STATE_RUNNABLE
            }
        } else {
            packet = nil
        }
        return task.run(packet: packet)
    }
    
    func checkPriorityAdd(taskControlBlock: TaskControlBlock, packet: Packet) -> TaskControlBlock? {
        if queue == nil {
            queue = packet
            markAsRunnable()
            if priority > taskControlBlock.priority {
                return self
            }
        } else {
            queue = packet.addTo(queue: queue!)
        }
        return taskControlBlock
    }
    
    func toString() -> String {
        return "tcb { \(task)@\(state) }"
    }
}

let STATE_RUNNING = 0
let STATE_RUNNABLE = 1
let STATE_SUSPENDED = 2
let STATE_HELD = 4
let STATE_SUSPENDED_RUNNABLE = STATE_SUSPENDED | STATE_RUNNABLE
let STATE_NOT_HELD = ~STATE_HELD



protocol Task{
    func run(packet: Packet?) -> TaskControlBlock?
}



class IdleTask:Task {
    var scheduler: Scheduler
    var v1: Int
    var count: Int
    
    init(scheduler: Scheduler, v1: Int, count: Int) {
        self.scheduler = scheduler
        self.v1 = v1
        self.count = count
    }
    
    func run(packet: Packet?) -> TaskControlBlock? {
        count -= 1
        if count == 0 {
            return scheduler.holdCurrent()
        }
        if (v1 & 1) == 0 {
            v1 = v1 >> 1
            return scheduler.release(id: ID_DEVICE_A)
        } else {
            v1 = (v1 >> 1) ^ 0xD008
            return scheduler.release(id: ID_DEVICE_B)
        }
    }
    
    func toString() -> String {
        return "IdleTask"
    }
}


class DeviceTask:Task {
    var scheduler: Scheduler
    var v1: Packet?
    
    init(scheduler: Scheduler) {
        self.scheduler = scheduler
        self.v1 = nil
    }
    
    func run(packet: Packet?) -> TaskControlBlock? {
        if packet == nil {
            if v1 == nil {
                return scheduler.suspendCurrent()
            }
            let v = v1
            v1 = nil
            return scheduler.queue(packet: v!)
        } else {
            v1 = packet
            return scheduler.holdCurrent()
        }
    }
    
    func toString() -> String {
        return "DeviceTask"
    }
}


class WorkerTask:Task {
    var scheduler: Scheduler
    var v1: Int
    var v2: Int
    
    init(scheduler: Scheduler, v1: Int, v2: Int) {
        self.scheduler = scheduler
        self.v1 = v1
        self.v2 = v2
    }
    
    func run(packet: Packet?) -> TaskControlBlock? {
        if packet == nil {
            return scheduler.suspendCurrent()
        } else {
            if v1 == ID_HANDLER_A {
                v1 = ID_HANDLER_B
            } else {
                v1 = ID_HANDLER_A
            }
            packet!.id = v1
            packet!.a1 = 0
            for i in 0..<DATA_SIZE {
                v2 += 1
                if v2 > 26 {
                    v2 = 1
                }
                packet!.a2[i] = v2
            }
            return scheduler.queue(packet: packet!)
        }
    }
    
    func toString() -> String {
        return "WorkerTask"
    }
}

class HandlerTask:Task {
    var scheduler: Scheduler
    var v1: Packet?
    var v2: Packet?
    
    init(scheduler: Scheduler) {
        self.scheduler = scheduler
        self.v1 = nil
        self.v2 = nil
    }
    
    func run(packet: Packet?) -> TaskControlBlock? {
        if let packet = packet {
            if packet.kind == KIND_WORK {
                self.v1 = packet.addTo(queue: v1)
            } else {
                self.v2 = packet.addTo(queue: v2)
            }
        }
        
        if let v1 = self.v1 {
            let count = v1.a1
            var v: Packet?
            if count < DATA_SIZE {
                if let v2 = self.v2 {
                    v = v2
                    self.v2 = v2.link
                    v?.a1 = v1.a2[count]
                    v1.a1 = count + 1
                    return self.scheduler.queue(packet: v!)
                }
            } else {
                v = v1
                self.v1 = v1.link
                return self.scheduler.queue(packet: v!)
            }
        }
        
        return self.scheduler.suspendCurrent()
    }
    
    func toString() -> String {
        return "HandlerTask"
    }
}


let DATA_SIZE = 4;

class Packet {
    var link: Packet?
    var id: Int
    var kind: Int
    var a1: Int
    var a2: [Int]
    
    init(link: Packet?, id: Int, kind: Int) {
        self.link = link
        self.id = id
        self.kind = kind
        self.a1 = 0
        self.a2 = Array(repeating: 0, count: DATA_SIZE)
    }
    
    func addTo(queue: Packet?) -> Packet {
        self.link = nil
        if queue == nil {
            return self
        }
        var peek: Packet?
        var next = queue
        while let current = next {
            peek = current.link
            if peek == nil {
                break
            }
            next = peek
        }
        next?.link = self
        return queue!
    }
    
    func toString() -> String {
        return "Packet"
    }
}


let COUNT = 1000;
let EXPECTED_QUEUE_COUNT = 2322;
let EXPECTED_HOLD_COUNT = 928;

func runRichards() throws {
    let scheduler = Scheduler()
    scheduler.addIdleTask(id: ID_IDLE, priority: 0, queue: nil, count: COUNT)
    
    var queue = Packet(link: nil, id: ID_WORKER, kind: KIND_WORK)
    queue = Packet(link: queue, id: ID_WORKER, kind: KIND_WORK)
    scheduler.addWorkerTask(id: ID_WORKER, priority: 1000, queue: queue)
    
    queue = Packet(link: nil, id: ID_DEVICE_A, kind: KIND_DEVICE)
    queue = Packet(link: queue, id: ID_DEVICE_A, kind: KIND_DEVICE)
    queue = Packet(link: queue, id: ID_DEVICE_A, kind: KIND_DEVICE)
    scheduler.addHandlerTask(id: ID_HANDLER_A, priority: 2000, queue: queue)
    
    queue = Packet(link: nil, id: ID_DEVICE_B, kind: KIND_DEVICE)
    queue = Packet(link: queue, id: ID_DEVICE_B, kind: KIND_DEVICE)
    queue = Packet(link: queue, id: ID_DEVICE_B, kind: KIND_DEVICE)
    scheduler.addHandlerTask(id: ID_HANDLER_B, priority: 3000, queue: queue)
    
    scheduler.addDeviceTask(id: ID_DEVICE_A, priority: 4000, queue: nil)
    
    scheduler.addDeviceTask(id: ID_DEVICE_B, priority: 5000, queue: nil)
    
    scheduler.schedule()
    
    if scheduler.queueCount != EXPECTED_QUEUE_COUNT ||
        scheduler.holdCount != EXPECTED_HOLD_COUNT {
        let msg = "Error during execution: queueCount = \(scheduler.queueCount), holdCount = \(scheduler.holdCount)."
        throw BenchmarkError.WrongResult(msg)
    }
}


/**************************configure and run benchmark********************************/
let benchmarkRun = BenchmarkRun(name: "richards", doWarmup: true, doDeterministic: true, run: runRichards,minIterations: 8200)
benchmarkRun.run()

