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
import { worker, MessageEvents, ErrorEvent } from '@kit.ArkTS';
import { WorkerMessage } from '../cases/BenchmarkMeasure';
import Logger from '../utils/Logger';

@Entry
@Component
struct Performance {
  @State output: string = ''
  @State isRunning: boolean = false;
  @State testResult: string = ''
  @State totalResult: string = ''
  private TAG: string = 'Performance';
  private performanceWorker: worker.ThreadWorker | undefined = undefined;
  private settings: RenderingContextSettings = new RenderingContextSettings(true)
  private context: CanvasRenderingContext2D = new CanvasRenderingContext2D(this.settings)

  build() {
    Column() {
      Scroll() {
        Column() {
          Text(this.isRunning ? '正在测试……' : '性能评分')
            .fontSize(18)
            .margin(8)
          Row() {
            Canvas(this.context)
              .width(200)
              .height(200)
              .backgroundColor('#ffff00')
          }

          Text(this.testResult)
            .fontColor(Color.Red)
            .fontSize(20)
            .margin(8)
          Button(this.isRunning ? '停止' : '开始')
            .height(100)
            .width(200)
            .fontSize(20)
            .margin(8)
            .onClick(() => {
              if (this.isRunning) {
                if (this.performanceWorker !== undefined) {
                  try {
                    this.performanceWorker.terminate();
                  } catch (e) {
                  }
                }
              } else {
                if (this.performanceWorker === undefined) {
                  this.performanceWorker = new worker.ThreadWorker('entry/ets/workers/PerformanceWorker.ets');
                }
                this.context.clearRect(0, 0, 200, 200);
                this.totalResult = '';
                this.performanceWorker.postMessage('Start');
                this.performanceWorker.onmessage = (e: MessageEvents): void => {
                  let data: WorkerMessage = e.data;
                  switch (data.type) {
                    case 0:
                      let result = `${data.name}：time = ${data.time}，latency = ${data.latency}`;
                      Logger.info(this.TAG, result);
                      this.context.clearRect(0, 0, 200, 200);
                      if (data.name.indexOf('完成') !== -1) {
                        this.totalResult = this.totalResult +'\n'+ result;
                      } else {
                        this.testResult = result;
                      }
                      break;
                    case 1:
                      let red = Math.floor(data.r * 255);
                      let green = Math.floor(data.g * 255);
                      let blue = Math.floor(data.b * 255);
                      Logger.info(this.TAG,
                        `RayTrace pixel： (x:${data.x},y:${data.y}),rgb(${red},${green},${blue})`);
                      this.context.fillStyle = `rgb(${red},${green},${blue})`
                      this.context.fillRect(data.x * 10, data.y * 10, 10, 10)
                      break;
                    default:
                      if (data.name.indexOf('全部完成') !== -1) {
                        this.isRunning = false;
                      }
                      break;
                  }
                }

                this.performanceWorker.onexit = (code) => {
                  Logger.info(this.TAG, "main thread terminate");
                  this.performanceWorker === undefined;
                  this.isRunning = false;
                }

                this.performanceWorker.onerror = (err: ErrorEvent) => {
                  Logger.info(this.TAG, "main error message " + err.message);
                  this.isRunning = false;
                }
                this.isRunning = true;
              }
            })
          Text(this.totalResult)
            .fontSize(18)
            .margin(8)
        }
        .justifyContent(FlexAlign.Center)
        .constraintSize({ minHeight: '100%' })
        .width('100%')
      }
      .height('100%')
      .padding({ left: 12, right: 12 })
    }
  }
}