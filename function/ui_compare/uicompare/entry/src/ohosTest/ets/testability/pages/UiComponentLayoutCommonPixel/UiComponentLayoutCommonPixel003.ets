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
struct UiComponentLayoutCommonPixel003 {
  @State Number: number[] = [0, 1, 2, 3, 4, 5, 6]
  scroller: Scroller = new Scroller()
  @State defined_color: Color[] = [Color.Black, Color.Blue, Color.Brown, Color.Gray, Color.Green, Color.Orange,Color.Pink]

  build() {
    Column({ space: 5 }) {
      Grid(this.scroller) {
        ForEach(this.Number, (index:number) => {
          GridItem() {
            Text(index.toString())
              .fontSize(16)
              .backgroundColor(0xF9CF93)
              .textAlign(TextAlign.Center)
          }
          .width(80.4)
          .height(80.5)
          .backgroundColor(this.defined_color[index])
        })
      }
      .columnsTemplate('1fr 1fr 1fr 1fr')
      .layoutDirection(GridDirection.ColumnReverse)
      .onScrollIndex((first: number) => {
        console.info(first.toString())
      })
      .width('90%')
      .backgroundColor(0xFAEEE0)
      .height('90%')
    }.width('100%')
    .margin({ top: 50 })
  }
}
