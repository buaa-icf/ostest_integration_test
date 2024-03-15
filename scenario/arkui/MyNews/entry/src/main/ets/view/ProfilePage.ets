/*
 * Copyright (c) 2023 Southeast University.
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
/**
 * Common invisible button style
 */
@Extend(Button)
function commonBtnStyle(handler?: (event: ClickEvent) => void) {
  .type(ButtonType.Normal)
  .stateEffect(false)
  .backgroundColor(Color.Transparent)
  .onClick(handler)
}

/* Button style used in the top menu bar */
@Extend(Button)
function darkSemiTransBtnStyle() {
  .backgroundColor('rgba(0,0,0,0.3)')
}

@Extend(Button)
function lightSemiTransBtnStyle() {
  .type(ButtonType.Normal)
  .borderRadius(2)
  .backgroundColor('rgba(255,255,255,0.3)')
}

/* Function button list below user info */
interface funcBtn {
  title: Resource
  icon: Resource
}

const funcBtnList: funcBtn[] = [{
  title: $r('app.string.profile_funcArea_msg'),
  icon: $r('app.media.ic_public_ring')
}, {
  title: $r('app.string.profile_funcArea_history'),
  icon: $r('app.media.ic_public_history')
}, {
  title: $r('app.string.profile_funcArea_likes'),
  icon: $r('app.media.ic_public_thumbsup')
}, {
  title: $r('app.string.profile_funcArea_downloads'),
  icon: $r('app.media.ic_public_download')
}, {
  title: $r('app.string.profile_funcArea_orders'),
  icon: $r('app.media.ic_public_notes')
}, {
  title: $r('app.string.profile_funcArea_wallet'),
  icon: $r('app.media.ic_public_folder')
}, {
  title: $r('app.string.profile_funcArea_tasks'),
  icon: $r('app.media.ic_public_calendar')
}, {
  title: $r('app.string.profile_funcArea_all'),
  icon: $r('app.media.ic_public_app')
}]

@Entry
@Component
export struct ProfilePage {
  @State bgImg: Resource = $r('app.media.fig_1')
  @State userAvatar: Resource = $r('app.media.avatar_1')
  @State username: string = 'OpenHarmony'
  @State followingCnt: number = 183
  @State followerCnt: number = 396
  @State likedCnt: number = 2956
  @State brief: string = ''
  @State adImgList: Resource[] = [
    $r('app.media.fig_1'),
    $r('app.media.fig_2')
  ]
  private adSwiperController = new SwiperController()

  build() {
    Column({space:10}) {
      Column({ space: 20 }) {
        this.topMenu()
        this.userInfo(this.userAvatar, this.username, this.followingCnt, this.followerCnt, this.likedCnt)
      }
      .width('100%')
      .height(260)
      .padding({ left: 15, right: 15, top: 20 })
      .backgroundImage(this.bgImg)
      .backgroundImageSize(ImageSize.Cover)
      .backgroundImagePosition(Alignment.Top)
      .backgroundBlurStyle(BlurStyle.Thin)

      this.funcArea()
      this.adSwiper()
    }
  }

  @Builder
  topMenu() {
    Row() {
      /* QR code scanning button */
      Button() {
        Image($r('app.media.ic_public_scan'))
          .size({ width: 18, height: 18 })
          .fillColor($r('app.color.primary_fg'))
      }
      .darkSemiTransBtnStyle()
      .padding(5)

      Row({ space: 12 }) {
        /* Publishing button */
        Button() {
          Row({ space: 4 }) {
            Image($r('app.media.ic_public_add'))
              .size({ width: 10, height: 10 })
              .fillColor($r('app.color.primary_fg'))
            Text($r('app.string.profile_menu_publish'))
              .fontSize(10)
              .fontColor($r('app.color.primary_fg'))
          }
        }
        .darkSemiTransBtnStyle()
        .padding({ left: 9, right: 9, top: 7, bottom: 7 })

        /* Settings button */
        Button() {
          Image($r('app.media.ic_public_settings'))
            .size({ width: 18, height: 18 })
            .fillColor($r('app.color.primary_fg'))
        }
        .darkSemiTransBtnStyle()
        .padding(5)
      }
    }
    .width('100%')
    .justifyContent(FlexAlign.SpaceBetween)
  }

  @Builder
  userInfo(userAvatar: Resource, username: string, followingCnt: number, followerCnt: number, likedCnt: number) {
    Column({ space: 16 }) {
      Row({ space: 12 }) {
        /* Avatar */
        Image(userAvatar)
          .size({ width: 68, height: 68 })
          .borderRadius(999)
          .borderWidth(2)
          .borderColor($r('app.color.light_border'))

        Column({ space: 10 }) {
          /* Username */
          Text(username)
            .fontSize(16)
            .fontWeight(FontWeight.Medium)
            .fontColor($r('app.color.primary_fg'))

          /* Statistic data */
          Row({ space: 8 }) {
            /* Following users */
            this.statisticData(followingCnt, $r('app.string.profile_userInfo_following'))
            Divider()
              .vertical(true)
              .height(8)
              .strokeWidth(1)
              .color($r('app.color.light_border'))
            /* Followers */
            this.statisticData(followerCnt, $r('app.string.profile_userInfo_follower'))
            Divider()
              .vertical(true)
              .height(8)
              .strokeWidth(1)
              .color($r('app.color.light_border'))
            /* Likes */
            this.statisticData(likedCnt, $r('app.string.profile_userInfo_likes'))
          }
        }
        .alignItems(HorizontalAlign.Start)
      }

      Column({ space: 8 }) {
        /* Brief description */
        if (this.brief.length === 0) {
          Button() {
            Row() {
              Text($r('app.string.profile_userInfo_defaultDescription'))
                .fontSize(11)
                .fontColor($r('app.color.primary_fg'))
              Image($r('app.media.ic_public_arrow_right_filled'))
                .size({ width: 11, height: 11 })
                .fillColor($r('app.color.primary_fg'))
            }
          }
          .commonBtnStyle(() => {
            this.brief = '这是一条示例简介，This is an example brief description；这是一条示例简介，This is an example brief description'
          })
        } else {
          Text(this.brief)
            .width('90%')
            .fontSize(11)
            .fontColor($r('app.color.primary_fg'))
            .maxLines(1)
            .textOverflow({ overflow: TextOverflow.Ellipsis })
        }

        /* More information button */
        Button() {
          Row() {
            Text($r('app.string.profile_userInfo_more'))
              .fontSize(11)
              .fontColor($r('app.color.light_border'))
            Image($r('app.media.ic_public_arrow_right_filled'))
              .size({ width: 11, height: 11 })
              .fillColor($r('app.color.light_border'))
          }
        }
        .commonBtnStyle()

        /* Labels */
        Button() {
          Row({ space: 4 }) {
            Image($r('app.media.ic_public_add'))
              .size({ width: 7, height: 7 })
              .fillColor($r('app.color.primary_fg'))
            Text($r('app.string.profile_userInfo_addLabels'))
              .fontSize(9)
              .fontColor($r('app.color.primary_fg'))
          }
        }
        .lightSemiTransBtnStyle()
        .padding(2)

        /* Other buttons */
        Row({ space: 5 }) {
          Button() {
            /* Authentication button */
            Text($r('app.string.profile_userInfo_auth'))
              .fontSize(11)
              .fontColor($r('app.color.primary_fg'))
          }
          .lightSemiTransBtnStyle()
          .padding({ left: 20, right: 20, top: 8, bottom: 8 })

          /* Profile editing button */
          Button() {
            Text($r('app.string.profile_userInfo_editProfile'))
              .fontSize(11)
              .fontColor($r('app.color.primary_fg'))
          }
          .lightSemiTransBtnStyle()
          .padding({ left: 20, right: 20, top: 8, bottom: 8 })

          /* Sharing button */
          Button() {
            Image($r('app.media.ic_public_share'))
              .size({ width: 16 })
              .fillColor($r('app.color.primary_fg'))
          }
          .lightSemiTransBtnStyle()
          .padding(6)
        }
      }
      .alignItems(HorizontalAlign.Start)
    }
    .width('100%')
    .alignItems(HorizontalAlign.Start)
  }

  /* Reusable statistic data display component */
  @Builder
  statisticData(value: number, text: Resource) {
    Row({ space: 2 }) {
      Text(String(value))
        .fontSize(16)
        .fontWeight(FontWeight.Medium)
        .fontColor($r('app.color.primary_fg'))
      Text(text)
        .fontSize(10)
        .fontColor($r('app.color.light_border'))
    }
  }

  /* Functional area below user info */
  @Builder
  funcArea() {
    Grid() {
      ForEach(funcBtnList, (item: funcBtn, itemIdx: number) => {
        GridItem() {
          Button() {
            Column({ space: 8 }) {
              Image(item.icon)
                .size({ width: 20, height: 20 })
                .fillColor($r('app.color.light_fg'))
              Text(item.title)
                .fontSize(10)
                .fontColor($r('app.color.light_fg'))
            }
          }.commonBtnStyle()
        }
        .padding(10)
      })
    }
    .height(120)
    .columnsTemplate('1fr 1fr 1fr 1fr')
    .rowsTemplate('1fr 1fr')
  }

  /* Auto play advertisement */
  @Builder
  adSwiper() {
    Swiper(this.adSwiperController) {
      ForEach(this.adImgList, (item: Resource, itemIdx: number) => {
        Button() {
          Image(item)
            .width('100%')
            .height(80)
            .padding({ left: 20, right: 20 })
            .objectFit(ImageFit.Fill)
            .borderRadius(5)
        }
        .commonBtnStyle()
      })
    }
    .loop(true)
    .autoPlay(true)
    .interval(3000)
  }
}