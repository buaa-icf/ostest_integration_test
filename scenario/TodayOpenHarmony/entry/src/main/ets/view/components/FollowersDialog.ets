/*
 * Copyright (c) 2025 Shenzhen Kaihong Digital Industry Development Co., Ltd.
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

// view/components/FollowersDialog.ets
import { User }from '../../model/FollowModel'

@CustomDialog
export struct FollowersDialog {
  @Prop followersList: User[] = []
  controller?: CustomDialogController
  @State searchKeyword: string = ''
  @State isLoading: boolean = false
  @State showRecommend: boolean = false
  @State filteredList: User[] = []

  aboutToAppear() {
    this.filteredList = this.followersList.slice()
  }

  @Builder
  UserItem(user: User) {
    Row() {
      // 头像与在线状态
      Stack() {
      Image(user.avatar)
        .width(48)
        .height(48)
        .borderRadius(24)
        .objectFit(ImageFit.Cover)

        if (user.isOnline) {
          Circle()
            .width(14)
            .height(14)
            .fill('#52C41A')
            .stroke(Color.White)  // 添加白色边框
            .strokeWidth(2)
            .margin({ right: 2, top: 2 }) // 顶部间距
            .align(Alignment.TopEnd)  // 修正对齐方向
            .shadow({ radius: 2, color: '#00000016' }) // 添加轻微阴影
        }
        else {
          // 离线状态
          Stack() {
            Circle()
              .width(13)
              .height(13)
              .fill('#D9D9D9')
              .stroke(Color.White)
              .strokeWidth(1)
          }
          .width(14)
          .height(14)
          .align(Alignment.TopEnd)
          .margin({ right: 2, top: 2 })
          .shadow({ radius: 2, color: '#00000016' })
        }
      }
      .align(Alignment.TopEnd) // 确保Stack对齐方式
      .margin({ right: 12 })


      Column() {
        Text(user.name)
          .fontSize(16)
          .fontColor('#333')
          .fontWeight(FontWeight.Medium)

        Text(user.bio)
          .fontSize(12)
          .fontColor('#999')
          .margin({ top: 4 })

        Row() {
          Text(`最后活跃：${this.formatTime(user.lastActive)}`)
            .fontSize(10)
            .fontColor('#999')

          if (user.mutualFollow) {
            Text("🙌互相关注")
              .fontSize(12)
              .fontColor('#409EFF')
              .margin({ top: 20, left: 30 })
          }
        }
        .margin({ top: 6 })
      }
      .layoutWeight(1)

      // 操作按钮
      Button(user.isFollowing ? '关注' : '取消关注')
        .width(user.isFollowing ? 72 : 80)
        .height(28)
        .fontSize(12)
        .borderRadius(20)
        .stateEffect(user.isFollowing)
        .backgroundColor(user.isFollowing ? '#409EFF' : '#F5F5F5')
        .fontColor(user.isFollowing ? '#FFF' : '#666')
        .onClick(() => this.toggleFollow(user))
    }
    .padding(12)
    .margin({ bottom: 8 })
    .backgroundColor('#FFF')
    .borderRadius(12)
    .shadow({ radius: 2, color: '#10000000' })
  }

  // 空状态提示
  @Builder
  EmptyState() {
    Column() {
      Image($r('app.media.empty'))
        .width(90)
        .margin({ bottom: 16 })
      Text(this.searchKeyword ?
        `没有找到"${this.searchKeyword}"相关结果` :
        '还没有关注用户哦~')
        .fontSize(16)
        .fontColor('#999')
    }
    .height('60%')
    .justifyContent(FlexAlign.Center)
  }

  // 新增搜索栏布局
  @Builder
  SearchBar() {
    Row({ space: 8 }) {
      // 搜索栏
      TextInput({ placeholder: '搜索用户昵称/简介' })
        .placeholderColor('#999999')
        .layoutWeight(1)
        .height(44)
        .fontSize(16)
        .fontColor('#999')
        .backgroundColor('#F5F5F7')
        .padding({ left: 16, right: 16 })
        .margin({ bottom: 12 })
        .borderRadius(22)
        .onChange((value: string) => {
          this.searchKeyword = value.trim()
          this.filterUsers()
        })

      if (this.searchKeyword) {
        Button('取消')
          .width(60)
          .height(44)
          .fontColor('#1890FF')
          .backgroundColor(Color.Transparent)
          .onClick(() => {
            this.searchKeyword = ''
            this.filterUsers()
          })
      }
    }
    .width('100%')
    .margin({ bottom: 16 })
    .alignItems(VerticalAlign.Center)
  }

  // 用户搜索过滤逻辑
  private filterUsers() {
    if (!this.searchKeyword) {
      this.filteredList = this.followersList.slice()
      return
    }

    const keyword = this.searchKeyword.toLowerCase()
    this.filteredList = this.followersList.filter(user => {
      // 安全处理可能的 undefined
      const lastActiveTime = user.lastActive ?
      this.formatTime(user.lastActive) :
        '未知时间'

      return user.name.toLowerCase().includes(keyword) ||
      user.bio.toLowerCase().includes(keyword) ||
      lastActiveTime.includes(keyword) || // 使用处理后的值
        (user.mutualFollow && '互相关注'.includes(keyword))
    })
  }

  build() {
    Column() {
      this.SearchBar()

      Text("关注列表")
        .fontSize(20)
        .margin({ bottom: 15 })

      Scroll() {
        if (this.filteredList.length === 0) {
          this.EmptyState()
        } else {
          Column() {
            ForEach(this.filteredList, (user: User) => {
              this.UserItem(user)
            })
          }
        }
      }
      .height('60%')

      Button("关闭")
        .width('50%')
        .margin({ top: 20 })
        .onClick(() => this.controller?.close())
    }
    .padding(20)
    .width('90%')
    .backgroundColor('#FFF')
    .borderRadius(16)
  }

  private toggleFollow(user: User) {
    this.followersList = this.followersList.map(item => {
      if (item.id === user.id) {
        // 创建新对象触发更新
        return {
          id: user.id,         // 明确列出所有字段
          name: user.name,
          avatar: user.avatar,
          bio: user.bio,
          isFollowing: !user.isFollowing, // 修改关注状态
          lastActive: user.lastActive,
          isOnline: user.isOnline,
          mutualFollow: user.mutualFollow,
        }
      }
      return item
    })
    // 同步更新过滤列表
    this.filteredList = this.filteredList.map(item => {
      if (item.id === user.id) {
        return {
          id: user.id,         // 明确列出所有字段
          name: user.name,
          avatar: user.avatar,
          bio: user.bio,
          isFollowing: !user.isFollowing, // 修改关注状态
          lastActive: user.lastActive,
          isOnline: user.isOnline,
          mutualFollow: user.mutualFollow,
        }
      }
      return item
    })
  }

  private formatTime(timestamp: number) {
      const date = new Date(timestamp)
      if (isNaN(date.getTime())) return "未知时间" // 无效时间戳处理
      const month = (date.getMonth() + 1).toString().padStart(2, '0') // 确保两位月份
      const day = date.getDate().toString().padStart(2, '0') // 确保两位日期
      const hours = date.getHours().toString().padStart(2, '0')
      const minutes = date.getMinutes().toString().padStart(2, '0')
      return `${month}月${day}日 ${hours}:${minutes}`
  }
}