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

import CommonConstants from '../common/constants/CommonConstants';
import PlayerManager from '../manager/PlayerManager';
import AudioItem from '../manager/AudioItem';
import emitter from '@ohos.events.emitter';
import ListHistoryItem from './ListHistoryItem';
import ListHistoryItemData from '../viewmodel/ListHistoryItemData';
import mainViewModel from '../viewmodel/MainViewModel';
/**
 * Setting tab content
 */
@Component
export default struct PlayList {
  @State subCurrentIndex: number = 1;
  @State playingList: AudioItem[] = Array<AudioItem>();
  private tabsController: TabsController = new TabsController();
  private playerManager: PlayerManager = AppStorage.get('playerManager') as PlayerManager;
  private innerEvent: emitter.InnerEvent = {
    eventId: 2,
    priority: emitter.EventPriority.HIGH
  };

  @Builder
  TabBuilder(title: string, index: number, selectedImg: Resource, normalImg: Resource) {
    Column() {
      Row() {
        Text(title)
          .fontSize('20fp')
          .fontColor(this.subCurrentIndex === index ? $r('app.color.mainPage_selected') : $r('app.color.mainPage_normal'))
        if (index === 1) {
          Text('(' + this.playingList.length.toString() + ')')
            .textAlign(TextAlign.Start)
            .fontSize('10fp')
        }
      }.alignItems(VerticalAlign.Top)

      Image(this.subCurrentIndex === index ? selectedImg : normalImg)
        .width($r('app.float.mainPage_baseTab_size'))
    }
    .height($r('app.float.mainPage_barHeight'))
    .margin({
      top: $r('app.float.mainPage_padding'),
      left: $r('app.float.mainPage_padding'),
      right: $r('app.float.mainPage_padding')
    })
    .onClick(() => {
      this.subCurrentIndex = index;
      this.tabsController.changeIndex(this.subCurrentIndex);
    })
  }

  @Builder
  songCell(item: AudioItem) {
    Row() {
      if (item.isPlaying) {
        Image($r('app.media.ic_public_music_red'))
          .width($r('app.float.setting_size'))
          .height($r('app.float.setting_size'))
          .margin('4vp')
      }
      if (item.isVip) {
        Text('VIP')
          .fontSize('10fp')
          .fontColor(Color.Red)
          .borderWidth(0.5)
          .borderRadius('4vp')
          .borderColor(Color.Red)
          .margin('4vp')
          .padding('2vp')
      }
      if (item.isPlaying) {
        Text(item.title)
          .fontSize('20fp')
          .fontColor(Color.Red)
        Text('·')
          .fontSize($r('app.float.normal_text_size'))
          .fontColor('#e0e0e0')
          .fontColor(Color.Red)
        Text(item.artist)
          .maxLines(1)
          .fontSize($r('app.float.normal_text_size'))
          .fontColor('#e0e0e0')
          .fontColor(Color.Red)
      } else {
        Text(item.title)
          .fontSize('20fp')
        Text('·')
          .fontSize($r('app.float.normal_text_size'))
          .fontColor('#e0e0e0')
        Text(item.artist)
          .maxLines(1)
          .fontSize($r('app.float.normal_text_size'))
          .fontColor('#e0e0e0')
      }

      Blank()
      if (item.isPlaying) {
        Text('来源')
          .fontSize($r('app.float.normal_text_size'))
          .fontColor('#e0e0e0')
          .borderRadius('16vp')
          .padding('4vp')
          .borderColor('#e6e6e6')
          .borderWidth(0.5)
          .margin('4vp')
      }
      Image($r('app.media.ic_public_cancel'))
        .width('24vp')
        .height('24vp')
    }
    .justifyContent(FlexAlign.SpaceBetween)
    .width('100%')
    .padding({
      left: $r('app.float.setting_settingCell_left'),
      right: $r('app.float.setting_settingCell_right')
    })
  }

  aboutToAppear() {
    this.playingList = this.playerManager.getCurrentPlayList();
    emitter.on(this.innerEvent, (eventData: emitter.EventData) => {
      if (eventData !== undefined && eventData.data !== undefined) {
        this.playingList = this.playerManager.getCurrentPlayList();
      }
    });
  }

  aboutToDisappear() {
    emitter.off(2);
  }

  build() {
    Column() {
      Tabs({
        barPosition: BarPosition.End,
        index: 1,
        controller: this.tabsController
      }) {
        TabContent() {
          Column() {
            Scroll() {
              Row() {
                ForEach(mainViewModel.getListHistoryData(), (item: ListHistoryItemData) => {
                  ListHistoryItem({ item })
                })
              }.margin($r('app.float.home_secondGrid_margin'))
            }
            .scrollable(ScrollDirection.Horizontal)
            .scrollBar(BarState.Off)
            Row() {
              Text('全部歌曲' + this.playingList.length + '首')
                .fontSize('16fp')
                .margin('4vp')
              Blank()
              Image($r('app.media.ic_public_download_black'))
                .width('24vp')
                .height('24vp')
              Image($r('app.media.ic_public_copy'))
                .width('24vp')
                .height('24vp')
                .margin('4vp')
              Image($r('app.media.ic_public_delete'))
                .width('24vp')
                .height('24vp')
            }
            .backgroundColor(Color.White)
            .width('100%')
            .padding({ left: '5%', right: '5%', top: '12vp', bottom: '12vp' })
            .justifyContent(FlexAlign.SpaceBetween)

            Scroll() {
              Column({ space: CommonConstants.COMMON_SPACE }) {
                List() {
                  ForEach(this.playingList, (item: AudioItem) => {
                    ListItem() {
                      this.songCell(item)
                    }
                    .height('64vp')
                  })
                }
                .backgroundColor(Color.White)
                .padding({ top: $r('app.float.setting_list_padding'), bottom: $r('app.float.setting_list_padding') })
              }
            }
            .width('100%')
          }.height('100%')
        }
        .tabBar(this.TabBuilder('历史播放', 0,
          $r('app.media.ic_screenshot_line_select'), $r('app.media.ic_screenshot_line')))

        TabContent() {
          Column() {
            Row() {
              Row() {
                Image($r('app.media.ic_public_list_cycle'))
                  .width('20vp')
                  .height('20vp')
                  .margin('4vp')
                Text('循环列表')
                  .fontSize('16fp')
                  .margin('4vp')
              }.borderRadius('20vp')
              .padding('4vp')
              .backgroundColor('#f6f6f6')

              Blank()
              Image($r('app.media.ic_public_download_black'))
                .width('24vp')
                .height('24vp')
              Image($r('app.media.ic_public_copy'))
                .width('24vp')
                .height('24vp')
                .margin('4vp')
              Image($r('app.media.ic_public_delete'))
                .width('24vp')
                .height('24vp')
            }
            .backgroundColor(Color.White)
            .width('100%')
            .padding({ left: '5%', right: '5%', top: '12vp', bottom: '12vp' })
            .justifyContent(FlexAlign.SpaceBetween)

            Scroll() {
              Column({ space: CommonConstants.COMMON_SPACE }) {
                List() {
                  ForEach(this.playingList, (item: AudioItem) => {
                    ListItem() {
                      this.songCell(item)
                    }
                    .backgroundColor(item.isPlaying ? '#f6f6f6' : Color.White)
                    .onClick(() => {
                      this.playerManager.playItem(item);
                    })
                    .height('64vp')
                  })
                }
                .backgroundColor(Color.White)
                .padding({ top: $r('app.float.setting_list_padding'), bottom: $r('app.float.setting_list_padding') })
              }
            }
            .width('100%')
          }.height('100%')
        }
        .tabBar(this.TabBuilder('当前播放', 1,
          $r('app.media.ic_screenshot_line_select'), $r('app.media.ic_screenshot_line')))
      }
      .width(CommonConstants.FULL_PARENT)
      .barHeight($r('app.float.mainPage_barHeight'))
      .barWidth('70%')
      .barMode(BarMode.Scrollable)
      .barPosition(BarPosition.Start)
      .onChange((index: number) => {
        this.subCurrentIndex = index;
      })
    }
    .backgroundColor(Color.White)
    .borderRadius({ topLeft: '18vp', topRight: '18vp' })
  }
}
