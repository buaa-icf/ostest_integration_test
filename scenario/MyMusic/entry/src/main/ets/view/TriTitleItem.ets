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

import ItemData from '../viewmodel/TriItemData';
import prompt from '@ohos.promptAction';
import PlayerManager from '../manager/PlayerManager';
import ListHead from './ListHead';
import TriItemData from '../viewmodel/TriItemData';
import TriItem from './TriItem';
import TriTitleItemData from '../viewmodel/TriTitleItemData';

/**
 * List item information component.
 */
@Component
export default struct TriTitleItem {
  private item: TriTitleItemData | undefined = undefined;

  build() {
    Column() {
      ListHead({
        imgRefresh: Visibility.Visible,
        imgArrow: Visibility.None,
        imgMore: Visibility.Visible,
        isPlayer: Visibility.Visible,
        title: this.item === undefined ? '' : this.item.title
      })
      Scroll() {
        Row() {
          if (this.item !== undefined) {
            ForEach(this.item.list, (items: TriItemData[]) => {
              TriItem({ items })
            })
          }
        }
        .margin($r('app.float.home_secondGrid_margin'))
        .alignItems(VerticalAlign.Top)
      }
      .scrollable(ScrollDirection.Horizontal)
      .scrollBar(BarState.Off)
    }

  }
}