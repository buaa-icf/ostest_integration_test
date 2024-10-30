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
import CommonUtils from '../utils/CommonUtils';
import AppConstants from '../constants/AppConstants';
import AudioData from '../model/AudioData';
import { PLAY_MODE } from '../constants/PlayMode';
import { AddToListDialog } from './AddToListDialog';
import PlayListData from '../model/PlayListData';
import prompt from '@ohos.promptAction';
import HttpManager from '../manager/HttpManager';
import LrcLine from '../model/LrcLine';

/**
 * Setting tab content
 */
@Component
export default struct PlayerDetail {
  private tag: string = 'PlayerDetail';
  private PlayerManager: PlayerManager = AppStorage.get('PlayerManager') as PlayerManager;
  @State item: AudioData = this.PlayerManager.getItem();
  @State listTitle: string = this.PlayerManager.getListTitle();
  @Prop durationTime: number;
  @Prop currentTime: number;
  @State state: string = this.PlayerManager.getState();
  @State subCurrentIndex: number = 0;
  @State lrcIndex: number = this.PlayerManager.getLrcIndex();
  @State albumImageContent: boolean = true;
  @State playMode: number = this.PlayerManager.getPlayMode();
  @State noItem: boolean = false;
  @Link isShowCurrentPlayList: boolean;
  @Link isShowPlayerDetail: boolean;
  @Prop customPlayLists: PlayListData[];
  @Prop loginInfo: string;
  @State listOptions: Array<SelectOption> = [];
  @State inputListName: string = '';
  private scroller: Scroller = new Scroller()
  private isDialogOpened: boolean = false;
  private songIdToAdd: string = '';
  private indexScrollStep: number = 6;
  dialogController: CustomDialogController | null = new CustomDialogController({
    builder: AddToListDialog({
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

  aboutToAppear() {
    this.albumImageContent = (AppStorage.get(AppConstants.DETAIL_DEFAULT_SETTING) != AppConstants.TOGGLE_SETTING_ON);

    if (this.lrcIndex - this.indexScrollStep > 0) {
      setTimeout(() => {
        this.scroller.scrollToIndex(this.lrcIndex - this.indexScrollStep, true)
      }, 100)
    }

    emitter.on(AppConstants.DETAIL_UPDATE_FAVOR_AND_QUALITY, () => {
      this.updateFavor();
    });
    emitter.on(AppConstants.DETAIL_UPDATE_LRC_INDEX, (eventData: emitter.EventData) => {
      this.updateLrcIndex(eventData);
    });
    emitter.on(AppConstants.DETAIL_UPDATE_STATE, (eventData: emitter.EventData) => {
      this.updateState(eventData);
    });
    emitter.on(AppConstants.DETAIL_UPDATE_LRC, () => {
      this.updateLrc();
    });
  }

  aboutToDisappear() {
    Logger.info(this.tag, 'aboutToDisappear');
    emitter.off(AppConstants.DETAIL_UPDATE_LRC_INDEX);
    emitter.off(AppConstants.DETAIL_UPDATE_STATE);
    emitter.off(AppConstants.DETAIL_UPDATE_FAVOR_AND_QUALITY);
    emitter.off(AppConstants.DETAIL_UPDATE_LRC);
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
          .clickEffect(AppConstants.CLICK_EFFECT)
          .onClick(() => {
            this.isShowPlayerDetail = false;
          })
          .id('detail_dismiss')

        Column() {
          if (this.albumImageContent) {
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
          .clickEffect(AppConstants.CLICK_EFFECT)
          .onClick(() => {
            if (this.loginInfo === AppConstants.LOGIN_INFO_NO) {
              prompt.showToast({
                message: AppConstants.LOGIN_INFO_NO
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
                if (item.title !== AppConstants.LIST_SONG_FAVOURITE &&
                  item.title !== AppConstants.LIST_SONG_RECENT) {
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
          if (this.albumImageContent) {
            Column() {
              Image(this.item.id ?
                AppStorage.get(AppConstants.SERVER_HOST_PROP) + AppConstants.SONG_IMAGE_URL + this.item.id :
              $r('app.media.startIcon'))
                .width(300)
                .height(300)
                .borderRadius(150)
                .margin(50)
                .rotate({ angle: this.currentTime / 100 })
                .animation({
                  duration: 100,
                  curve: Curve.Linear,
                  playMode: PlayMode.Normal
                })
                .id('detail_songImg')
                .clickEffect(AppConstants.CLICK_EFFECT)
                .shadow({ radius: 1, color: Color.Gray })
                .onClick(() => {
                  this.albumImageContent = false;
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
                .clickEffect(AppConstants.CLICK_EFFECT)
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
            Stack({ alignContent: Alignment.Center }) {
              Image(this.item.id ?
                AppStorage.get(AppConstants.SERVER_HOST_PROP) + AppConstants.SONG_IMAGE_URL + this.item.id :
              $r('app.media.startIcon'))
                .width('80%')
                .height('80%')
                .foregroundEffect({ radius: 20 })
                .borderRadius(200)
                .opacity(0.4)
              Column() {
                if (this.item.lrc === null || this.item.lrc === undefined || this.item.lrc.length < 1) {
                  Text('暂无歌词')
                    .width('100%')
                    .height('100%')
                    .textAlign(TextAlign.Center)
                    .fontSize('24fp')
                    .fontColor(Color.Orange)
                } else {
                  List({ space: 10, scroller: this.scroller }) {
                    ForEach(this.item.lrc, (item: LrcLine, index: number) => {
                      ListItem() {
                        if (index === this.lrcIndex) {
                          Text(item.title)
                            .width('100%')
                            .textAlign(TextAlign.Center)
                            .fontSize('24fp')
                            .fontColor(Color.Orange)
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
                  .scrollBar(BarState.Off)
                  .width('100%')
                }
              }
            }
            .width('100%')
            .height('100%')
            .transition(TransitionEffect.OPACITY.animation({ duration: 2000, curve: Curve.Ease }).combine(
              TransitionEffect.translate({ y: -24 })))
            .clickEffect(AppConstants.CLICK_EFFECT)
            .onClick(() => {
              this.albumImageContent = true;
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
        Text(this.item.quality === AppConstants.HIGH_Q ? AppConstants.HIGH_DES :
          this.item.quality === AppConstants.FLAC ? AppConstants.FLAC_DES : AppConstants.QUALITY_DEFAULT)
          .fontColor(Color.Orange)
          .id('high_quality')
        Text(CommonUtils.formatTime(this.durationTime / 1000)).fontSize('12fp')
          .id('detail_time_duration')
      }.width('80%')
      .justifyContent(FlexAlign.SpaceBetween)

      Row() {
        Image(this.playMode === PLAY_MODE.REPEAT ? $r('app.media.repeat') :
          (this.playMode === PLAY_MODE.REPEAT1 ? $r('app.media.repeat_1') : $r('app.media.shuffle')))
          .width(42)
          .height(42)
          .clickEffect(AppConstants.CLICK_EFFECT)
          .onClick(() => {
            this.playMode = this.PlayerManager.setPlayMode();
          })
          .id('detail_mode')
        Image($r('app.media.backward_end_fill'))
          .width(42)
          .height(42)
          .clickEffect(AppConstants.CLICK_EFFECT)
          .onClick(() => {
            this.PlayerManager.previous();
          })
          .id('detail_previous')
        if (this.state === AppConstants.PLAYER_STATE_PLAYING) {
          Image($r('app.media.pause'))
            .width(48)
            .height(48)
            .clickEffect(AppConstants.CLICK_EFFECT)
            .onClick(() => {
              this.PlayerManager.pause();
            })
            .id('detail_paused')
        } else {
          Image($r('app.media.play_fill'))
            .width(48)
            .height(48)
            .clickEffect(AppConstants.CLICK_EFFECT)
            .onClick(() => {
              this.PlayerManager.resume();
            })
            .id('detail_playing')
        }
        Image($r('app.media.forward_end_fill'))
          .width(42)
          .height(42)
          .clickEffect(AppConstants.CLICK_EFFECT)
          .onClick(() => {
            this.PlayerManager.next();
          })
          .id('detail_next')
        Image($r('app.media.music_note_list'))
          .width(42)
          .height(42)
          .clickEffect(AppConstants.CLICK_EFFECT)
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
    this.item = this.PlayerManager.getItem();
    this.noItem = false;
  }

  updateLrc() {
    this.item = this.PlayerManager.getItem();
  }

  updateLrcIndex(eventData: emitter.EventData) {
    if (eventData !== undefined && eventData.data !== undefined) {
      if (!this.albumImageContent) {
        if (eventData.data.newLrcIndex != this.lrcIndex && eventData.data.newLrcIndex != -1) {
          this.lrcIndex = eventData.data.newLrcIndex;
          this.scroller.scrollToIndex(this.lrcIndex - this.indexScrollStep, true)
        }
      }
    }
  }

  updateState(eventData: emitter.EventData) {
    if (eventData !== undefined && eventData.data !== undefined) {
      Logger.info(this.tag, 'state:' + eventData.data.state);
      if (eventData.data.state === AppConstants.PLAYER_STATE_IDLE) {
        this.noItem = true;
      }
      if (this.state !== AppConstants.PLAYER_STATE_PLAYING &&
        eventData.data.state === AppConstants.PLAYER_STATE_PLAYING) {
        this.item = this.PlayerManager.getItem();
        this.noItem = false;
        this.listTitle = this.PlayerManager.getListTitle();
        this.scroller.scrollToIndex(0, true)
      }
      this.state = eventData.data.state;
    }
  }
}
