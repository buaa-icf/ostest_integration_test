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

import { getRandomImg, getRandomShortStr } from './RandomResource'
import { News, NewsType } from '../../../ets/viewmodel/Article'

export const getRecommendationNewsList = async (): Promise<Array<News>> => {
  let newsList: News[] = []
  return new Promise((resolve, reject) => {
    setTimeout(() => {
      newsList = newsList.concat(getPureTextNewsList())
      newsList = newsList.concat(getImgNewsList())
      resolve(newsList)
    }, 1000)
  })
}

/**
 * Generate news list (pure text)
 */
const getPureTextNewsList = (): News[] => {
  let pureTextNewsList: News[] = []
  for (let i = 0; i < 5; ++i) {
    const pureTextNews = new News(
      getRandomShortStr(),
      getRandomShortStr(),
      Date.now(),
      NewsType.PURE_TEXT,
      [],
      Math.floor(Math.random() * 1000),
      Math.floor(Math.random() * 1000),
      Math.floor(Math.random() * 1000)
    )
    pureTextNewsList.push(pureTextNews)
  }
  return pureTextNewsList
}

/**
 * Generate news list (with images)
 */
const getImgNewsList = (): News[] => {
  let imgNewsList: News[] = []
  for (let i = 0; i < 5; ++i) {
    // Image list
    let imgList: Resource[] = []
    for (let j = 0; j < 3; ++j) {
      imgList.push(getRandomImg())
    }
    const imgNews = new News(
      getRandomShortStr(),
      getRandomShortStr(),
      Date.now(),
      NewsType.WITH_IMG,
      imgList,
      Math.floor(Math.random() * 1000),
      Math.floor(Math.random() * 1000),
      Math.floor(Math.random() * 1000)
    )
    imgNewsList.push(imgNews)
  }
  return imgNewsList
}
