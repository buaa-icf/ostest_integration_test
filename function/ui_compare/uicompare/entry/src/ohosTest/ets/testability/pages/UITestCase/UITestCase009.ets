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
import { CommonModifier, RowModifier } from '@ohos.arkui.modifier';
class MyRowModifier extends RowModifier {
  ischange:boolean=true
  applyNormalAttribute(instance: MyRowModifier): void {
    if(this.ischange) {
      instance.justifyContent(FlexAlign.Start)
      instance.alignItems(VerticalAlign.Top)
    }else{
      instance.justifyContent(FlexAlign.End)
      instance.alignItems(VerticalAlign.Bottom)
    }
  }
  public setGroup2(): void {
    this.ischange=!this.ischange
  }
}
@Entry
@Component
struct UITestCase009{
  @State result: number =1
  @State myRowModifier: CommonModifier = new MyRowModifier()
  build() {
    Column() {
      Row() {
        Text('1').width('10%').height(50).backgroundColor(0xF5DEB3)
        Text('2').width('10%').height(50).backgroundColor(0xD2B48C)
        Text('3').width('10%').height(50).backgroundColor(0xD2B48C)
      }
      .attributeModifier(this.myRowModifier as RowModifier)
      .width('100%').height(300)
.backgroundColor('#ffeed8d8')
      Row(){
        Button('double')
          .onClick(() => {
            if (this.result % 2 === 1) {
              (this.myRowModifier as MyRowModifier).setGroup2();
            } else {
              console.log('not set')
            }
          })
          .id('tectcase009')
      }
    }.width('100%').height('100%')
  }
}