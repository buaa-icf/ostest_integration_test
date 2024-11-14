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
class MyDataSource3700 implements IDataSource {
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
struct UIComponentScrollSwiperInterface3700 {
  private swiperController: SwiperController = new SwiperController()
  private data: MyDataSource3700 = new MyDataSource3700([])

  aboutToAppear(): void {
    let list: number[] = []
    for (let i = 1; i <= 3; i++) {
      list.push(i);
    }
    this.data = new MyDataSource3700(list)
  }

  build() {
    Column() {
      Swiper(this.swiperController) {
        LazyForEach(this.data, (item: string) => {
          Column() {
            Text(item.toString())
          }
        }, (item: string) => item)
      }
      .width(250)
      .height(250)
      .backgroundColor(Color.Yellow)
      .indicator(DotIndicator.dot().top(50))
      .indicatorStyle({
        top: 0
      })
    }
  }
}