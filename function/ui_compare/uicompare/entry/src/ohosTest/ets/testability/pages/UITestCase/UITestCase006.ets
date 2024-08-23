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
import { ColumnModifier, ColumnSplitModifier,CommonModifier } from '@ohos.arkui.modifier';
class MyColumnModifier extends ColumnModifier {
  applyNormalAttributes(instance: MyColumnModifier): void {

  }
  public setGroup1(): void {
    this.alignItems(HorizontalAlign.End)
  }
}
@Entry
@Component
struct UITestCase006 {
  @State result: number = 0
  @State myColumnModifier: CommonModifier = new MyColumnModifier().alignItems(HorizontalAlign.Start)
  build() {
    Column() {
    Text('1').width('10%').height(50).backgroundColor(0xF5DEB3)
    Text('2').width('10%').height(50).backgroundColor(0xD2B48C)
    Text('3').width('10%').height(50).backgroundColor(0xD2B48C)

      Button('divider')
        .onClick(() => {
          this.result++;
          if (this.result % 2 === 1) {
            (this.myColumnModifier as MyColumnModifier).setGroup1()
          } else {
            console.log('not set')
          }
        })
        .id('tectcase006')
    }
    .attributeModifier(this.myColumnModifier as MyColumnModifier )
    .width('100%')

  }
}