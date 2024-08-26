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
import { ColumnSplitModifier,CommonModifier } from '@ohos.arkui.modifier';
class MyColumnSplitModifier extends ColumnSplitModifier {
  applyNormalAttributes(instance: CommonAttribute): void {
  }
  public setGroup1(): void {
    this.divider({ startMargin: 0, endMargin: 0 })
    this.resizeable(true)
  }
}
@Entry
@Component
struct UITestCase025{
  @State result: number = 0
  @State myColumnSplitModifier: CommonModifier = new MyColumnSplitModifier().divider({ startMargin: 5, endMargin: 5 }).resizeable(false)
  build() {
    Column() {
      ColumnSplit() {
        Text('1').width('100%').height(50).backgroundColor(0xF5DEB3).textAlign(TextAlign.Center)
        Text('2').width('100%').height(50).backgroundColor(0xD2B48C).textAlign(TextAlign.Center)
      }
      .attributeModifier(this.myColumnSplitModifier as MyColumnSplitModifier)
      Button('divider')
        .onClick(() => {
          this.result++;
          if (this.result % 2 === 1) {
            (this.myColumnSplitModifier as MyColumnSplitModifier).setGroup1()
          } else {
            console.log('not set')
          }
        })
        .id('tectcase025')
    }
  }
}