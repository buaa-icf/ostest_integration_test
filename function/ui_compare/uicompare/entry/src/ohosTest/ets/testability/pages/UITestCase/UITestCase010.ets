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
import { ColumnModifier, CommonModifier} from '@ohos.arkui.modifier';
class MyColumnModifier extends ColumnModifier {
  ischange:boolean=true
  applyNormalAttribute(instance: MyColumnModifier): void {
    if(this.ischange) {
      instance.justifyContent(FlexAlign.Start)
      instance.alignItems(HorizontalAlign.Start)
    }else{
      instance.justifyContent(FlexAlign.End)
      instance.alignItems(HorizontalAlign.End)
    }
  }
  public setGroup2(): void {
    this.ischange=!this.ischange
  }
}
@Entry
@Component
struct UITestCase010{
  @State result: number =1
  @State myColumnModifier: CommonModifier = new MyColumnModifier()
  build() {
    Column() {
      Column() {
        Text('1').width('10%').height(50).backgroundColor(0xF5DEB3)
        Text('2').width('10%').height(50).backgroundColor(0xD2B48C)
        Text('3').width('10%').height(50).backgroundColor(0xD2B48C)
      }
      .attributeModifier(this.myColumnModifier as ColumnModifier)
      .width('100%')
      .height('70%')
      .backgroundColor('#ffeed8d8')
        Button('double')
          .onClick(() => {
            if (this.result % 2 === 1) {
              (this.myColumnModifier as MyColumnModifier).setGroup2();
            } else {
              console.log('not set')
            }
          })
          .id('tectcase010')
    }.width('100%').height('100%')
  }
}