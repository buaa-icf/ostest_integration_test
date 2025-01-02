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
import TestItemData from '../models/TestItemData';
import TestGridItem from '../views/TestGridItem';
import router from '@ohos.router';
import { BusinessError } from '@ohos.base';
import TestListItem from '../views/TestListItem';
import HeadBar from '../views/HeadBar';
import { batteryInfo } from '@kit.BasicServicesKit';

@Entry
@Component
struct Index {
  @State message: string = '开鸿测评（OpenHarmony Benchmarks）';
  @State items: TestItemData[] = [];
  @State extraItems: TestItemData[] = [];
  @State batteryTemp: number = batteryInfo.batteryTemperature / 10;
  private queryHandleId: number = -1;

  aboutToAppear(): void {
    this.items.push(new TestItemData('验机', $r('app.media.rectangle_portrait_rotate'), '基本信息检测', () => {
      try {
        router.pushUrl({
          url: 'pages/BasicInfo',
        })
      } catch (err) {
        console.error(`pushUrl failed, code is ${(err as BusinessError).code}, message is ${(err as BusinessError).message}`);
      }
    }));
    this.items.push(new TestItemData('性能评分', $r('app.media.timer'), '综合性能测试', () => {
      try {
        router.pushUrl({
          url: 'pages/Performance',
        })
      } catch (err) {
        console.error(`pushUrl failed, code is ${(err as BusinessError).code}, message is ${(err as BusinessError).message}`);
      }
    }));
    this.items.push(new TestItemData('存储', $r('app.media.externaldrive'), '读写性能测试'));
    this.items.push(new TestItemData('传输', $r('app.media.mobiledata'), '网络性能测试'));
    this.items.push(new TestItemData('屏幕', $r('app.media.hand_tap'), '显示触屏检测'));
    this.items.push(new TestItemData('续航', $r('app.media.bolt_filled_on_circle'), '功耗检测'));
    this.extraItems.push(new TestItemData('WLAN', $r('app.media.wifi'), '无线局域网传输'));
    this.extraItems.push(new TestItemData('蓝牙', $r('app.media.bluetooth'), '协议支持及传输'));
    this.extraItems.push(new TestItemData('相机', $r('app.media.circle_viewfinder'), '拍照视频'));
    this.extraItems.push(new TestItemData('定位', $r('app.media.satellite_map'), 'GPS北斗'));
    this.extraItems.push(new TestItemData('安全', $r('app.media.checkmark_shield'), '系统安全'));
    this.extraItems.push(new TestItemData('触控', $r('app.media.hand_draw'), '输入输出'));
    this.extraItems.push(new TestItemData('图形', $r('app.media.picture_2'), '显示性能测试'));
    this.extraItems.push(new TestItemData('NFC', $r('app.media.nfc'), '近距离通信'));
    this.extraItems.push(new TestItemData('电池', $r('app.media.battery_75percent'), '电池健康检查'));
    this.queryHandleId = setInterval(() => {
      this.batteryTemp = batteryInfo.batteryTemperature / 10;
    }, 1000);
  }

  aboutToDisappear(): void {
    if (this.queryHandleId !== -1) {
      clearInterval(this.queryHandleId);
      this.queryHandleId = -1;
    }
  }

  build() {
    Column() {
      HeadBar()

      Scroll() {
        Column() {
          RelativeContainer() {
            Text('开始测评')
              .fontSize(42)
              .fontColor(Color.White)
              .borderRadius(16)
              .padding(16)
              .backgroundColor(Color.Orange)
              .shadow({
                radius: 10,
                color: Color.Gray,
                offsetX: 20,
                offsetY: 20
              })
              .clickEffect({ level: ClickEffectLevel.MIDDLE, scale: 0.8 })
              .alignSelf(ItemAlign.Center)
              .alignRules({
                bottom: { anchor: '__container__', align: VerticalAlign.Center },
                middle: { anchor: '__container__', align: HorizontalAlign.Center }
              })
              .onClick(() => {
                try {
                  router.pushUrl({
                    url: 'pages/Performance',
                  })
                } catch (err) {
                  console.error(`pushUrl failed, code is ${(err as BusinessError).code}, message is ${(err as BusinessError).message}`);
                }
              })
            Row() {
              Text('电池温度：' + this.batteryTemp.toString() + ' ℃')
                .fontSize(16)
                .fontColor(Color.White)
                .margin(8)
              Text('CPU温度：-- ℃')
                .fontSize(16)
                .fontColor(Color.White)
                .margin(8)
            }
            .width('100%')
            .backgroundBlurStyle(BlurStyle.Thin)
            .alignRules({
              bottom: { anchor: '__container__', align: VerticalAlign.Bottom },
              middle: { anchor: '__container__', align: HorizontalAlign.Center }
            })
          }
          .width('100%')
          .height('40%')
          .backgroundColor('#66AAFF')

          Column() {
            Grid() {
              ForEach(this.items, (item: TestItemData) => {
                GridItem() {
                  TestGridItem({ item })
                }
                .height(120)
                .width(120)
              })
            }
            .columnsTemplate('1fr 1fr 1fr')
            .columnsGap(10)
            .rowsGap(10)
            .padding({ top: 16, bottom: 16 })
            .backgroundColor(Color.White)
            .width('100%')
          }
          .width('100%')
          .backgroundColor('#66CCCCCC')

          Column() {
            List({ space: 10 }) {
              ForEach(this.extraItems, (item: TestItemData) => {
                ListItem() {
                  TestListItem({ item })
                }
              })
            }
            .divider({ strokeWidth: 1, color: '#CCCCCC' })
            .width('100%')
            .backgroundColor(Color.White)
            .margin(16)
          }
          .backgroundColor('#66CCCCCC')
          .margin({ bottom: 32 })
        }
      }.scrollBar(BarState.Off)
    }
    .height('100%')
    .width('100%')
  }
}