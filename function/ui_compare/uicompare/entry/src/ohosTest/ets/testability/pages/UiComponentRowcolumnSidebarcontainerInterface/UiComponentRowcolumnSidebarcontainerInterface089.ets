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


@Entry
@Component
struct UiComponentRowcolumnSidebarcontainerInterface089 {
  selectedIcon: Resource = $r("app.media.icon")
  @State arr: number[] = [1, 2, 3]
  @State value:boolean = true

  build() {
    SideBarContainer(SideBarContainerType.Embed) {
      Column() {
        ForEach(this.arr, (item:number, index) => {
          Column({ space: 5 }) {
            Image(this.selectedIcon).width(64).height(64)
            Text("Index0" + item)
              .fontSize(25)
              .fontColor('#0A59F7')
          }
        })
      }.width('100%')
      .justifyContent(FlexAlign.SpaceEvenly)
      .backgroundColor('#19000000')
      Column() {
        Text($r('app.string.boardSize_10')).fontSize(25)
      }
      .margin({ top: 50, left: 20, right: 30 })
    }
    .controlButton({
      icons: {
        hidden: this.selectedIcon,
        shown: this.selectedIcon,
      }
    })
    .showSideBar(this.value)
    .sideBarWidth(150)
    .divider({
      strokeWidth: $r("app.string.boardSize_10")
    })
    .key('UiComponentRowcolumnSidebarcontainerInterface089')
    .minSideBarWidth(50)
    .maxSideBarWidth(300)
    .onChange((value) => {
      console.info('status:' + value)
    })
  }
}