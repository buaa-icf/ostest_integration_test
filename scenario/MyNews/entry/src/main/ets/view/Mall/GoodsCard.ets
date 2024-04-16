/*
 * Copyright (c) 2023 Southeast University.
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

/**
 * Goods cards in the goods list
 */
@Component
export default struct GoodsCard {
  @Prop text: string
  @Prop img: Resource
  @Prop price: number

  build() {
    Column() {
      /* Image */
      Image(this.img)
        .width('100%')
        .height(150)
        .objectFit(ImageFit.Cover)

      Column({ space: 5 }) {
        /* Name */
        Text(this.text)
          .width('100%')
          .fontSize(14)
          .fontColor($r('app.color.light_fg'))
          .maxLines(1)
          .textOverflow({ overflow: TextOverflow.Ellipsis })

        /* Price */
        Text() {
          Span('￥')
            .fontSize(12)
          Span(this.price.toFixed(1).toString())
        }
        .width('100%')
        .fontColor($r('app.color.primary'))
      }
      .margin(5)
    }
    .clip(true)
    .borderRadius(5)
    .backgroundColor($r('app.color.light_bg'))
  }
}