import {
  APP_KV_DB as APP_KV_DB_ID,
  kvDatabase,
  KV_DB_KEYS,
  logger,
  NewsArticle,
  newsListApi,
  serverHealthApi
} from "common"
import { common } from "@kit.AbilityKit"
import { distributedKVStore } from "@kit.ArkData"
import { promptAction } from "@kit.ArkUI"
import { BusinessError } from "@kit.BasicServicesKit"

const NewsManager_LOG_TAG = 'NewsManager: '

export class NewsManager {
  /**
   * 当前应用的键值数据库实例对象
   */
  appKVDb: distributedKVStore.SingleKVStore | undefined = undefined

  /**
   * 初始化函数，获取当前应用的键值对数据库实例。
   * @param context
   * @returns
   */
  async init(context: common.UIAbilityContext): Promise<boolean> {
    kvDatabase.init(context)
    const res = await kvDatabase.getKVStoreById(APP_KV_DB_ID)
    if (res) {
      this.appKVDb = res
      logger.info(`${NewsManager_LOG_TAG}init: 获取appKVDb成功`)
      return true
    }
    logger.error(`${NewsManager_LOG_TAG}初始化失败`)
    return false
  }

  /**
   * 从后端更新新闻文章列表数据，并持久化最新的新闻列表数据。
   * @param times 递归尝试查询服务端的计数器参数，无需传入
   * @returns 是否成功获取以及持久化
   */
  async updateNewsListToDB(): Promise<boolean> {
    if (await serverHealthApi.isServerReady()) {
      const news: NewsArticle[] | null = (await newsListApi.getAllNews())
      if (news && this.appKVDb) {
        logger.info(`${NewsManager_LOG_TAG}成功获取最新新闻，总条数: ${news.length}`)
        try {
          this.appKVDb.put(KV_DB_KEYS.NEWS_ARTICLE_LIST, JSON.stringify(news))
          logger.info(`${NewsManager_LOG_TAG}数据库写入成功，无异常`)
          return true
        } catch (e) {
          let err = e as BusinessError
          logger.error(`${NewsManager_LOG_TAG}更新数据库NewsArticle数据发生异常，异常信息: ${err.message}`)
          return false
        }
      }
      logger.error(`${NewsManager_LOG_TAG}获取新闻失败`)
      return false
    }
    logger.error(`${NewsManager_LOG_TAG}获取新闻失败，后端服务状态异常，返回false`)
    return false
  }

  async getNewsArticleListFromDB(): Promise<NewsArticle[] | null> {
    if (this.appKVDb) {
      try {
        const res: string = (await this.appKVDb.get(KV_DB_KEYS.NEWS_ARTICLE_LIST)) as string
        logger.info(`${NewsManager_LOG_TAG}读取到数据库新闻列表数据: ${res}`)
        const newsArticleList = JSON.parse(res) as NewsArticle[]
        return newsArticleList
      } catch (e) {
        let err = e as BusinessError
        logger.error(`${NewsManager_LOG_TAG}尝试获取数据库新闻列表数据发生异常，异常信息: ${err.message}`)
        return null
      }
    }
    return null
  }
}

export const newsManager = new NewsManager()