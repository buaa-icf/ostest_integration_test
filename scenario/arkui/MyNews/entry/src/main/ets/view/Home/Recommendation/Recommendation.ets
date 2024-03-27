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

import { getPureTextNewsList } from '../../../common/utils/GetArticles'
import { PureTextNews } from '../../../viewmodel/Article'

@Component
export default struct RecommendationTabContent {
  @State pureTextNewsList: PureTextNews[] = []

  aboutToAppear() {
    // Get news
    getPureTextNewsList().then((pureTextNewsList: PureTextNews[]) => {
      this.pureTextNewsList = pureTextNewsList
    })
  }

  build() {
    Column({ space: 6 }) {
      ForEach(this.pureTextNewsList, (item: PureTextNews, itemIdx: number) => {
        ArticleOverview({ title: item.title, author: item.author, cmtCnt: item.cmtCnt })
      }) // TODO: keyGenerator
    }
    .height('100%')
    .padding({ top: 10, left: 10, right: 10 })
  }
}

@Component
export struct ArticleOverview {
  @Prop title: string
  @Prop author: string
  @Prop cmtCnt: number

  build() {
    Column({ space: 3 }) {
      /* Title */
      Text(this.title)
        .fontSize(14)
        .fontColor($r('app.color.light_fg'))

      Row({ space: 5 }) {
        /* Author */
        Text(this.author)
          .fontSize(8)
          .fontColor($r('app.color.light_fg_shallow'))

        /* Comment count */
        if (this.cmtCnt > 0) {
          Text() {
            Span(this.cmtCnt.toString())
            Span($r('app.string.article_cmtCnt'))
          }
          .fontSize(8)
          .fontColor($r('app.color.light_fg_shallow'))
        }
      }
    }
    .width('100%')
    .alignItems(HorizontalAlign.Start)
  }
}