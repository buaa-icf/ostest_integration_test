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
struct ComponentRowColumnSidebarContainerBlurStyle003 {
  normalIcon: Resource = $r("app.media.icon")
  selectedIcon: Resource = $r("app.media.icon")
  @State arr: number[] = [1, 2, 3]
  @State current: number = 1
  @State SideBarContainerTypeState: SideBarContainerType = SideBarContainerType.Embed
  @State ShowSideBarState: boolean = false
  @State addLeft: number = 16
  @State addTop: number = 48
  @State addWidth: number = 24
  @State addHeight: number = 24
  @State ShowControlButtonState: boolean = false

  build() {
    SideBarContainer(this.SideBarContainerTypeState) {
      Column() {
        ForEach(this.arr, (item: number) => {
          Column({ space: 5 }) {
            Image(this.current === item ? this.selectedIcon : this.normalIcon).width(64).height(64)
            Text("Index0" + item)
              .fontSize(25)
              .fontColor(this.current === item ? '#0A59F7' : '#999')
              .fontFamily('source-sans-pro,cursive,sans-serif')
          }
          .onClick(() => {
            this.current = item
          })
        }, (item: string) => item)
      }.width('100%')
      .justifyContent(FlexAlign.SpaceEvenly)

      Column(){
        Button("SideBarContainerType.Overlay")
          .onClick(() => {
            this.SideBarContainerTypeState = SideBarContainerType.Overlay
          })

        Button("showSideBarTrue")
          .onClick(() => {
            this.ShowSideBarState = true
          })

        Button("showSideBarFalse")
          .onClick(() => {
            this.ShowSideBarState = false
          })

        Button("ButtonStyle left + 1")
          .onClick(() => {
            this.addLeft += 1
          })

        Button("ButtonStyle left - 1")
          .onClick(() => {
            this.addLeft -= 1
          })

        Button("ButtonStyle top + 1")
          .onClick(() => {
            this.addTop += 1
          })

        Button("ButtonStyle top - 1")
          .onClick(() => {
            this.addTop -= 1
          })

        Button("ButtonStyle width + 1")
          .onClick(() => {
            this.addWidth += 1
          })

        Button("ButtonStyle width - 1")
          .onClick(() => {
            this.addWidth -= 1
          })

        Button("ButtonStyle height + 1")
          .onClick(() => {
            this.addHeight += 1
          })

        Button("ButtonStyle height - 1")
          .onClick(() => {
            this.addHeight -= 1
          })

        Button("howControlButton设置为true")
          .onClick(() => {
            this.ShowControlButtonState = true
          })

        Button("howControlButton设置为false")
          .onClick(() => {
            this.ShowControlButtonState = false
          })
      }
    }
    .showControlButton(this.ShowControlButtonState)
    .controlButton({left: this.addLeft, top: this.addTop, width: this.addWidth, height: this.addHeight})
    .showSideBar(this.ShowSideBarState)
    .sideBarPosition(SideBarPosition.Start)
    .onChange((value: boolean) => {
      console.info('status:' + value)
    })
  }
}