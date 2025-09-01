import { IS_STICKY, NewsArticle, NewsListHeaderIsSticky } from "common"
import { NewsList, newsManager, NewsSwiper } from "feature"
import { AppStorageV2 } from "@kit.ArkUI"

const MainPage_TAG = 'MainPage: '

@Preview
@ComponentV2
export struct MainPage {
  @Local newsList: NewsArticle[] | null = null
  @Local isNewsListSticky: NewsListHeaderIsSticky =
    AppStorageV2.connect(NewsListHeaderIsSticky, IS_STICKY, () => new NewsListHeaderIsSticky())!
  @Local listScroller: Scroller = new Scroller()
  @Local isLoading: boolean = false

  async aboutToAppear(): Promise<void> {
    this.newsList = await newsManager.getNewsArticleListFromDB()
    if (!this.newsList) {
      this.getUIContext().getPromptAction().showToast({ message: `当前数据库新闻数据为空,请连接后端服务以更新数据` })
    } else if (this.newsList) {
      this.getUIContext().getPromptAction().showToast({ message: `查询到${this.newsList.length}条新闻数据` })
    }
  }

  async reloadAllData() {
    this.getUIContext().getPromptAction().showToast({ message: '刷新数据' })
    if (await newsManager.updateNewsListToDB()) {
      this.newsList = await newsManager.getNewsArticleListFromDB()
      return true
    }
    this.getUIContext().getPromptAction().showToast({ message: '获取新数据失败请稍后再试。' })
    return false
  }

  build() {
    Column() {
      Refresh({ refreshing: $$this.isLoading }) {
        List({ space: 20, scroller: this.listScroller }) {
          ListItemGroup() {
            ListItem() {
              NewsSwiper()
            }
          }

          NewsList({ newsList: this.newsList ?? [], listScroller: this.listScroller })
        }
        .onReachStart(()=>{
          this.isNewsListSticky.isSticky = false
        })
        .edgeEffect(EdgeEffect.Spring, { alwaysEnabled: true })
        .chainAnimation(true)
        .sticky(StickyStyle.Header)
        .width('100%')
        .height('100%')
      }
      .onRefreshing(async () => {
        await this.reloadAllData()
        this.isLoading = false
      })
    }
    .width('100%')
    .height('100%')
  }
}