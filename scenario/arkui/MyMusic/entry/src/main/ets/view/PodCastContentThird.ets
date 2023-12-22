/*
 * Copyright (c) 2023 Shenzhen Kaihong Digital Industry Development Co., Ltd.
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

import CommonConstants from '../common/constants/CommonConstants';
import ItemData from '../viewmodel/ItemData';
import PodCastBigItemData from '../viewmodel/PodCastBigItemData';
import mainViewModel from '../viewmodel/MainViewModel';
import ListHead from './ListHead';
import PodCastBigItem from './PodCastBigItem';
import BookTriItemData from '../viewmodel/BookTriItemData';
import BookTriItem from './BookTriItem';

/**
 * Setting tab content
 */
@Component
export default struct PodCastContentThird {
  build() {
    Scroll() {
      Column({ space: CommonConstants.COMMON_SPACE }) {
        Row() {
          ForEach(mainViewModel.getPodCastThird(), (item: string) => {
            Text(item)
              .width('80vp')
              .height('40vp')
              .fontSize($r('app.float.small_text_size'))
              .margin($r('app.float.home_secondGrid_margin'))
              .backgroundColor(Color.White)
              .borderRadius($r('app.float.podcast_text_border_Radius'))
              .border({ width: 1, color: 0xE0E0E0, radius: 8, style: BorderStyle.Solid })
              .textAlign(TextAlign.Center)
          }, (item: ItemData) => JSON.stringify(item))
        }

        ListHead({
          title: '推荐榜',
          imgRefresh: Visibility.None,
          imgArrow: Visibility.Visible,
          imgMore: Visibility.None,
          isPlayer: Visibility.None
        })
          .width('90%')

        Scroll() {
          Row() {
            ForEach(mainViewModel.getBookTriData2(), (items: BookTriItemData[]) => {
              BookTriItem({ items })
            }, (items: BookTriItemData[]) => JSON.stringify(items))
          }
          .margin($r('app.float.home_secondGrid_margin'))
          .alignItems(VerticalAlign.Top)
        }
        .scrollable(ScrollDirection.Horizontal)
        .scrollBar(BarState.Off)

        ListHead({
          title: '为你推荐更多内容',
          imgRefresh: Visibility.None,
          imgArrow: Visibility.None,
          imgMore: Visibility.None,
          isPlayer: Visibility.None
        }).width('90%')

        Column() {
          ForEach(mainViewModel.getBookTriBigData(), (item: PodCastBigItemData) => {
            PodCastBigItem({ item })
          }, (items: PodCastBigItemData[]) => JSON.stringify(items))
        }

        Text('下滑加载更多......')
          .width(CommonConstants.FULL_PARENT)
          .height($r('app.float.bottom_barHeight'))
          .align(Alignment.Top)
          .textAlign(TextAlign.Center)
      }

      //.backgroundColor('#F9F9F9')
      //.height(CommonConstants.FULL_PARENT)
    }
    .scrollBarWidth(0)
    .height(CommonConstants.FULL_PARENT)
  }
}



