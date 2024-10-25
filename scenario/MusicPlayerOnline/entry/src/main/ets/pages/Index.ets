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
import CurrentPlayList from '../view/CurrentPlayList';
import AppConstants from '../constants/AppConstants';
import PlayListData from '../model/PlayListData';
import PlayListGroupData from '../model/PlayListGroupData';
import PlayerDetail from '../view/PlayerDetail';
import emitter from '@ohos.events.emitter';
import prompt from '@ohos.promptAction';
import Setting from '../view/Setting';
import { LoginCustomDialog } from '../view/LoginDialog';
import HttpManager from '../manager/HttpManager';
import SingleRowScrollerList from '../view/SingleRowScrollerList';
import TriColGridList from '../view/TriColGridList';
import TriColNestScrollerGrid from '../view/TriColNestScrollerGrid';
import ExplorePlayList from '../view/ExplorePlayList';
import { PLAY_MODE } from '../constants/PlayMode';
import PlayerManager from '../manager/PlayerManager';
import AllSinger from '../view/AllSinger';

PersistentStorage.persistProp(AppConstants.LOGIN_COOKIE, '');
PersistentStorage.persistProp(AppConstants.LOGIN_NAME, AppConstants.LOGIN_INFO_NO);
PersistentStorage.persistProp(AppConstants.DETAIL_DEFAULT_SETTING, AppConstants.TOGGLE_SETTING_OFF);
PersistentStorage.persistProp(AppConstants.PLAY_MODE_SETTING, AppConstants.TOGGLE_SETTING_OFF);
PersistentStorage.persistProp(AppConstants.PLAY_MODE_RECORD, PLAY_MODE.REPEAT);
PersistentStorage.persistProp(AppConstants.KEEP_LOGIN_SETTING, AppConstants.TOGGLE_SETTING_ON);
PersistentStorage.persistProp(AppConstants.SERVER_HOST_PROP, AppConstants.SERVER_HOST);
PersistentStorage.persistProp(AppConstants.PLAYLIST_RECORD, []);
PersistentStorage.persistProp(AppConstants.PLAYLIST_RECORD_INDEX, '0');

@Entry
@Component
struct Index {
  private PlayerManager: PlayerManager = AppStorage.get('PlayerManager') as PlayerManager;
  @State recommendPlayLists: PlayListGroupData[] = [];
  @State customPlayLists: PlayListData[] = [];
  @State searchResultPlayLists: PlayListData[] = [];
  @State searchSongTitle: string = AppConstants.SEARCH_DEFAULT;
  @State isShowPlayerDetail: boolean = false;
  @State isShowCurrentPlayList: boolean = false;
  @State isShowPlayList: boolean = false;
  @State isRefreshing: boolean = false;
  @State isShowSingerList: boolean = false;
  @State mOffset: number = 0;
  @State mFriction: number = 48;
  @State maskOpacity: number = 0.5;
  @State loginInfo: string = AppConstants.LOGIN_INFO_NO;
  @State loginButton: string = AppConstants.LOGIN_BUTTON_IN;
  @State colAngle: number = 0;
  @State isShowSidebar: boolean = false;
  private rootScroller: Scroller = new Scroller()
  private colScroller: Scroller = new Scroller();
  @State inputUserName: string = ''
  @State inputPwd: string = ''
  @State inputPwd2: string = ''
  private dialogController: CustomDialogController | null = new CustomDialogController({
    builder: LoginCustomDialog({
      cancel: () => {
        if (this.dialogController !== null) {
          this.dialogController.close()
          this.loginButton = AppConstants.LOGIN_BUTTON_IN;
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
    let loginName: string | undefined = AppStorage.get(AppConstants.LOGIN_NAME);
    this.PlayerManager.initialPlayList();
    this.PlayerManager.initialPlayMode();
    HttpManager.getInstance().getRecommendListFromServer();
    if (loginName != AppConstants.LOGIN_INFO_NO) {
      this.loginInfo = loginName + AppConstants.LOGIN_INFO_DONE;
      this.loginButton = AppConstants.LOGIN_BUTTON_OUT;
      HttpManager.getInstance().getCustomListFromServer();
    } else {
      this.customPlayLists = [];
    }

    emitter.on(AppConstants.LOGIN_RESULT, (eventData: emitter.EventData) => {
      this.updateLogin(eventData);
    });

    emitter.on(AppConstants.UPDATE_USER_LIST, (eventData: emitter.EventData) => {
      this.updateLists(eventData);
    });

    emitter.on(AppConstants.PLAYLIST_UPDATE_CHANGED, () => {
      if (!this.isShowPlayerDetail) {
        this.isShowPlayerDetail = true;
      }
    });

    emitter.on(AppConstants.MAIN_SHOW_PLAYLIST, () => {
      this.showExplorePlaylist();
    });
  }

  aboutToDisappear(): void {
    emitter.off(AppConstants.UPDATE_USER_LIST);
    emitter.off(AppConstants.LOGIN_RESULT);
    emitter.off(AppConstants.PLAYLIST_UPDATE_CHANGED);
    emitter.off(AppConstants.MAIN_SHOW_PLAYLIST);
    if (this.dialogController !== null) {
      this.dialogController.close();
      this.dialogController = null;
    }
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
          .clickEffect(AppConstants.CLICK_EFFECT)
          .onClick(() => {
            animateTo({ duration: 1000 }, () => {
              this.isShowSidebar = true;
            })
          })
          .id('setting')

          if (this.loginInfo === AppConstants.LOGIN_INFO_NO) {
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
            .textAlign(TextAlign.Center)
            .fontSize(28)
            .maxLines(1)
            .shadow({ radius: 1, color: Color.Gray })
            .clickEffect(AppConstants.CLICK_EFFECT)
            .onClick(() => {
              if (this.loginButton === AppConstants.LOGIN_BUTTON_OUT) {
                this.logout();
              } else if (this.loginButton === AppConstants.LOGIN_BUTTON_IN) {
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
          Row() {
            Search({
              placeholder: $r('app.string.search_holder')
            })
              .width('75%')
              .height('6%')
              .enableKeyboardOnFocus(false)
              .onSubmit((value: string) => {
                this.searchSongsFromServer(value);
              })
            Text($r('app.string.all_singer_list'))
              .margin({ top: 6 })
              .padding({
                left: 8,
                right: 8,
                top: 4,
                bottom: 4
              })
              .fontSize(18)
              .clickEffect(AppConstants.CLICK_EFFECT)
              .height('6%')
              .textAlign(TextAlign.Center)
              .borderRadius(8)
              .shadow({ radius: 1, color: Color.Gray })
              .onClick(() => {
                this.isShowSingerList = true;
              })
          }
          .width('90%')
          .height('100%')
          .justifyContent(FlexAlign.SpaceBetween)
          .alignItems(VerticalAlign.Top)

          Refresh({
            refreshing: $$this.isRefreshing,
            offset: this.mOffset,
            friction: this.mFriction,
            builder: this.refreshBuilder
          }) {
            Scroll(this.rootScroller) {
              Column() {

                if (this.searchSongTitle !== AppConstants.SEARCH_DEFAULT) {
                  TriColGridList({ title: this.searchSongTitle, playLists: this.searchResultPlayLists })
                }

                ForEach(this.recommendPlayLists, (item: PlayListGroupData) => {
                  SingleRowScrollerList({ title: item.title, playLists: item.lists })
                })

                TriColNestScrollerGrid({
                  title: '我的歌单',
                  colAngle: this.colAngle,
                  rootScroller: this.rootScroller,
                  colScroller: this.colScroller,
                  playLists: this.customPlayLists,
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
              HttpManager.getInstance().getRecommendListFromServer();
              if (this.loginInfo != AppConstants.LOGIN_INFO_NO) {
                HttpManager.getInstance().getCustomListFromServer();
              } else {
                this.customPlayLists = [];
              }
              this.isRefreshing = false
            }, 1000)
          })

          if (this.isShowSingerList) {
            AllSinger({ isShowSingerList: this.isShowSingerList })
              .width('100%')
              .height('90%')
              .backgroundColor(Color.White)
              .transition(TransitionEffect.OPACITY
                .animation({ duration: 1000, curve: Curve.FastOutSlowIn })
                .combine(TransitionEffect.move(TransitionEdge.END))
              )
              .margin({ bottom: 72 })
          }
          if (this.isShowPlayList) {
            ExplorePlayList({ isShowPlayList: this.isShowPlayList, customPlayLists: this.customPlayLists, })
              .width('100%')
              .height('90%')
              .transition(TransitionEffect.OPACITY
                .animation({ duration: 1000, curve: Curve.FastOutSlowIn })
                .combine(TransitionEffect.move(TransitionEdge.BOTTOM)))
              .margin({ bottom: 72 })
          }
          Column() {
            PlayerBar({ isShowCurrentPlayList: $isShowCurrentPlayList, isShowPlayerDetail: $isShowPlayerDetail })
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
            PlayerDetail({
              isShowCurrentPlayList: $isShowCurrentPlayList,
              isShowPlayerDetail: $isShowPlayerDetail,
              customPlayLists: this.customPlayLists,
              loginInfo: this.loginInfo,
            })
              .width('100%')
              .height('100%')
              .transition(TransitionEffect.OPACITY
                .animation({ duration: 1000, curve: Curve.FastOutSlowIn })
                .combine(TransitionEffect.move(TransitionEdge.BOTTOM))
              )
          }
          if (this.isShowCurrentPlayList || this.isShowSidebar) {
            Rect()
              .width('100%')
              .height('100%')
              .fill('#e0e0e0')
              .fillOpacity(this.maskOpacity)
              .onClick(() => {
                this.isShowCurrentPlayList = false;
                animateTo({ duration: 1000 }, () => {
                  this.isShowSidebar = false;
                })
              })
              .transition(TransitionEffect.OPACITY.animation({ duration: 1000, curve: Curve.Ease }))
          }
          if (this.isShowCurrentPlayList) {
            CurrentPlayList()
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
    } else if (this.isShowCurrentPlayList) {
      this.isShowCurrentPlayList = false;
      return true;
    } else if (this.isShowPlayerDetail) {
      this.isShowPlayerDetail = false;
      return true;
    } else if (this.isShowPlayList) {
      this.isShowPlayList = false;
      return true;
    } else if (this.isShowSingerList) {
      this.isShowSingerList = false;
      return true;
    } else {
      return false;
    }
  }

  logout() {
    AppStorage.setOrCreate(AppConstants.LOGIN_NAME, AppConstants.LOGIN_INFO_NO);
    AppStorage.setOrCreate(AppConstants.LOGIN_COOKIE, AppConstants.LOGIN_COOKIE_NONE);
    this.loginButton = AppConstants.LOGIN_BUTTON_IN;
    animateTo({ duration: 2000 }, () => {
      this.customPlayLists = [];
      this.loginInfo = AppConstants.LOGIN_INFO_NO;
    })
    HttpManager.getInstance().getRecommendListFromServer();
    //TODO request logout from server
  }

  login(userName: string, pwd: string) {
    this.loginButton = AppConstants.LOGIN_INFO_ING;
    HttpManager.getInstance().login(userName, pwd)
  }

  register(userName: string, pwd: string, pwd2: string) {
    this.loginButton = AppConstants.LOGIN_INFO_ING;
    HttpManager.getInstance().register(userName, pwd, pwd2);
  }

  searchSongsFromServer(search_word: string) {
    search_word = search_word.trim();
    if (!search_word) {
      prompt.showToast({ message: AppConstants.EMPTY_SEARCH_WORD });
      return;
    }
    animateTo(
      { duration: 1000 },
      () => {
        this.searchSongTitle = search_word + AppConstants.SEARCHING;
        this.searchResultPlayLists = [];
      })
    HttpManager.getInstance().searchSongsFromServer(search_word);
  }

  updateLogin(eventData: emitter.EventData) {
    if (eventData !== undefined && eventData.data !== undefined) {
      switch (eventData.data.message) {
        case AppConstants.LOGIN_RESULT_SUCCESS:
          this.loginInfo = this.inputUserName + AppConstants.LOGIN_INFO_DONE;
          this.loginButton = AppConstants.LOGIN_BUTTON_OUT;
          if (this.dialogController !== null) {
            this.dialogController.close();
          }
          setTimeout(() => {
            animateTo({ duration: 1000 }, () => {
              this.colAngle = 180;
              this.rootScroller.scrollEdge(Edge.Bottom);
            })
          }, 2000)
          break;
        case AppConstants.LOGIN_RESULT_FAILED:
          this.loginButton = AppConstants.LOGIN_BUTTON_IN;
          break;
        default:
          break;
      }
    }
  }

  showExplorePlaylist() {
    if (!this.isShowPlayList) {
      this.isShowPlayList = true;
    }
  }

  updateLists(eventData: emitter.EventData) {
    if (eventData !== undefined && eventData.data !== undefined) {
      switch (eventData.data.message) {
        case AppConstants.UPDATE_USER_LIST_RECOMMEND:
          if (eventData.data.isStart) {
            animateTo({ duration: 2000 }, () => {
              this.recommendPlayLists = [];
            })
          }
          animateTo(
            { duration: 1000 },
            () => {
              if (eventData.data !== undefined && eventData.data.item !== undefined) {
                console.info('UPDATE_USER_LIST_RECOMMEND:' + (eventData.data.item as PlayListGroupData).title);
                this.recommendPlayLists.push(eventData.data.item as PlayListGroupData);
              }
            })
          break;
        case AppConstants.UPDATE_USER_LIST_CUSTOM:
          if (eventData.data.isStart) {
            animateTo({ duration: 2000 }, () => {
              this.customPlayLists = [];
            })
          }
          animateTo({ duration: 1000 }, () => {
            if (eventData.data !== undefined && eventData.data.item !== undefined) {
              console.info('UPDATE_USER_LIST_CUSTOM:' + (eventData.data.item as PlayListData).title);
              this.customPlayLists.push(eventData.data.item as PlayListData);
              if ((eventData.data.item as PlayListData).title === this.PlayerManager.getExploreList().title) {
                this.PlayerManager.setExploreList(eventData.data.item as PlayListData);
              }
            }
          })
          break;
        case AppConstants.UPDATE_USER_LIST_RECENT:
          animateTo(
            { duration: 1000 },
            () => {
              if (eventData.data !== undefined && eventData.data.item !== undefined) {
                console.info('UPDATE_USER_LIST_RECENT:' + (eventData.data.item as PlayListData).title);
                let recentItem = eventData.data.item as PlayListData;
                let existingIndex = this.customPlayLists.findIndex(item => item.title === recentItem.title);
                if (existingIndex !== -1) {
                  this.customPlayLists[existingIndex] = recentItem;
                } else {
                  this.customPlayLists.unshift(recentItem);
                }
              }
            })
          break;
        case AppConstants.UPDATE_USER_LIST_SEARCH:
          if (eventData.data.isStart) {
            animateTo({ duration: 2000 }, () => {
              this.searchResultPlayLists = []
            })
          }
          animateTo(
            { duration: 1000 },
            () => {
              if (eventData.data !== undefined && eventData.data.item !== undefined) {
                console.info('UPDATE_USER_LIST_SEARCH:' + (eventData.data.item as PlayListData).title);
                this.searchResultPlayLists.push(eventData.data.item as PlayListData)
              }
            })
          break;
        case AppConstants.UPDATE_USER_LIST_FAVOR:
          let existingIndex = this.customPlayLists.findIndex(item => item.title === AppConstants.LIST_SONG_FAVOURITE);
          animateTo(
            { duration: 1000 },
            () => {
              if (eventData.data !== undefined) {
                if (eventData.data.item !== undefined) {
                  console.info('UPDATE_USER_LIST_FAVOR:' + (eventData.data.item as PlayListData).title);
                  if (existingIndex !== -1) {
                    this.customPlayLists[existingIndex] = eventData.data.item as PlayListData;
                  } else {
                    this.customPlayLists.unshift(eventData.data.item as PlayListData);
                  }
                } else {
                  if (existingIndex !== -1) {
                    this.customPlayLists.splice(existingIndex, 1);
                  }
                }
              }
            })
          break;
        default:
          break;
      }
    }
  }
}