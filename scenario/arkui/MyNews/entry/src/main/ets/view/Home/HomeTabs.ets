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

import RecommendationTabContent from './Recommendation/Recommendation'

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
export default struct HomeTabs {
  @State curTabIdx: number = 1 // Default: Recommendation
  private tabsController: TabsController = new TabsController()

  build() {
    Tabs({ index: this.curTabIdx, barPosition: BarPosition.Start, controller: this.tabsController }) {
      /* Following */
      TabContent() {
        // TODO
      }.tabBar(this.tabBuilder(0, $r('app.string.home_tab_following')))

      /* Recommendation */
      TabContent() {
        RecommendationTabContent()
      }.tabBar(this.tabBuilder(1, $r('app.string.home_tab_recommendation')))

      /* Hot board */
      TabContent() {
        // TODO
      }.tabBar(this.tabBuilder(2, $r('app.string.home_tab_hotBoard')))

      /* Discovery */
      TabContent() {
        // TODO
      }.tabBar(this.tabBuilder(3, $r('app.string.home_tab_discovery')))

      /* Locality */
      TabContent() {
        // TODO
      }.tabBar(this.tabBuilder(4, $r('app.string.home_tab_locality')))

      /* Video */
      TabContent() {
        // TODO
      }.tabBar(this.tabBuilder(5, $r('app.string.home_tab_video')))

      /* Music */
      TabContent() {
        // TODO
      }.tabBar(this.tabBuilder(6, $r('app.string.home_tab_music')))

      /* Image */
      TabContent() {
        // TODO
      }.tabBar(this.tabBuilder(7, $r('app.string.home_tab_image')))

      /* Entertainment */
      TabContent() {
        // TODO
      }.tabBar(this.tabBuilder(5, $r('app.string.home_tab_entertainment')))

      /* Technology */
      TabContent() {
        // TODO
      }.tabBar(this.tabBuilder(6, $r('app.string.home_tab_technology')))

      /* Car */
      TabContent() {
        // TODO
      }.tabBar(this.tabBuilder(7, $r('app.string.home_tab_car')))
    }
    .height(0)
    .flexGrow(1)
    .barHeight(30)
    .scrollable(false)
    .barMode(BarMode.Scrollable, { margin: 10 })
    .fadingEdge(true)
    .barBackgroundColor($r('app.color.light_bg'))
    .backgroundColor($r('app.color.light_bg'))
    .divider({ strokeWidth: 2, color: $r('app.color.light_border') })
  }

  /**
   * Tab item: text + line
   */
  @Builder
  tabBuilder(targetIdx: number, text: Resource) {
    Button() {
      Column() {
        Column({ space: 4 }) {
          Text(text)
            .fontSize(14)
            .fontWeight(this.curTabIdx === targetIdx ? FontWeight.Bold : FontWeight.Normal)
            .fontColor(this.curTabIdx === targetIdx ? $r('app.color.primary') : $r('app.color.light_fg'))
          Line()
            .startPoint([0, 0])
            .endPoint([16, 0])
            .stroke(this.curTabIdx === targetIdx ? $r('app.color.primary') : Color.Transparent)
            .strokeLineCap(LineCapStyle.Round)
            .strokeWidth(2)
        }
        .height('100%')
        .padding({ left: 8, right: 8, bottom: 1 })
        .justifyContent(FlexAlign.End)
      }
    }
    .commonBtnStyle(() => {
      this.tabsController.changeIndex(targetIdx)
      this.curTabIdx = targetIdx
    })
  }
}