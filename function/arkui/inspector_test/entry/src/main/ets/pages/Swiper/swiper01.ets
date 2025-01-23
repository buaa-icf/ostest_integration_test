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

import router from '@ohos.router'

class MyDataSource implements IDataSource {
  private list: number[] = []

  constructor(list: number[]) {
    this.list = list
  }

  totalCount(): number {
    return this.list.length
  }

  getData(index: number): number {
    return this.list[index]
  }

  registerDataChangeListener(listener: DataChangeListener): void {
  }

  unregisterDataChangeListener() {
  }
}

@Entry
@Component
struct Swiper01 {
  private swiperController: SwiperController = new SwiperController()
  private data: MyDataSource = new MyDataSource([])
  @State idOrKeyArray: Array<Array<string>> = [
    ['', ''],
    ['dW_swiper_id', ''],
    ['', 'dW_swiper_key'],
    ['dW_swiper_id', 'dW_swiper_key'],
  ];
  @State idOrKeyArrayDisplayArrow: Array<Array<string>> = [
    ['', ''],
    ['dW_swiper_dis_id', ''],
    ['', 'dW_swiper_dis_key'],
    ['dW_swiper_dis_id', 'dW_swiper_dis_key'],
  ];

  aboutToAppear(): void {
    let list: number[] = []
    for (let i = 1; i <= 10; i++) {
      list.push(i);
    }
    this.data = new MyDataSource(list)
  }

  build() {
    Column() {
      Text("Swiper")
        .fontSize(18)
      ForEach(this.idOrKeyArray, (item: Array<string>) => {
        Swiper(this.swiperController) {
          LazyForEach(this.data, (item: string) => {
            Text(item.toString())
              .width('90%')
              .height(80)
              .backgroundColor(0xAFEEEE)
              .textAlign(TextAlign.Center)
              .fontSize(18)
          }, (item: string) => item)
        }
        .id(item[0])
        .key(item[1])
        .displayCount(1, true)
        .autoPlay(true)
        .interval(4000)
        .loop(true)
        .duration(1000)
        .itemSpace(10)
        .indicator(
          new DotIndicator()
            .itemWidth(15)
            .itemHeight(15)
            .selectedItemWidth(15)
            .selectedItemHeight(15)
            .color(Color.Gray)
            .selectedColor(Color.Blue))
      })

      Text("Swiper with attr displayArrow")
        .fontSize(18)
        .margin({ top: 24 })
      ForEach(this.idOrKeyArrayDisplayArrow, (item: Array<string>) => {
        Swiper(this.swiperController) {
          LazyForEach(this.data, (item: string) => {
            Text(item.toString())
              .width('90%')
              .height(78)
              .backgroundColor(0xAFEEEE)
              .textAlign(TextAlign.Center)
              .fontSize(18)
          }, (item: string) => item)
        }
        .cachedCount(2)
        .index(1)
        .autoPlay(true)
        .interval(4000)
        .loop(true)
        .duration(1000)
        .itemSpace(0)
        .indicator(
          new DotIndicator()
            .itemWidth(15)
            .itemHeight(15)
            .selectedItemWidth(15)
            .selectedItemHeight(15)
            .color(Color.Gray)
            .selectedColor(Color.Blue))
        .displayArrow({
          showBackground: true,
          isSidebarMiddle: true,
          backgroundSize: 24,
          backgroundColor: Color.White,
          arrowSize: 18,
          arrowColor: Color.Blue
        }, false)
        .curve(Curve.Linear)
        .onChange((index: number) => {
          console.info(index.toString())
        })
        .onGestureSwipe((index: number, extraInfo: SwiperAnimationEvent) => {
          console.info("displayArrow index: " + index)
          console.info("displayArrow current offset: " + extraInfo.currentOffset)
        })
        .onAnimationStart((index: number, targetIndex: number, extraInfo: SwiperAnimationEvent) => {
          console.info("displayArrow index: " + index)
          console.info("displayArrow targetIndex: " + targetIndex)
          console.info("displayArrow current offset: " + extraInfo.currentOffset)
          console.info("displayArrow target offset: " + extraInfo.targetOffset)
          console.info("displayArrow velocity: " + extraInfo.velocity)
        })
        .onAnimationEnd((index: number, extraInfo: SwiperAnimationEvent) => {
          console.info("displayArrow index: " + index)
          console.info("displayArrow current offset: " + extraInfo.currentOffset)
        })
      })

      Button('Back')
        .onClick(()=> {
          router.pushUrl({
            url: 'pages/IndexD',
            params: ''
          })
        })
    }.width('100%')
  }
}
