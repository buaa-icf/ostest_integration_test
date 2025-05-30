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

// view/components/FansDialog.ets
import { User } from '../../model/FollowModel'
import { promptAction } from '@kit.ArkUI'
interface BadgeItem {
  color: string;
  icon: Resource;
}
@CustomDialog
export struct FansDialog {
  @Link fansList: User[]
  @State searchKeyword: string = ''
  @State isFollowing: boolean = false; // 必须添加响应式装饰器
  controller?: CustomDialogController
  @State filteredUserList: User[] = [];
  private originalUserList: User[] = []; // 从接口获取的原始数据
  private searchTimer: number = 0;
  // 状态控制分析面板
  @State selectedTab: number = 0 // 0: 列表 1: 分析

  aboutToAppear() {
    this.originalUserList = [...this.fansList] // 深拷贝初始化
  }

  private badgeConfig = {
    '官方认证': {
      color: '#1677FF',
      icon: $r('app.media.official')
    },
    '金V认证': {
      color: '#FFC300',
      icon: $r('app.media.vip')
    },
    '超级粉丝': {
      color: '#FF2D6A',
      icon: $r('app.media.fans')
    }
  } as Record<string, BadgeItem>

  // 获取徽章图标
  private getBadgeIcon(badgeType: string): Resource {
    // 如果徽章类型存在于配置中，返回对应图标，否则返回默认图标
    return this.badgeConfig[badgeType]?.icon || $r('app.media.vip');
  }

  // 获取徽章颜色
  private getBadgeColor(badgeType: string): string {
    // 如果徽章类型存在于配置中，返回对应颜色，否则返回默认颜色
    return this.badgeConfig[badgeType]?.color || '#999999';
  }

  private formatLastActive(minutes: number): string {
    if (minutes < 1) return '刚刚'
    if (minutes < 60) return `${minutes}分钟前`
    if (minutes < 1440) return `${Math.floor(minutes/60)}小时前`
    return `${Math.floor(minutes/1440)}天前`
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
            .stroke(Color.White)// 添加白色边框
            .strokeWidth(2)
            .margin({ right: 2, top: 2 })// 顶部间距
            .align(Alignment.TopEnd)// 修正对齐方向
            .shadow({ radius: 2, color: '#00000016' }) // 添加轻微阴影
        } else {
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

      // 用户信息
      Column() {
        Row() {
          Text(user.name)
            .fontSize(16)
            .fontColor('#333')
            .fontWeight(FontWeight.Medium)

          // 认证徽章通用处理
          if (user.specialBadge) {
            Row() {
              Image(this.getBadgeIcon(user.specialBadge))
                .width(18)
                .height(18)
                .margin({ left: 4 })
              Text(user.specialBadge)
                .fontSize(10)
                .fontColor('#FFF')
                .margin({ left: 4 })
            }
            .padding({
              left: 8,
              right: 8,
              top: 2,
              bottom: 2
            })
            .backgroundColor(this.getBadgeColor(user.specialBadge))
            .borderRadius(8)
            .margin({ left: 8 })
            .shadow({
              radius: 2,
              color: `${this.getBadgeColor(user.specialBadge)}30`,
              offsetX: 1,
              offsetY: 1
            })
          }
        }

        Row() {
          Text(`${user.followers ?? 0} 粉丝`)
            .fontSize(12)
            .fontColor('#999')

          // 互相关注标签
          if (user.mutualFollow) {
            Row() {
              Image($r('app.media.star2'))
                .width(14)
                .height(14)
                .fillColor('#409EFF')
              Text("互相关注")
                .fontSize(12)
                .fontColor('#409EFF')
                .margin({ left: 4 })
            }
            .margin({ left: 8 })
          }

          if (user.lastActive) {
            Text(this.formatLastActive(user.lastActive))
              .fontSize(10)
              .fontColor('#999')
              .margin({ left: 8 })
          }
        }
        .margin({ top: 4 })

        // 操作按钮行
        Row() {
          // 发消息按钮
          Button({ type: ButtonType.Capsule }) {
            Row() {
              Image($r('app.media.message'))// 使用消息图标
                .width(16)
                .height(16)
                .fillColor('#1677FF')
              Text('发消息')
                .fontSize(12)
                .fontColor('#1677FF')
                .margin({ left: 4 })
            }
            .padding({
              left: 12,
              right: 12,
              top: 6,
              bottom: 6
            })
          }
          .backgroundColor('#E6F4FF')
          .margin({ right: 8 })
          .height(32)
        }

        // 新增互动数据
        Row() {
          Progress({ value: user.activityRate ?? 0, total: 100 })
            .width(80)
            .height(4)
            .color('#409EFF')

          Text(`活跃度 ${user.activityRate ?? 0}%`)
            .fontSize(10)
            .fontColor('#666')
            .margin({ left: 8 })
        }
        .margin({ top: 6 })
      }
      .layoutWeight(1)

      // 动态操作按钮
      Button() {
        Row() {
          if (!user.isFollowing) {
            Image($r('app.media.heart2'))// 关注图标
              .width(16)
              .height(16)
              .margin({ right: 4 })
          } else {
            Image($r('app.media.check'))// 已关注图标
              .width(16)
              .height(16)
              .margin({ right: 4 })
          }
          Text(user.isFollowing ? '已关注' : '回关')
            .fontSize(12)
        }
      }
      .width(92) // 统一宽度
      .height(32)
      .backgroundColor(user.isFollowing ? '#F5F5F5' : '#409EFF')
      .border({
        width: user.isFollowing ? 1 : 0,
        color: user.isFollowing ? '#D9D9D9' : 'transparent'
      })
      .fontColor(user.isFollowing ? '#666' : '#FFF')
      .borderRadius(16)
      .stateEffect(true) // 启用按压效果
      .animation({ duration: 200, curve: Curve.EaseInOut }) // 添加过渡动画
      .onClick(() => this.handleFollowAction(user))
    }
    .padding({ top: 12, bottom: 12 }) // 增加垂直内边距
    .margin({ bottom: 8 }) // 增加底部外边距
    .backgroundColor(Color.White)
    .borderRadius(8)
    .shadow({ radius: 4, color: '#00000008' }) // 添加轻微阴影
    .width('100%')
  }

  private handleFollowAction(user: User) {
    // 使用不可变数据更新
    this.fansList = this.fansList.map(item => {
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

    // 显示操作反馈
    promptAction.showToast({
      message: user.isFollowing ? '已取消关注' : '关注成功',
      duration: 800
    })

    // 同步更新过滤列表
    if (this.filteredUserList.length > 0) {
      this.filteredUserList = this.filteredUserList.map(item => {
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
  }

  // 智能搜索栏
  @Builder
  SearchBar() {
    Column() {
      Row() {
        TextInput({ placeholder: '搜索粉丝昵称' })
          .placeholderColor('#999999')
          .layoutWeight(1)// 占据剩余空间
          .width('100%')
          .height(44)
          .fontSize(16)
          .fontColor('#999')
          .backgroundColor('#F5F5F7')
          .padding({ left: 16, right: 16 })
          .margin({ bottom: 16 })
          .borderRadius(22)
          .onSubmit(() => this.filterUsers())// 回车触发
          .onChange((value: string) => {
            // 添加防抖处理优化性能
            clearTimeout(this.searchTimer);
            this.searchTimer = setTimeout(() => {
              this.searchKeyword = value.trim().toLowerCase();
              this.filterUsers(); // 触发过滤方法
            }, 300);
          })
        // 添加搜索按钮
        Button('搜索')
          .width(60)
          .height(34)
          .backgroundColor('#007AFF')
          .margin({ left: 8 })
          .onClick(() => this.filterUsers())
      }
      .width('100%')
      .alignItems(VerticalAlign.Center)

      // 优化搜索结果展示
      if (this.searchKeyword) {
        if (this.filteredUserList.length > 0) {
          List() {
            ForEach(this.filteredUserList, (user: User) => {
              ListItem() {
                Text(user.name).fontColor('#333')
              }
            })
          }.height('60%')
        } else {
          Text('未找到相关用户').fontColor('#999')
        }
      }
    }
  }

  // 过滤方法实现
  filterUsers() {
    if (!this.searchKeyword) {
      this.filteredUserList = [];
      return;
    }
    // 增加模糊匹配逻辑
    this.filteredUserList = this.originalUserList.filter(user =>
    user.name.toLowerCase().split('').some(char =>
    this.searchKeyword.includes(char)
    ) || user.name.toLowerCase().includes(this.searchKeyword)
    );
  }

  // IndicatorCard调用方式
  @Builder
  IndicatorCard(title: string, value: string) {
    Column() {
      Text(value)
        .fontSize(14)
        .fontColor('#409EFF')
      Text(title)
        .fontSize(10)
        .fontColor('#666')
    }
    .padding(6)
    .backgroundColor('#F8F8F8')
    .borderRadius(6)
    .margin({ right: 8 })
  }

  // 添加数据分析方法
  private getNewFans(): number {
    return this.fansList.filter(user => user.isNew).length
  }

  private getActiveFans(): number {
    return this.fansList.filter(user => (user.activityRate ?? 0) > 60).length
  }

  @Builder
  AnalyticsPanel() {
    Column() {
      // 数据概览卡片
      Row() {
        this.IndicatorCard('总粉丝', this.fansList.length.toString())
        this.IndicatorCard('新增粉丝', this.getNewFans().toString())
        this.IndicatorCard('高活跃', this.getActiveFans().toString())
      }
      .justifyContent(FlexAlign.SpaceBetween)
      .width('100%')
      .margin({ bottom: 16 })

      // 简易折线图容器
      Column() {
        Text("增长趋势")
          .fontSize(18)
          .fontColor('#333')
          .margin({ bottom: 4 })
        Stack() {
          Text("近7天 ↑12%")
            .fontSize(12)
            .fontColor('#333')
            .position({ x: '10%', y: '30%' })
          Path()
            .commands('M10 40 L50 20 L90 60')// 简单示意折线
            .strokeWidth(2)
            .fillOpacity(0)
        }
        .width('100%')
        .height(80)
        .backgroundColor('#FFF')
        .borderRadius(8)
      }
      .margin({ bottom: 12 })

      // 活跃时段分布
      Column() {
        Text("活跃时段分布")
          .fontColor('#333')
          .fontSize(12)
          .margin({ bottom: 4 })
        Grid() {
          ForEach([0, 1, 2, 3], (hour: number) => {
            GridItem() {
              Text(`${hour * 6}-${(hour + 1) * 6}时`)
                .fontColor('#333')
                .fontSize(10)
            }
          })
        }
        .columnsTemplate('1fr 1fr 1fr 1fr')
        .rowsGap(8)
        .columnsGap(8)
      }
    }
    .padding(12)
    .width('100%')
  }

  build() {
    Column() {
      this.SearchBar()

      Row() {
        Button('粉丝列表')
          .width('40%')
          .backgroundColor(this.selectedTab === 0 ? '#007AFF' : '#E4E4E5')// 通过背景色区分选中状态
          .fontColor(this.selectedTab === 0 ? '#FFFFFF' : '#000000')// 文字颜色切换
          .onClick(() => this.selectedTab = 0)
        Button('数据分析')
          .width('40%')
          .backgroundColor(this.selectedTab === 1 ? '#007AFF' : '#E4E4E5')
          .fontColor(this.selectedTab === 1 ? '#FFFFFF' : '#000000')
          .onClick(() => this.selectedTab = 1)
      }
      .margin({ bottom: 12 })

      Column() {
        // 内容区域
        if (this.selectedTab === 0) {
          Scroll() {
            Column() {
              ForEach(this.fansList, (user: User) => {
                this.UserItem(user)
              })
            }
          }
          .height('100%')
        } else {
          Scroll() {
            this.AnalyticsPanel()
          }
        }
      }
      .layoutWeight(1) // 占据剩余空间
      .width('100%')

      // 关闭按钮
      Button('关闭')
        .width('60%')
        .margin({ top: 12 })
        .onClick(() => this.controller?.close())
    }
    .padding(16)
    .height(600)
    .width('90%')
    .backgroundColor('#F5F5F7')
    .borderRadius(12)
  }
}