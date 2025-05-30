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


// view/components/discovery/DiscoveryList.ets
import { DiscoveryViewModel } from '../../viewmodel/DiscoveryVM'; // 视图模型
import { DiscoveryCategories } from '../../view/components/DiscoveryCategories';
import { DiscoveryActivities } from '../../view/components/DiscoveryActivities';
import { DiscoveryTopic } from '../../view/components/DiscoveryTopic';
import { promptAction } from '@kit.ArkUI';

@Component
export struct DiscoveryList {
  private vm: DiscoveryViewModel = new DiscoveryViewModel();
  // 新增签到状态
  @State isCheckedIn: boolean = false;
  // 签到按钮组件
  @Builder
  CheckInBanner() {
    Column() {
      Row() {
        Image($r('app.media.gift2'))
          .width(40)
          .height(40)
          .margin({ right: 12 })

        Column() {
          Text($r('app.string.daily_check_in'))
            .fontSize(18)
            .fontColor('#333')
          Text(this.isCheckedIn
            ? $r('app.string.already_checked_in')
            : $r('app.string.claim_points'))
            .fontSize(12)
            .fontColor('#666')
        }
        Blank()

        Button(this.isCheckedIn
          ? $r('app.string.checked_in')
          : $r('app.string.check_in_now'))
          .width(100)
          .backgroundColor(this.isCheckedIn ? '#F5F5F5' : '#409EFF')
          .fontColor(this.isCheckedIn ? '#666' : '#FFF')
          .enabled(!this.isCheckedIn)
          .onClick(() => {
            this.isCheckedIn = true;
            promptAction.showToast({ message: $r('app.string.points_awarded') });
          })
      }
      .padding(12)
      .backgroundColor('#FFF')
      .borderRadius(8)
      .margin({ bottom: 16 })
    }
    .zIndex(1)
  }

  build() {
    Stack() {
        Scroll() {
          Column() {
            // 签到模块
            this.CheckInBanner()

            DiscoveryTopic({ topics: this.vm.getHotTopics() })
              .margin({ bottom: '24vp' })
              .height('50%')

            DiscoveryCategories({ categoryItems: this.vm.getCategories() })

            DiscoveryActivities({ events: this.vm.displayEvents, })
              .margin({ top: 24 })
              .height('90%')
          }
          .padding({ top: 12, bottom: '10vp' })
          .layoutWeight(1) // 启用弹性布局
        }
        .scrollBar(BarState.Off)
        .width('100%')
        .height('90%')
        .margin({ bottom: $r('app.float.safe_area_bottom') , top: '12vp'}) // 通过资源文件定义安全区高度
    }
    .width('100%')
    .height('100%')
    .backgroundColor('#F5F5F5')
  }
}