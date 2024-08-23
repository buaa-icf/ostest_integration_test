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
}
@Entry
@Component
struct UITestCase022{
  @State color1:string='red'
  @State strokeWidth:number=1
  @State myDividerModifier: CommonModifier = new MyDividerModifier().color(this.color1).strokeWidth(this.strokeWidth)
  build() {
    Column() {
      Row() {
        Divider()
          .attributeModifier(this.myDividerModifier as MyDividerModifier)
        Text('1')
          .width(20)
          .height(20)
          .backgroundColor(0xF5DEB3)
          .margin(10)
      }
      .height(200)
      .width(200)
      Button('divider')
        .onClick(() => {
         this.color1='yellow'
          this.strokeWidth=10
        })
        .id('tectcase022')
    }
    .height('100%')
    .width('100%')

  }
}