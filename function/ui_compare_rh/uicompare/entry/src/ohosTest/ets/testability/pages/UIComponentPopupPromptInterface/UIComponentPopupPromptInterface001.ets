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

import promptAction from '@ohos.promptAction'
import { BusinessError } from '@kit.BasicServicesKit'

@Entry
@Component
struct UIComponentPopupPromptInterface001 {
  @State currentTime: string = '文本提示时间为默认值1.5s';
  @State duration: number = 1000;
  @State fontColor: number = Color.Black;
  @State fontColor5s: number = Color.Black;

  build() {
    Row() {
      Column() {
        Text('Change duration = 5000s').fontColor(this.fontColor5s)
          .onClick(() => {
            this.fontColor5s = Color.Blue;
            this.fontColor = Color.Black;
            this.duration = 5000;
            this.currentTime = '文本提示时间为5s';
          }).key('UIComponentPopupPromptInterface001_button_003')
        Text('Change duration = 15000s').fontColor(this.fontColor)
          .onClick(() => {
            this.fontColor = Color.Blue;
            this.fontColor5s = Color.Black;
            this.duration = 15000;
            this.currentTime = '文本提示时间为最大值10s';
          }).key('UIComponentPopupPromptInterface001_button_002')
        Button('Show Toast')
          .fontWeight(FontWeight.Bold)
          .onClick(() => {
            try {
              promptAction.showToast({
                message: this.currentTime,
                duration: this.duration
              });
            } catch (error) {
              let message = (error as BusinessError).message
              let code = (error as BusinessError).code
              console.error(`showToast args error code is ${code}, message is ${message}`);
            }
            ;
          }).key('UIComponentPopupPromptInterface001_button_001')
      }
      .width('100%')
    }
    .height('100%')
  }
}
