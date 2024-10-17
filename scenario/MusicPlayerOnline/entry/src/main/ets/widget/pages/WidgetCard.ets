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

import AudioData from '../../model/AudioData';
import AppConstants from '../../constants/AppConstants';
import { PLAY_MODE } from '../../constants/PlayMode';

let storageUpdateByMsg = new LocalStorage();
const TAG: string = 'MusicWidgetCard'

@Entry(storageUpdateByMsg)
@Component
struct WidgetCard {
  /*
   * The display priority value is 1.
   */
  readonly DISPLAY_PRIORITY_ONE: number = 1;
  /*
   * The display priority value is 2.
   */
  readonly DISPLAY_PRIORITY_TWO: number = 2;
  /*
   * The width or height full percentage setting.
   */
  readonly FULL_PERCENT: string = '100%';
  /*
   * The action type.
   */
  readonly ACTION_TYPE: string = 'router';
  /*
   * The ability name.
  */
  readonly ABILITY_NAME: string = 'EntryAbility';
  /*
   * The maxLinesValue.
   */
  readonly MAX_LINES_VALUE: number = 1;
  @LocalStorageProp('formId') formId: string = '';
  @LocalStorageProp('audioItem') audioItem: AudioData = new AudioData('未播放', '--', '')
  @LocalStorageProp('serverHost') serverHost: string = '';
  @LocalStorageProp('isPlaying') isPlaying: string = AppConstants.PLAYER_STATE_UNKNOWN;
  @LocalStorageProp('imgName') imgName: string = '';
  @LocalStorageProp('playMode') playMode: number = PLAY_MODE.REPEAT;
  private downloadImgId: string = ''

  aboutToAppear(): void {
    postCardAction(this, {
      'action': 'call',
      'abilityName': this.ABILITY_NAME,
      'params': {
        'method': 'formId',
        'formId': this.formId,
      }
    });
  }

  build() {
    Stack({ alignContent: Alignment.TopStart }) {
      Row() {
      }
      .width(this.FULL_PERCENT)
      .height(this.FULL_PERCENT)
      .displayPriority(this.DISPLAY_PRIORITY_ONE)
      .backgroundImage('memory://' + this.imgName)
      .backgroundImageSize(ImageSize.Cover)

      Column()
        .width(this.FULL_PERCENT)
        .height(this.FULL_PERCENT)
        .backgroundColor(Color.White)
        .opacity(0.9)

      Row() {
        Column() {
          Row()
            .width(128)
            .height(128)
            .borderRadius(64)
            .margin(8)
            .shadow({ radius: 2, color: Color.Gray })
            .backgroundImage('memory://' + this.imgName)
            .backgroundImageSize(ImageSize.Cover)
            .onClick(() => {
              postCardAction(this, {
                action: this.ACTION_TYPE,
                abilityName: this.ABILITY_NAME,
              });
            })
        }
        .justifyContent(FlexAlign.Center)
        .height(this.FULL_PERCENT)

        Column() {
          Row() {
            Column() {
              Text(this.audioItem.title)
                .fontSize(32)
                .fontColor($r('app.color.information_title_font'))
                .fontWeight(FontWeight.Medium)
                .maxLines(this.MAX_LINES_VALUE)
                .textOverflow({ overflow: TextOverflow.Ellipsis })
              Text(this.audioItem.artist)
                .fontSize(24)
                .fontColor($r('app.color.item_text_font'))
                .fontWeight(FontWeight.Regular)
                .margin({ top: 4 })
                .maxLines(this.MAX_LINES_VALUE)
                .textOverflow({ overflow: TextOverflow.Ellipsis })
            }
            .justifyContent(FlexAlign.SpaceEvenly)
            .alignItems(HorizontalAlign.Start)
            .margin({ left: 8, right: 8 })
            .width('80%')
            .onClick(() => {
              postCardAction(this, {
                action: this.ACTION_TYPE,
                abilityName: this.ABILITY_NAME,
              });
            })

            Image(this.audioItem.isFavor ? $r('app.media.heart_fill') : $r('app.media.heart'))
              .width(48)
              .height(48)
              .onClick(() => {
                this.onSetFavor()
              })
          }
          .alignItems(VerticalAlign.Top)
          .justifyContent(FlexAlign.SpaceBetween)
          .width(this.FULL_PERCENT)

          Row() {
            Image(this.playMode === PLAY_MODE.REPEAT ? $r('app.media.repeat') :
              (this.playMode === PLAY_MODE.REPEAT1 ? $r('app.media.repeat_1') : $r('app.media.shuffle')))
              .width(64)
              .height(64)
              .padding(4)
              .onClick(() => {
                this.setPlayMode();
              })

            Image($r('app.media.backward_end_fill'))
              .width(64)
              .height(64)
              .padding(4)
              .onClick(() => {
                this.onPreviousClick()
              })
            if (this.isPlaying === AppConstants.PLAYER_STATE_PLAYING) {
              Image($r('app.media.pause'))
                .width(64)
                .height(64)
                .padding(8)
                .onClick(() => {
                  this.onPauseClick();
                })
                .onAppear(() => {
                  if (this.audioItem.id !== '') {
                    if (this.downloadImgId === this.audioItem.id) {
                      return;
                    }
                    this.downloadImgId = this.audioItem.id;
                    postCardAction(this, {
                      action: 'message',
                      params: {
                        info: this.serverHost + AppConstants.SONG_IMAGE_URL + this.audioItem.id
                      }
                    });
                  }
                })
            } else {
              Image($r('app.media.play_fill'))
                .width(64)
                .height(64)
                .padding(4)
                .onClick(() => {
                  this.onPlayClick();
                })
            }

            Image($r('app.media.forward_end_fill'))
              .width(64)
              .height(64)
              .padding(4)
              .onClick(() => {
                this.onNextClick()
              })

          }
          .justifyContent(FlexAlign.SpaceBetween)
          .width(this.FULL_PERCENT)
        }
        .width('60%')
        .height(this.FULL_PERCENT)
        .justifyContent(FlexAlign.SpaceEvenly)
      }
      .width(this.FULL_PERCENT)
      .justifyContent(FlexAlign.SpaceEvenly)
      .displayPriority(this.DISPLAY_PRIORITY_TWO)
    }
  }

  setPlayMode(): void {
    postCardAction(this, {
      'action': 'call',
      'abilityName': this.ABILITY_NAME,
      'params': {
        'method': 'playMode'
      }
    });
    console.info(TAG, 'postCardAction setPlayMode');
  }

  onPlayClick(): void {
    postCardAction(this, {
      'action': 'call',
      'abilityName': this.ABILITY_NAME,
      'params': {
        'method': 'play'
      }
    });
    console.info(TAG, 'postCardAction onPlayClick');
  }

  onPauseClick(): void {
    postCardAction(this, {
      'action': 'call',
      'abilityName': this.ABILITY_NAME,
      'params': {
        'method': 'pause'
      }
    });
    console.info(TAG, 'postCardAction onPauseClick');
  }

  onPreviousClick(): void {
    postCardAction(this, {
      'action': 'call',
      'abilityName': this.ABILITY_NAME,
      'params': {
        'method': 'prev'
      }
    });
  }

  onNextClick(): void {
    postCardAction(this, {
      'action': 'call',
      'abilityName': this.ABILITY_NAME,
      'params': {
        'method': 'next'
      }
    });
  }

  onSetFavor(): void {
    postCardAction(this, {
      'action': 'call',
      'abilityName': this.ABILITY_NAME,
      'params': {
        'method': 'setFavor'
      }
    });
  }
}