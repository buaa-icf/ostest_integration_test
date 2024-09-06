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
import { CommonModifier, GridRowModifier } from '@ohos.arkui.modifier';
class MyGridRowModifier extends GridRowModifier {
  i: number = 0
  applyNormalAttributes(instance: MyGridRowModifier): void {
  }
  public setstyle(): void {
    let mystack: ItemAlign[] = [ItemAlign.Start, ItemAlign.Center, ItemAlign.End, ItemAlign.Stretch]
    this.alignItems(mystack[this.i]);
    this.i += 1;
  }
}
@Entry
@Component
struct UIComponentLayoutModifier042 {
  @State result: number = 0
  @State currentBp: string = 'unknown'
  @State myGridRowModifier: CommonModifier = new MyGridRowModifier().alignItems(ItemAlign.End)
  build() {
    Column() {
      Row(){
        GridRow({
        }) {
          GridCol({span:{ xs: 2, sm: 4, md: 2}}){
            Row() {
              Text("首页")
                .fontSize(24)
                .fontWeight(500)
                .margin({
                  top: 12,
                  bottom: 12,
                  left: 12
                })
            }
          }
          .height(50)
          .margin({ bottom: 8})
          GridCol({span:{xs: 2, sm: 4, md: 6}}){
            Search({placeholder:'搜索...'})
              .height(40)
              .margin({ bottom: 8})
              .placeholderFont({ size: 16 })
          }
          .height(50)
        }
        .backgroundColor('#ffd8d8f5')
        .width("30%")
        .height('30%')
        .attributeModifier(this.myGridRowModifier as MyGridRowModifier)
      }
     Row(){
       GridRow({
       }) {
         GridCol({span:{ xs: 2, sm: 4, md: 2}}){
           Row() {
             Text("首页")
               .fontSize(24)
               .fontWeight(500)
               .margin({
                 top: 12,
                 bottom: 12,
                 left: 12
               })
           }
         }
         .height(50)
         .margin({ bottom: 8})
         GridCol({span:{xs: 2, sm: 4, md: 6}}){
           Search({placeholder:'搜索...'})
             .height(40)
             .margin({ bottom: 8})
             .placeholderFont({ size: 16 })
         }
         .height(50)
       }
       .attributeModifier(this.myGridRowModifier as MyGridRowModifier)
     }
     .width("30%")
     .height('30%')
      Button('change style')
        .onClick(() => {
          (this.myGridRowModifier as MyGridRowModifier).setstyle()
        })
        .id('layout042')
        }
    .width("100%")
    .height('100%')
      }
}