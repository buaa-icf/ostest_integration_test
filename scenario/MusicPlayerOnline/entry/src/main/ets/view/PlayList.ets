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
import ServerConstants from '../constants/ServerConstants';
import UIConstants from '../constants/UIConstants';

@Component
export default struct PlayList {
  private playerManager: PlayerManager = AppStorage.get('PlayerManager') as PlayerManager;
  @State playingList: AudioItem[] = Array<AudioItem>();
  @State listTitle: string = ServerConstants.LIST_SONG_NO_PLAYING;
  private scrollerForList: Scroller = new Scroller();

  aboutToAppear() {
    this.listTitle = this.playerManager.getListTitle();
    animateTo({ duration: 2000 }, () => {
      this.playingList = this.playerManager.getCurrentPlayList();
    })
    setTimeout(() => {
      this.scrollerForList.scrollToIndex(this.playingList.indexOf(this.playerManager.getItem()), true, ScrollAlign.CENTER);
    }, 2000)

    emitter.on(ServerConstants.PLAYLIST_UPDATE_STATE, (eventData: emitter.EventData) => {
      if (eventData !== undefined && eventData.data !== undefined && eventData.data.state === ServerConstants.PLAYER_STATE_PLAYING) {
        animateTo({ duration: 2000 }, () => {
          this.playingList = this.playerManager.getCurrentPlayList();
        })
        setTimeout(() => {
          this.scrollerForList.scrollToIndex(this.playingList.indexOf(this.playerManager.getItem()), true, ScrollAlign.CENTER);
        }, 2000)
      }
    });
  }

  aboutToDisappear(): void {
    emitter.off(ServerConstants.PLAYLIST_UPDATE_STATE);
  }

  build() {
    Column() {
      Text(this.listTitle)
        .fontSize(24)
        .margin(12)
        .maxLines(1)
        .textOverflow({ overflow: TextOverflow.MARQUEE })
      List({ scroller: this.scrollerForList }) {
        ForEach(this.playingList, (item: AudioItem) => {
          ListItem() {
            SongCell({ item })
          }
          .width('100%')
          .height('84vp')
          .backgroundColor(item.isPlaying ? '#f0f0f0' : Color.White)
          .transition({ type: TransitionType.All, opacity: 0 })
          .clickEffect(UIConstants.CLICK_EFFECT)
          .onClick(() => {
            this.playerManager.play(item)
          })
        })
      }
      .width('100%')
      .backgroundColor(Color.White)
      .margin({ bottom: 36 })
    }
    .height('100%')
    .backgroundColor(Color.White)
    .borderRadius({ topLeft: '18vp', topRight: '18vp' })
  }
}
