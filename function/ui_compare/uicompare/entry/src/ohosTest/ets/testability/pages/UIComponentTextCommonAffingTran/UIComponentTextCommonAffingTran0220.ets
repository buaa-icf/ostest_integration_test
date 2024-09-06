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
import matrix4 from '@ohos.matrix4';

let matrix1 = matrix4.init([1.0, 0.0, 0.0, 0.0,
  0.0, 1.0, 0.0, 0.0,
  0.0, 0.0, 1.0, 0.0,
  0.0, 0.0, 0.0, 1.0])
let matrix2 = matrix1.copy().scale({ x: -2, y: 0.5, z: -5 }).rotate(
  {
    x: 1,
    y: 0,
    z: 0,
    centerX: 0,
    centerY: 0,
    angle: 300
  }
)
let mars = [matrix1, matrix2]
@Entry
@Component
struct UIComponentTextCommonAffingTran0220 {
  @State m:number=0
  build() {
    Column() {
      Text('hello world')
        .width('75%')
        .height(75)
        .margin(30)
        .fontSize(25)
        .id('TextCommonAffing0190')
        .transform(mars[this.m])
        .backgroundColor('#fff5afaf')
      Button('click')
        .margin(10)
        .fontColor(0XCCCCFF)
        .width(100)
        .height(100)
        .onClick(() => {
          this.m+=1
        })
        .id('transform0220')
    }
  }
}
