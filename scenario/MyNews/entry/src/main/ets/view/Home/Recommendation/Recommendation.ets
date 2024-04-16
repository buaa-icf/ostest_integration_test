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

import { getRecommendationNewsList } from '../../../common/utils/GetArticles'
import { News, NewsType } from '../../../viewmodel/Article'
import PureTextNewsOverview from './PureTextNewsOverview'
import ImgNewsOverview from './ImgNewsOverview'

@Component
export default struct RecommendationTabContent {
  @State isRefreshing: boolean = false
  @State newsList: News[] = []

  aboutToAppear() {
    // Get news
    this.refresh()
  }

  /* Get new content */
  async refresh() {
    this.newsList = await getRecommendationNewsList()
  }

  build() {
    Refresh({ refreshing: $$this.isRefreshing }) {
      Column() {
        Scroll() {
          Column({ space: 12 }) {
            /* Pure text news */
            Column({ space: 6 }) {
              ForEach(this.newsList.filter((item: News) => item.type === NewsType.PURE_TEXT),
                (item: News, itemIdx: number) => {
                  PureTextNewsOverview({
                    title: item.title,
                    author: item.author,
                    cmtCnt: item.cmtCnt })
                }) // TODO: keyGenerator
            }

            Divider()
              .borderColor($r('app.color.light_border'))

            /* Image contained news */
            Column({ space: 30 }) {
              ForEach(this.newsList.filter((item: News) => item.type === NewsType.WITH_IMG),
                (item: News, itemIdx: number) => {
                  ImgNewsOverview({
                    title: item.title,
                    author: item.author,
                    imgList: item.imgList,
                    cmtCnt: item.cmtCnt
                  })
                }) // TODO: keyGenerator
            }
          }
        }
        .padding({ top: 10, left: 15, right: 15 })
        .edgeEffect(EdgeEffect.Spring)
        .onScrollEdge((side: Edge) => {
          // TODO: Load new content
        })
      }
    }
    .height('100%')
    .onRefreshing(() => {
      this.isRefreshing = true
      this.refresh().then(() => {
        this.isRefreshing = false
      })
    })
  }
}