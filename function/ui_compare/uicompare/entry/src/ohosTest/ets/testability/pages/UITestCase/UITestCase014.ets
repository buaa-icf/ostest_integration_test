/**
 * Copyright (c) 2024 Shenzhen Kaihong Digital Industry Development Co., Ltd.
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
import { CommonModifier, DividerModifier, RowModifier } from '@ohos.arkui.modifier';
class MyDividerModifier extends DividerModifier {
  applyNormalAttributes(instance: MyDividerModifier): void {
  }
  public setGroup1(): void {
    this.lineCap(LineCapStyle.Square)
  }
}
@Entry
@Component
struct UITestCase014{
  @State result: number = 0
  @State myDividerModifier: CommonModifier = new MyDividerModifier().lineCap(LineCapStyle.Round).strokeWidth(20)
  build() {
    Column() {
      Column() {
        Text('1')
          .width(20)
          .height(20)
          .backgroundColor(0xF5DEB3)
          .margin(10)
        Divider()
          .attributeModifier(this.myDividerModifier as MyDividerModifier)
          .color('#F1F3F5')
      }
      .height(200)
      .width(200)
      Button('linecap1')
        .onClick(() => {
          this.result++;
          if (this.result % 2 === 1) {
            (this.myDividerModifier as MyDividerModifier).setGroup1()
          } else {
            console.log('not set')
          }
        })
        .id('tectcase014')
    }
    .height('100%')
    .width('100%')

  }
}