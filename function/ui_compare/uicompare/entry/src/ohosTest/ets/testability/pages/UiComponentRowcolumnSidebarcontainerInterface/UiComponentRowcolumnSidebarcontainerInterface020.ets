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
struct UiComponentRowcolumnSidebarcontainerInterface020 {
  selectedIcon: Resource = $r("app.media.icon")
  @State arr: number[] = [1, 2, 3]
  @State value:boolean = true

  build() {
    SideBarContainer(SideBarContainerType.Embed) {
      Column() {
        ForEach(this.arr, (item:number, index) => {
          Column({ space: 5 }) {
            Image('https://img1.baidu.com/it/u=3954245725,1121943782&fm=253&fmt=auto&app=120&f=JPEG?w=640&h=400').width(64).height(64)
            Text("Index0" + item)
              .fontSize(25)
              .fontColor('#0A59F7')
          }
        })
      }.width('100%')
      .justifyContent(FlexAlign.SpaceEvenly)
      .backgroundColor('#19000000')
      Column() {
        Text('测试文本').fontSize(25)
      }
      .margin({ top: 50, left: 20, right: 30 })
    }
    .controlButton({
      icons: {
        hidden: 'https://img1.baidu.com/it/u=3954245725,1121943782&fm=253&fmt=auto&app=120&f=JPEG?w=640&h=400',
        shown: 'https://img1.baidu.com/it/u=3954245725,1121943782&fm=253&fmt=auto&app=120&f=JPEG?w=640&h=400',
      }
    })
    .showSideBar(this.value)
    .sideBarWidth(150)
    .minSideBarWidth(50)
    .maxSideBarWidth(300)
    .onChange((value) => {
      console.info('status:' + value)
    })
  }
}