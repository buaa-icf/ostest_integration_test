import { AppStorageV2, curves, promptAction, PromptAction, Router, router } from "@kit.ArkUI"
import {
  GetUIContext,
  logger,
  NAV_DESTS,
  NAV_PATH_STUCK,
  NewsArticle,
  newsListApi,
  serverHealthApi
} from "common"

const START_PAGE_TAGE = 'StartPage:  '

@Entry
@ComponentV2
struct StarPage {
  uiRouter: Router = this.getUIContext().getRouter()

  async aboutToAppear(): Promise<void> {
    let isServerReady: boolean = false
    setTimeout(() => {
      logger.debug(START_PAGE_TAGE + '延时跳转')
      this.uiRouter.pushUrl({ url: "pages/Index", recoverable: false })
      // 为了能触发路由动画特此使用push
      logger.debug(START_PAGE_TAGE + '清理启动页')
      this.uiRouter.clear()
    }, 2000)
    await serverHealthApi.isServerReady().then((res: boolean) => {
      logger.debug(START_PAGE_TAGE + res.valueOf())
      if (res) {
        isServerReady = true
        logger.info(START_PAGE_TAGE + '服务端准备就绪isServerReady=' + isServerReady)
      } else {
        isServerReady = false
        logger.info(START_PAGE_TAGE + '服务端准备中isServerReady=' + isServerReady)
      }
    })
    if (isServerReady) {
      logger.debug(START_PAGE_TAGE + '尝试获取全部新闻列表')
      newsListApi.getAllNews().then((res: NewsArticle[] | null) => {
        if (res === null) {
          logger.warn(START_PAGE_TAGE + '')
        } else {
          promptAction.openToast({ message: '获取新闻列表成功', duration: 2000 })
        }
      })
    }
  }

  pageTransition() {
    PageTransitionExit({ type: RouteType.None, duration: 200, curve: Curve.EaseInOut })
      .slide(SlideEffect.Left)
  }

  build() {

    Column() {
      Image($r('app.media.logo'))
        .width('20%')
        .margin({bottom:100})
      Text('Welcome')
        .fontSize(30)
        .fontColor('#ff00be53')
      Text('NowInOpenHarmony')
        .fontSize(50)
        .fontColor('#ff00be53')
        .fontWeight(700)
    }
    .expandSafeArea()
    .backgroundColor('#062872')
    .justifyContent(FlexAlign.Center)
    .width('100%')
    .height('100%')

  }
}