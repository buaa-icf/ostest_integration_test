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

// view/components/UserProfile.ets
import { UserViewModel } from '../../viewmodel/UserVM';
import router from '@ohos.router';
import prompt from '@ohos.promptAction';
import { LanguageManager } from '../../common/i18n/LanguageManager';
import common from '@ohos.app.ability.common';
import { AccountLinking } from './AccountLinking';
import { AccountType, LinkedAccount } from '../../common/constants/Styles/AccoutType';
import commonEvent from '@ohos.commonEventManager';
import { CollectionDialog } from './CollectionDialog';
import { LanguageSettingItem } from './LanguageSettingItem';
import{ SettingsItem } from './SettingsItem';
import type { Credentials } from './AccountLinking';
import { CleanItem } from './CleanItem';
import { VersionItem } from './VersionItem';
import { NotificationItem } from './NotificationItem';
import { followList } from '../../common/constants/FollowData';
import { User } from '../../model/FollowModel';
import { PointDialog }from './PointDialog';
import { FollowersDialog }from './FollowersDialog';
import{ FansDialog }from'./FansDialog';
import { FansData } from '../../common/constants/FansData';
import{ HistoryData,HistoryRecord }from'../../common/constants/HistoryData'
import{ HistoryDialog }from'./HistoryDialog';
import{ ProfileDialog,Profile } from'./ProfileDialog';
import { CollectionData } from'../../common/constants/CollectionData'
import { CollectionItem } from '../../model/CollectionModel';

type LanguageType = 'en_US' | 'zh_CN';

interface RouterParams {
    ts?: number;
  }
interface LanguageEventParams {
    newLanguage: LanguageType
  }
interface PageParams {
    url: string;
  }

interface NavigationTarget {
    page: string;
    params?: PageParams; // 使用具体类型替代泛型
  }

    // 公共卡片样式
    @Styles
    function unifiedCardStyle() {
      .width('100%')
      .padding(8)
      .margin(8)
      .backgroundColor('#F5F5F7')
      .borderRadius(8)
      .shadow({ radius: 6, color: 'rgba(0,0,0,0.1)' })
    }

    @Component
    export struct UserProfile {
    @Consume('userVM') userVM: UserViewModel
    @State cacheSize: number = 24576; // 初始缓存大小
    @Prop onEdit: () => void;
    @State notificationStatus: boolean = false;
    @State context: Context = getContext(this);
    @StorageLink('currentLanguage') currentLanguage: string = 'zh_CN';
    @State timestamp: number = 0;
    @State isFollowersDialogOpen: boolean = false
    @State followData: User[] = followList;
    @State totalFollowers: number = 0
    @State fansList: User[] = FansData; // 直接初始化
    @State historyList: HistoryRecord[] = HistoryData
    @State collectionList:CollectionItem[]=CollectionData

    // 已绑定的第三方账号
    @State linkedAccounts: LinkedAccount[] = [
      { type: 'google', name: '未绑定' },
      { type: 'facebook', name: '已绑定' },
      { type: 'huawei', name: '未绑定' }
    ];

    private profileData: Profile = {
      username: '数码爱好者小明',
      registerTime: '2023-08-01',
      email: 'xiaoming@example.com',
      membershipLevel: '黄金会员',
      avatar: $r('app.media.logo')
    }

 dialogCtrl: CustomDialogController = new CustomDialogController({
   builder: CollectionDialog({
     collectionList: this.collectionList,  // 使用导入的数据
     onItemClick: (url: string) => {
       router.pushUrl({
         url: 'pages/WebPage',
         params: { url: url }
       })
     },
     onClose: () => {
       console.log("弹窗已关闭");
     }
   })
 });

  // 修改弹窗控制器初始化
  dialogFollowersCtrl: CustomDialogController = new CustomDialogController({
    builder: this.FollowersDialogBuilder.bind(this),
    customStyle: true
  })

  dialogFansCtrl: CustomDialogController = new CustomDialogController({
    builder: this.FansDialogBuilder.bind(this),
    customStyle: true
  })

  dialogPointCtrl: CustomDialogController = new CustomDialogController({
    builder: this.PointDialogBuilder.bind(this),
    customStyle: true
  })

  dialogHistoryCtrl: CustomDialogController = new CustomDialogController({
    builder: this.HistoryDialogBuilder.bind(this),
    customStyle: true
  })

  dialogProfileCtrl: CustomDialogController = new CustomDialogController({
    builder: this.ProfileDialogBuilder.bind(this),
    alignment: DialogAlignment.Center
  })

  // 关注弹窗构建器
  @Builder
  FollowersDialogBuilder() {
    FollowersDialog({
      followersList: this.followData,
      controller: this.dialogFollowersCtrl
    })
  }

  @Builder
  FansDialogBuilder() {
    FansDialog({
      fansList: this.fansList,
      controller: this.dialogFansCtrl
    })
  }

  @Builder
  HistoryDialogBuilder() {
    HistoryDialog({
      historyList: this.historyList,
      controller: this.dialogHistoryCtrl // 传递控制器引用
    })
  }
  // 个人信息弹窗构建器
  @Builder
  ProfileDialogBuilder() {
    ProfileDialog({
      userProfile: this.profileData,
      controller: this.dialogProfileCtrl
    })
  }

  @Builder
  PointDialogBuilder() {
    PointDialog({
      currentPoints: this.userVM.userInfo.pointCount,
      controller: this.dialogPointCtrl,
      onPointsChanged: (points: number) => {
        // 更新userVM中的积分
        this.userVM.updateUserPoints(points); // 假设UserViewModel有updateUserPoints方法
      }
    })

  }

  @State showFollowers: boolean = false
  private languageSubscriber: commonEvent.CommonEventSubscriber | null = null;

  public async mockBindAPI(type: AccountType, cred: Credentials): Promise<void> {
    return new Promise((resolve) => {
      setTimeout(() => {
        console.log(`已绑定 ${type} 账号`);
        resolve();
      }, 1000);
    });
  }

  onPageShow() {
    // 修正属性访问方式
    const params = router.getParams() as  RouterParams;
    if (params?.ts) {  // 使用可选链和类型断言
      this.timestamp = params.ts;
    }
  }

  async aboutToAppear() {
    const langManager = await LanguageManager.getInstance(getContext(this) as common.UIAbilityContext);
    this.currentLanguage =await  langManager.getCurrentLanguage();

    if (!this.languageSubscriber) {
      commonEvent.createSubscriber(
        { events: ['LANGUAGE_CHANGED'] },
        (err, subscriber) => {
          if (err) return console.error('创建订阅者失败:', err);
          this.languageSubscriber = subscriber;

          commonEvent.subscribe(subscriber, (err, data) => {
            if (err) return console.error('订阅失败:', err);

            const params = data.parameters as LanguageEventParams;
            this.currentLanguage = params.newLanguage;

            // 修正路由参数传递
            router.replaceUrl({
              url: `pages/UserProfile?ts=${Date.now()}` // 使用URL参数
            });
          });
        }
      );
    }
  }

  onDisappear() {
    // 取消订阅
    if (this.languageSubscriber) {
      commonEvent.unsubscribe(this.languageSubscriber);
      this.languageSubscriber = null;
    }
  }
  private updateAccountItem(origin: LinkedAccount, newStatus: string): LinkedAccount {
    return {
      type: origin.type,
      name: newStatus,
    };
  }

build() {
    Scroll() {
      Column({ space: 8 }) {
        // 用户信息卡片
        Column() {
          this.buildAvatar()
          this.buildUserInfo()
          this.buildStatsGrid()
        }
        .unifiedCardStyle()

        //账号绑定卡片
        AccountLinking({
          linkedAccounts: this.linkedAccounts,
          callbackObject: {
            onAccountChange: (type: AccountType, newStatus: string, credentials?: Credentials) => {
              // 绑定操作需要处理凭证
              if (newStatus === '已绑定' && credentials) {
                // 这里调用实际绑定API，示例用延时模拟
                this.mockBindAPI(type, credentials)
                  .then(() => {
                    const newAccounts = this.linkedAccounts.map(item =>
                    item.type === type ? this.updateAccountItem(item, '已绑定') : item
                  );
                    this.linkedAccounts = JSON.parse(JSON.stringify(newAccounts));
                })
                  .catch(() => {
                    prompt.showToast({ message: '绑定失败，请重试' });
                  });
              } else {
                // 同步更新解绑状态
                const newAccounts = this.linkedAccounts.map(item =>
                item.type === type ? this.updateAccountItem(item, '未绑定') : item
                );
                this.linkedAccounts = JSON.parse(JSON.stringify(newAccounts));
              }
            }
          }
        })

        // 功能列表
        Column() {
          List() {
            ListItem() {
              Row() { // 复用系统设置卡片结构
                Image($r('app.media.star'))
                  .width(24)
                  .margin({ left: 16, right: 12 })
                Text($r('app.string.My_collection'))
                  .fontSize(16)
                  .fontColor('#333')
              }
              .width('100%')
              .height(56)
              .backgroundColor('#FFF')
              .borderRadius(12)
            }
            .onClick(() => {
              this.dialogCtrl.open()
            })

            // 消息通知
            ListItem() {
              NotificationItem({
                notificationStatus: this.notificationStatus,
                onStatusChange: (v: boolean) => this.notificationStatus = v
              })
            }
            .margin({ top: 4, bottom: 4 })
            .backgroundColor('#FFF')
            .borderRadius(12)

            ListItem() {
              SettingsItem()
                .width('100%')
            }
            // 缓存清理
            ListItem() {
                CleanItem({
                  cacheSize: this.cacheSize,
                })
              }
              .width('100%')
              .height(56)
              .borderRadius(12)
              .margin({ top: 4, bottom: 4 })
              .backgroundColor('#FFF')

            LanguageSettingItem({
              context: getContext(this)          // 补充必填参数
            })

            this.buildFunctionItem(
              $r('app.media.privacy'),
              $r('app.string.privacy_policy'),
              {
                page:'pages/WebPage',
                params:
                {
                  url: 'https://docs.openharmony.cn/pages/v5.0/zh-cn/device-dev/security/security-privacy-protection.md'
                } as PageParams
              } as NavigationTarget
            )
            VersionItem({ version: 'v2.1.0' })
          }
        }
        .unifiedCardStyle()
        .height('auto') // 高度自适应
      }
    }
    .height('100%') // 允许滚动
    .width('100%')
    .backgroundColor('#F5F5F5')
    .animation({ duration: 300, curve: Curve.EaseInOut })
  }

  @Builder
  private buildStatsGrid() {
    Grid() {
      GridItem() { this.buildStatItem($r('app.string.follow'), this.userVM.userInfo.followCount,'follow')}
      GridItem() { this.buildStatItem($r('app.string.fans'), this.userVM.userInfo.fansCount,'fans') }
      GridItem() { this.buildStatItem($r('app.string.point'), this.userVM.userInfo.pointCount,'point') }
      GridItem() { this.buildStatItem($r('app.string.history'), this.userVM.userInfo.historyCount,'history') }
    }
    .columnsTemplate('1fr 1fr 1fr 1fr')
    .margin({ top: 20 })
  }

  @Builder
  private buildStatItem(label: Resource, value: number, type: 'follow' | 'fans' | 'point' | 'history') {
    Column() {
      Text(value.toString())
        .fontSize(18)
        .fontColor('#409EFF')
        .onClick(() => {
          if (type === 'follow') {
            this.dialogFollowersCtrl.open()  // 关注弹窗
          } else {
            switch(type) {
              case 'fans':
                this.dialogFansCtrl.open()
                break
              case 'point':
                this.dialogPointCtrl.open()
                break
              case 'history':
                this.dialogHistoryCtrl.open()
                break
            }
          }
        })
      Text(label)
        .fontSize(12)
        .fontColor('#666666')
    }
    .height(60)
    .width('100%')
  }

  @Builder
  private buildFunctionItem(icon: Resource, text: Resource, target: NavigationTarget){
    Row() {
      Row() {
        Image(icon)
          .width(24)
          .height(20)
          .margin({ right: 12 })
        Text(text)
          .fontColor('#333')
          .margin({ left: 12 })
        Blank()
        Image($r('app.media.arrow_right'))
          .width(16)
          .height(16)
      }
      .width('100%')
      .height(56) // 统一高度
      .backgroundColor('#FFF') // 背景色
      .borderRadius(12) // 圆角
      .shadow({ radius: 6, color: 'rgba(0,0,0,0.1)' }) // 阴影
      .padding(12)
      .onClick(() => {
        router.pushUrl({
          url: target.page,
          params: target.params // 参数通过路由传递
        })
      })
    }
  }

  @Builder
  private buildAvatar() {
    Column() {
      Image($r('app.media.logo'))
        .width(100)
        .height(100)
        .borderRadius(50)
        .margin({ right: 12 })
        .onClick(() => this.dialogProfileCtrl.open())
    }
    .alignItems(HorizontalAlign.Center)
  }

  @Builder
  private buildUserInfo() {
    Column() {
      Text(this.userVM.userInfo.nickname)
        .fontSize(24)
        .fontColor('#333333')
      Text(this.userVM.userInfo.bio)
        .fontSize(14)
        .fontColor('#666666')  // 简介颜色
    }
    Blank()

    Button($r('app.string.edit_profile'))
      .type(ButtonType.Capsule)
      .width(85)
      .height(45)
      .backgroundColor('#FFFFFF')  // 按钮背景
      .fontColor('#409EFF')  // 按钮文字
      .onClick(() => this.handleEditProfile())
  }
  // 个人资料编辑处理
  private handleEditProfile = () => {
    router.pushUrl({
      url: 'pages/EditProfilePage',
      params: this.userVM.userInfo // 直接传递对象
    })
  }
}
