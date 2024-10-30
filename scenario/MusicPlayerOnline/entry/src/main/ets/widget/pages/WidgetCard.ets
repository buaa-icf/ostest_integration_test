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
  readonly ACTION_TYPE_ROUTER: string = 'router';
  readonly ACTION_TYPE_CALL: string = 'call';
  readonly ACTION_TYPE_MESSAGE: string = 'message';
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
  @LocalStorageProp('currentTime') currentTime: number = 0;
  @LocalStorageProp('durationTime') durationTime: number = 0;
  private downloadImgId: string = ''

  aboutToAppear(): void {
    this.sendFormId();
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
        Stack() {
          Progress({ value: 0, total: this.durationTime, type: ProgressType.Ring })
            .color(Color.Orange)
            .value(this.currentTime)
            .width(138)
            .height(138)
            .style({ strokeWidth: 4, enableScanEffect: true })
          Row()
            .width(128)
            .height(128)
            .borderRadius(64)
            .shadow({ radius: 2, color: Color.Gray })
            .backgroundImage('memory://' + this.imgName)
            .backgroundImageSize(ImageSize.Cover)
            .rotate({ angle: this.currentTime / 100 })
            .onClick(() => {
              this.onItemClick(this.ACTION_TYPE_ROUTER, this.formId);
            })
        }
        .alignContent(Alignment.Center)
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
              this.onItemClick(this.ACTION_TYPE_ROUTER, this.formId);
            })

            Image(this.audioItem.isFavor ? $r('app.media.heart_fill') : $r('app.media.heart'))
              .width(48)
              .height(48)
              .onClick(() => {
                this.onItemClick(this.ACTION_TYPE_CALL, AppConstants.CARD_CALL_METHOD_SET_FAVOR);
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
                this.onItemClick(this.ACTION_TYPE_CALL, AppConstants.CARD_CALL_METHOD_SET_MODE);
              })

            Image($r('app.media.backward_end_fill'))
              .width(64)
              .height(64)
              .padding(4)
              .onClick(() => {
                this.onItemClick(this.ACTION_TYPE_CALL, AppConstants.CARD_CALL_METHOD_PREV);
              })
            if (this.isPlaying === AppConstants.PLAYER_STATE_PLAYING) {
              Image($r('app.media.pause'))
                .width(64)
                .height(64)
                .padding(8)
                .onClick(() => {
                  this.onItemClick(this.ACTION_TYPE_CALL, AppConstants.CARD_CALL_METHOD_PAUSE);
                })
                .onAppear(() => {
                  if (this.audioItem.id !== '') {
                    if (this.downloadImgId === this.audioItem.id) {
                      return;
                    }
                    this.downloadImgId = this.audioItem.id;
                    postCardAction(this, {
                      action: this.ACTION_TYPE_MESSAGE,
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
                  this.onItemClick(this.ACTION_TYPE_CALL, AppConstants.CARD_CALL_METHOD_PLAY);
                })
            }

            Image($r('app.media.forward_end_fill'))
              .width(64)
              .height(64)
              .padding(4)
              .onClick(() => {
                this.onItemClick(this.ACTION_TYPE_CALL, AppConstants.CARD_CALL_METHOD_NEXT);
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

  onItemClick(actionType: string, method: string): void {
    postCardAction(this, {
      action: actionType,
      abilityName: this.ABILITY_NAME,
      params: {
        method: method,
      }
    });
    this.sendFormId();
  }

  sendFormId() {
    postCardAction(this, {
      action: this.ACTION_TYPE_CALL,
      abilityName: this.ABILITY_NAME,
      params: {
        method: AppConstants.CARD_CALL_METHOD_FORM_ID,
        formId: this.formId,
      }
    });
  }
}