/*
 * Copyright (c) 2024 Shenzhen Kaihong Digital Industry Development Co., Ltd.
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

@Entry
@Component
struct UiComponentSymbolSymbol009 {
  @State fontweight:number = 400
  @State fontsize:number = 12
  build() {
    Column() {
      Text() {
        SymbolSpan($r('sys.symbol.ohos_trash'))
          .fontWeight(this.fontweight)
          .fontSize(this.fontsize)
          .renderingStrategy(SymbolRenderingStrategy.SINGLE)
          .fontColor([Color.Black, Color.Green, Color.White])
      }
      .margin(70)
      .width('90%')
      .height(100)
      Button('change fontsize')
        .onClick(()=>{
          this.fontsize=this.fontsize+50
        })
        .id('fontsize009')
        .margin(20)
        .width('90%')
        .height(50)
      Button('change fontweight')
        .onClick(()=>{
          this.fontweight=this.fontweight+100
        })
        .id('fontweight009')
        .margin(20)
        .width('90%')
        .height(50)
    }
  }
}