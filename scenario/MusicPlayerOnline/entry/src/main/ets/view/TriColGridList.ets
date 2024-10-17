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
 * TriColGridList component.
 * 三列竖向Grid列表
 */

import AppConstants from '../constants/AppConstants';
import PlayListData from '../model/PlayListData';
import PlayListItem from './PlayListItem';

@Component
export default struct TriColGridList {
  @State arrowAngle: number = 0;
  @Prop playLists: PlayListData[] = [];
  @Link title: string;

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
          .transition(TransitionEffect.OPACITY.animation({ duration: 2000, curve: Curve.Ease }))
        Image($r('app.media.xmark_circle'))
          .objectFit(ImageFit.Contain)
          .width(48)
          .height(48)
          .padding(8)
          .transition(TransitionEffect.OPACITY.animation({ duration: 2000, curve: Curve.Ease }).combine(
            TransitionEffect.rotate({ z: 1, angle: 180 })
          ))
          .clickEffect(AppConstants.CLICK_EFFECT)
          .onClick(() => {
            animateTo({ duration: 1000 }, () => {
              this.title = AppConstants.SEARCH_DEFAULT;
              this.playLists = [];
            })
          })
      }
      .height(36)
      .justifyContent(FlexAlign.SpaceBetween)
      .width('90%')
      .margin(12)

      Grid() {
        ForEach(this.playLists, (item: PlayListData) => {
          GridItem() {
            PlayListItem({ item })
          }
          .id('search_list_item')
          .transition({ type: TransitionType.All, opacity: 0 })
        })
      }
      .margin(12)
      .columnsTemplate('1fr 1fr 1fr')
      .columnsGap(8)
      .rowsGap(12)
      .width('90%')
    }
  }
}