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
import { CommonModifier, RowSplitModifier } from '@ohos.arkui.modifier';
class MyRowSplitModifier extends RowSplitModifier {
  isclick:boolean=false;
  applyNormalAttribute(instance: MyRowSplitModifier): void {
    if (this.isclick) {
      instance.resizeable(false)
    } else {
      instance.resizeable(true)
    }
  }
  public setGroup1():void{
    this.isclick=!this.isclick
  }
}
@Entry
@Component
struct UITestCase004 {
  @State result: number = 0
  @State myRowSplitModifier: CommonModifier = new MyRowSplitModifier().resizeable(true)
  build() {
    Column() {
      RowSplit() {
        Text('1').width('10%').height(100).backgroundColor(0xF5DEB3).textAlign(TextAlign.Center)
        Text('2').width('10%').height(100).backgroundColor(0xD2B48C).textAlign(TextAlign.Center)
        Text('3').width('10%').height(100).backgroundColor(0xF5DEB3).textAlign(TextAlign.Center)
        Text('4').width('10%').height(100).backgroundColor(0xD2B48C).textAlign(TextAlign.Center)
        Text('5').width('10%').height(100).backgroundColor(0xF5DEB3).textAlign(TextAlign.Center)
      }
      .attributeModifier(this.myRowSplitModifier as MyRowSplitModifier)
      .margin(100)
      Button('chnage resizeable')
        .onClick(() => {
          (this.myRowSplitModifier as MyRowSplitModifier).setGroup1()
        })
        .id('tectcase004')
    }
  }
}