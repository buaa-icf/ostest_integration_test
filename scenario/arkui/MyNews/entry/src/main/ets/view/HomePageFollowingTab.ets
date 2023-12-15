import { recommendedUserList } from '../../mock/RecommendedUserList'
import { UserInfo } from '../viewmodel/UserInfo'


/**
 * Content in `HomePage - FollowingTab`.
 * `首页-关注` 中的所有内容。
 */
@Component
export struct FollowingTabContent {
  build() {
    Column() {
      RecommendedUsers()
    }
  }
}


/**
 * Recommended users.
 * 你可能感兴趣的人。
 */
@Component
struct RecommendedUsers {
  @State isVisible: boolean = true
  @State localRecommendedUserList: UserInfo[] = recommendedUserList
  private scroller: Scroller = new Scroller()

  build() {
    if (this.isVisible) {
      Column({ space: 14 }) {
        Row() {
          // Subtitle
          Text('你可能感兴趣的人')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor($r('app.color.light_fg'))

          // Close button
          Image($r("app.media.ic_public_cancel"))
            .size({ width: 18, height: 18 })
            .fillColor($r('app.color.light_border'))
            .onClick(() => {
              /* Hide this component. */
              // TODO: transition
              this.isVisible = false
            })
        }
        .width('100%')
        .padding({ left: 18, right: 16 })
        .justifyContent(FlexAlign.SpaceBetween)

        // Scrollable user list
        Scroll(this.scroller) {
          Row({ space: 8 }) {
            ForEach(this.localRecommendedUserList, (item: UserInfo) => {
              UserInfoCard({ userInfo: item })
            }, (item: UserInfo) => item.userId)
          }
        }
        .width('100%')
        .padding({ left: 22 })
        .scrollable(ScrollDirection.Horizontal)
        .scrollBar(BarState.Off)
        .edgeEffect(EdgeEffect.Spring)
      }
      .width('100%')
      .padding({ top: 18, bottom: 10 })
    }
  }
}


/**
 * Recommended users information card.
 * 推荐关注的用户展示卡片。
 */
@Component
struct UserInfoCard {
  @ObjectLink userInfo: UserInfo
  @State isVisible: boolean = true

  build() {
    if (this.isVisible) {
      Column() {
        Column({ space: 6 }) {
          Stack() {
            // Close button
            Row() {
              Image($r("app.media.ic_public_cancel"))
                .size({
                  width: 15,
                  height: 15
                })
                .fillColor($r('app.color.light_border'))
                .onClick(() => {
                  /* Hide this user. */
                  // TODO: transition
                  this.isVisible = false
                })
            }
            .width('100%')
            .height('100%')
            .margin({ top: 14, right: 14 })
            .padding(0)
            .justifyContent(FlexAlign.End)
            .alignItems(VerticalAlign.Top)

            // Avatar
            Image(this.userInfo.avatar)
              .margin({ top: 10 })
              .size({ width: 60, height: 60 })
              .borderRadius(30)
          }
          .width('100%')
          .height('40%')

          Column({ space: 5 }) {
            // Username
            Text(this.userInfo.username)
              .fontSize(16)
              .fontWeight(FontWeight.Medium)
              .fontColor($r('app.color.light_fg'))
              .textAlign(TextAlign.Center)

            // Brief introduction
            Text(this.userInfo.brief)
              .fontSize(14)
              .fontColor($r('app.color.light_fg_shallow'))
              .textAlign(TextAlign.Center)
          }
          .width('90%')
          .height('35%')
        }

        // Follow button
        Button({ type: ButtonType.Normal }) {
          Row() {
            Text(this.userInfo.isFollowing ? '已关注' : '关注')
              .fontSize(16)
              .fontColor(this.userInfo.isFollowing
                ? $r('app.color.light_fg_shallow')
                : $r('app.color.primary_fg'))
          }
        }
        .width(62)
        .padding(6)
        .backgroundColor(this.userInfo.isFollowing
          ? Color.Transparent
          : $r('app.color.primary'))
        .borderWidth(this.userInfo.isFollowing ? 1 : 0)
        .borderColor($r('app.color.light_border'))
        .borderRadius(2)
        .onClick(() => {
          /* Follow the user. */
          this.userInfo.isFollowing = !this.userInfo.isFollowing
        })
      }
      .width(160)
      .height(190)
      .borderWidth(1)
      .borderColor($r('app.color.light_border'))
      .borderRadius(2)
    }
  }
}
