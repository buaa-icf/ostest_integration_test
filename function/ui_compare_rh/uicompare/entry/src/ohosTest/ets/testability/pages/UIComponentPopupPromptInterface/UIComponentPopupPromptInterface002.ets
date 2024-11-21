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

import { BusinessError } from '@kit.BasicServicesKit'

@Entry
@Component
struct UIComponentPopupPromptInterface002 {
  @State bottom: string = '150px'
  @State currentBottom: string = '设置bottom=150px'

  build() {
    Row() {
      Column() {
        Column() {
          Button('Change bottom = 150vp').onClick(() => {
            this.currentBottom = '设置bottom=150vp';
            this.bottom = '150vp';
          }).key('UIComponentPopupPromptInterface002_change_01')
          Button('Change bottom = 0').onClick(() => {
            this.currentBottom = '设置bottom=string0';
            this.bottom = '0';
          }).key('UIComponentPopupPromptInterface002_change_02')
          Button('Change bottom = -100').onClick(() => {
            this.currentBottom = '设置bottom=string-100';
            this.bottom = '-100';
          }).key('UIComponentPopupPromptInterface002_change_03')
          Button('Change bottom = 150aaa').onClick(() => {
            this.currentBottom = '设置bottom=string150aa';
            this.bottom = '150aaa';
          }).key('UIComponentPopupPromptInterface002_change_04')
        }.layoutWeight(1).width('100%').backgroundColor(Color.Gray)

        Column() {
          Text('白色块高度150px')
          Button('Show Toast')
            .fontWeight(FontWeight.Bold)
            .onClick(() => {
              try {
                this.getUIContext().getPromptAction().showToast({
                  message: this.currentBottom,
                  duration: 1000,
                  bottom: this.bottom
                });
              } catch (error) {
                let message = (error as BusinessError).message
                let code = (error as BusinessError).code
                console.error(`showToast args error code is ${code}, message is ${message}`);
              }
              ;
            }).key('UIComponentPopupPromptInterface002_button_001')
        }.height('150px')
      }
    }
  }
}