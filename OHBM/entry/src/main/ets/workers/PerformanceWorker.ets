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
import { Base64Run } from '../cases/performance/base64';
import { AESRun } from '../cases/performance/crypto-aes';
import { Md5Run } from '../cases/performance/crypto-md5';
import { Sha1Run } from '../cases/performance/crypto-sha1';
import { DeltablueRun } from '../cases/performance/deltablue';
import { NavierstokesRun, NavierStokesSetup } from '../cases/performance/navier-stoke';
import { RaytraceRun } from "../cases/performance/RayTrace";
import { runRichards } from '../cases/performance/richards';
import Logger from '../utils/Logger';

const workerPort: ThreadWorkerGlobalScope = worker.workerPort;

/**
 * Defines the event handler to be called when the worker thread receives a message sent by the host thread.
 * The event handler is executed in the worker thread.
 *
 * @param e message data
 */
workerPort.onmessage = (e: MessageEvents) => {
  let data: string = e.data;
  if (data === 'Start') {
    let benchmarkRunRaytrace =
      new BenchmarkRun('raytrace', true, true, RaytraceRun, undefined, undefined, undefined, 20);
    benchmarkRunRaytrace.run(workerPort);
    let benchmarkRunRichards =
      new BenchmarkRun('richards', true, true, runRichards, undefined, undefined, undefined, 100)
    benchmarkRunRichards.run(workerPort)
    let benchmarkRunDeltablue =
      new BenchmarkRun('deltablue', true, true, DeltablueRun, undefined, undefined, undefined, 20)
    benchmarkRunDeltablue.run(workerPort)
    let benchmarkRunNavierstokes =
      new BenchmarkRun('navier-stokes', true, true, NavierstokesRun, NavierStokesSetup, undefined, undefined, 20)
    benchmarkRunNavierstokes.run(workerPort)

    let benchmarkRunBase64 = new BenchmarkRun('base64', true, true, Base64Run, undefined, undefined, undefined, 10)
    benchmarkRunBase64.run(workerPort);
    let benchmarkRunAES = new BenchmarkRun('crypto-aes', true, true, AESRun, undefined, undefined, undefined, 10)
    benchmarkRunAES.run(workerPort)
    let benchmarkRunMd5 = new BenchmarkRun('crypto-md5', true, true, Md5Run, undefined, undefined, undefined, 20)
    benchmarkRunMd5.run(workerPort)
    let benchmarkRunSha1 = new BenchmarkRun('crypto-sha1', true, true, Sha1Run, undefined, undefined, undefined, 20)
    benchmarkRunSha1.run(workerPort)
    //const benchmarkRunBox2d = new BenchmarkRun('box2d', true, true, runBox2D, undefined, tearDownBox2D, undefined, 32)
    //benchmarkRunBox2d.run(workerPort)
    workerPort.postMessage(new WorkerMessage(`全部完成`, -1, 0, 0, 0, 0, 0, 0, 0))
  }
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