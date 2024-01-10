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

import MineActivityItem from './MineActivityItem';
import MineActivityItemData from '../viewmodel/MineActivityItemData';
import mainViewModel from '../viewmodel/MainViewModel';
import ListHead from './ListHead';
import SquareTriItem from './SquareTriItem';
import SquareTriItemData from '../viewmodel/SquareTriItemData';


/**
 * Home tab content
 */
@Component
export default struct CommunitySquare {
  @State isAd: boolean = true;

  build() {
    Scroll() {
      Column() {
        if (this.isAd) {
          Stack() {
            Image($r('app.media.green2023'))
              .height('100%')
              .width('100%')
              .objectFit(ImageFit.Fill)
              .borderRadius('12vp')
            Image($r('app.media.ic_public_close_wh'))
              .height('32vp')
              .width('32vp')
              .margin('4vp')
              .onClick(() => {
                this.isAd = false;
              })
          }
          .height('100vp')
          .width('90%')
          .alignContent(Alignment.TopEnd)
        }
        List({ space: 10 }) {
          ForEach(mainViewModel.getMineActivityItemData(), (item: MineActivityItemData) => {
            ListItem() {
              MineActivityItem({ item })
            }
            .align(Alignment.Start)
          })
          ListItem() {
            Column(){
              ListHead({
                imgRefresh: Visibility.None,
                imgArrow: Visibility.None,
                imgMore: Visibility.None,
                isPlayer: Visibility.None,
                title: '大家都在聊'
              })
              Scroll() {
                Row() {
                  ForEach(mainViewModel.getSquareThirdGridData(), (items: SquareTriItemData[]) => {
                    SquareTriItem({ items })
                  })
                }
                .margin($r('app.float.home_secondGrid_margin'))
                .alignItems(VerticalAlign.Top)
              }
              .scrollable(ScrollDirection.Horizontal)
              .scrollBar(BarState.Off)
            }
          }
          ForEach(mainViewModel.getMineActivityItemData1(), (item: MineActivityItemData) => {
            ListItem() {
              MineActivityItem({ item })
            }
            .align(Alignment.Start)
          })
        }.margin('12vp')
        .edgeEffect(EdgeEffect.Spring)
        .nestedScroll({
          scrollForward: NestedScrollMode.PARENT_FIRST,
          scrollBackward: NestedScrollMode.SELF_FIRST
        })
      }
    }
  }
}
