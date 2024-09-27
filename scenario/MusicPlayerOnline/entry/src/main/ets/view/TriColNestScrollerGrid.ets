/*
 * Copyright (c) 2024 Shenzhen Kaihong Digital Industry Development Co., Ltd.
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
import ServerConstants from '../constants/ServerConstants';

/**
 * TriColNestScrollerGridList component.
 * 三列竖向联动滚动Grid列表
 */

import UIConstants from '../constants/UIConstants';
import PlayListData from '../model/PlayListData';
import PlayListItem from './PlayListItem';

@Component
export default struct TriColNestScrollerGrid {
  @Prop playLists: PlayListData[] = [];
  @Prop title: string = '我的歌单';
  @Link colAngle: number;
  private colScroller: Scroller = new Scroller();
  private rootScroller: Scroller = new Scroller();

  aboutToAppear() {
  }

  aboutToDisappear() {
  }

  build() {
    Column() {
      Row() {
        Text(this.title)
          .fontSize('20fp')
          .fontWeight(FontWeight.Medium)
        Image($r('app.media.chevron_down_2'))
          .objectFit(ImageFit.Contain)
          .width(48)
          .height(48)
          .padding(8)
          .id('scroll_col')
          .rotate({ angle: this.colAngle })
          .clickEffect(UIConstants.CLICK_EFFECT)
          .onClick(() => {
            animateTo({ duration: 1000 }, () => {
              if (this.colAngle === 0) {
                if (!this.rootScroller.isAtEnd()) {
                  this.colAngle = 180;
                  this.rootScroller.scrollEdge(Edge.Bottom);
                }
              } else {
                if (this.rootScroller.currentOffset().yOffset !== 0) {
                  this.colAngle = 0;
                  this.rootScroller.scrollEdge(Edge.Top);
                }
              }
            })
          })
      }
      .height(36)
      .justifyContent(FlexAlign.SpaceBetween)
      .width('90%')
      .margin(12)

      Grid(this.colScroller) {
        ForEach(this.playLists, (item: PlayListData) => {
          GridItem() {
            PlayListItem({ item })
          }
          .id('my_list_item')
          .transition({ type: TransitionType.All, opacity: 0 })
        })
      }
      .margin(12)
      .columnsTemplate('1fr 1fr 1fr')
      .columnsGap(8)
      .rowsGap(12)
      .scrollBar(BarState.Off)
      .width('90%')
      .height('75%')
      .nestedScroll({
        scrollForward: NestedScrollMode.PARENT_FIRST,
        scrollBackward: NestedScrollMode.SELF_FIRST
      })
    }
  }
}