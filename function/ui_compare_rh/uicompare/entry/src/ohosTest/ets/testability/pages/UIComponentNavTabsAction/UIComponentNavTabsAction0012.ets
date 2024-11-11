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
struct UIComponentNavTabsAction0012 {
  @State simpleList: Array<string> = ['tab0','tab1','tab2','tab3','tab4','tab5','tab6','tab7','tab8','tab9',
    'tab10','tab11','tab12','tab13','tab14','tab15','tab16','tab17','tab18','tab19',
    'tab20','tab21','tab22','tab23','tab24','tab25','tab26','tab27','tab28','tab29',
    'tab30','tab31','tab32','tab33','tab34','tab35','tab36','tab37','tab38','tab39',
    'tab40','tab41','tab42','tab43','tab44','tab45','tab46','tab47','tab48','tab49',
    'tab50','tab51','tab52','tab53','tab54','tab55','tab56','tab57','tab58','tab59',
    'tab60','tab61','tab62','tab63','tab64','tab65','tab66','tab67','tab68','tab69',
    'tab70','tab71','tab72','tab73','tab74','tab75','tab76','tab77','tab78','tab79',
    'tab80','tab81','tab82','tab83','tab84','tab85','tab86','tab87','tab88','tab89',
    'tab90','tab91','tab92','tab93','tab94','tab95','tab96','tab97','tab98','tab99']
  @State currentIndex: number = 0
  @Builder tabBuilder(title: string) {
    Column(){
      Text(title)
    }.width('100%')
    .height(50)
    .id(title)
    .justifyContent(FlexAlign.Center)
  }

  build() {
    Row() {
      Column() {
        Tabs({ barPosition: BarPosition.End, }) {
          ForEach(this.simpleList, (item: string) => {
            TabContent() {
              Column() {
                Text(`Content:${item}`).fontSize(50)
              }
            }.tabBar(this.tabBuilder(item))
          }, (item: string) => item)
        }
        .vertical(false)
        .id('UIComponentNavTabsAction0012_001')
        //.barMode(BarMode.Scrollable)
        .barWidth(400)
        .barHeight(120)
        .animationDuration(0)
        .width(400)
        .height(400)
        .backgroundColor('#FF0000')
        .scrollable(true)

      }
      .width('100%')
      .height('100%')

    }
    .height('100%')
    .backgroundColor(0xF1F3F5)
  }
}