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

/**
 * SingleRowList component.
 * 单行横向滚动组件
 */

import UIConstants from '../constants/UIConstants';
import PlayListData from '../model/PlayListData';
import PlayListItem from './PlayListItem';

@Component
export default struct SingleRowScrollerList {
  @State arrowAngle: number = 0;
  @Prop playLists: PlayListData[] = [];
  @Prop title: string = '推荐歌单'
  private rowScroller: Scroller = new Scroller();

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
        Image($r('app.media.chevron_right_2'))
          .objectFit(ImageFit.Contain)
          .width(48)
          .height(48)
          .padding(8)
          .rotate({ angle: this.arrowAngle })
          .id('scroll_row')
          .clickEffect(UIConstants.CLICK_EFFECT)
          .onClick(() => {
            animateTo({ duration: 1000 }, () => {
              if (this.arrowAngle === 0) {
                this.rowScroller.scrollEdge(Edge.End)
                this.arrowAngle = 180;
              } else {
                this.rowScroller.scrollEdge(Edge.Start)
                this.arrowAngle = 0;
              }
            })
          })
      }
      .height(36)
      .justifyContent(FlexAlign.SpaceBetween)
      .width('90%')
      .margin(12)

      Scroll(this.rowScroller) {
        Row() {
          ForEach(this.playLists, (item: PlayListData) => {
            PlayListItem({ item }).margin({ left: 12, right: 12 })
              .transition({ type: TransitionType.All, opacity: 0 })
          })
        }
        .margin(12)
      }
      .scrollable(ScrollDirection.Horizontal)
      .scrollBar(BarState.Off)
      .edgeEffect(EdgeEffect.Spring)
      .width('100%')
      .onReachEnd(() => {
        animateTo({ duration: 1000 }, () => {
          this.arrowAngle = 180;
        })
      })
      .onReachStart(() => {
        animateTo({ duration: 1000 }, () => {
          this.arrowAngle = 0;
        })
      })
    }
  }
}