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
import { CommonModifier,  StackModifier } from '@ohos.arkui.modifier';
class MyStackModifier extends StackModifier {
  applyNormalAttributes(instance: MyStackModifier): void {
  }
  public setsize():void{
    this.width(200)
    this.height(300)
  }
}
@Entry
@Component
struct UIComponentLayoutModifier029 {
  @State result: number = 0
  @State myStackModifier1: CommonModifier = new MyStackModifier().alignContent(Alignment.BottomStart)
  build() {
    Column(){
      Stack() {
        Text('Text1')
          .width(100)
          .height(100)
          .backgroundColor("#aabbcc")
      }
      .backgroundColor(Color.Pink)
      .attributeModifier(this.myStackModifier1 as MyStackModifier)
      .width('50%')
      .height('50%')
      Button('divider')
        .onClick(() => {
          (this.myStackModifier1 as MyStackModifier).setsize()
        })
        .id('UIComponentLayoutModifier029')
    }
  }
}