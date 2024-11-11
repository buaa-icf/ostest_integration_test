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
struct UIComponentNavTabsBlurStyle0015 {
  @State selectedMode: SelectedMode = SelectedMode.BOARD;
  @State blurtype: BlurStyle = BlurStyle.COMPONENT_THIN;
  @State seq: number = 0;
  build() {
    Column({ space: 5 }) {
      Text("子页签样式")
      Column() {
        Tabs({ barPosition: BarPosition.End }) {
          TabContent() {
            Column().width('100%').height('100%').backgroundColor(Color.Pink)
          }.tabBar(new SubTabBarStyle('Pink')
            .labelStyle({ unselectedColor: Color.Red, selectedColor: Color.Green })


            .selectedMode(this.selectedMode))

          TabContent() {
            Column().width('100%').height('100%').backgroundColor(Color.Yellow)
          }.tabBar(new SubTabBarStyle('Yellow')
            .labelStyle({ unselectedColor: Color.Red, selectedColor: Color.Green })
            .selectedMode(this.selectedMode))

          TabContent() {
            Column().width('100%').height('100%').backgroundColor(Color.Blue)
          }.tabBar(new SubTabBarStyle('Blue')
            .labelStyle({ unselectedColor: Color.Red, selectedColor: Color.Green })
            .selectedMode(this.selectedMode))

          TabContent() {
            Column().width('100%').height('100%').backgroundColor(Color.Green)
          }.tabBar(new SubTabBarStyle('Green')
            .labelStyle({ unselectedColor: Color.Red, selectedColor: Color.Green })
            .selectedMode(this.selectedMode)
          )
        }
        .vertical(true)
        .scrollable(true)
        .barBackgroundBlurStyle(this.blurtype)
        .barMode(BarMode.Fixed)
        .onChange((index: number) => {
          console.info(index.toString())
        })
        .width('100%')
        .backgroundColor(0xF1F3F5)


        Button('设置材质NONE').width('50%')
          .onClick(()=>{
            this.blurtype = BlurStyle.NONE
          }).id('UIComponentNavTabsBlurStyle0015_001')

        Button('设置材质Thin').width('50%')
          .onClick(()=>{
            this.blurtype = BlurStyle.Thin
          }).id('UIComponentNavTabsBlurStyle0015_002')

        Button('设置材质Regular').width('50%')
          .onClick(()=>{
            this.blurtype = BlurStyle.Regular
          }).id('UIComponentNavTabsBlurStyle0015_003')

        Button('设置材质Thick').width('50%')
          .onClick(()=>{
            this.blurtype = BlurStyle.Thick
          }).id('UIComponentNavTabsBlurStyle0015_004')

        Button('设置材质BACKGROUND_THIN').width('50%')
          .onClick(()=>{
            this.blurtype = BlurStyle.BACKGROUND_THIN
          }).id('UIComponentNavTabsBlurStyle0015_005')

        Button('设置材质BACKGROUND_REGULAR').width('50%')
          .onClick(()=>{
            this.blurtype = BlurStyle.BACKGROUND_REGULAR
          }).id('UIComponentNavTabsBlurStyle0015_006')

        Button('设置材质BACKGROUND_THICK').width('50%')
          .onClick(()=>{
            this.blurtype = BlurStyle.BACKGROUND_THICK
          }).id('UIComponentNavTabsBlurStyle0015_007')

        Button('设置材质BACKGROUND_ULTRA_THICK').width('50%')
          .onClick(()=>{
            this.blurtype = BlurStyle.BACKGROUND_ULTRA_THICK
          }).id('UIComponentNavTabsBlurStyle0015_008')

        Button('设置材质COMPONENT_ULTRA_THIN').width('50%')
          .onClick(()=>{
            this.blurtype = BlurStyle.COMPONENT_ULTRA_THIN
          }).id('UIComponentNavTabsBlurStyle0015_009')

        Button('设置材质COMPONENT_REGULAR').width('50%')
          .onClick(()=>{
            this.blurtype = BlurStyle.COMPONENT_REGULAR
          }).id('UIComponentNavTabsBlurStyle0015_010')

        Button('设置材质COMPONENT_THICK').width('50%')
          .onClick(()=>{
            this.blurtype = BlurStyle.COMPONENT_THICK
          }).id('UIComponentNavTabsBlurStyle0015_011')

        Button('设置材质COMPONENT_ULTRA_THICK').width('50%')
          .onClick(()=>{
            this.blurtype = BlurStyle.COMPONENT_ULTRA_THICK
          }).id('UIComponentNavTabsBlurStyle0015_012')

        Button('设置材质COMPONENT_THIN').width('50%')
          .onClick(()=>{
            this.blurtype = BlurStyle.COMPONENT_THIN
          }).id('UIComponentNavTabsBlurStyle0015_013')
      }.width('100%').height(200)
    }
  }
}