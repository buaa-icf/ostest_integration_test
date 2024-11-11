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
@Entry
@Component
struct ArkUITabsLabelStylefont011 {
  @State message: string = 'Hello World';
  @State labelFontWeight: number = FontWeight.Bold;
  private controller: TabsController = new TabsController()
  @State subTabOverflowOpaque: boolean = true;

  build() {
    Column() {

      Tabs({ barPosition: BarPosition.Start, controller: this.controller }) {
        TabContent() {
          Column() {
            Text('tabcontent1').fontSize(30).fontColor(0xFF000000)
          }.width('100%').height('100%').backgroundColor(Color.Pink)
        }
        .tabBar(SubTabBarStyle.of('tab1')
          .labelStyle({
            overflow: TextOverflow.Ellipsis,
            maxLines: 1,
            minFontSize: 10,
            heightAdaptivePolicy: TextHeightAdaptivePolicy.MAX_LINES_FIRST,
            font: { weight: this.labelFontWeight }
          }));

        TabContent() {
          Column() {
            Text('tabcontent2').fontSize(30).fontColor(0xFF000000)
          }.width('100%').height('100%').backgroundColor(Color.Pink)
        }
        .tabBar(SubTabBarStyle.of('tab2')
          .labelStyle({
            overflow: TextOverflow.Ellipsis,
            maxLines: 1,
            minFontSize: 10,
            heightAdaptivePolicy: TextHeightAdaptivePolicy.MAX_LINES_FIRST,
            font: { weight: this.labelFontWeight }
          }));

        TabContent() {
          Column() {
            Text('tabcontent3').fontSize(30).fontColor(0xFF000000)
          }.width('100%').height('100%').backgroundColor(Color.Pink)
        }
        .tabBar(SubTabBarStyle.of('tab3')
          .labelStyle({
            overflow: TextOverflow.Ellipsis,
            maxLines: 1,
            minFontSize: 10,
            heightAdaptivePolicy: TextHeightAdaptivePolicy.MAX_LINES_FIRST,
            font: { weight: this.labelFontWeight }
          }));

        TabContent() {
          Column() {
            Text('tabcontent4').fontSize(30).fontColor(0xFF000000)
          }
          .width('100%').height('100%').backgroundColor(Color.Pink)
        }.tabBar(SubTabBarStyle.of('tab4')
          .labelStyle({
            overflow: TextOverflow.Ellipsis,
            maxLines: 1,
            minFontSize: 10,
            heightAdaptivePolicy: TextHeightAdaptivePolicy.MAX_LINES_FIRST,
            font: { weight: this.labelFontWeight }
          }));
      }
      .vertical(false)
      .scrollable(true)
      .barMode(BarMode.Fixed)
      .barHeight(200)
      .barWidth(720)
      .animationDuration(400)
      .onChange((index: number) => {
        console.info(index.toString())
      })
      .height('100%')
      .width('100%');
    }
    .height('100%');
  }
}