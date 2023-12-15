import { recommendedArticleList } from '../../mock/RecommendedArticleList'
import { recommendedVideoList } from '../../mock/RecommendedVideoList'
import { RecommendedArticle, RecommendedArticleOverview } from '../viewmodel/RecommendedArticle'
import { RecommendedVideo, RecommendedVideoOverview } from '../viewmodel/RecommendedVideo'

/**
 * Content in `HomePage - RecommendationTab`.
 * `首页-推荐` 中的所有内容。
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
 * Article overview in `HomePage - RecommendationTab`.
 * `首页-推荐` 中的文章概览。
 */
@Builder
function ArticleOverview($$: RecommendedArticleOverview) {
  Column() {
    /* Article title. */
    Text($$.title)
      .fontSize(18)
      .fontColor($r('app.color.light_fg'))

    Row({ space: 5 }) {
      /* Display '置顶' if the article is pinned. */
      if ($$.isPinned) {
        Text('置顶')
          .fontSize(12)
          .fontColor($r('app.color.primary'))
      }

      /* Article author. */
      Text($$.author)
        .fontSize(12)
        .fontColor($r('app.color.light_fg_shallow'))

      /* Article comment count. */
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


/**
 * Video overview in `HomePage - RecommendationTab`.
 * `首页-推荐` 中的视频概览。
 */
@Builder
function VideoOverview($$: RecommendedVideoOverview) {

  Column() {
    Column({ space: 5 }) {
      /* Video title. */
      Text($$.title).fontSize(18)

      /* Video cover. */
      Stack() {
        Image($$.cover)
          .width('100%')
          .objectFit(ImageFit.Contain)
          .borderRadius(5)
        Image($r("app.media.ic_public_play"))
          .size({ width: 45, height: 45 })
          .fillColor($r('app.color.primary_fg'))
          .opacity(0.7)
      }.alignContent(Alignment.Center)

      Row({ space: 5 }) {
        /* Video author. */
        Text($$.author)
          .fontSize(12)
          .fontColor($r('app.color.light_fg_shallow'))

        /* Video comment count. */
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
