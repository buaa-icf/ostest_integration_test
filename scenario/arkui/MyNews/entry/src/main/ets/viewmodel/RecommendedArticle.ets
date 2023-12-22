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
