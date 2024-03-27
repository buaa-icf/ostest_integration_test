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

import { getRandomShortStr } from './RandomResource'
import { PureTextNews } from '../../../ets/viewmodel/Article'

export const getPureTextNewsList = async (): Promise<Array<PureTextNews>> => {
  let pureTextNewsList: PureTextNews[] = []
  for (let i = 0; i < 5; ++i) {
    const pureTextNews = new PureTextNews(
      getRandomShortStr(),
      getRandomShortStr(),
      Date.now(),
      Math.floor(Math.random() * 1000),
      Math.floor(Math.random() * 1000),
      Math.floor(Math.random() * 1000)
    )
    pureTextNewsList.push(pureTextNews)
  }
  return pureTextNewsList
}