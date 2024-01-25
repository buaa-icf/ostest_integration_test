declare function print(arg: any, arg1?: any): string;

// function print(str:String){
//     console.log(str)
// }

class BenchmarkRNG{
    static resetRNG(){
        Math.random = (function () {
            var seed = 49734321;
            return function () {
                seed = ((seed + 0x7ed55d16) + (seed << 12)) & 0xffffffff;
                seed = ((seed ^ 0xc761c23c) ^ (seed >>> 19)) & 0xffffffff;
                seed = ((seed + 0x165667b1) + (seed << 5)) & 0xffffffff;
                seed = ((seed + 0xd3a2646c) ^ (seed << 9)) & 0xffffffff;
                seed = ((seed + 0xfd7046c5) + (seed << 3)) & 0xffffffff;
                seed = ((seed ^ 0xb55a4f09) ^ (seed >>> 16)) & 0xffffffff;
                return (seed & 0xfffffff) / 0x10000000;
            };
        })();
    }

    static nextDouble(){
        return Math.random()
    }
}


class BenchmarkResult {
    time: number;
    latency: number;
  
    constructor(time: number, latency: number) {
        this.time = time;
        this.latency = latency;
    }
}

class Benchmark {
    name: string;
    doWarmup: boolean;
    doDeterministic: boolean;
    run: Function;
    setup: Function|undefined;
    tearDown: Function|undefined;
    rmsResult: Function|undefined;
    minIterations: number;
    data: {
        runs: number,
        elapsed: number
    }|undefined;
  
    constructor(name: string, doWarmup: boolean, doDeterministic: boolean, run: Function,
        setup?: Function, tearDown?: Function, rmsResult?: Function, minIterations?: number) {
        this.name = name;
        this.doWarmup = doWarmup;
        this.doDeterministic = doDeterministic;
        this.run = run;
        this.setup = setup;
        this.tearDown = tearDown
        this.rmsResult = rmsResult
        this.minIterations = minIterations ? minIterations : 32;
        this.data = undefined
    }
  
    runSetup(benchmarkResult: BenchmarkResult): void {
      this.setup?.();
      this.runBenchmark(benchmarkResult);
    }
  
    runBenchmark(benchmarkResult: BenchmarkResult): void {
      this.runSingle(benchmarkResult);
      !this.data ? this.runTearDown() : this.runBenchmark(benchmarkResult);
    }
  
    runTearDown(): void {
      this.tearDown?.();
    }
  
    runSingle(benchmarkResult: BenchmarkResult): void {
        if (!this.doWarmup && !this.data) {
            this.data = { runs: 0, elapsed: 0 };
        }
  
        if (!this.data) {
            this.measure();
            this.data = { runs: 0, elapsed: 0 };
        } else {
            this.measure();
            if (this.data.runs < this.minIterations) return;
            const usec: number = (this.data.elapsed * 1000) / this.data.runs;
            const rms: number = (this.rmsResult != null) ? this.rmsResult() : 0;
            benchmarkResult.time = usec;
            benchmarkResult.latency = rms;
            this.data = undefined;
        }
    }
  
    measure(): void {
        let elapsed: number = 0;
        let start: number = new Date().getTime();
  
        let i = 0
        for (; (this.doDeterministic ? i < this.minIterations : elapsed < 1000); i++) {
            this.run();
            elapsed = new Date().getTime() - start;
        }
        if (this.data != null) {
          this.data.runs += i;
          this.data.elapsed += elapsed;
        }
    }
  }


class BenchmarkRun {
    benchmark:Benchmark

    constructor(name: string, doWarmup: boolean, doDeterministic: boolean, run: Function,
        setup?: Function, tearDown?: Function, rmsResult?: Function, minIterations?: number) {
            this.benchmark = new Benchmark(name,doWarmup,doDeterministic,run,setup,tearDown,rmsResult,minIterations)
    }

    run(){
        let result = new BenchmarkResult(0,0)
        try {
            BenchmarkRNG.resetRNG()
            this.benchmark.runSetup(result)
            this.printResult(result)
        }catch (error) {
            this.prinErrorMessage(JSON.stringify(error))
        }

    }

    prinErrorMessage(errorMessage:String){
        print(`${this.benchmark.name} Error: ${errorMessage}`)
    }

    printResult(result:BenchmarkResult){
        print(`${this.benchmark.name}: usec = ${result.time}\n${this.benchmark.name}: latency = ${result.latency}`)
    }
}
BenchmarkRNG.resetRNG()
export {BenchmarkRun,Benchmark,BenchmarkResult,BenchmarkRNG}
