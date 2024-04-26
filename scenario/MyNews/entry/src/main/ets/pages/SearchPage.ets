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

import router from '@ohos.router';
import { getRandomShortStr } from '../common/utils/RandomResource';
import { SearchPageParams } from '../viewmodel/RouterParams';
import TopBar from '../view/Search/TopBar';
import BottomBar from '../view/Search/BottomBar';
import TrendingTopics from '../view/Search/TrendingTopics';
import IncognitoModeIndicator from '../view/Search/IncognitoModeIndicator';
import SearchHistory from '../view/Search/SearchHistory'

let para: Record<string, string[]> = { 'search_history': [] };
let storage: LocalStorage = new LocalStorage(para);

@Entry(storage)
@Component
struct SearchPage {
  @State isIncognitoModeOn: boolean = false
  @State searchInput: string = ''
  @State trendingTopicList: string[] = []
  @LocalStorageLink('search_history') searchHistoryList: string[] = []

  aboutToAppear() {
    const params: SearchPageParams = router.getParams() as SearchPageParams
    if (params?.curTrendingTopicList !== undefined) {
      this.trendingTopicList = params.curTrendingTopicList
    } else {
      // Generate trending topics
      for (let i = 0; i < 2; ++i) {
        this.trendingTopicList.push(getRandomShortStr())
      }
    }
  }

  build() {
    Column({ space: 15 }) {
      /* Top bar: back button + search box + search button */
      TopBar({ trendingTopic: this.trendingTopicList[0], searchInput: this.searchInput, searchHistoryList: this.searchHistoryList })

      Column({ space: 15 }) {
        /* Trending topics */
        TrendingTopics({ trendingTopicList: this.trendingTopicList, searchInput: this.searchInput })

        Divider()
          .strokeWidth(1)
          .color($r('app.color.light_border'))

        /* Incognito mode indicator */
        if (this.isIncognitoModeOn) {
          IncognitoModeIndicator()
        }

        if (this.searchHistoryList.length) {
          SearchHistory({searchHistoryList: this.searchHistoryList, trendingTopicList: this.trendingTopicList, searchInput: this.searchInput})
        }

        // TODO(ljj): search result content
      }
      .width('100%')
      .height(0)
      .flexGrow(1)
      .padding({ left: 14, right: 14 })

      /* Bottom bar: privacy mode toggle */
      BottomBar({ isIncognitoModeOn: this.isIncognitoModeOn })
    }
    .height('100%')
    .justifyContent(FlexAlign.SpaceBetween)
  }

  pageTransition() {
    PageTransitionEnter({ type: RouteType.None, duration: 0 })
    PageTransitionExit({ type: RouteType.None, duration: 0 })
  }
}