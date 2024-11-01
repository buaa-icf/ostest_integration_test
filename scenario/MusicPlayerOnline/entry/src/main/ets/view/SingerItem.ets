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

import ItemData from '../model/PlayListData';
import AppConstants from '../constants/AppConstants';
import PlayerManager from '../manager/PlayerManager';
import emitter from '@ohos.events.emitter';
import HttpManager from '../manager/HttpManager';

/**
 * List item information component.
 */
@Component
export default struct SingerItem {
  private item: ItemData = new ItemData('', $r('app.media.icon'), '', [], '');
  private PlayerManager: PlayerManager = AppStorage.get('PlayerManager') as PlayerManager;
  private colors: number[] = [0xFF2222, 0xFF22FF, 0x22AA22, 0x22AAAA, 0xAAAA00, 0x222299]
  private emitterOptions: emitter.Options = {
    priority: emitter.EventPriority.HIGH
  };

  aboutToAppear() {
  }

  build() {
    Column() {
      Text(this.item.title)
        .fontSize(20)
        .fontColor(this.item.count > 70 ? this.colors[0] : this.item.count > 50 ? this.colors[1] :
          this.item.count > 30 ? this.colors[2] :
            this.item.count > 20 ? this.colors[3] : this.item.count > 10 ? this.colors[4] : this.colors[5])
        .width(90)
        .textAlign(TextAlign.Center)
        .margin(4)
        .padding({ top: 4, bottom: 4 })
    }
    .backgroundColor('#f8f8f8')
    .shadow({ radius: 1, color: Color.Gray })
    .borderRadius(4)
    .alignItems(HorizontalAlign.Center)
    .clickEffect(AppConstants.CLICK_EFFECT)
    .onClick(() => {
      if (this.item.list.length === 0) {
        HttpManager.getInstance().getAllSongsBySinger(this.item.title);
      }
      this.PlayerManager.setExploreList(this.item);
      emitter.emit(AppConstants.MAIN_SHOW_PLAYLIST, this.emitterOptions);
    })
  }
}