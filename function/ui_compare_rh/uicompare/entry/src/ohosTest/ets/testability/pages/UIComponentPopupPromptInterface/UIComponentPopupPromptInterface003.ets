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
struct UIComponentPopupPromptInterface003 {
  @State bottom: number = -100;

  build() {
    Row() {
      Column() {
        Column() {
          Button('Change bottom = 0').onClick(() => {
            this.bottom = 0;
          }).key('UIComponentPopupPromptInterface003_change_01')
        }.layoutWeight(1).width('100%').backgroundColor(Color.Gray)

        Column() {
          Text('白色块高度150px')
          Button('Show Toast')
            .fontWeight(FontWeight.Bold)
            .onClick(() => {
              try {
                this.getUIContext().getPromptAction().showToast({
                  message: '时间为默认值1.5s',
                  duration: 1000,
                  bottom: this.bottom
                });
              } catch (error) {
                let message = (error as BusinessError).message
                let code = (error as BusinessError).code
                console.error(`showToast args error code is ${code}, message is ${message}`);
              }
              ;
            }).key('UIComponentPopupPromptInterface003_button_001')
        }.height('150px')
      }
    }
  }
}