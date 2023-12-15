/**
 * Type definition for the articles in `HomePage - RecommendationTab`.
 * `首页-推荐` 中文章的类型定义。
 */
export interface RecommendedArticle {
  isPinned: boolean
  shortTitle: string
  fullTitle: string
  author: string
  date: string
  fwdCnt: number
  cmtCnt: number
  likeCnt: number
  favCnt: number

  // TODO
}


/**
 * Type definition for the articles in `HomePage - RecommendationTab`.
 * `首页-推荐` 中所展示的文章概览组件的传入参数。
 */
export interface RecommendedArticleOverview {
  isPinned: boolean
  title: string
  author: string
  cmtCnt: number
}
