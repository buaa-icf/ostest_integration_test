/*
 * Copyright (C) 2024 Huawei Device Co., Ltd.
 * Licensed under the Apache License, Version 2.0 (the 'License')
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an 'AS IS' BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

import { MyDataSource } from './IDataSource'

@Entry
@Component
struct UIComponentScrollSwiperLayout0570 {
  private swiperController: SwiperController = new SwiperController()
  private data: MyDataSource = new MyDataSource([])
  private icon: Resource = $r('app.media.icon')

  aboutToAppear(): void {
    let list: number[] = []
    for (let i = 1; i <= 3; i++) {
      list.push(i);
    }
    this.data = new MyDataSource(list)
  }

  build() {
    Column() {
      Swiper(this.swiperController) {
        LazyForEach(this.data, (item: string) => {
          Row() {
            Image(this.icon).width(41)
            Image(this.icon).width(41)
            Text(item.toString())
          }
        }, (item: string) => item)
      }
      .displayCount(3)
      .padding(10)
    }
  }
}