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



// view/components/DiscoveryCategories.ets
import {  BaseCategoryItem } from '../../model/DiscoveryModel';
import { DiscoveryViewModel } from '../../viewmodel/DiscoveryVM';
import router from '@ohos.router';

@Component
export struct DiscoveryCategories {
  private vm: DiscoveryViewModel = new DiscoveryViewModel();
  @Prop categoryItems: BaseCategoryItem[];

  build() {
    Column() {
      Text('功能入口👍🎉')
        .fontSize(20)
        .fontColor('#1A1A1A')
        .margin({ left: 16, top: 24, bottom: 12 })

      GridRow({ columns: 4, gutter: 8 }) {
        ForEach(this.vm.getCategories(), (category: BaseCategoryItem) => {
          GridCol() {
            Column() {
              Image(category.icon)
                .width(32)
                .height(32)
                .margin({ bottom: 8 })

              Text(category.name)
                .fontSize(14)
                .fontColor('#666')
            }
            .width('100%')
            .padding(8)
            .backgroundColor(category.color)
            .borderRadius(12)
            .onClick(() => {
              router.pushUrl({
                url: 'pages/WebPage',
                params: { url: encodeURIComponent(category.link) }
              })
            })
          }
       })
     }
   }
 }
}