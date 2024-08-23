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
  i:number=0
  applyNormalAttributes(instance: MyStackModifier): void {
  }
  public setalign():void{
    let mystack:Alignment[]=[Alignment.TopStart,Alignment.Top,Alignment.TopEnd,Alignment.Start,Alignment.Center,Alignment.End,Alignment.BottomStart,Alignment.Bottom,Alignment.BottomEnd];
      this.alignContent(mystack[this.i]);
      this.i += 1;
}
}
@Entry
@Component
struct UIComponentLayoutModifier026 {
  @State result: number = 0
  @State myStackModifier: CommonModifier = new MyStackModifier().alignContent(Alignment.TopStart)
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
      .width("30%")
      .height('30%')
Divider()
      Stack() {
        Text('Text2')
          .width(100)
          .height(100)
          .backgroundColor("#aabbcc")
      }
      .backgroundColor(Color.Pink)
      .attributeModifier(this.myStackModifier as MyStackModifier)
      .width("30%")
      .height('30%')
      Row(){
        Button('divider')
          .onClick(() => {
            (this.myStackModifier as MyStackModifier).setalign()
          })
          .id('UIComponentLayoutModifier026')
      }
    }
  }
}