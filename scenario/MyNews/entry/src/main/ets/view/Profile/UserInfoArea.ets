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

import { getRandomImg, getRandomShortStr } from '../../common/utils/RandomResource'
import BasicUserInfo from '../Common/BasicUserInfo'

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

/**
 * Button style for top buttons
 */
@Extend(Button)
function darkSemiTransBtnStyle() {
  .foregroundColor($r('app.color.primary_fg'))
  .backgroundColor('rgba(0,0,0,0.3)')
}

/**
 * Button style for profile editing buttons
 */
@Extend(Button)
function lightSemiTransBtnStyle() {
  .type(ButtonType.Normal)
  .borderRadius(2)
  .backgroundColor('rgba(255,255,255,0.3)')
}

@Component
export default struct UserInfoArea {
  @State bgImg: Resource = getRandomImg()
  @State avatar: Resource = getRandomImg()
  @State username: string = getRandomShortStr()
  @State brief: string = getRandomShortStr()
  @State followingCnt: number = Math.floor(Math.random() * 1000)
  @State followerCnt: number = Math.floor(Math.random() * 1000)
  @State likedCnt: number = Math.floor(Math.random() * 1000)

  build() {
    Column({ space: 8 }) {
      Column({ space: 20 }) {
        /* Top buttons */
        this.topBtns()

        /* Basic user info: avatar, username, description, following, follower, liked */
        BasicUserInfo({
          avatar: this.avatar,
          username: this.username,
          brief: this.brief,
          followingCnt: this.followingCnt,
          followerCnt: this.followerCnt,
          likedCnt: this.likedCnt
        })
      }

      /* Other buttons */
      this.otherBtns()
    }
    .width('100%')
    .height(260)
    .padding({ left: 15, right: 15, top: 20 })
    .backgroundImage(this.bgImg)
    .backgroundImageSize(ImageSize.Cover)
    .backgroundImagePosition(Alignment.Top)
    .backgroundBlurStyle(BlurStyle.Thin, { colorMode: ThemeColorMode.DARK })
  }

  /**
   * Top buttons
   */
  @Builder
  topBtns() {
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

  /**
   * Other buttons at the bottom: auth, edit, share
   */
  @Builder
  otherBtns() {
    Column({ space: 8 }) {
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
    .width('100%')
    .alignItems(HorizontalAlign.Start)
  }
}