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
import { ColumnModifier, ColumnSplitModifier,CommonModifier, RowModifier } from '@ohos.arkui.modifier';
class MyRowModifier extends RowModifier {
  applyNormalAttributes(instance: MyRowModifier): void {
  }
}
@Entry
@Component
struct UITestCase012{
  @State result: number = 0
  @State alignItems: VerticalAlign = VerticalAlign.Top
  @State myRowModifier: CommonModifier = new MyRowModifier().alignItems(this.alignItems)
  build() {
    Column(){
      Row() {
        Text('1').width('10%').height(50).backgroundColor(0xF5DEB3)
        Text('2').width('10%').height(50).backgroundColor(0xD2B48C)
        Text('3').width('10%').height(50).backgroundColor(0xD2B48C)
      }
      .attributeModifier(this.myRowModifier as MyRowModifier)
      .height('50%')
      .backgroundColor('#ffeed8d8')
      Button('divider')
        .onClick(() => {
          this.alignItems = VerticalAlign.Bottom
        })
        .id('tectcase012')
    }
  }
}