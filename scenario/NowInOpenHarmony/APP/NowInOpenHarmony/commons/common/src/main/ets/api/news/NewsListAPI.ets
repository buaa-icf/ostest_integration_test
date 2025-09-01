import { NewsArticle, NewsResponse } from "../../modules/news/NewsListModules";
import { logger } from "../../utils/logger/logger";
import { axiosHttp } from "../http/AxiosHttp";
const NewsListAPI_TAG = 'NewsListAPI: '

export class NewsListAPI{
  /**
   * 获取全部新闻列表接口，在调用前请先调用isServerReady接口
   * @returns 若是出现异常则为空正常则为全部新闻列表NewsArticle[]
   */
  async getAllNews(): Promise<NewsArticle[] | null>{
    try {
      logger.debug(NewsListAPI_TAG+'进入getAllNews')
      const res = await axiosHttp.request<NewsResponse>({
        url:'/api/news/?all=true'
      })
      logger.info(NewsListAPI_TAG+'res = '+JSON.stringify(res))
      return res.articles
    }catch (err){
      logger.error(JSON.stringify(err))
      return null
    }
  }
}
export const newsListApi = new NewsListAPI()