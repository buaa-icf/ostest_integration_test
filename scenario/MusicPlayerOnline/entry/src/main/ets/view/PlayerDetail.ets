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
import ServerConstants from '../manager/ServerConstants';
import AudioItem from '../model/AudioItem';

/**
 * Setting tab content
 */
@Component
export default struct PlayerDetail {
  private tag: string = 'PlayerDetail';
  private PlayerManager: PlayerManager = AppStorage.get('PlayerManager') as PlayerManager;
  @State item:AudioItem = this.PlayerManager.getItem();
  @State listTitle: string = this.PlayerManager.getListTitle();
  @State durationTime: number= 0;
  @State currentTime: number = 0; // 当前时间
  @State state: string = this.PlayerManager.getState(); // 播放状态
  @State rotateAngle: number = 0;
  @State subCurrentIndex: number = 0;
  @State lrcIndex: number = 0
  @State lrc: LrcLine[]= [];
  @State contentSwitch: boolean = true;
  @Link isShowPlayList: boolean;
  @Link isShowPlayerDetail: boolean;
  private scroller: Scroller = new Scroller()
  private tabsController: TabsController = new TabsController();

  @Builder
  TabBuilder(title: string, index: number, selectedImg: Resource, normalImg: Resource) {
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
    .onClick(() => {
      this.subCurrentIndex = index;
      this.tabsController.changeIndex(this.subCurrentIndex);
    })
  }

  aboutToAppear() {
    emitter.on(ServerConstants.UPDATE_TIME_EVENT_ID, (eventData: emitter.EventData) => {
      if (eventData !== undefined && eventData.data !== undefined) {
        //Logger.info(this.tag, 'currentTime:' + eventData.data.currentTime);
        this.currentTime = eventData.data.currentTime;
        this.durationTime = eventData.data.currentDuration;
        let newLrcIndex = Math.floor(this.currentTime * this.lrc.length / this.durationTime);
        if (newLrcIndex !== this.lrcIndex){
          this.lrcIndex = newLrcIndex;
          this.scroller.scrollToIndex(this.lrcIndex-5, true)
        }
      }
    });
    emitter.on(ServerConstants.UPDATE_STATE_EVENT_ID, (eventData: emitter.EventData) => {
      if (eventData !== undefined && eventData.data !== undefined) {
        Logger.info(this.tag, 'state:' + eventData.data.state);
        if (this.state !== ServerConstants.PLAYER_STATE_PLAYING && eventData.data.state === ServerConstants.PLAYER_STATE_PLAYING) {
          this.item = this.PlayerManager.getItem();
          this.lrc = CommonUtils.getLrc(this.item.title);
          this.listTitle = this.PlayerManager.getListTitle();
          this.scroller.scrollToIndex(0, true)
          if (this.rotateAngle === 0) {
            this.rotateAngle = 360;
            Logger.info(this.tag, 'rotateAngle:360');
          }
        }
        if (eventData.data.state !== ServerConstants.PLAYER_STATE_PLAYING) {
          this.rotateAngle = 0;
          Logger.info(this.tag, 'rotateAngle:0');
        }
        this.state = eventData.data.state;
      }
    });
    if (this.state === ServerConstants.PLAYER_STATE_PLAYING) {
      setTimeout(() => {
        if (this.rotateAngle === 0) {
          this.rotateAngle = 360;
          Logger.info(this.tag, 'rotateAngle:360');
        }
      }, 100);
    }
  }

  aboutToDisappear() {
  }

  build() {
    Column() {
      Row() {
        Image($r('app.media.ic_public_arrow_down_0'))
          .height('48vp')
          .width('48vp')
          .padding('8vp')
          .onClick(() => {
            animateTo({ duration: 350 }, () => {
              this.isShowPlayerDetail = false;
            })
          })
        Column() {
          if (this.contentSwitch) {
            Text(this.listTitle).fontSize('18fp')
              .maxLines(2)
          } else {
            Text(this.item.title).fontSize('18fp')
              .maxLines(1)
            Row() {
              Text(this.item.artist).fontSize('14fp')
                .fontColor('#a0a0a0')
              Text('关注')
                .fontSize('14fp')
                .borderRadius('8vp')
                .backgroundColor('#22a0a0a0')
                .margin('4vp')
                .padding({ right: '4vp', left: '4vp' })
              Image($r('app.media.ic_public_arrow_right_grey'))
                .width('8vp')
                .height('16vp')
            }
          }
        }
        .justifyContent(FlexAlign.Center)
        .height('60vp')
        .width('70%')

        Image($r('app.media.ic_public_share'))
          .height('32vp')
          .width('32vp')
      }
      .width('100%')
      .justifyContent(FlexAlign.SpaceEvenly)

      Column() {
        if (this.contentSwitch) {
          Column() {
            Image(ServerConstants.SONG_IMAGE_URL + this.item.id)
              .width('300vp')
              .height('300vp')
              .borderRadius('200vp')
              .margin('50vp')
              .rotate({ angle: this.rotateAngle })
              .animation({
                duration: 3600,
                curve: Curve.Linear,
                delay: 500,
                iterations: -1, // 设置-1表示动画无限循环
                playMode: PlayMode.Normal
              })
            Row() {
              Column() {
                Text(this.item.title).fontSize('18fp')
                Row() {
                  Text(this.item.artist).fontSize('16fp')
                    .fontColor('#303030')
                  Text('关注')
                    .fontSize('14fp')
                    .fontColor('#303030')
                    .backgroundColor('#f0f0f0')
                    .borderRadius('6vp')
                    .padding({ left: '4vp', right: '4vp' })
                }
              }.alignItems(HorizontalAlign.Start)

              Blank()
              Stack() {
                Image($r('app.media.ic_public_favor'))
                  .width('36vp')
                  .height('36vp')
                Text('100w+').fontSize('10fp')
                  .backgroundColor('#ffffff')
                  .margin({ left: '24vp' })
              }.alignContent(Alignment.Top)
              .margin({ right: '8vp' })

              Stack() {
                Image($r('app.media.ic_public_comments'))
                  .width('36vp')
                  .height('36vp')
                Text('10w+').fontSize('10fp')
                  .backgroundColor('#ffffff')
                  .margin({ left: '24vp' })
              }.alignContent(Alignment.Top)
            }
            .width('80%')
            .justifyContent(FlexAlign.SpaceBetween)
          }.width('100%')
          .height('100%')
          .justifyContent(FlexAlign.SpaceAround)
          .onClick(() => {
            this.contentSwitch = false;
          })
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
              .tabBar(this.TabBuilder('歌词', 0,
                $r('app.media.ic_screenshot_line_select'), $r('app.media.ic_screenshot_line')))

              TabContent() {
                Column() {
                  Scroll() {
                    Column({ space: 12 }) {
                    }
                  }
                  .width('100%')
                }.height('100%')
              }
              .tabBar(this.TabBuilder('百科', 1,
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
          .onClick(() => {
            this.contentSwitch = true;
            if (this.state === ServerConstants.PLAYER_STATE_PLAYING) {
              this.rotateAngle = 0;
              animateTo({ duration: 3600 }, () => {
                this.rotateAngle = 360;
              })
            }
          })
        }
      }.width('100%')
      .height('70%')

      Row() {
        Progress({ value: this.currentTime, total: this.durationTime, type: ProgressType.Linear })
          .width('80%')
          .height(30)
      }.width('100%')
      .justifyContent(FlexAlign.Center)

      Row() {
        Text(CommonUtils.formatTime(this.currentTime/1000)).fontSize('12fp')
        Text('无损').fontSize('12fp')
        Text(CommonUtils.formatTime(this.durationTime/1000)).fontSize('12fp')
      }.width('80%')
      .justifyContent(FlexAlign.SpaceBetween)

      Row() {
        Image($r('app.media.ic_public_list_cycle'))
          .objectFit(ImageFit.Contain)
          .width(42)
          .height(42)
          .margin({ right: 12, left: 8 })
        Image($r('app.media.ic_public_play_last'))
          .objectFit(ImageFit.Contain)
          .width(42)
          .height(42)
          .margin({ right: 12, left: 8 })
          .onClick(() => {
            this.PlayerManager.previous();
          })
        if (this.state === ServerConstants.PLAYER_STATE_PLAYING) {
          Image($r('app.media.ic_public_pause'))
            .objectFit(ImageFit.Contain)
            .width(48)
            .height(48)
            .margin({ right: 12, left: 8 })
            .onClick(() => {
              this.PlayerManager.pause();
            })
        } else {
          Image($r('app.media.ic_public_play'))
            .objectFit(ImageFit.Contain)
            .width(48)
            .height(48)
            .margin({ right: 12, left: '8vp' })
            .onClick(() => {
              this.PlayerManager.resume();
            })
        }
        Image($r('app.media.ic_public_play_next'))
          .objectFit(ImageFit.Contain)
          .width(42)
          .height(42)
          .margin({ right: 12, left: 8 })
          .onClick(() => {
            this.PlayerManager.next();
          })
        Image($r('app.media.ic_public_view_list'))
          .objectFit(ImageFit.Contain)
          .width(42)
          .height(42)
          .margin({ right: 12, left: 8 })
          .onClick(() => {
            animateTo({ duration: 350 }, () => {
              this.isShowPlayList = true;
            })
          })
      }.width('100%')
      .height(64)
      .justifyContent(FlexAlign.SpaceEvenly)
    }
    .justifyContent(FlexAlign.SpaceEvenly)
    .width('100%')
    .height('100%')
    .backgroundColor(Color.White)
    .borderRadius({ topLeft: 18, topRight: 18 })
  }
}
