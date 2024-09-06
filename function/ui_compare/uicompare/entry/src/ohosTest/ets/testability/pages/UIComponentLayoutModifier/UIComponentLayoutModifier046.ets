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
  applyNormalAttributes(instance: MyGridRowModifier): void {
  }
  public setgroup1():void{
  this.alignItems(ItemAlign.Center)
}
  public setgroup2():void{
    this.alignItems(ItemAlign.End)
  }
}
@Entry
@Component
struct UIComponentLayoutModifier046{
  @State result: number = 0
  @State currentBp: string = 'unknown'
  @State myGridRowModifier: CommonModifier = new MyGridRowModifier().alignItems(ItemAlign.End)
  build() {
    Column() {
        GridRow({
        }) {
          GridCol({span:{ xs: 2, sm: 4, md: 2}}){
              Text("首页")
                .fontSize(24)
                .fontWeight(500)
          }
          .height(200)
          .margin({ bottom: 8})
          GridCol({span:{xs: 2, sm: 4, md: 6}}){
            Search({placeholder:'搜索...'})
              .height(40)
              .margin({ bottom: 8})
              .placeholderFont({ size: 16 })
          }
          .height(200)
          }
        .backgroundColor('#ffd8d8f5')
        .width("80%")
        .height("80%")
        .attributeModifier(this.myGridRowModifier as MyGridRowModifier)
      Button('color')
        .onClick(()=>{
          (this.myGridRowModifier as MyGridRowModifier).setgroup1()
        })
        .id('modifier046-1')
      Button('color1')
        .onClick(()=>{
          (this.myGridRowModifier as MyGridRowModifier).setgroup2()
        })
        .id('modifier046-2')
        }
        .width("100%")
        .height("100%")
      }
}