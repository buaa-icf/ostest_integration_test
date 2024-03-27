/*
 * Copyright (c) 2023 Southeast University.
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

import MicroNewsTabContent from './MicroNews'

/**
 * Common invisible button style
 */
@Extend(Button)
function commonBtnStyle(handler?: (event: ClickEvent) => void) {
  .type(ButtonType.Normal)
  .stateEffect(false)
  .backgroundColor(Color.Transparent)
  .onClick(handler)
}

@Component
export default struct PublishTabs {
  @State curTabIdx: number = 2 // Default: Micro news
  private tabsController: TabsController = new TabsController()

  build() {
    Tabs({ index: this.curTabIdx, barPosition: BarPosition.End, controller: this.tabsController }) {
      /* Inspiration */
      TabContent() {
        // TODO
      }.tabBar(this.tabBuilder(0, $r('app.string.publish_tab_inspiration')))

      /* Article */
      TabContent() {
        // TODO
      }.tabBar(this.tabBuilder(1, $r('app.string.publish_tab_article')))

      /* Micro news */
      TabContent() {
        MicroNewsTabContent()
      }.tabBar(this.tabBuilder(2, $r('app.string.publish_tab_microNews')))

      /* Template */
      TabContent() {
        // TODO
      }.tabBar(this.tabBuilder(3, $r('app.string.publish_tab_template')))

      /* Video */
      TabContent() {
        // TODO
      }.tabBar(this.tabBuilder(4, $r('app.string.publish_tab_video')))

      /* Live */
      TabContent() {
        // TODO
      }.tabBar(this.tabBuilder(5, $r('app.string.publish_tab_live')))
    }
    .barHeight(50)
    .scrollable(false)
    .barMode(BarMode.Scrollable)
    .barBackgroundColor($r('app.color.publish_tab_bg'))
  }

  @Builder
  tabBuilder(targetIdx: number, text: Resource) {
    Button() {
      Column({ space: 7 }) {
        Text(text)
          .fontSize(13)
          .fontColor($r('app.color.primary_fg'))
          .opacity(0.6)
        Line()
          .startPoint([0, 0])
          .endPoint([16, 0])
          .stroke(this.curTabIdx === targetIdx ? $r('app.color.primary_fg') : Color.Transparent)
          .strokeLineCap(LineCapStyle.Round)
          .strokeWidth(1)
      }
      .height('100%')
      .padding({ left: 16, right: 16, bottom: 13 })
      .justifyContent(FlexAlign.End)
    }
    .commonBtnStyle(() => {
      this.tabsController.changeIndex(targetIdx)
      this.curTabIdx = targetIdx
    })
  }
}