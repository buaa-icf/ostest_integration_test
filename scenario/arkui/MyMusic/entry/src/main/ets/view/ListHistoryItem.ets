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

import ItemData from '../viewmodel/ListHistoryItemData';
import PlayerManager  from '../manager/PlayerManager';
import prompt from '@ohos.promptAction';

/**
 * List item information component.
 */
@Component
export default struct ListHistoryItem {
  private item: ItemData = new ItemData('', $r('app.media.fig1'), '',[]);
  private playerManager: PlayerManager = AppStorage.get('playerManager') as PlayerManager;

  build() {
    Row() {
      Image(this.item.img)
        .height('36vp')
        .width('36vp')
        .borderRadius('8vp')
      Text(this.item.title)
        .fontSize('16fp')
        .margin('12vp')
        .maxLines(1)
      Blank()
      Image($r('app.media.ic_public_arrow_right_grey'))
        .width('12vp')
        .height('24vp')
        .margin({right:'12vp'})
    }
    .justifyContent(FlexAlign.SpaceBetween)
    .backgroundColor('#f6f6f6')
    .borderRadius('8vp')
    .width('200vp')
    .margin({right:'20vp'})
    .onClick(() => {
      this.enterList();
    })
  }

  enterList() {
    prompt.showToast({
      message: '播放歌单：' + this.item.title
    })
    this.playerManager.playList(this.item.title, this.item.list,0)
  }
}