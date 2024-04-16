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

import { GoodsDataSource, GoodsItem } from '../../viewmodel/GoodsDataSource'
import GoodsCard from './GoodsCard'

/**
 * Continuously loaded goods list
 */
@Component
export default struct GoodsList {
  private goodsDataSource: GoodsDataSource = new GoodsDataSource()
  private goodsListScroller: Scroller = new Scroller()

  aboutToAppear() {
    // Initialize the goods list
    this.goodsDataSource.loadNewGoodsData(50)
  }

  build() {
    Stack({ alignContent: Alignment.BottomEnd }) {
      List({ space: 8, scroller: this.goodsListScroller }) {
        LazyForEach(this.goodsDataSource, (item: GoodsItem, itemIdx: number) => {
          /* Each goods card */
          ListItem() {
            GoodsCard({
              text: `[${item.id}] ${item.text}`,
              img: item.img,
              price: item.price
            })
          }
          .onAppear(() => {
            /* Load new goods data before reaching bottom */
            if (itemIdx + 20 == this.goodsDataSource.totalCount()) {
              this.goodsDataSource.loadNewGoodsData(50)
            }
          })
        }, (item: GoodsItem) => item.id)
      }
      .width('100%')
      .height('100%')
      .lanes(2, 8)
      .scrollBar(BarState.Off)

      /* Back to top button */
      Button() {
        Image($r('app.media.ic_public_backtotop'))
          .size({ width: 20, height: 20 })
          .fillColor($r('app.color.light_fg'))
      }
      .margin({ bottom: 30, right: 5 })
      .padding(8)
      .backgroundColor($r('app.color.light_bg'))
      .shadow(ShadowStyle.OUTER_DEFAULT_MD)
      .onClick(() => {
        // Scroll to the top of the list
        this.goodsListScroller.scrollToIndex(0)
      })
    }
    .height(0)
    .flexGrow(1)
  }
}