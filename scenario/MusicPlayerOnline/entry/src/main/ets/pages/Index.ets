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
  @State playLists: PlayListData[] = []
  @State customPlayLists: PlayListData[] = []
  @State isShowPlayerDetail: boolean = false;
  @State isShowPlayList: boolean = false;
  @State isRefreshing: boolean = false
  @State mOffset: number = 0
  @State mFriction: number = 48
  @State maskOpacity: number = 0.5;
  @State loginInfo: string = '未登录';
  @State loginCookie: string[] = [];
  private userName: string = 'test';
  private password: string = 'kh123456'
  private httpRequest = http.createHttp()
  private csrfToken: string = ''

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
    //this.login();
  }

  aboutToDisappear(): void {
    emitter.off(ServerConstants.UPDATE_TIME_EVENT_ID);
    emitter.off(ServerConstants.UPDATE_STATE_EVENT_ID);
  }

  build() {
    Column() {
      Row() {
        Button('登录')
          .height(42)
          .margin(8)
          .fontSize(32)
          .onClick(() => {
            this.login()
          })
        Text(this.loginInfo)
          .fontSize(32)
      }
      .height('10%')
      .width('100%')

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

              Row() {
                Text('我的歌单')
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
                ForEach(this.customPlayLists, (item: PlayListData) => {
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
      .height('90%')
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
      this.httpRequest.request(ServerConstants.ALL_SONGS_URL, (err: Error, data: http.HttpResponse) => {
        if (!err) {
          console.info('HttpResponse Result:' + data.result);
          let aPlayingList: AudioItem[] = Array<AudioItem>();
          const jsonObject: object = JSON.parse(data.result as string);
          Object.keys(jsonObject).forEach((key) => {
            aPlayingList.push(new AudioItem(jsonObject[key].name, jsonObject[key].singer, jsonObject[key].id));
          });
          this.playLists.push(new PlayListData('全部歌曲', $r('app.media.icon'), aPlayingList.length + '首',
            aPlayingList, ''));
          console.info('HttpResponse code:' + data.responseCode);
          console.info('HttpResponse type:' + JSON.stringify(data.resultType));
          console.info('HttpResponse header:' + JSON.stringify(data.header));
          console.info('HttpResponse cookies:' + data.cookies);

        } else {
          console.info('HttpResponse error:' + JSON.stringify(err));
        }
      });
    } catch (err) {
      console.info('HttpRequest error:' + JSON.stringify(err));
    }
    try {
      this.httpRequest.request(ServerConstants.ENGLISH_SONGS_URL, (err: Error, data: http.HttpResponse) => {
        if (!err) {
          console.info('HttpResponse Result:' + data.result);
          let aPlayingList: AudioItem[] = Array<AudioItem>();
          const jsonObject: object = JSON.parse(data.result as string);
          Object.keys(jsonObject).forEach((key) => {
            aPlayingList.push(new AudioItem(jsonObject[key].name, jsonObject[key].singer, jsonObject[key].id));
          });
          this.playLists.push(new PlayListData('英文歌曲', $r('app.media.icon'), aPlayingList.length + '首',
            aPlayingList, ''));
          console.info('HttpResponse code:' + data.responseCode);
          console.info('HttpResponse type:' + JSON.stringify(data.resultType));
          console.info('HttpResponse header:' + JSON.stringify(data.header));
          console.info('HttpResponse cookies:' + data.cookies);
        } else {
          console.info('HttpResponse error:' + JSON.stringify(err));
        }
      });
    } catch (err) {
      console.info('HttpRequest error:' + JSON.stringify(err));
    }
  }

  login() {
    try {
      this.httpRequest.request(ServerConstants.CSRF_URL,
        (err: Error, data: http.HttpResponse) => {
          if (!err) {
            console.info('HttpResponse Result:' + data.result);
            const jsonObject: object = JSON.parse(data.result as string);
            this.csrfToken = jsonObject['csrf_token'];
            this.httpRequest.request(ServerConstants.LOGIN_URL,
              {
                method: http.RequestMethod.POST,
                extraData: 'username=' + this.userName + '&password=' + this.password,
                header: {
                  'content-Type': 'application/x-www-form-urlencoded',
                  'X-CSRFToken': this.csrfToken,
                  'Cookie': 'csrftoken=' + this.csrfToken + ';'
                },
              },
              (err: Error, data: http.HttpResponse) => {
                if (!err) {
                  console.info('HttpResponse Result:' + data.result);
                  console.info('HttpResponse code:' + data.responseCode);
                  if (200 === data.responseCode) {
                    this.loginInfo = this.userName
                    this.loginCookie = data.header['set-cookie'];
                  }
                  console.info('HttpResponse type:' + JSON.stringify(data.resultType));
                  console.info('HttpResponse header:' + JSON.stringify(data.header));

                  this.getCustomListFromServer();
                } else {
                  console.info('HttpResponse error:' + JSON.stringify(err));
                }
              });
          } else {
            console.info('HttpResponse error:' + JSON.stringify(err));
          }
        });
    } catch (err) {
      console.info('HttpRequest error:' + JSON.stringify(err));
    }
  }

  getCustomListFromServer() {
    this.customPlayLists = [];
    try {
      this.httpRequest.request(ServerConstants.CUSTOM_LIST_URL,
        {
          method: http.RequestMethod.GET,
          header: {
            'Cookie': this.loginCookie.map(cookie => {
              const parts = cookie.split('=');
              return `${parts[0]}=${parts[1]}`;
            }).join('; ')
          }
        },
        (err: Error, data: http.HttpResponse) => {
          if (!err) {
            console.info('HttpResponse getCustomListFromServer Result:' + data.result);
            interface PlaylistItem {
              playlist_name: string;
              song: number;
              id: number;
              name: string;
              singer: string;
              language: string;
            }
            let jsonObject: PlaylistItem[]  = JSON.parse(data.result as string);
            let groupedByPlaylistName = jsonObject.reduce((accumulator, item) => {
              if (!accumulator[item.playlist_name]) {
                accumulator[item.playlist_name] = [];
              }
              accumulator[item.playlist_name].push(item);
              return accumulator;
            }, {} as  Record<string, PlaylistItem[]>);
            const keys = Object.keys(groupedByPlaylistName);
            keys.forEach((playlistName) => {
              console.log(`Playlist: ${playlistName}`);
              let aPlayingList: AudioItem[] = Array<AudioItem>();
              groupedByPlaylistName[playlistName].forEach((song, index) => {
                aPlayingList.push(new AudioItem(song.name, song.singer, song.id.toString()));
              });
              this.customPlayLists.push(new PlayListData(playlistName, $r('app.media.icon'), aPlayingList.length + '首',
                aPlayingList, ''));
            });
          } else {
            console.info('HttpResponse error:' + JSON.stringify(err));
          }
        });
    } catch (err) {
      console.info('HttpRequest error:' + JSON.stringify(err));
    }
  }
}