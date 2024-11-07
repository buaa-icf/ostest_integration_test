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

import AudioData from '../model/AudioData';
import PlayerManager from '../manager/PlayerManager'
import SongItem from './SongItem';
import emitter from '@ohos.events.emitter';
import AppConstants from '../constants/AppConstants';

@Component
export default struct CurrentPlayList {
  private playerManager: PlayerManager = AppStorage.get('PlayerManager') as PlayerManager;
  @State playingList: AudioData[] = [];
  @State listTitle: string = this.playerManager.getListTitle();;
  @Prop currentTime: number;
  private scrollerForList: Scroller = new Scroller();

  aboutToAppear() {
    animateTo({ duration: 1000 }, () => {
      this.playingList = this.playerManager.getCurrentPlayList();
    })
    setTimeout(() => {
      this.scrollerForList.scrollToIndex(this.playingList.indexOf(this.playerManager.getItem()), true,
        ScrollAlign.CENTER);
    }, 1000)

    emitter.on(AppConstants.PLAYLIST_UPDATE_STATE, (eventData: emitter.EventData) => {
      this.updateState(eventData);
    });
  }

  aboutToDisappear(): void {
    emitter.off(AppConstants.PLAYLIST_UPDATE_STATE);
  }

  build() {
    Column() {
      Row() {
        Text(this.listTitle)
          .fontSize(24)
          .maxLines(1)
          .textOverflow({ overflow: TextOverflow.MARQUEE })
        Text('(' + this.playingList.length + ')')
          .fontSize(16)
          .maxLines(1)
      }
      .margin(12)
      .alignItems(VerticalAlign.Bottom)

      List({ scroller: this.scrollerForList }) {
        ForEach(this.playingList, (item: AudioData, index) => {
          ListItem() {
            Row() {
              SongItem({ item, index, currentTime: this.currentTime })
                .width('90%')
                .clickEffect(AppConstants.CLICK_EFFECT)
                .onClick(() => {
                  this.playerManager.play(item)
                })
              if (!item.isPlaying) {
                Image($r('app.media.xmark'))
                  .height(36)
                  .width(36)
                  .padding(8)
                  .clickEffect(AppConstants.CLICK_EFFECT)
                  .onClick(() => {
                    this.playerManager.removeSongFromCurrentList(item);
                  })
              }
            }.margin(8)
          }
          .width('100%')
          .height('84vp')
          .backgroundColor(item.isPlaying ? '#f0f0f0' : Color.White)
          .transition({ type: TransitionType.All, opacity: 0 })
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

  updateState(eventData: emitter.EventData) {
    if (eventData !== undefined && eventData.data !== undefined &&
      eventData.data.state === AppConstants.PLAYER_STATE_PLAYING) {
      animateTo({ duration: 1000 }, () => {
        this.playingList = this.playerManager.getCurrentPlayList();
      })
      setTimeout(() => {
        this.scrollerForList.scrollToIndex(this.playingList.indexOf(this.playerManager.getItem()), true,
          ScrollAlign.CENTER);
      }, 1000)
    }
  }
}
