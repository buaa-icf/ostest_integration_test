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
import emitter from '@ohos.events.emitter';
import mainViewModel from '../viewmodel/MainViewModel';
import Logger from '../common/utils/Logger';
import LrcLine from '../viewmodel/LrcLine';

/**
 * Setting tab content
 */
@Component
export default struct PlayerDetail {
  private tag: string = 'PlayerDetail';
  private playerManager: PlayerManager = AppStorage.get('playerManager') as PlayerManager;
  @State playingTitle: string = this.playerManager.getItem().title;
  @State listTitle: string = this.playerManager.getListTitle();
  @State playingArtist: string = this.playerManager.getItem().artist;
  @State playingImg: Resource = this.playerManager.getItem().img;
  @State durationTime: number = this.playerManager.getItem().time; // 总时长
  @State currentTime: number = 0; // 当前时间
  @State state: number = 0; // 播放状态
  @State rotateAngle: number = 0;
  @State subCurrentIndex: number = 0;
  @State lrcIndex: number = 0
  @State lrc: LrcLine[]= [];
  @State contentSwitch: boolean = true;
  @Link isShowPlayList: boolean;
  @Link isShowPlayerDetail: boolean;
  private scroller: Scroller = new Scroller()
  private tabsController: TabsController = new TabsController();
  private innerEvent: emitter.InnerEvent = {
    eventId: 1,
    priority: emitter.EventPriority.HIGH
  };

  @Builder
  TabBuilder(title: string, index: number, selectedImg: Resource, normalImg: Resource) {
    Column() {
      Row() {
        Text(title)
          .fontSize('20fp')
          .fontColor(this.subCurrentIndex === index ? $r('app.color.mainPage_selected') : $r('app.color.mainPage_normal'))
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

  aboutToAppear() {
    emitter.on(this.innerEvent, (eventData: emitter.EventData) => {
      if (eventData !== undefined && eventData.data !== undefined) {
        Logger.info(this.tag, 'state:' + eventData.data.state);
        Logger.info(this.tag, 'currentTime:' + eventData.data.currentTime);
        this.currentTime = eventData.data.currentTime;
        let newLrcIndex = Math.floor(this.currentTime * this.lrc.length / this.durationTime);
        if (newLrcIndex !== this.lrcIndex){
          this.lrcIndex = newLrcIndex;
          this.scroller.scrollToIndex(this.lrcIndex-5, true)
        }
        if (this.state !== 1 && eventData.data.state === 1) {
          this.playingTitle = this.playerManager.getItem().title;
          this.durationTime = this.playerManager.getItem().time;
          this.playingArtist = this.playerManager.getItem().artist;
          this.playingImg = this.playerManager.getItem().img;
          this.listTitle = this.playerManager.getListTitle();
          this.lrc = mainViewModel.getLrc(this.playingTitle);
          this.scroller.scrollToIndex(0, true)
          if (this.rotateAngle === 0) {
            this.rotateAngle = 360;
          }
        }
        if (eventData.data.state !== 1) {
          this.rotateAngle = 0;
        }
        this.state = eventData.data.state;
      }
    });
  }

  aboutToDisappear() {
    //emitter.off(1);
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
            Text(this.playingTitle).fontSize('18fp')
              .maxLines(1)
            Row() {
              Text(this.playingArtist).fontSize('14fp')
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
            Image(this.playingImg)
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
                Text(this.playingTitle).fontSize('18fp')
                Row() {
                  Text(this.playingArtist).fontSize('16fp')
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
                    Column({ space: CommonConstants.COMMON_SPACE }) {
                    }
                  }
                  .width('100%')
                }.height('100%')
              }
              .tabBar(this.TabBuilder('百科', 1,
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
          .width('100%')
          .height('100%')
          .onClick(() => {
            this.contentSwitch = true;
            if (this.state === 1) {
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
        Text(mainViewModel.formatTime(this.currentTime)).fontSize('12fp')
        Text('无损').fontSize('12fp')
        Text(mainViewModel.formatTime(this.durationTime)).fontSize('12fp')
      }.width('80%')
      .justifyContent(FlexAlign.SpaceBetween)

      Row() {
        Image($r('app.media.ic_public_list_cycle'))
          .objectFit(ImageFit.Contain)
          .width('32vp')
          .height('32vp')
          .margin({ right: $r('app.float.home_text_margin'), left: '8vp' })
        Image($r('app.media.ic_public_play_last'))
          .objectFit(ImageFit.Contain)
          .width('32vp')
          .height('32vp')
          .margin({ right: $r('app.float.home_text_margin'), left: '8vp' })
          .onClick(() => {
            this.playerManager.previous();
          })
        if (this.state === 1) {
          Image($r('app.media.ic_public_pause'))
            .objectFit(ImageFit.Contain)
            .width('42vp')
            .height('42vp')
            .margin({ right: $r('app.float.home_text_margin'), left: '8vp' })
            .onClick(() => {
              this.playerManager.pause();
            })
        } else {
          Image($r('app.media.ic_public_play'))
            .objectFit(ImageFit.Contain)
            .width('42vp')
            .height('42vp')
            .margin({ right: $r('app.float.home_text_margin'), left: '8vp' })
            .onClick(() => {
              this.playerManager.play();
            })
        }
        Image($r('app.media.ic_public_play_next'))
          .objectFit(ImageFit.Contain)
          .width('32vp')
          .height('32vp')
          .margin({ right: $r('app.float.home_text_margin'), left: '8vp' })
          .onClick(() => {
            this.playerManager.next();
          })
        Image($r('app.media.ic_public_view_list'))
          .objectFit(ImageFit.Contain)
          .width('32vp')
          .height('32vp')
          .margin({ right: $r('app.float.home_text_margin'), left: '8vp' })
          .onClick(() => {
            animateTo({ duration: 350 }, () => {
              this.isShowPlayList = true;
            })
          })
      }.width('100%')
      .justifyContent(FlexAlign.SpaceEvenly)
    }
    .justifyContent(FlexAlign.SpaceEvenly)
    .width('100%')
    .height('100%')
    .backgroundColor(Color.White)
    .borderRadius({ topLeft: '18vp', topRight: '18vp' })
  }
}
