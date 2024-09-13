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
struct fontAttributePage126 {
  @State textWidth:Length = 185
  @State arr:number[] = [1,2,3]

  build() {
    Column() {
      Text() {
        ContainerSpan() {
          ForEach(this.arr, (item: number) => {
            ImageSpan($r('app.media.icon'))
              .width(40)
              .height(40)
              .verticalAlign(ImageSpanAlignment.CENTER)
            Span(''+ String(item))
              .fontSize('16fp')
              .fontColor(Color.Black)
              .borderWidth(1)
          }, (item: string) => item)
        }.textBackgroundStyle({color:Color.Red,radius: 5})
      }.borderRadius(10)
      .width(this.textWidth)
      .borderWidth(1)

      Button("Text组件宽度--")
        .id("fontAttributePage126_01")
        .fontSize(18)
        .onClick(()=>{
          this.textWidth = 140
        })
        .margin({top:50})

      Button("Text组件宽度++")
        .id("fontAttributePage126_02")
        .fontSize(18)
        .onClick(()=>{
          this.textWidth = 250
        })
        .margin({top:50})
        .margin({top:50})
        .width(240)
    }.width('100%').alignItems(HorizontalAlign.Center)
  }
}