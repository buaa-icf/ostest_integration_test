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
import ServerConstants from '../constants/ServerConstants';
import UIConstants from '../constants/UIConstants';
import PlayListData from '../model/PlayListData';
import PlayerDetail from '../view/PlayerDetail';
import emitter from '@ohos.events.emitter';
import prompt from '@ohos.promptAction';
import Setting from '../view/Setting';
import { LoginCustomDialog } from '../view/loginDialog';
import HttpManager from '../manager/HttpManager';

PersistentStorage.persistProp('loginCookie', '');
PersistentStorage.persistProp('loginName', ServerConstants.LOGIN_INFO_NO);

@Entry
@Component
struct Index {
  @State recommendPlayLists: PlayListData[] = [];
  @State customPlayLists: PlayListData[] = [];
  @State searchResultPlayLists: PlayListData[] = [];
  @State singerList: PlayListData[] = [];
  @State searchSongTitle: string = ServerConstants.SEARCH_DEFAULT;
  @State isShowPlayerDetail: boolean = false;
  @State isShowPlayList: boolean = false;
  @State isRefreshing: boolean = false;
  @State isShowSingerList: boolean = false;
  @State mOffset: number = 0;
  @State mFriction: number = 48;
  @State maskOpacity: number = 0.5;
  @State loginInfo: string = ServerConstants.LOGIN_INFO_NO;
  @State loginButton: string = ServerConstants.LOGIN_BUTTON_IN;
  @State rowAngle: number = 0;
  @State colAngle: number = 0;
  @State SingerAngle: number = 0;
  @State isShowSidebar: boolean = false;
  private rowScroller: Scroller = new Scroller();
  private colScroller: Scroller = new Scroller()
  private rootScroller: Scroller = new Scroller()
  private singerListClickable: boolean = true;
  @State inputUserName: string = ''
  @State inputPwd: string = ''
  @State inputPwd2: string = ''
  private dialogController: CustomDialogController | null = new CustomDialogController({
    builder: LoginCustomDialog({
      cancel: () => {
        if (this.dialogController !== null) {
          this.dialogController.close()
          this.loginButton = ServerConstants.LOGIN_BUTTON_IN;
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
    HttpManager.getInstance().getRecommendListFromServer();
    if (loginName != ServerConstants.LOGIN_INFO_NO) {
      this.loginInfo = loginName + ServerConstants.LOGIN_INFO_DONE;
      this.loginButton = ServerConstants.LOGIN_BUTTON_OUT;
      HttpManager.getInstance().getCustomListFromServer();
    } else {
      this.customPlayLists = [];
    }

    emitter.on(ServerConstants.LOGIN_RESULT, (eventData: emitter.EventData) => {
      this.updateLogin(eventData);
    });

    emitter.on(ServerConstants.UPDATE_USER_LIST, (eventData: emitter.EventData) => {
      this.updateLists(eventData);
    });
  }

  aboutToDisappear(): void {
    emitter.off(ServerConstants.UPDATE_USER_LIST);
    emitter.off(ServerConstants.LOGIN_RESULT);
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
                    .width(48)
                    .height(48)
                    .padding(8)
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
                      .width(48)
                      .height(48)
                      .padding(8)
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
                      .id('search_list_item')
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
                  Text($r('app.string.singer_list'))
                    .fontSize('20fp')
                    .fontWeight(FontWeight.Medium)
                    .transition(TransitionEffect.OPACITY.animation({ duration: 2000, curve: Curve.Ease }))
                  if (this.singerListClickable) {
                    Image($r('app.media.chevron_down_2'))
                      .objectFit(ImageFit.Contain)
                      .width(48)
                      .height(48)
                      .padding(8)
                      .rotate({ angle: this.SingerAngle })
                      .clickEffect(UIConstants.CLICK_EFFECT)
                      .onClick(() => {
                        if (!this.singerListClickable) {
                          return;
                        }
                        this.singerListClickable = false;
                        setTimeout(() => {
                          this.singerListClickable = true;
                        }, 2000)
                        animateTo({ duration: 1000 }, () => {
                          if (this.singerList.length > 0) {
                            animateTo(
                              { duration: 1000 },
                              () => {
                                this.SingerAngle = 0;
                                this.singerList = [];
                              })
                          } else {
                            HttpManager.getInstance().getSingerListFromServer();
                          }
                        })
                      })
                  }
                }
                .height(36)
                .justifyContent(FlexAlign.SpaceBetween)
                .width('90%')
                .margin(12)

                Grid() {
                  ForEach(this.singerList, (item: PlayListData) => {
                    GridItem() {
                      PlayListItem({ item })
                    }
                    .id('search_list_item')
                    .transition({ type: TransitionType.All, opacity: 0 })
                  })
                }
                .margin(12)
                .columnsTemplate('1fr 1fr 1fr')
                .columnsGap(8)
                .rowsGap(12)
                .width('90%')


                Row() {
                  Text($r('app.string.my_list'))
                    .fontSize('20fp')
                    .fontWeight(FontWeight.Medium)
                  Image($r('app.media.chevron_down_2'))
                    .objectFit(ImageFit.Contain)
                    .width(48)
                    .height(48)
                    .padding(8)
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
              HttpManager.getInstance().getRecommendListFromServer();
              if (this.loginInfo != ServerConstants.LOGIN_INFO_NO) {
                HttpManager.getInstance().getCustomListFromServer();
              } else {
                this.customPlayLists = [];
              }
              this.isRefreshing = false
            }, 1000)
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
            PlayerDetail({
              isShowPlayList: $isShowPlayList,
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
    HttpManager.getInstance().getRecommendListFromServer();
    //TODO request logout from server
  }

  login(userName: string, pwd: string) {
    this.loginButton = ServerConstants.LOGIN_INFO_ING;
    HttpManager.getInstance().login(userName, pwd)
  }

  register(userName: string, pwd: string, pwd2: string) {
    this.loginButton = ServerConstants.LOGIN_INFO_ING;
    HttpManager.getInstance().register(userName, pwd, pwd2);
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
    HttpManager.getInstance().searchSongsFromServer(search_word);
  }

  updateLogin(eventData: emitter.EventData) {
    if (eventData !== undefined && eventData.data !== undefined) {
      switch (eventData.data.message) {
        case ServerConstants.LOGIN_RESULT_SUCCESS:
          this.loginInfo = this.inputUserName + ServerConstants.LOGIN_INFO_DONE;
          this.loginButton = ServerConstants.LOGIN_BUTTON_OUT;
          if (this.dialogController !== null) {
            this.dialogController.close();
          }
          break;
        case ServerConstants.LOGIN_RESULT_FAILED:
          this.loginButton = ServerConstants.LOGIN_BUTTON_IN;
          break;
        default:
          break;
      }
    }
  }

  updateLists(eventData: emitter.EventData) {
    if (eventData !== undefined && eventData.data !== undefined) {
      switch (eventData.data.message) {
        case ServerConstants.UPDATE_USER_LIST_RECOMMEND:
          if (eventData.data.isStart) {
            animateTo({ duration: 2000 }, () => {
              this.recommendPlayLists = [];
            })
          }
          animateTo(
            { duration: 1000 },
            () => {
              if (eventData.data !== undefined && eventData.data.item !== undefined) {
                console.info('UPDATE_USER_LIST_RECOMMEND:' + (eventData.data.item as PlayListData).title);
                this.recommendPlayLists.push(eventData.data.item as PlayListData);
              }
            })
          break;
        case ServerConstants.UPDATE_USER_LIST_CUSTOM:
          if (eventData.data.isStart) {
            animateTo({ duration: 2000 }, () => {
              this.customPlayLists = [];
            })
          }
          animateTo({ duration: 1000 }, () => {
            if (eventData.data !== undefined && eventData.data.item !== undefined) {
              console.info('UPDATE_USER_LIST_CUSTOM:' + (eventData.data.item as PlayListData).title);
              this.customPlayLists.push(eventData.data.item as PlayListData);
            }
          })
          break;
        case ServerConstants.UPDATE_USER_LIST_RECENT:
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
        case ServerConstants.UPDATE_USER_LIST_SEARCH:
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
        case ServerConstants.UPDATE_USER_LIST_FAVOR:
          let existingIndex = this.customPlayLists.findIndex(item => item.title === ServerConstants.LIST_SONG_FAVOURITE);
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
        case ServerConstants.UPDATE_USER_LIST_SINGER:
          if (eventData.data.isStart) {
            animateTo({ duration: 2000 }, () => {
              this.singerList = []
            })
          }
          animateTo(
            { duration: 1000 },
            () => {
              if (eventData.data !== undefined && eventData.data.item !== undefined) {
                console.info('UPDATE_USER_LIST_SINGER:' + (eventData.data.item as PlayListData).title);
                this.singerList.push(eventData.data.item as PlayListData);
                this.SingerAngle = 180;
              }
            })
          break;
        default:
          break;
      }
    }
  }
}