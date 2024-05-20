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

import PlayerBar from '../view/PlayerBar';
import PlayList from '../view/PlayList';
import curves from '@ohos.curves';
import PlayListItem from '../view/PlayListItem';
import http from '@ohos.net.http'
import ServerConstants from '../manager/ServerConstants';
import AudioItem from '../model/AudioItem';
import PlayListData from '../model/PlayListData';
import PlayerDetail from '../view/PlayerDetail';
import emitter from '@ohos.events.emitter';

@Entry
@Component
struct Index {
  @State playLists: PlayListData[] = [];
  @State isShowPlayerDetail: boolean = false;
  @State isShowPlayList: boolean = false;
  @State isRefreshing: boolean = false
  @State mOffset: number = 0
  @State mFriction: number = 48
  @State maskOpacity: number = 0.5;

  @Builder
  refreshBuilder() {
    Column() {
      Text('刷新中......')
        .fontSize(16)
    }
    .alignItems(HorizontalAlign.Center)
    .justifyContent(FlexAlign.Center)
    .padding(24)
    .borderRadius(12)
  }

  aboutToAppear(): void {
    this.getListFromServer();
  }

  aboutToDisappear(): void {
    emitter.off(ServerConstants.UPDATE_TIME_EVENT_ID);
    emitter.off(ServerConstants.UPDATE_STATE_EVENT_ID);
  }

  build() {
    Column() {
      Stack({ alignContent: Alignment.Bottom }) {
        Refresh({
          refreshing: $$this.isRefreshing,
          offset: this.mOffset,
          friction: this.mFriction,
          builder: this.refreshBuilder
        }) {
          Scroll() {
            Column() {
              Row() {
                Text('推荐歌单')
                  .fontSize('20fp')
                  .fontWeight(FontWeight.Medium)
                Image($r('app.media.ic_public_arrow_right'))
                  .objectFit(ImageFit.Contain)
                  .width(24)
                  .height(24)
              }
              .height(36)
              .justifyContent(FlexAlign.SpaceBetween)
              .width('90%')
              .margin(12)

              Grid() {
                ForEach(this.playLists, (item: PlayListData) => {
                  GridItem() {
                    PlayListItem({ item })
                  }
                })
              }
              .margin(12)
              .columnsTemplate('1fr 1fr 1fr')
              .columnsGap(8)
              .rowsGap(12)
              .width('90%')
            }.align(Alignment.TopStart)
          }.scrollBarWidth(0)
          .height('100%')
          .margin({ bottom: 112 })
        }.onRefreshing(() => {
          setTimeout(() => {
            this.getListFromServer();
            this.isRefreshing = false
          }, 500)
        })

        PlayerBar({ isShowPlayList: $isShowPlayList, isShowPlayerDetail: $isShowPlayerDetail })
          .backgroundColor(Color.White)
          .width('100%')
        if (this.isShowPlayerDetail) {
          PlayerDetail({ isShowPlayList: $isShowPlayList, isShowPlayerDetail: $isShowPlayerDetail })
            .width('100%')
            .height('100%')
            .transition(TransitionEffect.OPACITY
              .animation({ curve: curves.springMotion() })
              .combine(TransitionEffect.move(TransitionEdge.BOTTOM)))
        }
        if (this.isShowPlayList) {
          Rect()
            .width('100%')
            .height('100%')
            .fill('#e0e0e0')
            .fillOpacity(this.maskOpacity)
            .onClick(() => {
              animateTo({ duration: 350 }, () => {
                this.isShowPlayList = false;
              })
            })
            .transition(TransitionEffect.OPACITY)
        }
        if (this.isShowPlayList) {
          PlayList()
            .width('100%')
            .height('80%')
            .transition(TransitionEffect.OPACITY
              .animation({ curve: curves.springMotion() })
              .combine(TransitionEffect.move(TransitionEdge.BOTTOM)))
        }
      }
      .width('100%')
      .height('100%')
    }
    .width('100%')
  }

  onBackPress() {
    if (this.isShowPlayList) {
      animateTo({ duration: 350 }, () => {
        this.isShowPlayList = false;
      })
      return true;
    } else if (this.isShowPlayerDetail) {
      animateTo({ duration: 350 }, () => {
        this.isShowPlayerDetail = false;
      })
      return true;
    } else {
      return false;
    }
  }

  getListFromServer() {
    this.playLists = [];
    try {
      let httpRequest = http.createHttp()
      httpRequest.request(ServerConstants.ALL_SONGS_URL, (err: Error, data: http.HttpResponse) => {
        if (!err) {
          console.info('HttpResponse Result:' + data.result);
          let aPlayingList: AudioItem[] = Array<AudioItem>();
          // 解析 JSON 字符串为对象
          const jsonObject: object = JSON.parse(data.result as string);
          Object.keys(jsonObject).forEach((key) => {
            aPlayingList.push(new AudioItem(jsonObject[key].name, jsonObject[key].singer, jsonObject[key].id));
          });
          this.playLists.push(new PlayListData('全部歌曲', $r('app.media.icon'), aPlayingList.length + '首',
            aPlayingList, ''));
          console.info('HttpResponse code:' + data.responseCode);
          console.info('HttpResponse type:' + JSON.stringify(data.resultType));
          console.info('HttpResponse header:' + JSON.stringify(data.header));
          console.info('HttpResponse cookies:' + data.cookies); // 自API version 8开始支持cookie

        } else {
          console.info('HttpResponse error:' + JSON.stringify(err));
        }
      });
    } catch (err) {
      console.info('HttpRequest error:' + JSON.stringify(err));
    }
    try {
      let httpRequest = http.createHttp()
      httpRequest.request(ServerConstants.ENGLISH_SONGS_URL, (err: Error, data: http.HttpResponse) => {
        if (!err) {
          console.info('HttpResponse Result:' + data.result);
          let aPlayingList: AudioItem[] = Array<AudioItem>();
          // 解析 JSON 字符串为对象
          const jsonObject: object = JSON.parse(data.result as string);
          Object.keys(jsonObject).forEach((key) => {
            aPlayingList.push(new AudioItem(jsonObject[key].name, jsonObject[key].singer, jsonObject[key].id));
          });
          this.playLists.push(new PlayListData('英文歌曲', $r('app.media.icon'), aPlayingList.length + '首',
            aPlayingList, ''));
          console.info('HttpResponse code:' + data.responseCode);
          console.info('HttpResponse type:' + JSON.stringify(data.resultType));
          console.info('HttpResponse header:' + JSON.stringify(data.header));
          console.info('HttpResponse cookies:' + data.cookies); // 自API version 8开始支持cookie
        } else {
          console.info('HttpResponse error:' + JSON.stringify(err));
        }
      });
    } catch (err) {
      console.info('HttpRequest error:' + JSON.stringify(err));
    }
  }
}