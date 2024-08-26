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
}
@Entry
@Component
struct UIComponentLayoutModifier027 {
  @State result: number = 0
  @State mystack:Alignment[]=[Alignment.TopStart,Alignment.Top,Alignment.TopEnd,Alignment.Start,Alignment.Center,Alignment.End,Alignment.BottomStart,Alignment.Bottom,Alignment.BottomEnd];
  @State myStackModifier: CommonModifier = new MyStackModifier().alignContent(this.mystack[this.result])
  build() {
    Column(){
      Stack() {
        Text('Text1')
          .width(100)
          .height(100)
          .backgroundColor("#aabbcc")
      }
      .backgroundColor(Color.Pink)
      .attributeModifier(this.myStackModifier as MyStackModifier)
      .width("50%")
      .height('50%')
      Row(){
        Button('divider')
          .onClick(() => {
            this.result +=1
          })
          .id('UIComponentLayoutModifier027')
      }
    }
  }
}