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

@Entry
@Component
struct Index {
  @State message: string = '开鸿测评（OpenHarmony Benchmarks）';
  @State items: TestItemData[] = [];

  aboutToAppear(): void {
    this.items.push(new TestItemData('验机', $r('app.media.app_icon'), '待测试', () => {
      try {
        router.pushUrl({
          url: 'pages/BasicInfo',
        })
      } catch (err) {
        console.error(`pushUrl failed, code is ${(err as BusinessError).code}, message is ${(err as BusinessError).message}`);
      }
    }))
    this.items.push(new TestItemData('性能评分', $r('app.media.app_icon'), '待测试', () => {
      try {
        router.pushUrl({
          url: 'pages/Performance',
        })
      } catch (err) {
        console.error(`pushUrl failed, code is ${(err as BusinessError).code}, message is ${(err as BusinessError).message}`);
      }
    }))
    this.items.push(new TestItemData('压力', $r('app.media.app_icon'), '待测试', () => {
    }))
    this.items.push(new TestItemData('网络', $r('app.media.app_icon'), '待测试', () => {
    }))
    this.items.push(new TestItemData('屏幕', $r('app.media.app_icon'), '待测试', () => {
    }))
    this.items.push(new TestItemData('电池', $r('app.media.app_icon'), '待测试', () => {
    }))

  }

  build() {
    Column() {
      Row() {
        Text('开鸿测评v0.0.1')
          .fontSize(16)
          .fontColor(Color.White)
          .margin(8)
        Image($r('app.media.app_icon'))
          .height(36)
          .margin(8)
      }
      .backgroundColor('#3333FF')
      .width('100%')
      .justifyContent(FlexAlign.SpaceBetween)

      Scroll() {
        Column() {
          RelativeContainer() {
            Text('开始测评')
              .fontSize(42)
              .fontColor(Color.White)
              .borderRadius(42)
              .padding(16)
              .backgroundColor('#11FFFFFF')
              .alignSelf(ItemAlign.Center)
              .alignRules({
                bottom: { anchor: '__container__', align: VerticalAlign.Center },
                middle: { anchor: '__container__', align: HorizontalAlign.Center }
              })
            Row() {
              Text('电池温度：28.5℃')
                .fontSize(16)
                .fontColor(Color.White)
                .margin(8)
              Text('CPU温度：31.5℃')
                .fontSize(16)
                .fontColor(Color.White)
                .margin(8)
              Blank()
              Text('查看详情 >')
                .fontSize(16)
                .fontColor(Color.White)
                .margin(8)
            }
            .width('100%')
            .backgroundBlurStyle(BlurStyle.COMPONENT_THIN)
            .alignRules({
              bottom: { anchor: '__container__', align: VerticalAlign.Bottom },
              middle: { anchor: '__container__', align: HorizontalAlign.Center }
            })
          }
          .width('100%')
          .height('40%')
          .backgroundColor('#3333FF')

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
            .margin({ bottom: 16 })
            .padding({ top: 16 })
            .backgroundColor(Color.White)
            .width('100%')
            .height(272)
          }
          .width('100%')
          .backgroundColor('#66CCCCCC')

          Column() {
            List({ space: 10 }) {
              ListItem() {
                Text('其他测试1')
              }
              .height(48)

              ListItem() {
                Text('其他测试2')
              }
              .height(48)

              ListItem() {
                Text('其他测试3')
              }
              .height(48)

              ListItem() {
                Text('其他测试4')
              }
              .height(48)

              ListItem() {
                Text('其他测试5')
              }
              .height(48)
            }
            .divider({ strokeWidth: 1, color: '#CCCCCC' })
            .margin(16)

          }
        }
      }.scrollBar(BarState.Off)
    }
    .height('100%')
    .width('100%')
  }
}