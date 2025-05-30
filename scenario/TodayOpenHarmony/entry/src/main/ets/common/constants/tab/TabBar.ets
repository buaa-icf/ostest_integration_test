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

// TabBar.ets
@Component
export struct TabBar {
  @Link selectedIndex: number
  @Prop routes: string[];
  public onTabSelected?: (index: number) => void
  build() {
    Row() {
      ForEach([0, 1, 2, 3], (index: number) => {
        Column() {
          Image(this.getTabIcon(index))
            .width(24)
            .height(24)
            .margin({ bottom: 4 })

          Text(this.getTabText(index))
            .fontColor(this.selectedIndex === index ? '#007AFF' : '#666666')
        }
        .onClick(() => {
          if (this.onTabSelected) {
            this.onTabSelected(index)
          }
        })

        .width('25%')
      })
    }
    .height(56)
    .backgroundColor('#FFFFFF')
  }

  private getTabIcon(index: number): Resource {
    const icons = [
      [$r('app.media.home'), $r('app.media.home_fill')],
      [$r('app.media.recommend'), $r('app.media.recommend_fill')],
      [$r('app.media.finding'), $r('app.media.finding_fill')],
      [$r('app.media.me'), $r('app.media.me_fill')]
    ]
    return icons[index][this.selectedIndex === index ? 1 : 0]
  }

  private getTabText(index: number): string {
    return ['首页', '推荐', '发现', '我的'][index]
  }
}

