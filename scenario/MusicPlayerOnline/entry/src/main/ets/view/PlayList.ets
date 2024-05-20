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

import AudioItem from '../model/AudioItem';
import PlayerManager from '../manager/PlayerManager'
import SongCell from './SongCell';
import emitter from '@ohos.events.emitter';
import ServerConstants from '../manager/ServerConstants';

@Component
export default struct PlayList {
  @State playingList: AudioItem[] = Array<AudioItem>();
  @State listTitle: string = '没有播放'
  private playerManager: PlayerManager = AppStorage.get('PlayerManager') as PlayerManager;

  aboutToAppear() {
    this.playingList = this.playerManager.getCurrentPlayList();
    this.listTitle = this.playerManager.getListTitle();
    emitter.on(ServerConstants.UPDATE_STATE_EVENT_ID, (eventData: emitter.EventData) => {
      if (eventData !== undefined && eventData.data !== undefined) {
        this.playingList = this.playerManager.getCurrentPlayList();
      }
    });
  }

  aboutToDisappear(): void {
  }

  build() {
    Column() {
      Text(this.listTitle)
        .fontSize(24)
        .margin(8)
        .fontWeight(FontWeight.Bold)
      Scroll() {
        Column({ space: 10 }) {
          List() {
            ForEach(this.playingList, (item: AudioItem) => {
              ListItem() {
                SongCell({ item })
              }
              .width('100%')
              .backgroundColor(item.isPlaying ? '#f6f6f6' : Color.White)
              .onClick(() => {
                this.playerManager.playList(this.listTitle, this.playingList, item)
              })
              .height('84vp')
            })
          }
          .width('100%')
          .backgroundColor(Color.White)
        }
        .width('100%')
      }
      .margin({ bottom: 36 })
      .width('100%')
    }
    .backgroundColor(Color.White)
    .borderRadius({ topLeft: '18vp', topRight: '18vp' })
  }
}
