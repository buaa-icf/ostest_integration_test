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
import prompt from '@ohos.promptAction';
import PlayerManager from '../manager/PlayerManager';

PersistentStorage.persistProp('loginCookie', '');
PersistentStorage.persistProp('loginName', ServerConstants.LOGIN_INFO_NO);

@Entry
@Component
struct Index {
  private PlayerManager: PlayerManager = AppStorage.get('PlayerManager') as PlayerManager;
  @State recommendPlayLists: PlayListData[] = []
  @State customPlayLists: PlayListData[] = []
  @State isShowPlayerDetail: boolean = false;
  @State isShowPlayList: boolean = false;
  @State isRefreshing: boolean = false
  @State mOffset: number = 0
  @State mFriction: number = 48
  @State maskOpacity: number = 0.5;
  @State loginInfo: string = ServerConstants.LOGIN_INFO_NO;
  @State loginButton: string = ServerConstants.LOGIN_BUTTON_IN;
  @State loginButtonClickable: boolean = true;
  private httpRequest = http.createHttp()
  private csrfToken: string = ''

  @Builder
  refreshBuilder() {
    Column() {
      Text($r('app.string.refreshing'))
        .fontSize(16)
    }
    .alignItems(HorizontalAlign.Center)
    .justifyContent(FlexAlign.Center)
    .padding(24)
    .borderRadius(12)
  }

  aboutToAppear(): void {
    let loginName: string | undefined = AppStorage.get('loginName');
    this.getRecommendListFromServer();
    if (loginName != ServerConstants.LOGIN_INFO_NO) {
      this.loginInfo = loginName + ServerConstants.LOGIN_INFO_DONE;
      this.loginButton = ServerConstants.LOGIN_BUTTON_OUT;
      this.getCustomListFromServer();
    } else {
      this.customPlayLists = [];
    }
  }

  aboutToDisappear(): void {
    emitter.off(ServerConstants.UPDATE_TIME_EVENT_ID);
    emitter.off(ServerConstants.UPDATE_STATE_EVENT_ID);
  }

  build() {
    Column() {
      Row() {
        Image($r('app.media.ic_public_drawer'))
          .objectFit(ImageFit.Contain)
          .width(36)
          .height(32)
          .margin({ right: 8, left: 8 })
          .onClick(() => {
            animateTo({ duration: 350 }, () => {
              //this.isShowSetting = true;
            })
          })
          .id('setting')
        if (this.loginInfo === ServerConstants.LOGIN_INFO_NO) {
          Text(this.loginInfo)
            .fontSize(24)
            .margin(4)
            .transition(TransitionEffect.OPACITY)

        } else {
          Text(this.loginInfo)
            .fontSize(24)
            .margin(4)
            .transition(TransitionEffect.OPACITY)
        }
        Button(this.loginButton)
          .type(ButtonType.Normal)
          .stateEffect(this.loginButtonClickable)
          .backgroundColor(Color.White)
          .fontColor(Color.Red)
          .fontWeight(FontWeight.Lighter)
          .borderWidth(1)
          .borderColor(Color.Gray)
          .borderRadius(4)
          .height(42)
          .width(108)
          .margin(8)
          .fontSize(28)
          .onClick(() => {
            if (this.loginButton === ServerConstants.LOGIN_BUTTON_OUT) {
              this.logout();
            }
            else {
              this.login()
            }
          })
      }
      .justifyContent(FlexAlign.SpaceBetween)
      .padding({ left: 16 })
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
                Text($r('app.string.recommend_list'))
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

              Scroll() {
                Row() {
                  ForEach(this.recommendPlayLists, (item: PlayListData) => {
                    PlayListItem({ item }).margin(12)
                      .transition({ type: TransitionType.All, opacity: 0 })
                  })
                }
                .margin(12)
              }
              .scrollable(ScrollDirection.Horizontal)
              .scrollBar(BarState.Off)
              .edgeEffect(EdgeEffect.Spring)
              .width('100%')

              Row() {
                Text($r('app.string.my_list'))
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
                  .id('my_list_item')
                  .transition({ type: TransitionType.All, opacity: 0 })
                })
              }
              .margin(12)
              .columnsTemplate('1fr 1fr 1fr')
              .columnsGap(8)
              .rowsGap(12)
              .width('90%')
            }
          }
          .align(Alignment.Top)
          .edgeEffect(EdgeEffect.Spring)
          .scrollBarWidth(0)
          .height('100%')
          .margin({ bottom: 72 })
        }.onRefreshing(() => {
          setTimeout(() => {
            this.getRecommendListFromServer();
            if (this.loginInfo != ServerConstants.LOGIN_INFO_NO) {
              this.getCustomListFromServer();
            } else {
              this.customPlayLists = [];
            }
            this.isRefreshing = false
          }, 500)
        })

        Column() {
          PlayerBar({ isShowPlayList: $isShowPlayList, isShowPlayerDetail: $isShowPlayerDetail })
            .backgroundColor(Color.White)
            .width('100%')
            .margin({ top: 4 })
        }
        .opacity(0.8)
        .linearGradient({
          direction: GradientDirection.Top,
          repeating: true,
          colors: [[0xf0f0f0, 0], [0xffffff, 1]]
        })

        if (this.isShowPlayerDetail) {
          PlayerDetail({ isShowPlayList: $isShowPlayList, isShowPlayerDetail: $isShowPlayerDetail })
            .width('100%')
            .height('100%')
            .transition(TransitionEffect.OPACITY
              .animation({ curve: curves.springMotion() })
              .combine(TransitionEffect.move(TransitionEdge.BOTTOM))
            )
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

  logout() {
    AppStorage.setOrCreate('loginName', ServerConstants.LOGIN_INFO_NO);
    AppStorage.setOrCreate('loginCookie', '');
    animateTo({ duration: 2000 }, () => {
      this.customPlayLists = [];
      this.loginButton = ServerConstants.LOGIN_BUTTON_IN;
      this.loginInfo = ServerConstants.LOGIN_INFO_NO;
    })
    this.getRecommendListFromServer();
    //TODO request logout from server
  }

  login() {
    try {
      animateTo({ duration: 2000 }, () => {
        this.loginButton = ServerConstants.LOGIN_INFO_ING;
      })
      this.loginButtonClickable = false;
      this.httpRequest.request(ServerConstants.CSRF_URL,
        (err: Error, data: http.HttpResponse) => {
          if (!err) {
            console.info('HttpResponse Result:' + data.result);
            const jsonObject: object = JSON.parse(data.result as string);
            this.csrfToken = jsonObject['csrf_token'];
            this.httpRequest.request(ServerConstants.LOGIN_URL,
              {
                method: http.RequestMethod.POST,
                extraData: 'username=' + ServerConstants.TEST_ACCOUNT_USER + '&password=' + ServerConstants.TEST_ACCOUNT_PWD,
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
                    animateTo({ duration: 2000 }, () => {
                      this.loginInfo = ServerConstants.TEST_ACCOUNT_USER + ServerConstants.LOGIN_INFO_DONE
                    })
                    AppStorage.setOrCreate('loginName', ServerConstants.TEST_ACCOUNT_USER);
                    let loginCookie: string[] = data.header['set-cookie'];
                    let cookie: string = loginCookie.map(cookie => {
                      const parts = cookie.split('=');
                      return `${parts[0]}=${parts[1]}`;
                    }).join('; ')
                    AppStorage.setOrCreate('loginCookie', cookie);
                  }
                  console.info('HttpResponse type:' + JSON.stringify(data.resultType));
                  console.info('HttpResponse header:' + JSON.stringify(data.header));
                  animateTo({ duration: 2000 }, () => {
                    this.loginButton = ServerConstants.LOGIN_BUTTON_OUT;
                  })
                  this.getRecommendListFromServer();
                  this.getCustomListFromServer();
                } else {
                  console.info('HttpResponse error:' + JSON.stringify(err));
                  this.loginButton = ServerConstants.LOGIN_BUTTON_IN;
                  prompt.showToast({
                    message: ServerConstants.LOGIN_INFO_FAILED
                  })
                }
              });
          } else {
            console.info('HttpResponse error:' + JSON.stringify(err));
            this.loginButton = ServerConstants.LOGIN_BUTTON_IN;
            prompt.showToast({
              message: ServerConstants.LOGIN_INFO_FAILED
            })
          }
        });
    } catch (err) {
      console.info('HttpRequest error:' + JSON.stringify(err));
      this.loginButton = ServerConstants.LOGIN_BUTTON_IN;
      prompt.showToast({
        message: ServerConstants.LOGIN_INFO_FAILED
      })
    }
    this.loginButtonClickable = true;
  }

  getRecommendListFromServer() {
    animateTo({ duration: 2000 }, () => {
      this.recommendPlayLists = [];
      this.PlayerManager.clearFavourList();
    })
    try {
      this.httpRequest.request(ServerConstants.RECOMMEND_LIST_URL,
        {
          method: http.RequestMethod.GET,
          header: {
            'Cookie': AppStorage.get('loginCookie')
          }
        },
        (err: Error, data: http.HttpResponse) => {
          if (!err) {
            console.info('HttpResponse getRecommendListFromServer Result:' + data.result);
            const jsonObject: object = JSON.parse(data.result as string);
            Object.keys(jsonObject).forEach((key) => {
              let aPlayingList: AudioItem[] = Array<AudioItem>();
              Object.keys(jsonObject[key]).forEach((key2) => {
                aPlayingList.push(new AudioItem(jsonObject[key][key2].name, jsonObject[key][key2].singer, jsonObject[key][key2].id));
              });
              animateTo(
                { duration: 1000 },
                () => {
                  this.recommendPlayLists.push(new PlayListData(key, $r('app.media.icon'), aPlayingList.length + ServerConstants.LIST_SONG_COUNT,
                    aPlayingList, ''));
                })
              if (key === '我的收藏') {
                this.PlayerManager.setFavourList(aPlayingList);
              }
            });
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

  getCustomListFromServer() {
    animateTo({ duration: 2000 }, () => {
      this.customPlayLists = [];
    })
    try {
      this.httpRequest.request(ServerConstants.CUSTOM_LIST_URL,
        {
          method: http.RequestMethod.GET,
          header: {
            'Cookie': AppStorage.get('loginCookie')
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

            let jsonObject: PlaylistItem[] = JSON.parse(data.result as string);
            let groupedByPlaylistName = jsonObject.reduce((accumulator, item) => {
              if (!accumulator[item.playlist_name]) {
                accumulator[item.playlist_name] = [];
              }
              accumulator[item.playlist_name].push(item);
              return accumulator;
            }, {} as Record<string, PlaylistItem[]>);
            const keys = Object.keys(groupedByPlaylistName);
            keys.forEach((playlistName) => {
              console.log(`Playlist: ${playlistName}`);
              let aPlayingList: AudioItem[] = Array<AudioItem>();
              groupedByPlaylistName[playlistName].forEach((song, index) => {
                aPlayingList.push(new AudioItem(song.name, song.singer, song.id.toString()));
              });
              animateTo({ duration: 1000 }, () => {
                this.customPlayLists.push(new PlayListData(playlistName, $r('app.media.icon'), aPlayingList.length + ServerConstants.LIST_SONG_COUNT,
                  aPlayingList, ''));
              })
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