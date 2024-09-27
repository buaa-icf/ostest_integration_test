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

import UIConstants from '../constants/UIConstants';
import prompt from '@ohos.promptAction';
import PlayerManager from '../manager/PlayerManager';
import ServerConstants from '../constants/ServerConstants';
import emitter from '@ohos.events.emitter';

/**
 * List item information component.
 */
@Component
export default struct PlayListItem {
  private item: ItemData = new ItemData('', $r('app.media.icon'), '', [], '');
  private PlayerManager: PlayerManager = AppStorage.get('PlayerManager') as PlayerManager;
  private emitterOptions: emitter.Options = {
    priority: emitter.EventPriority.HIGH
  };

  aboutToAppear() {
  }

  build() {
    Column() {
      Column() {
        Row() {
          Text(this.item.subTitle)
            .fontSize(16)
            .margin(8)
            .backgroundColor('#10909090')
            .fontColor(Color.White)
          Blank()
        }
        .width('100%')
      }
      .borderRadius(12)
      .backgroundImage(this.item.list.length > 0 ? ServerConstants.SONG_IMAGE_URL + this.item.list[0].id : this.item.img)
      .backgroundImageSize(ImageSize.Cover)
      .width(120)
      .height(120)
      .justifyContent(FlexAlign.SpaceBetween)

      Text(this.item.title)
        .fontSize(20)
        .maxLines(1)
        .textOverflow({ overflow: TextOverflow.MARQUEE })
        .width(120)
        .textAlign(TextAlign.Center)
        .margin({ top: 4 })
    }
    .alignItems(HorizontalAlign.Center)
    .clickEffect(UIConstants.CLICK_EFFECT)
    .gesture(
      TapGesture({ count: 2 })
        .onAction((event: GestureEvent) => {
          if (event) {
            this.playThisList();
          }
        })
    )
    .gesture(
      TapGesture({ count: 1 })
        .onAction((event: GestureEvent) => {
          if (event) {
            this.PlayerManager.setExploreList(this.item);
            emitter.emit(ServerConstants.MAIN_SHOW_PLAYLIST, this.emitterOptions);
          }
        })
    )
  }

  playThisList() {
    prompt.showToast({
      message: '播放歌单：' + this.item.title
    })
    if (this.item.list.length > 0) {
      this.PlayerManager.playList(this.item.title, this.item.list, this.item.list[0], true);
    }
  }
}