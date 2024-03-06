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


import { recommendedArticleList } from '../../mock/RecommendedArticleList'
import { recommendedVideoList } from '../../mock/RecommendedVideoList'
import { RecommendedArticle, RecommendedArticleOverview } from '../viewmodel/RecommendedArticle'
import { RecommendedVideo, RecommendedVideoOverview } from '../viewmodel/RecommendedVideo'

/**
 * `首页-推荐` 页面内容
 */
@Component
export struct RecommendationTabContent {
  private scroller: Scroller = new Scroller()

  build() {
    List({ space: 14, scroller: this.scroller }) {
      ListItemGroup({ space: 6 }) {
        ForEach(recommendedArticleList, (item: RecommendedArticle) => {
          ListItem() {
            ArticleOverview({
              isPinned: item.isPinned,
              title: item.shortTitle,
              author: item.author,
              cmtCnt: item.cmtCnt
            })
          }.width('90%')
        })
      }

      ListItem() {
        Divider()
          .width('90%')
          .strokeWidth(1)
          .color($r('app.color.light_border'))
      }

      ListItemGroup({ space: 14 }) {
        ForEach(recommendedVideoList, (item: RecommendedVideo) => {
          ListItem() {
            VideoOverview({
              title: item.shortTitle,
              cover: item.cover,
              duration: item.duration,
              author: item.author,
              cmtCnt: item.cmtCnt
            })
          }.width('90%')
        })
      }
    }
    .width('100%')
    .height('100%')
    .padding({ top: 12 })
    .alignListItem(ListItemAlign.Center)
    .backgroundColor($r("app.color.light_bg"))
  }
}


/**
 * 文章概览（无图、仅标题）
 */
@Builder
function ArticleOverview($$: RecommendedArticleOverview) {
  Column() {
    /* 文章标题 */
    Text($$.title)
      .fontSize(14)
      .fontColor($r('app.color.light_fg'))

    Row({ space: 5 }) {
      /* 按需显示置顶字样 */
      if ($$.isPinned) {
        Text('置顶')
          .fontSize(10)
          .fontColor($r('app.color.primary'))
      }

      /* 文章作者 */
      Text($$.author)
        .fontSize(10)
        .fontColor($r('app.color.light_fg_shallow'))

      /* 按需显示文章评论数 */
      if ($$.cmtCnt > 0) {
        Text(`${$$.cmtCnt}评论`)
          .fontSize(10)
          .fontColor($r('app.color.light_fg_shallow'))
      }
    }.width('100%')
  }
  .width('100%')
  .alignItems(HorizontalAlign.Start)
}


/**
 * 视频概览（标题+视频封面）
 */
@Builder
function VideoOverview($$: RecommendedVideoOverview) {
  Column() {
    Column({ space: 5 }) {
      /* 视频标题 */
      Text($$.title)
        .fontSize(14)
        .fontColor($r('app.color.light_fg'))

      /* 视频封面 */
      Stack() {
        Image($$.cover)
          .width('100%')
          .objectFit(ImageFit.Contain)
          .borderRadius(5)
        Image($r("app.media.ic_public_play"))
          .size({ width: 35, height: 35 })
          .fillColor($r('app.color.primary_fg'))
          .opacity(0.7)
      }.alignContent(Alignment.Center)

      Row({ space: 5 }) {
        /* 视频作者 */
        Text($$.author)
          .fontSize(12)
          .fontColor($r('app.color.light_fg_shallow'))

        /* 按需显示视频评论 */
        if ($$.cmtCnt > 0) {
          Text(`${$$.cmtCnt}评论`)
            .fontSize(12)
            .fontColor($r('app.color.light_fg_shallow'))
        }
      }.width('100%')
    }
    .width('100%')
    .alignItems(HorizontalAlign.Start)
  }
  .width('100%')
  .alignItems(HorizontalAlign.Start)
}
