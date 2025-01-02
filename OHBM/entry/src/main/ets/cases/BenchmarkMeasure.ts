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
import { ThreadWorkerGlobalScope } from '@kit.ArkTS';
import { B2Vec2 } from './performance/box2d/Common/b2Math';
import { B2Array } from './performance/box2d/Dynamics/b2TimeStep';

const TAG = 'Benchmark'

class BenchmarkRNG {
  static resetRNG() {
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

  static nextDouble() {
    return Math.random()
  }
}

class WorkerMessage {
  name: string;
  type: number;
  time: number;
  latency: number;
  x: number;
  y: number;
  r: number;
  g: number;
  b: number;
  vertices_x:number[];
  vertices_y:number[];
  radius:number;

  constructor(name: string, type: number, time: number, latency: number, x: number, y: number, r: number, g: number,
    b: number) {
    this.name = name;
    this.type = type;
    this.time = time;
    this.latency = latency;
    this.x = x;
    this.y = y;
    this.r = r;
    this.g = g;
    this.b = b;
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
  setup: Function | undefined;
  tearDown: Function | undefined;
  rmsResult: Function | undefined;
  minIterations: number;
  data: {
    runs: number,
    elapsed: number
  } | undefined;

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

  runSetup(benchmarkResult: BenchmarkResult, workerPort: ThreadWorkerGlobalScope): void {
    this.setup?.();
    this.runBenchmark(benchmarkResult, workerPort);
  }

  runBenchmark(benchmarkResult: BenchmarkResult, workerPort: ThreadWorkerGlobalScope): void {
    this.runSingle(benchmarkResult, workerPort);
    !this.data ? this.runTearDown() : this.runBenchmark(benchmarkResult, workerPort);
  }

  runTearDown(): void {
    this.tearDown?.();
  }

  runSingle(benchmarkResult: BenchmarkResult, workerPort: ThreadWorkerGlobalScope): void {
    if (!this.doWarmup && !this.data) {
      this.data = { runs: 0, elapsed: 0 };
    }

    if (!this.data) {
      //this.measure(workerPort);
      this.data = { runs: 0, elapsed: 0 };
    } else {
      this.measure(workerPort);
      if (this.data.runs < this.minIterations) {
        return;
      }
      const usec: number = (this.data.elapsed * 1000) / this.data.runs;
      const rms: number = (this.rmsResult != null) ? this.rmsResult() : 0;
      benchmarkResult.time = usec;
      benchmarkResult.latency = rms;
      this.data = undefined;
    }
  }

  measure(workerPort: ThreadWorkerGlobalScope): void {
    let elapsed: number = 0;
    let start: number = new Date().getTime();
    let i = 0
    for (; (this.doDeterministic ? i < this.minIterations : elapsed < 1000); i++) {
      workerPort.postMessage(new WorkerMessage(this.name+ `第${i + 1}次测试`, 0, 0, 0, 0, 0, 0, 0, 0))
      this.run(workerPort);
      elapsed = new Date().getTime() - start;
      workerPort.postMessage(new WorkerMessage(this.name+`第${i + 1}次`, 0, elapsed, 0, 0, 0, 0, 0, 0))
    }
    if (this.data != null) {
      this.data.runs += i;
      this.data.elapsed += elapsed;
    }
  }
}


class BenchmarkRun {
  benchmark: Benchmark
  name:string

  constructor(name: string, doWarmup: boolean, doDeterministic: boolean, run: Function,
    setup?: Function, tearDown?: Function, rmsResult?: Function, minIterations?: number) {
    this.benchmark = new Benchmark(name, doWarmup, doDeterministic, run, setup, tearDown, rmsResult, minIterations)
    this.name = name
  }

  run(workerPort: ThreadWorkerGlobalScope) {
    let result = new BenchmarkResult(0, 0)
    try {
      BenchmarkRNG.resetRNG()
      this.benchmark.runSetup(result, workerPort)
      this.printResult(result)
      workerPort.postMessage(new WorkerMessage(this.name+'完成', 0, result.time, result.latency, 0, 0, 0, 0, 0))
    } catch (error) {
      this.printErrorMessage(JSON.stringify(error))
    }

  }

  printErrorMessage(errorMessage: String) {
    console.info(TAG, `${this.benchmark.name} Error: ${errorMessage}`)
  }

  printResult(result: BenchmarkResult) {
    console.info(TAG,
      `${this.benchmark.name}: usec = ${result.time}\n${this.benchmark.name}: latency = ${result.latency}`)
  }
}

BenchmarkRNG.resetRNG()

export { BenchmarkRun, Benchmark, BenchmarkResult, BenchmarkRNG, WorkerMessage }
