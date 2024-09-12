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
import PlayListItem from '../view/PlayListItem';
import http from '@ohos.net.http'
import ServerConstants from '../constants/ServerConstants';
import UIConstants from '../constants/UIConstants';
import AudioItem from '../model/AudioItem';
import PlayListData from '../model/PlayListData';
import PlayerDetail from '../view/PlayerDetail';
import emitter from '@ohos.events.emitter';
import prompt from '@ohos.promptAction';
import PlayerManager from '../manager/PlayerManager';
import Setting from '../view/Setting';
import { LoginCustomDialog } from '../view/loginDialog';

PersistentStorage.persistProp('loginCookie', '');
PersistentStorage.persistProp('loginName', ServerConstants.LOGIN_INFO_NO);

@Entry
@Component
struct Index {
  private PlayerManager: PlayerManager = AppStorage.get('PlayerManager') as PlayerManager;
  @State recommendPlayLists: PlayListData[] = [];
  @State customPlayLists: PlayListData[] = [];
  @State searchResultPlayLists: PlayListData[] = [];
  @State searchSongTitle: string = ServerConstants.SEARCH_DEFAULT;
  @State isShowPlayerDetail: boolean = false;
  @State isShowPlayList: boolean = false;
  @State isRefreshing: boolean = false;
  @State mOffset: number = 0;
  @State mFriction: number = 48;
  @State maskOpacity: number = 0.5;
  @State loginInfo: string = ServerConstants.LOGIN_INFO_NO;
  @State loginButton: string = ServerConstants.LOGIN_BUTTON_IN;
  @State rowAngle: number = 0;
  @State colAngle: number = 0;
  @State isShowSidebar: boolean = false;
  private httpRequest = http.createHttp();
  private csrfToken: string = '';
  private rowScroller: Scroller = new Scroller();
  private colScroller: Scroller = new Scroller()
  private rootScroller: Scroller = new Scroller()
  @State inputUserName: string = ''
  @State inputPwd: string = ''
  @State inputPwd2: string = ''
  dialogController: CustomDialogController | null = new CustomDialogController({
    builder: LoginCustomDialog({
      cancel: () => {
        if (this.dialogController !== null) {
          this.dialogController.close()
        }
      },
      confirm: (isRegister: boolean) => {
        if (isRegister) {
          this.register(this.inputUserName, this.inputPwd, this.inputPwd2);
        } else {
          this.login(this.inputUserName, this.inputPwd);
        }
      },
      inputUserName: $inputUserName,
      inputPwd: $inputPwd,
      inputPwd2: $inputPwd2,
    }),
    autoCancel: true,
    alignment: DialogAlignment.Bottom,
    offset: { dx: 0, dy: -20 },
    gridCount: 4,
    customStyle: false,
    cornerRadius: 10,
  })

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
    emitter.on(ServerConstants.UPDATE_FAVOR_EVENT_ID, (eventData: emitter.EventData) => {
      if (eventData !== undefined && eventData.data !== undefined) {
        prompt.showToast({
          message: eventData.data.message
        })
        this.getRecommendListFromServer();
      }
    });
  }

  aboutToDisappear(): void {
    emitter.off(ServerConstants.UPDATE_TIME_EVENT_ID);
    emitter.off(ServerConstants.UPDATE_STATE_EVENT_ID);
    this.dialogController = null;
  }

  build() {
    SideBarContainer(SideBarContainerType.Overlay) {

      Column() {
        Setting({ loginInfo: $loginInfo })
      }
      .width('100%')
      .backgroundColor('#fafafa')

      Column() {
        Row() {
          Row() {
            Image($r('app.media.open_sidebar'))
              .width(32)
              .height(42)
              .objectFit(ImageFit.Fill)
          }
          .width(96)
          .height('100%')
          .alignSelf(ItemAlign.Start)
          .clickEffect(UIConstants.CLICK_EFFECT)
          .onClick(() => {
            animateTo({ duration: 1000 }, () => {
              this.isShowSidebar = true;
            })
          })
          .id('setting')

          if (this.loginInfo === ServerConstants.LOGIN_INFO_NO) {
            Text(this.loginInfo)
              .fontSize(24)
              .margin({ right: 4, left: 4 })
              .transition(TransitionEffect.OPACITY.animation({ duration: 2000, curve: Curve.Ease })
                .combine(TransitionEffect.translate({ y: 24 })))

          } else {
            Text(this.loginInfo)
              .fontSize(24)
              .margin({ right: 4, left: 4 })
              .transition(TransitionEffect.OPACITY.animation({ duration: 2000, curve: Curve.Ease })
                .combine(TransitionEffect.translate({ y: -24 })))
          }
          Text(this.loginButton)
            .backgroundColor(Color.White)
            .fontColor(Color.Red)
            .fontWeight(FontWeight.Lighter)
            .borderColor(Color.Gray)
            .borderRadius(4)
            .height(42)
            .width(96)
            .textAlign(TextAlign.End)
            .fontSize(28)
            .maxLines(1)
            .clickEffect(UIConstants.CLICK_EFFECT)
            .onClick(() => {
              if (this.loginButton === ServerConstants.LOGIN_BUTTON_OUT) {
                this.logout();
              } else if (this.loginButton === ServerConstants.LOGIN_BUTTON_IN) {
                if (this.dialogController != null) {
                  this.dialogController.open()
                }
              }
            })
        }
        .justifyContent(FlexAlign.SpaceBetween)
        .height('8%')
        .width('90%')

        Stack({ alignContent: Alignment.Bottom }) {
          Column() {
            Search({
              placeholder: $r('app.string.search_holder')
            })
              .width('90%')
              .height('6%')
              .enableKeyboardOnFocus(false)
              .onSubmit((value: string) => {
                this.searchSongsFromServer(value);
              })
          }
          .width('100%')
          .height('100%')

          Refresh({
            refreshing: $$this.isRefreshing,
            offset: this.mOffset,
            friction: this.mFriction,
            builder: this.refreshBuilder
          }) {
            Scroll(this.rootScroller) {
              Column() {
                Row() {
                  Text($r('app.string.recommend_list'))
                    .fontSize('20fp')
                    .fontWeight(FontWeight.Medium)
                  Image($r('app.media.chevron_right_2'))
                    .objectFit(ImageFit.Contain)
                    .width(32)
                    .height(32)
                    .rotate({ angle: this.rowAngle })
                    .id('scroll_row')
                    .clickEffect(UIConstants.CLICK_EFFECT)
                    .onClick(() => {
                      animateTo({ duration: 1000 }, () => {
                        if (this.rowAngle === 0) {
                          this.rowScroller.scrollEdge(Edge.End)
                          this.rowAngle = 180;
                        } else {
                          this.rowScroller.scrollEdge(Edge.Start)
                          this.rowAngle = 0;
                        }
                      })
                    })
                }
                .height(36)
                .justifyContent(FlexAlign.SpaceBetween)
                .width('90%')
                .margin(12)

                Scroll(this.rowScroller) {
                  Row() {
                    ForEach(this.recommendPlayLists, (item: PlayListData) => {
                      PlayListItem({ item }).margin({ left: 12, right: 12 })
                        .transition({ type: TransitionType.All, opacity: 0 })
                    })
                  }
                  .margin(12)
                }
                .scrollable(ScrollDirection.Horizontal)
                .scrollBar(BarState.Off)
                .edgeEffect(EdgeEffect.Spring)
                .width('100%')
                .onReachEnd(() => {
                  animateTo({ duration: 1000 }, () => {
                    this.rowAngle = 180;
                  })
                })
                .onReachStart(() => {
                  animateTo({ duration: 1000 }, () => {
                    this.rowAngle = 0;
                  })
                })

                if (this.searchSongTitle !== ServerConstants.SEARCH_DEFAULT) {
                  Row() {
                    Text(this.searchSongTitle)
                      .fontSize('20fp')
                      .fontWeight(FontWeight.Medium)
                      .transition(TransitionEffect.OPACITY.animation({ duration: 2000, curve: Curve.Ease }))
                    Image($r('app.media.xmark_circle'))
                      .objectFit(ImageFit.Contain)
                      .width(32)
                      .height(32)
                      .transition(TransitionEffect.OPACITY.animation({ duration: 2000, curve: Curve.Ease }).combine(
                        TransitionEffect.rotate({ z: 1, angle: 180 })
                      ))
                      .clickEffect(UIConstants.CLICK_EFFECT)
                      .onClick(() => {
                        animateTo({ duration: 1000 }, () => {
                          this.searchSongTitle = ServerConstants.SEARCH_DEFAULT;
                          this.searchResultPlayLists = [];
                        })
                      })
                  }
                  .height(36)
                  .justifyContent(FlexAlign.SpaceBetween)
                  .width('90%')
                  .margin(12)

                  Grid() {
                    ForEach(this.searchResultPlayLists, (item: PlayListData) => {
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

                Row() {
                  Text($r('app.string.my_list'))
                    .fontSize('20fp')
                    .fontWeight(FontWeight.Medium)
                  Image($r('app.media.chevron_down_2'))
                    .objectFit(ImageFit.Contain)
                    .width(32)
                    .height(32)
                    .id('scroll_col')
                    .rotate({ angle: this.colAngle })
                    .clickEffect(UIConstants.CLICK_EFFECT)
                    .onClick(() => {
                      animateTo({ duration: 1000 }, () => {
                        if (this.colAngle === 0) {
                          if (!this.rootScroller.isAtEnd()) {
                            this.colAngle = 180;
                            this.rootScroller.scrollEdge(Edge.Bottom);
                          }
                        } else {
                          if (this.rootScroller.currentOffset().yOffset !== 0) {
                            this.colAngle = 0;
                            this.rootScroller.scrollEdge(Edge.Top);
                          }
                        }
                      })
                    })
                }
                .height(36)
                .justifyContent(FlexAlign.SpaceBetween)
                .width('90%')
                .margin(12)

                Grid(this.colScroller) {
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
                .scrollBar(BarState.Off)
                .width('90%')
                .height('75%')
                .nestedScroll({
                  scrollForward: NestedScrollMode.PARENT_FIRST,
                  scrollBackward: NestedScrollMode.SELF_FIRST
                })
              }
            }
            .align(Alignment.Top)
            .edgeEffect(EdgeEffect.Spring)
            .scrollBarWidth(0)
            .height('100%')
            .margin({ bottom: 72 })
            .onReachStart(() => {
              animateTo({ duration: 1000 }, () => {
                this.colAngle = 0;
                this.colScroller.scrollTo({ yOffset: 0, xOffset: 0 })
              })
            })
            .onReachEnd(() => {
              animateTo({ duration: 1000 }, () => {
                this.colAngle = 180;
              })
            })
          }
          .margin({ top: '12%' })
          .onRefreshing(() => {
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
            colors: [[0xfff0f0, 0], [0xffffff, 1]]
          })

          if (this.isShowPlayerDetail) {
            PlayerDetail({ isShowPlayList: $isShowPlayList, isShowPlayerDetail: $isShowPlayerDetail })
              .width('100%')
              .height('100%')
              .transition(TransitionEffect.OPACITY
                .animation({ duration: 1000, curve: Curve.FastOutSlowIn })
                .combine(TransitionEffect.move(TransitionEdge.BOTTOM))
              )
          }
          if (this.isShowPlayList || this.isShowSidebar) {
            Rect()
              .width('100%')
              .height('100%')
              .fill('#e0e0e0')
              .fillOpacity(this.maskOpacity)
              .onClick(() => {
                this.isShowPlayList = false;
                animateTo({ duration: 1000 }, () => {
                  this.isShowSidebar = false;
                })
              })
              .transition(TransitionEffect.OPACITY.animation({ duration: 1000, curve: Curve.Ease }))
          }
          if (this.isShowPlayList) {
            PlayList()
              .width('100%')
              .height('80%')
              .transition(TransitionEffect.OPACITY
                .animation({ duration: 1000, curve: Curve.FastOutSlowIn })
                .combine(TransitionEffect.move(TransitionEdge.BOTTOM)))
          }
        }
        .width('100%')
        .height('92%')
      }
      .width('100%')
    }
    .showControlButton(false)
    .showSideBar(this.isShowSidebar)
    .sideBarWidth('80%')
    .minSideBarWidth('80%')
    .maxSideBarWidth('80%')
    .minContentWidth(0)
    .backgroundBlurStyle(BlurStyle.Thick)
    .onChange((value: boolean) => {
      this.isShowSidebar = value;
    })
  }

  onBackPress() {
    if (this.isShowSidebar) {
      animateTo({ duration: 1000 }, () => {
        this.isShowSidebar = false;
      })
      return true;
    } else if (this.isShowPlayList) {
      this.isShowPlayList = false;
      return true;
    } else if (this.isShowPlayerDetail) {
      this.isShowPlayerDetail = false;
      return true;
    } else {
      return false;
    }
  }

  logout() {
    AppStorage.setOrCreate('loginName', ServerConstants.LOGIN_INFO_NO);
    AppStorage.setOrCreate('loginCookie', '');
    this.loginButton = ServerConstants.LOGIN_BUTTON_IN;
    animateTo({ duration: 2000 }, () => {
      this.customPlayLists = [];
      this.loginInfo = ServerConstants.LOGIN_INFO_NO;
    })
    this.getRecommendListFromServer();
    //TODO request logout from server
  }

  login(userName: string, pwd: string) {
    try {
      this.loginButton = ServerConstants.LOGIN_INFO_ING;
      this.httpRequest.request(ServerConstants.CSRF_URL,
        (err: Error, data: http.HttpResponse) => {
          if (!err) {
            console.info('HttpResponse Result:' + data.result);
            try {
              const jsonObject: object = JSON.parse(data.result as string);
              this.csrfToken = jsonObject['csrf_token'];
              this.httpRequest.request(ServerConstants.LOGIN_URL,
                {
                  method: http.RequestMethod.POST,
                  extraData: 'username=' + userName + '&password=' + pwd,
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
                    console.info('HttpResponse type:' + JSON.stringify(data.resultType));
                    console.info('HttpResponse header:' + JSON.stringify(data.header));
                    if (200 === data.responseCode) {
                      console.info('HttpResponse code:' + (data.result as string).indexOf(ServerConstants.LOGIN_FAILED));
                      if ((data.result as string).indexOf(ServerConstants.LOGIN_FAILED) !== -1) {
                        this.loginFailed();
                        return;
                      }
                      this.loginInfo = this.inputUserName + ServerConstants.LOGIN_INFO_DONE;
                      AppStorage.setOrCreate('loginName', this.inputUserName);
                      let loginCookie: string[] = data.header['set-cookie'];
                      let cookie: string = loginCookie.map(cookie => {
                        const parts = cookie.split('=');
                        return `${parts[0]}=${parts[1]}`;
                      }).join('; ')
                      AppStorage.setOrCreate('loginCookie', cookie);
                    }
                    this.loginButton = ServerConstants.LOGIN_BUTTON_OUT;
                    if (this.dialogController !== null) {
                      this.dialogController.close();
                    }
                    this.getRecommendListFromServer();
                    this.getCustomListFromServer();
                  } else {
                    console.info('HttpResponse error:' + JSON.stringify(err));
                    this.loginFailed();
                  }
                });
            }
            catch (error) {
              console.error("JSON :", error.message);
              this.loginFailed();
            }
          } else {
            console.info('HttpResponse error:' + JSON.stringify(err));
            this.loginFailed();
          }
        });
    } catch (err) {
      console.info('HttpRequest error:' + JSON.stringify(err));
      this.loginFailed();
    }
  }

  register(userName: string, pwd: string, pwd2: string) {
    if (userName.trim() === '' || pwd.trim() === '') {
      prompt.showToast({
        message: '用户名和密码不能为空！'
      })
      return;
    }
    if (pwd !== pwd2) {
      prompt.showToast({
        message: '两次密码输入不同！'
      })
      return;
    }
    try {
      this.loginButton = ServerConstants.LOGIN_INFO_ING;
      this.httpRequest.request(ServerConstants.CSRF_URL,
        (err: Error, data: http.HttpResponse) => {
          if (!err) {
            console.info('HttpResponse Result:' + data.result);
            try {
              const jsonObject: object = JSON.parse(data.result as string);
              this.csrfToken = jsonObject['csrf_token'];
              this.httpRequest.request(ServerConstants.REGISTER_URL,
                {
                  method: http.RequestMethod.POST,
                  extraData: 'username=' + userName.trim() + '&password=' + pwd.trim(),
                  header: {
                    'content-Type': 'application/x-www-form-urlencoded',
                    'X-CSRFToken': this.csrfToken,
                    'Cookie': 'csrftoken=' + this.csrfToken + ';'
                  },
                },
                (err: Error, data: http.HttpResponse) => {
                  if (!err) {
                    console.info('HttpResponse Result:' + data.result);
                    if ((data.result as string).indexOf(ServerConstants.REGISTER_FAILED) !== -1) {
                      prompt.showToast({
                        message: ServerConstants.REGISTER_INFO_FAILED + data.result
                      })
                      return;
                    }
                    prompt.showToast({
                      message: ServerConstants.REGISTER_INFO_SUCCESS
                    })
                  } else {
                    console.info('HttpResponse error:' + JSON.stringify(err));
                    prompt.showToast({
                      message: ServerConstants.REGISTER_INFO_FAILED
                    })
                  }
                });
            } catch (err) {
              console.info('HttpRequest error:' + JSON.stringify(err));
              prompt.showToast({
                message: ServerConstants.REGISTER_INFO_FAILED
              })
            }
          } else {
            console.info('HttpResponse error:' + JSON.stringify(err));
            prompt.showToast({
              message: ServerConstants.REGISTER_INFO_FAILED
            })
          }
        });
    } catch (err) {
      console.info('HttpRequest error:' + JSON.stringify(err));
      prompt.showToast({
        message: ServerConstants.REGISTER_INFO_FAILED
      })
    }
  }

  loginFailed() {
    this.loginButton = ServerConstants.LOGIN_BUTTON_IN;
    prompt.showToast({
      message: ServerConstants.LOGIN_INFO_FAILED
    })
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
            try {
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
                if (key === ServerConstants.LIST_SONG_FAVOURITE) {
                  this.PlayerManager.setFavourList(aPlayingList);
                }
              });
            }
            catch (error) {
              console.error("JSON :", error.message);
            }
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
            try {
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
            }
            catch (error) {
              console.error("JSON :", error.message);
            }
          } else {
            console.info('HttpResponse error:' + JSON.stringify(err));
          }
        });
    } catch (err) {
      console.info('HttpRequest error:' + JSON.stringify(err));
    }
  }

  searchSongsFromServer(search_word: string) {
    search_word = search_word.trim();
    if (!search_word) {
      prompt.showToast({ message: ServerConstants.EMPTY_SEARCH_WORD });
      return;
    }
    animateTo(
      { duration: 1000 },
      () => {
        this.searchSongTitle = search_word + ServerConstants.SEARCHING;
        this.searchResultPlayLists = [];
      })
    try {
      this.httpRequest.request(ServerConstants.SEARCH_SONG_URL + search_word,
        {
          method: http.RequestMethod.GET,
          header: {
            'Cookie': AppStorage.get('loginCookie')
          }
        },
        (err: Error, data: http.HttpResponse) => {
          if (!err) {
            console.info('HttpResponse searchSongsFromServer Result:' + data.result);
            try {
              const jsonObject: object = JSON.parse(data.result as string);
              Object.keys(jsonObject).forEach((key) => {
                animateTo(
                  { duration: 1000 },
                  () => {
                    this.searchSongTitle = key;
                  })
                Object.keys(jsonObject[key]).forEach((key2) => {
                  let aPlayingList: AudioItem[] = Array<AudioItem>();
                  let aAudioItem = new AudioItem(jsonObject[key][key2].name, jsonObject[key][key2].singer, jsonObject[key][key2].id)
                  aPlayingList.push(aAudioItem);
                  animateTo(
                    { duration: 1000 },
                    () => {
                      this.searchResultPlayLists.push(new PlayListData(jsonObject[key][key2].name, $r('app.media.icon'), '', aPlayingList, ''))
                    })
                });
              });
            } catch (error) {
              console.error("JSON :", error.message);
              this.searchSongTitle = ServerConstants.SEARCH_DEFAULT;
            }
            console.info('HttpResponse code:' + data.responseCode);
            console.info('HttpResponse type:' + JSON.stringify(data.resultType));
            console.info('HttpResponse header:' + JSON.stringify(data.header));
            console.info('HttpResponse cookies:' + data.cookies);
          } else {
            console.info('HttpResponse error:' + JSON.stringify(err));
            this.searchSongTitle = ServerConstants.SEARCH_DEFAULT;
          }
        });
    } catch (err) {
      console.info('HttpRequest error:' + JSON.stringify(err));
      this.searchSongTitle = ServerConstants.SEARCH_DEFAULT;
    }
  }
}