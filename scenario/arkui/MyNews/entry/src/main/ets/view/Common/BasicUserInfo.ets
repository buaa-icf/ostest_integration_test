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
 * Basic user info: avatar, username, description, following, follower, liked
 */
@Component
export default struct BasicUserInfo {
  @Prop avatar: Resource
  @Prop username: string
  @Prop followingCnt: number
  @Prop followerCnt: number
  @Prop likedCnt: number
  @Prop brief: string

  build() {
    Column({ space: 16 }) {
      Row({ space: 12 }) {
        /* Avatar */
        Image(this.avatar)
          .size({ width: 68, height: 68 })
          .borderRadius(999)
          .borderWidth(2)
          .borderColor($r('app.color.light_border'))

        Column({ space: 10 }) {
          /* Username */
          Text(this.username)
            .fontSize(16)
            .fontWeight(FontWeight.Medium)
            .fontColor($r('app.color.primary_fg'))

          /* Statistic data */
          Row({ space: 8 }) {
            /* Following users */
            this.statisticData($r('app.string.profile_userInfo_following'), this.followingCnt)
            Divider()
              .vertical(true)
              .height(8)
              .strokeWidth(1)
              .color($r('app.color.light_border'))
            /* Followers */
            this.statisticData($r('app.string.profile_userInfo_follower'), this.followerCnt)
            Divider()
              .vertical(true)
              .height(8)
              .strokeWidth(1)
              .color($r('app.color.light_border'))
            /* Likes */
            this.statisticData($r('app.string.profile_userInfo_likes'), this.likedCnt)
          }
        }
        .alignItems(HorizontalAlign.Start)
      }

      /* Brief description */
      Text(this.brief)
        .width('90%')
        .fontSize(11)
        .fontColor($r('app.color.primary_fg'))
        .maxLines(1)
        .textOverflow({ overflow: TextOverflow.Ellipsis })
    }
    .width('100%')
    .alignItems(HorizontalAlign.Start)
  }

  /**
   * Reusable statistic data display component
   */
  @Builder
  statisticData(text: Resource, value: number) {
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
}