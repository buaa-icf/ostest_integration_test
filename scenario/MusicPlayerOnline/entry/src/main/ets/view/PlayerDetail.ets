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

import PlayerManager from '../manager/PlayerManager';
import emitter from '@ohos.events.emitter';
import Logger from '../utils/Logger';
import LrcLine from '../model/LrcLine';
import CommonUtils from '../utils/CommonUtils';
import ServerConstants from '../constants/ServerConstants';
import UIConstants from '../constants/UIConstants';
import AudioData from '../model/AudioData';
import { PLAY_MODE } from '../constants/PlayMode';
import { addToListDialog } from './addToListDialog';
import PlayListData from '../model/PlayListData';
import prompt from '@ohos.promptAction';
import HttpManager from '../manager/HttpManager';

/**
 * Setting tab content
 */
@Component
export default struct PlayerDetail {
  private tag: string = 'PlayerDetail';
  private PlayerManager: PlayerManager = AppStorage.get('PlayerManager') as PlayerManager;
  @State item: AudioData = this.PlayerManager.getItem();
  @State listTitle: string = this.PlayerManager.getListTitle();
  @State durationTime: number = 0;
  @State currentTime: number = 0;
  @State state: string = this.PlayerManager.getState();
  @State rotateAngle: number = 0;
  @State subCurrentIndex: number = 0;
  @State lrcIndex: number = 0
  @State lrc: LrcLine[] = [];
  @State contentSwitch: boolean = true;
  @State playMode: number = this.PlayerManager.getPlayMode();
  @State noItem: boolean = false;
  @Link isShowCurrentPlayList: boolean;
  @Link isShowPlayerDetail: boolean;
  @Prop customPlayLists: PlayListData[];
  @Prop loginInfo: string;
  @State listOptions: Array<SelectOption> = [];
  @State inputListName: string = '';
  private scroller: Scroller = new Scroller()
  private tabsController: TabsController = new TabsController();
  private isDialogOpened: boolean = false;
  private songIdToAdd: string = '';
  dialogController: CustomDialogController | null = new CustomDialogController({
    builder: addToListDialog({
      cancel: () => {
        if (this.dialogController !== null) {
          this.dialogController.close();
          this.isDialogOpened = false;
        }
      },
      confirm: () => {
        if (this.inputListName.trim()) {
          if (this.songIdToAdd !== '') {
            HttpManager.getInstance().add_to_playlist(this.songIdToAdd, this.inputListName);
            this.songIdToAdd = '';
            if (this.dialogController !== null) {
              this.dialogController.close();
              this.isDialogOpened = false;
            }
          }
        } else {
          prompt.showToast({
            message: '歌单名不能为空'
          });
        }
      },
      inputListName: $inputListName,
      listOptions: $listOptions,
    }),
    autoCancel: true,
    alignment: DialogAlignment.Bottom,
    offset: { dx: 0, dy: -20 },
    gridCount: 4,
    customStyle: false,
    cornerRadius: 10,
  })

  @Builder
  TabBuilder(title: Resource, index: number, selectedImg: Resource, normalImg: Resource) {
    Column() {
      Row() {
        Text(title)
          .fontSize('20fp')
          .fontColor(this.subCurrentIndex === index ? '#E02020' : '#6B6B6B')
      }.alignItems(VerticalAlign.Top)

      Image(this.subCurrentIndex === index ? selectedImg : normalImg)
        .width(25)
    }
    .height(60)
    .margin({
      top: 12,
      left: 12,
      right: 12
    })
    .clickEffect(UIConstants.CLICK_EFFECT)
    .onClick(() => {
      this.subCurrentIndex = index;
      this.tabsController.changeIndex(this.subCurrentIndex);
    })
  }

  aboutToAppear() {
    if (this.state === ServerConstants.PLAYER_STATE_PLAYING) {
      setTimeout(() => {
        if (this.rotateAngle === 0) {
          this.rotateAngle = 360;
          Logger.info(this.tag, 'rotateAngle:360');
        }
      }, 100);
    }

    emitter.on(ServerConstants.DETAIL_UPDATE_FAVOR_AND_QUALITY, () => {
      this.updateFavor();
    });
    emitter.on(ServerConstants.DETAIL_UPDATE_TIME, (eventData: emitter.EventData) => {
      this.updateTime(eventData);
    });
    emitter.on(ServerConstants.DETAIL_UPDATE_STATE, (eventData: emitter.EventData) => {
      this.updateState(eventData);
    });
  }

  aboutToDisappear() {
    Logger.info(this.tag, 'aboutToDisappear');
    emitter.off(ServerConstants.DETAIL_UPDATE_TIME);
    emitter.off(ServerConstants.DETAIL_UPDATE_STATE);
    emitter.off(ServerConstants.DETAIL_UPDATE_FAVOR_AND_QUALITY);
    if (this.dialogController !== null) {
      this.dialogController.close();
      this.isDialogOpened = false;
      this.dialogController = null;
    }
  }

  onBackPress() {
    if (this.isDialogOpened && this.dialogController !== null) {
      this.dialogController.close();
      this.isDialogOpened = false;
      return true;
    } else {
      return false;
    }
  }

  build() {
    Column() {
      Row() {
        Image($r('app.media.chevron_down'))
          .width(48)
          .height(48)
          .padding(6)
          .clickEffect(UIConstants.CLICK_EFFECT)
          .onClick(() => {
            this.isShowPlayerDetail = false;
          })
          .id('detail_dismiss')

        Column() {
          if (this.contentSwitch) {
            Text(this.listTitle)
              .fontSize(20)
              .maxLines(2)
              .id('detail_title1')
              .transition(TransitionEffect.OPACITY.animation({ duration: 2000, curve: Curve.Ease })
                .combine(TransitionEffect.translate({ y: 24 })))
          } else {
            Column() {
              Text(this.item.title)
                .fontSize(18)
                .maxLines(1)
                .id('detail_title2')
              Text(this.item.artist)
                .fontSize(14)
                .maxLines(1)
                .fontColor('#a0a0a0')
                .id('detail_title3')
            }
            .transition(TransitionEffect.OPACITY.animation({ duration: 2000, curve: Curve.Ease }).combine(
              TransitionEffect.translate({ y: -24 }))
            )
          }
        }
        .width('60%')
        .justifyContent(FlexAlign.Center)
        .height('60vp')

        Image($r('app.media.folder_badge_plus'))
          .width(48)
          .height(48)
          .padding(8)
          .clickEffect(UIConstants.CLICK_EFFECT)
          .onClick(() => {
            if (this.loginInfo === ServerConstants.LOGIN_INFO_NO) {
              prompt.showToast({
                message: '请先登录！'
              })
              return;
            }
            if (this.item.id === '') {
              prompt.showToast({
                message: '请先播放一首歌曲！'
              });
              return;
            }
            if (this.dialogController != null) {
              this.listOptions = [];
              for (let item of this.customPlayLists) {
                if (item.title !== ServerConstants.LIST_SONG_FAVOURITE && item.title !== ServerConstants.LIST_SONG_RECENT) {
                  this.listOptions.push({ value: item.title });
                }
              }
              this.dialogController.open();
              this.songIdToAdd = this.item.id;
              this.isDialogOpened = true;
            }
          })
      }
      .width('90%')
      .justifyContent(FlexAlign.SpaceBetween)


      Column() {
        if (!this.noItem) {
          if (this.contentSwitch) {
            Column() {
              Image(this.item.id ? ServerConstants.SONG_IMAGE_URL + this.item.id : $r('app.media.startIcon'))
                .width('300vp')
                .height('300vp')
                .borderRadius('200vp')
                .margin('50vp')
                .rotate({ angle: this.rotateAngle })
                .animation({
                  duration: 36000,
                  curve: Curve.Linear,
                  delay: 500,
                  iterations: -1, // 设置-1表示动画无限循环
                  playMode: PlayMode.Normal
                })
                .id('detail_songImg')
                .clickEffect(UIConstants.CLICK_EFFECT)
                .shadow({ radius: 1, color: Color.Gray })
                .onClick(() => {
                  this.contentSwitch = false;
                })

              Row() {
                Column() {
                  Text(this.item.title).fontSize('18fp')
                    .id('detail_songName')
                    .fontSize(20)
                  Text(this.item.artist).fontSize('16fp')
                    .fontColor('#a0a0a0')
                    .id('detail_artist')
                }.alignItems(HorizontalAlign.Start)

                Blank()
                Stack() {
                  if (this.item.isFavor) {
                    Image($r('app.media.heart_fill'))
                      .width('36vp')
                      .height('36vp')
                  } else {
                    Image($r('app.media.heart'))
                      .width('36vp')
                      .height('36vp')
                  }
                }
                .alignContent(Alignment.Top)
                .margin({ right: '8vp' })
                .clickEffect(UIConstants.CLICK_EFFECT)
                .onClick(() => {
                  HttpManager.getInstance().set_favourite();
                })
              }
              .width('80%')
              .justifyContent(FlexAlign.SpaceBetween)
            }.width('100%')
            .height('100%')
            .justifyContent(FlexAlign.SpaceAround)
            .transition(TransitionEffect.OPACITY.animation({ duration: 2000, curve: Curve.Ease }).combine(
              TransitionEffect.translate({ z: 24 })))
          } else {
            Column() {
              Tabs({
                barPosition: BarPosition.End,
                index: 0,
                controller: this.tabsController
              }) {
                TabContent() {
                  Column() {
                    List({ space: 10, scroller: this.scroller }) {
                      ForEach(this.lrc, (item: LrcLine, index: number) => {
                        ListItem() {
                          if (index === this.lrcIndex) {
                            Text(item.title)
                              .width('100%')
                              .textAlign(TextAlign.Center)
                              .fontSize('24fp')
                              .fontColor(Color.Black)
                          } else {
                            Text(item.title)
                              .width('100%')
                              .textAlign(TextAlign.Center)
                              .fontSize('18fp')
                              .fontColor(Color.Gray)
                          }
                        }
                      })
                    }
                    .width('100%')
                  }.height('100%')
                }
                .tabBar(this.TabBuilder($r('app.string.lyrics'), 0,
                  $r('app.media.ic_screenshot_line_select'), $r('app.media.ic_screenshot_line')))
              }
              .width('100%')
              .barHeight(60)
              .barWidth('70%')
              .barMode(BarMode.Scrollable)
              .barPosition(BarPosition.Start)
              .onChange((index: number) => {
                this.subCurrentIndex = index;
              })
            }
            .width('100%')
            .height('100%')
            .transition(TransitionEffect.OPACITY.animation({ duration: 2000, curve: Curve.Ease }).combine(
              TransitionEffect.translate({ y: -24 })))
            .clickEffect(UIConstants.CLICK_EFFECT)
            .onClick(() => {
              this.contentSwitch = true;
              if (this.state === ServerConstants.PLAYER_STATE_PLAYING) {
                this.rotateAngle = 0;
                animateTo({ duration: 36000 }, () => {
                  this.rotateAngle = 360;
                })
              }
            })
          }
        }
      }
      .width('100%')
      .height('70%')

      Row() {
        Progress({ value: this.currentTime, total: this.durationTime, type: ProgressType.Linear })
          .color(Color.Gray)
          .width('80%')
          .height(30)
          .id('detail_progress')

      }.width('100%')
      .justifyContent(FlexAlign.Center)

      Row() {
        Text(CommonUtils.formatTime(this.currentTime / 1000)).fontSize('12fp')
          .id('detail_time_current')
        if (this.item.quality === '.flac') {
          Text('无损')
            .id('high_quality')
        }
        Text(CommonUtils.formatTime(this.durationTime / 1000)).fontSize('12fp')
          .id('detail_time_duration')
      }.width('80%')
      .justifyContent(FlexAlign.SpaceBetween)

      Row() {
        Image(this.playMode === PLAY_MODE.REPEAT ? $r('app.media.repeat') : (this.playMode === PLAY_MODE.REPEAT1 ? $r('app.media.repeat_1') : $r('app.media.shuffle')))
          .width(42)
          .height(42)
          .clickEffect(UIConstants.CLICK_EFFECT)
          .onClick(() => {
            this.playMode = this.PlayerManager.setPlayMode();
          })
          .id('detail_mode')
        Image($r('app.media.backward_end_fill'))
          .width(42)
          .height(42)
          .clickEffect(UIConstants.CLICK_EFFECT)
          .onClick(() => {
            this.PlayerManager.previous();
          })
          .id('detail_previous')
        if (this.state === ServerConstants.PLAYER_STATE_PLAYING) {
          Image($r('app.media.pause'))
            .width(48)
            .height(48)
            .clickEffect(UIConstants.CLICK_EFFECT)
            .onClick(() => {
              this.PlayerManager.pause();
            })
            .id('detail_paused')
        } else {
          Image($r('app.media.play_fill'))
            .width(48)
            .height(48)
            .clickEffect(UIConstants.CLICK_EFFECT)
            .onClick(() => {
              this.PlayerManager.resume();
            })
            .id('detail_playing')
        }
        Image($r('app.media.forward_end_fill'))
          .width(42)
          .height(42)
          .clickEffect(UIConstants.CLICK_EFFECT)
          .onClick(() => {
            this.PlayerManager.next();
          })
          .id('detail_next')
        Image($r('app.media.music_note_list'))
          .width(42)
          .height(42)
          .clickEffect(UIConstants.CLICK_EFFECT)
          .onClick(() => {
            this.isShowCurrentPlayList = true;
          })
          .id('detail_playlist')
      }.width('100%')
      .height(64)
      .justifyContent(FlexAlign.SpaceEvenly)
    }
    .justifyContent(FlexAlign.SpaceEvenly)
    .width('100%')
    .height('100%')
    .backgroundColor(Color.White)
  }

  updateFavor() {
    animateTo({ duration: 2000 }, () => {
      this.item = this.PlayerManager.getItem();
    })
    this.noItem = false;
  }

  updateTime(eventData: emitter.EventData) {
    if (eventData !== undefined && eventData.data !== undefined) {
      this.currentTime = eventData.data.currentTime;
      this.durationTime = eventData.data.currentDuration;
      let newLrcIndex = Math.floor(this.currentTime * this.lrc.length / this.durationTime);
      if (newLrcIndex !== this.lrcIndex) {
        this.lrcIndex = newLrcIndex;
        this.scroller.scrollToIndex(this.lrcIndex - 5, true)
      }
    }
  }

  updateState(eventData: emitter.EventData) {
    if (eventData !== undefined && eventData.data !== undefined) {
      Logger.info(this.tag, 'state:' + eventData.data.state);
      if (eventData.data.state === ServerConstants.PLAYER_STATE_IDLE) {
        this.noItem = true;
      }
      if (this.state !== ServerConstants.PLAYER_STATE_PLAYING && eventData.data.state === ServerConstants.PLAYER_STATE_PLAYING) {
        this.item = this.PlayerManager.getItem();
        this.noItem = false;
        this.lrc = CommonUtils.getLrc(this.item.title);
        this.listTitle = this.PlayerManager.getListTitle();
        this.scroller.scrollToIndex(0, true)
        setTimeout(() => {
          if (this.rotateAngle === 0) {
            this.rotateAngle = 360;
            Logger.info(this.tag, 'rotateAngle:360');
          }
        }, 100);
      }
      if (eventData.data.state !== ServerConstants.PLAYER_STATE_PLAYING) {
        this.rotateAngle = 0;
        Logger.info(this.tag, 'rotateAngle:0');
      }
      this.state = eventData.data.state;
    }
  }
}
