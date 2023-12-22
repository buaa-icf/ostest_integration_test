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


/**
 * Home tab content
 */
@Component
export default struct CommunityVideo {
  build() {
    List({ space: 10 }) {
      ForEach(mainViewModel.getMineActivityItemData(), (item: MineActivityItemData) => {
        ListItem() {
          MineActivityItem({ item })
        }
        .align(Alignment.Start)
      }, (item: MineActivityItemData) => JSON.stringify(item))
    }.margin('12vp')
    .edgeEffect(EdgeEffect.Spring)
    .nestedScroll({
      scrollForward: NestedScrollMode.PARENT_FIRST,
      scrollBackward: NestedScrollMode.SELF_FIRST
    })
  }
}
