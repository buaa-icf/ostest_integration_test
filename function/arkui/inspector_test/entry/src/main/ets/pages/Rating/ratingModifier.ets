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

class MyRatingStyle implements ContentModifier<RatingConfiguration> {
  name: string = ""
  style: number = 0
  constructor(value1: string, value2: number) {
    this.name = value1
    this.style = value2
  }
  applyContent() : WrappedBuilder<[RatingConfiguration]> {
    return wrapBuilder(buildRating)
  }
}

@Builder function buildRating(config: RatingConfiguration) {
  Column() {
    Row() {
      Circle({ width: 15, height: 15 })
        .fill(config.rating >= 0.4 ? Color.Black : Color.Red)
        .onClick((event: ClickEvent) => {
          if (!config.indicator) {
            if (config.stepSize = 0.5) {
              config.triggerChange(0.5);
              return
            }
            if (config.stepSize = 1) {
              config.triggerChange(1);
              return
            }
          }
        }).visibility(config.stars >= 1 ? Visibility.Visible : Visibility.Hidden)
      Circle({ width: 15, height: 15 })
        .fill(config.rating >= 0.9 ? Color.Black : Color.Red)
        .onClick((event: ClickEvent) => {
          if (!config.indicator) {
            config.triggerChange(1);
          }
        }).visibility(config.stars >= 1 ? Visibility.Visible : Visibility.Hidden)
      Circle({ width: 15, height: 15 })
        .fill(config.rating >= 1.4 ? Color.Black : Color.Red)
        .onClick((event: ClickEvent) => {
          if (!config.indicator) {
            if (config.stepSize = 0.5) {
              config.triggerChange(1.5);
              return
            }
            if (config.stepSize = 1) {
              config.triggerChange(2);
              return
            }
          }
        }).visibility(config.stars >= 2 ? Visibility.Visible : Visibility.Hidden).margin({left:10})
      Circle({ width: 15, height: 15 })
        .fill(config.rating >= 1.9 ? Color.Black : Color.Red)
        .onClick((event: ClickEvent) => {
          if (!config.indicator) {
            config.triggerChange(2);
          }
        }).visibility(config.stars >= 2 ? Visibility.Visible : Visibility.Hidden)
      Circle({ width: 15, height: 15 })
        .fill(config.rating >= 2.4 ? Color.Black : Color.Red)
        .onClick((event: ClickEvent) => {
          if (!config.indicator) {
            if (config.stepSize = 0.5) {
              config.triggerChange(2.5);
              return
            }
            if (config.stepSize = 1) {
              config.triggerChange(3);
              return
            }
          }
        }).visibility(config.stars >= 3 ? Visibility.Visible : Visibility.Hidden).margin({left:10})
      Circle({ width: 15, height: 15 })
        .fill(config.rating >= 2.9 ? Color.Black : Color.Red)
        .onClick((event: ClickEvent) => {
          if (!config.indicator) {
            config.triggerChange(3);
          }
        }).visibility(config.stars >= 3 ? Visibility.Visible : Visibility.Hidden)
      Circle({ width: 15, height: 15 })
        .fill(config.rating >= 3.4 ? Color.Black : Color.Red)
        .onClick((event: ClickEvent) => {
          if (!config.indicator) {
            if (config.stepSize = 0.5) {
              config.triggerChange(3.5);
              return
            }
            if (config.stepSize = 1) {
              config.triggerChange(4);
              return
            }
          }
        }).visibility(config.stars >= 4 ? Visibility.Visible : Visibility.Hidden).margin({left:10})
      Circle({ width: 15, height: 15 })
        .fill(config.rating >= 3.9 ? Color.Black : Color.Red)
        .onClick((event: ClickEvent) => {
          if (!config.indicator) {
            config.triggerChange(4);
          }
        }).visibility(config.stars >= 4 ? Visibility.Visible : Visibility.Hidden)
      Circle({ width: 15, height: 15 })
        .fill(config.rating >= 4.4 ? Color.Black : Color.Red)
        .onClick((event: ClickEvent) => {
          if (!config.indicator) {
            if (config.stepSize = 0.5) {
              config.triggerChange(4.5);
              return
            }
            if (config.stepSize = 1) {
              config.triggerChange(5);
              return
            }
          }
        }).visibility(config.stars >= 5 ? Visibility.Visible : Visibility.Hidden).margin({left:10})
      Circle({ width: 15, height: 15 })
        .fill(config.rating >= 4.9 ? Color.Black : Color.Red)
        .onClick((event: ClickEvent) => {
          if (!config.indicator) {
            config.triggerChange(5);
          }
        }).visibility(config.stars >= 5 ? Visibility.Visible : Visibility.Hidden)
    }.height(30)
  }
}

@Entry
@Component
struct ratingModifier {
  @State rating: number = 3.5
  @State arr: Array<Array<string>> = [
    ['', ''],
    ['dongWei', ''],
    ['', 'dongWei'],
    ['dongWei', 'dongWei'],
  ];

  build() {
    Column() {
      Text("Rating indicator=false")
        .fontSize(18)
        .margin({ top: 24 })
      ForEach(this.arr, (item: Array<string>) => {
        Rating({ rating: this.rating, indicator: false })
          .width(200)
          .stars(5)
          .stepSize(0.5)
          .margin({ top: 24 })
          .onChange((value: number) => {
            this.rating = value
          })
          .contentModifier(new MyRatingStyle("hello", 3))
          .id(item[0])
          .key(item[1])
      })

      Rating({ rating: this.rating, indicator: false })
        .width(200)
        .stars(5)
        .stepSize(0.5)
        .margin({ top: 24 })
        .onChange((value: number) => {
          this.rating = value
        })
        .contentModifier(new MyRatingStyle("hello", 3))

      Text("Rating indicator=true")
        .fontSize(18)
        .margin({ top: 24 })
      ForEach(this.arr, (item: Array<string>) => {
        Rating({ rating: this.rating, indicator: true })
          .width(200)
          .stars(5)
          .stepSize(0.5)
          .margin({ top: 24 })
          .onChange((value: number) => {
            this.rating = value
          })
          .contentModifier(new MyRatingStyle("hello", 3))
          .id(item[0])
          .key(item[1])
      })

      Button('Back')
        .onClick(()=> {
          router.pushUrl({
            url: 'pages/IndexD',
            params: ''
          })
        })

    }.width('100%').height('100%').backgroundColor('#F1F3F5')
  }
}