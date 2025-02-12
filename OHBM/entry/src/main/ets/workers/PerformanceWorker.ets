/*
 * Copyright (c) 2024 Shenzhen Kaihong Digital Industry Development Co., Ltd.
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

import { ErrorEvent, MessageEvents, ThreadWorkerGlobalScope, worker } from '@kit.ArkTS';
import { BenchmarkRun, WorkerMessage } from "../cases/BenchmarkMeasure";
import { run3DCube } from '../cases/performance/3d-cube';
import { Base64Run } from '../cases/performance/base64';
import { runBox2D } from '../cases/performance/box2d/box2d';
import { runBox2D1 } from '../cases/performance/box2d/box2d1';
import { runBox2D2 } from '../cases/performance/box2d/box2d2';
import { runBox2D3 } from '../cases/performance/box2d/box2d3';
import { AESRun } from '../cases/performance/crypto-aes';
import { Md5Run } from '../cases/performance/crypto-md5';
import { Sha1Run } from '../cases/performance/crypto-sha1';
import { DeltablueRun } from '../cases/performance/deltablue';
import { runNBody } from '../cases/performance/n-body';
import { NavierstokesRun, NavierStokesSetup } from '../cases/performance/navier-stoke';
import { RaytraceRun } from "../cases/performance/RayTrace";
import { runRichards } from '../cases/performance/richards';
import { runZlib } from '../cases/performance/zlib/zlib';

const workerPort: ThreadWorkerGlobalScope = worker.workerPort;
const benchmarks: BenchmarkRun[] = [
  new BenchmarkRun('3d-cube', true, true, run3DCube, undefined, undefined, undefined, 5),
  new BenchmarkRun('n-body', true, true, runNBody, undefined, undefined, undefined, 5),
  new BenchmarkRun('box2d-0', true, true, runBox2D, undefined, undefined, undefined, 10),
  new BenchmarkRun('box2d-1', true, true, runBox2D1, undefined, undefined, undefined, 5),
  new BenchmarkRun('box2d-2', true, true, runBox2D2, undefined, undefined, undefined, 10),
  new BenchmarkRun('box2d-3', true, true, runBox2D3, undefined, undefined, undefined, 3),
  new BenchmarkRun('raytrace', true, true, RaytraceRun, undefined, undefined, undefined, 20),
  new BenchmarkRun('richards', true, true, runRichards, undefined, undefined, undefined, 100),
  new BenchmarkRun('delta-blue', true, true, DeltablueRun, undefined, undefined, undefined, 20),
  new BenchmarkRun('navier-stokes', true, true, NavierstokesRun, NavierStokesSetup, undefined, undefined, 20),
  new BenchmarkRun('base64', true, true, Base64Run, undefined, undefined, undefined, 10),
  new BenchmarkRun('crypto-aes', true, true, AESRun, undefined, undefined, undefined, 10),
  new BenchmarkRun('crypto-md5', true, true, Md5Run, undefined, undefined, undefined, 20),
  new BenchmarkRun('crypto-sha1', true, true, Sha1Run, undefined, undefined, undefined, 20),
  new BenchmarkRun('zlib', true, true, runZlib, undefined, undefined, undefined, 10000),
];

function runBenchmark(benchmark: BenchmarkRun, workerPort: ThreadWorkerGlobalScope) {
  benchmark.run(workerPort);
}

/**
 * Defines the event handler to be called when the worker thread receives a message sent by the host thread.
 * The event handler is executed in the worker thread.
 *
 * @param e message data
 */
workerPort.onmessage = (e: MessageEvents) => {
  let data: string[] = e.data;
  data.forEach(testName => {
    const benchmark = benchmarks.find(b => b.name === testName);
    if (benchmark) {
      runBenchmark(benchmark, workerPort);
    }
  });
  workerPort.postMessage(new WorkerMessage(`全部完成`, -9, 0, 0, 0, 0, 0, 0, 0))
}

/**
 * Defines the event handler to be called when the worker receives a message that cannot be deserialized.
 * The event handler is executed in the worker thread.
 *
 * @param e message data
 */
workerPort.onmessageerror = (e: MessageEvents) => {
}

/**
 * Defines the event handler to be called when an exception occurs during worker execution.
 * The event handler is executed in the worker thread.
 *
 * @param e error message
 */
workerPort.onerror = (e: ErrorEvent) => {
}
