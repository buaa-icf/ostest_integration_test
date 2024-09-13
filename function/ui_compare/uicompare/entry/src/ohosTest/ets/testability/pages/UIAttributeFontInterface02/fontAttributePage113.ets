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

@Entry
@Component
struct fontAttributePage113 {
  @State colorStyle:Color = Color.Green

  build() {
    Column() {
      Text() {
        Span('   Hello World !   ')
          .fontSize('20fp')
          .textBackgroundStyle({ color:this.colorStyle, radius:5 })
          .fontColor(Color.Black)
      }.margin({top:50})

      Button("背景色：红色")
        .id("fontAttributePage113")
        .fontSize(18)
        .onClick(()=>{
          this.colorStyle = Color.Red
        })
        .margin({top:50})
    }.width('100%').alignItems(HorizontalAlign.Center)
  }
}