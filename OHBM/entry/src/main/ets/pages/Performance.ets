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
import PerformanceTestItemData from '../models/PerformanceTestItemData';
import Logger from '../utils/Logger';
import HeadBar from '../views/HeadBar';
import PerformanceTestItem from '../views/PerformanceTestItem';

@Entry
@Component
struct Performance {
  @State output: string = ''
  @State isRunning: boolean = false;
  @State testResult: string = '正在测试...'
  private TAG: string = 'Performance';
  private performanceWorker: worker.ThreadWorker | undefined = undefined;
  private settings: RenderingContextSettings = new RenderingContextSettings(true);
  private context: CanvasRenderingContext2D = new CanvasRenderingContext2D(this.settings);
  private canvas_x: number = 400;
  private canvas_y: number = 400;
  private canvas_delta_x: number = 100;
  private canvas_delta_y: number = 100;
  private canvas_scale: number = 1;
  private raytrace_canvas_scale: number = 20;
  private fps: number = 0;
  @State fpsText: string = ''
  private fpsTimerId: number = 0;
  @State totalScore: string = '评分：未测试';
  private totalScoreValue: number = 0.00;
  private d: number = 200;
  @State items: PerformanceTestItemData[] = [];
  @State isTotal: boolean = true;

  aboutToAppear(): void {
    this.initItems();
  }

  aboutToDisappear(): void {
    if (this.performanceWorker !== undefined) {
      this.performanceWorker.terminate();
    }
  }

  build() {
    Column() {
      HeadBar({ title: '性能测试', isSetting: false })
      Scroll() {
        Column() {
          Text(this.isRunning ? this.testResult : this.totalScore)
            .fontSize(24)
            .fontColor(Color.Orange)
            .margin(8)
            .maxLines(1)
            .textAlign(TextAlign.Center)
            .width('100%')
          Stack() {
            Row() {
              Canvas(this.context)
                .width(400)
                .height(400)
                .backgroundColor('#ffff00')
            }

            Text(this.fpsText)
              .fontSize(16)
              .margin(8)
          }
          .shadow({
            radius: 2,
            color: Color.Gray
          })
          .alignContent(Alignment.TopEnd)

          Button(this.isRunning ? '停止' : '开始')
            .height(60)
            .width(200)
            .fontSize(24)
            .margin(8)
            .shadow({
              radius: 10,
              color: Color.Gray,
              offsetX: 5,
              offsetY: 5
            })
            .clickEffect({ level: ClickEffectLevel.MIDDLE, scale: 0.8 })
            .onClick(() => {
              if (this.isRunning) {
                if (this.performanceWorker !== undefined) {
                  try {
                    this.performanceWorker.terminate();
                  } catch (e) {
                  }
                }
              } else {
                this.start();
              }
            })
          Column() {
            List({ space: 10 }) {
              ListItem() {
                Row() {
                  Text('测试项')
                    .fontSize(20)
                    .maxLines(1)
                    .textOverflow({ overflow: TextOverflow.MARQUEE })
                    .width(120)
                    .fontWeight(FontWeight.Bold)
                    .textAlign(TextAlign.Center)
                  Blank()
                  Text('评分')
                    .fontWeight(FontWeight.Bold)
                    .fontSize(20)
                    .margin(4)
                }
                .alignItems(VerticalAlign.Center)
                .height(48)
                .width('90%')
                .justifyContent(FlexAlign.SpaceBetween)
              }
              .height(48)

              ForEach(this.items, (item: PerformanceTestItemData) => {
                ListItem() {
                  PerformanceTestItem({ item: item, isRunning: this.isRunning })
                }
                .clickEffect({ level: ClickEffectLevel.MIDDLE, scale: 0.8 })
                .onClick(() => {
                  if (!this.isRunning) {
                    item.isSelect = !item.isSelect;
                  }
                })
                .width('90%')
              })
            }
            .divider({ strokeWidth: 1, color: '#CCCCCC' })
            .margin(16)
          }
        }
        .justifyContent(FlexAlign.Center)
        .constraintSize({ minHeight: '100%' })
        .width('100%')
      }
      .height('100%')
      .width('90%')
      .scrollBar(BarState.Off)
      .margin({ bottom: 32 })
    }
    .width('100%')
    .height('100%')
  }

  initItems() {
    this.items.push(new PerformanceTestItemData('n-body',
      '模拟多个物体在相互之间的万有引力作用下的运动，评估物理算法的性能，特别是在模拟大规模天体系统时'))
    this.items.push(new PerformanceTestItemData('box2d',
      '单个小球自由落体运动测试（Box2D是一个2D物理引擎，用于游戏开发和模拟，评估2D物理模拟的性能，包括碰撞检测、刚体动力学等）'))
    this.items.push(new PerformanceTestItemData('box2d1', '5个物体的受力运动测试'))
    this.items.push(new PerformanceTestItemData('box2d2', '单个小球抛物线运动测试'))
    this.items.push(new PerformanceTestItemData('box2d3', '26个物体的受力运动测试'))
    this.items.push(new PerformanceTestItemData('raytrace',
      '光线追踪是一种用于生成逼真图像的渲染技术，评估渲染算法的性能，特别是在处理复杂光照和阴影效果时'))
    this.items.push(new PerformanceTestItemData('richards',
      '并发程序的基准测试，模拟一个任务调度系统，评估操作系统的并发处理能力和调度效率'))
    this.items.push(new PerformanceTestItemData('deltablue',
      '约束求解算法的实现，用于解决一组约束条件的最优解，评估算法性能和计算效率'))
    this.items.push(new PerformanceTestItemData('navier-stokes',
      '纳维-斯托克斯方程是流体动力学中描述流体运动的基本方程，评估流体动力学模拟的性能'))
    this.items.push(new PerformanceTestItemData('base64',
      'Base64编码方法，用于将二进制数据转换为ASCII字符串，评估数据编码和解码的性能'))
    this.items.push(new PerformanceTestItemData('crypto-aes',
      'AES（高级加密标准）对称加密算法，评估AES加密和解密的性能'))
    this.items.push(new PerformanceTestItemData('crypto-md5',
      'MD5哈希函数，用于数据完整性验证，评估MD5哈希算法的性能'))
    this.items.push(new PerformanceTestItemData('crypto-sha1',
      'SHA-1哈希函数，用于确保数据的完整性，评估SHA-1哈希算法的性能'))
    this.items.push(new PerformanceTestItemData('zlib', 'Zlib压缩，评估数据压缩和解压缩的性能'))
  }

  start() {
    if (this.performanceWorker === undefined) {
      this.performanceWorker = new worker.ThreadWorker('entry/ets/workers/PerformanceWorker.ets');
    }
    this.context.clearRect(0, 0, this.canvas_x, this.canvas_y);
    this.totalScoreValue = 0;
    let selectedItems: string[] = this.items
      .filter(item => item.isSelect === true)
      .map(item => item.title);
    this.performanceWorker.postMessage(selectedItems);
    this.fpsTimerId = setInterval(() => {
      this.fpsText = 'fps:' + this.fps.toString();
      this.fps = 0;
    }, 1000)
    this.performanceWorker.onmessage = (e: MessageEvents): void => {
      let data: WorkerMessage = e.data;
      switch (data.type) {
        case -1:
          this.context.clearRect(0, 0, this.canvas_x, this.canvas_y);
          break;
        case 0:
          Logger.info(this.TAG, data.name);
          if (data.name.indexOf('测试') !== -1) {
            const itemIndex = this.items.findIndex(item => item.title === data.name.split('第')[0]);
            if (itemIndex !== -1) {
              this.items[itemIndex].result = '测试中';
            }
            this.testResult = data.name;
            this.context.clearRect(0, 0, this.canvas_x, this.canvas_y);
          } else if (data.name.indexOf('完成') !== -1) {
            let score = 0;
            switch (data.name.replace('完成', '')) {
              case 'zlib':
                score = Math.round(100000000 / data.time) / 100;
                break;
              default:
                score = Math.round(10000000000 / data.time) / 100;
                break;
            }
            this.totalScoreValue = this.totalScoreValue + score;
            const itemIndex = this.items.findIndex(item => item.title === data.name.replace('完成', ''));
            if (itemIndex !== -1) {
              this.items[itemIndex].result = score.toString();
            }
          } else {
            let result = `${data.name}：耗时 ${data.time}，延迟 ${data.latency}`;
            Logger.info(this.TAG, result);
          }
          break;
        case 1:
          let red = Math.floor(data.r * 255);
          let green = Math.floor(data.g * 255);
          let blue = Math.floor(data.b * 255);
          Logger.info(this.TAG,
            `RayTrace pixel： (x:${data.x},y:${data.y}),rgb(${red},${green},${blue})`);
          this.context.fillStyle = `rgb(${red},${green},${blue})`
          this.context.fillRect(data.x * this.raytrace_canvas_scale, data.y * this.raytrace_canvas_scale,
            this.raytrace_canvas_scale,
            this.raytrace_canvas_scale)
          break;
        case 2:
          const vertices_x: number[] = data.vertices_x;
          const vertices_y: number[] = data.vertices_y;

          this.context.beginPath();
          this.context.moveTo(data.x + vertices_x[0] * this.canvas_scale + this.canvas_delta_x,
            this.canvas_y - (data.y + vertices_y[0] * this.canvas_scale));
          for (let i = 1; i < vertices_x.length; i++) {
            this.context.lineTo(data.x + vertices_x[i] * this.canvas_scale + this.canvas_delta_x,
              this.canvas_y - (data.y + vertices_y[i] * this.canvas_scale));
          }
          this.context.closePath();
          this.context.stroke();
          break;
        case 3:
          this.context.beginPath();
          this.context.arc(data.x + this.canvas_delta_x, this.canvas_y - data.y,
            data.radius * this.canvas_scale, 0, 2 * Math.PI);
          this.context.fill()
          this.context.closePath();
          this.context.stroke();
          this.fps++;
          break;
        case 4:
          // 定义球体的中心和半径
          const center = new DBody(data.x * 15, data.y * 15, data.latency * 15);
          console.log(`body radius: ${data.time} ,x ${data.x},y ${data.y},z ${data.latency}`);
          let radius: number = data.time;

          // 绘制球体的近似方法
          const slices = 20;
          const stacks = 20;
          this.context.beginPath();
          for (let i = 0; i < slices; i++) {
            for (let j = 0; j < stacks; j++) {
              const theta = (i / slices) * Math.PI;
              const phi = (j / stacks) * 2 * Math.PI;
              const x = center.x + radius * Math.sin(theta) * Math.cos(phi);
              const y = center.y + radius * Math.sin(theta) * Math.sin(phi);
              const z = center.z + radius * Math.cos(theta);
              const p = this.project(x, y, z);
              this.context.arc(p.x, p.y, radius / (z + this.d), 0, 2 * Math.PI);
            }
          }
          this.context.strokeStyle = this.rgbToHex(data.r, data.g, data.b);
          this.context.stroke();
          const text = data.name;
          const textPosition = this.project(center.x + 1.5 * radius, center.y, center.z);
          const textDistance = Math.abs(center.z + 1.5 * radius); // 文字与视点的距离
          const textSize = Math.max(10, 20 * (this.d / (textDistance + this.d))); // 动态调整文字大小
          this.context.font = `${textSize}px Arial`;
          this.context.fillStyle = '#000';
          this.context.fillText(text, textPosition.x, textPosition.y);
          if (data.name === '太阳') {
            this.fps++;
          }
          break;
        default:
          if (data.name.indexOf('全部完成') !== -1) {
            if (this.performanceWorker !== undefined) {
              try {
                this.performanceWorker.terminate();
              } catch (e) {
              }
            }
          }
          break;
      }
    }

    this.performanceWorker.onexit = (code) => {
      Logger.info(this.TAG, "main thread terminate");
      if (this.fpsTimerId !== 0) {
        clearInterval(this.fpsTimerId);
      }
      this.fpsText = ''
      this.totalScore = '性能评分：' + (Math.round(this.totalScoreValue * 100) / 100).toString();
      this.performanceWorker = undefined;
      this.isRunning = false;
    }

    this.performanceWorker.onerror = (err: ErrorEvent) => {
      Logger.info(this.TAG, "main error message " + err.message);
      this.performanceWorker = undefined;
      this.isRunning = false;
      this.fpsText = ''
      if (this.fpsTimerId !== 0) {
        clearInterval(this.fpsTimerId);
      }
    }
    this.isRunning = true;
  }

  project(x: number, y: number, z: number): DBody {
    return new DBody(
      (x / (z + this.d)) * 100 + this.canvas_x / 2, // 转换为屏幕坐标
      (y / (z + this.d)) * 100 + this.canvas_y / 2,
      0
    );
  }

  toHex(value: number) {
    const hex = value.toString(16);
    return hex.length === 1 ? '0' + hex : hex;
  };

  rgbToHex(r: number, g: number, b: number): string {
    return `#${this.toHex(r)}${this.toHex(g)}${this.toHex(b)}`;
  }
}

class DBody {
  x: number;
  y: number;
  z: number;

  constructor(x1: number, y1: number, z1: number) {
    this.x = x1;
    this.y = y1;
    this.z = z1;
  }
}