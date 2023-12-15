/**
 * Type definition for the videos in `HomePage - RecommendationTab`.
 * `首页-推荐` 中视频的类型定义。
 */
export interface RecommendedVideo {
  shortTitle: string
  fullTitle: string
  author: string
  date: string
  cover: Resource
  duration: number
  fwdCnt: number
  cmtCnt: number
  likeCnt: number
  favCnt: number

  // TODO
}


/**
 * Type definition for the articles in `HomePage - RecommendationTab`.
 * `首页-推荐` 中所展示的视频概览组件的传入参数。
 */
export interface RecommendedVideoOverview {
  title: string
  cover: Resource
  duration: number
  author: string
  cmtCnt: number
}
