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

import { BusinessError } from '@ohos.base';

@Entry
@Component
struct UIComponentPopupPromptInterface007 {
  @State selectContent: string = '异步响应内容为：';

  build() {
    Row() {
      Column() {
        Text(this.selectContent)
        Button('Show Dialog')
          .fontWeight(FontWeight.Bold)
          .onClick(() => {
            try {
              this.getUIContext()
                .getPromptAction()
                .showDialog({
                  title: 'Title Info',
                  message: 'Message Info',
                  buttons: [
                    {
                      text: 'button1',
                      color: '#000000'
                    },
                    {
                      text: 'button2',
                      color: '#000000'
                    }
                  ],
                })
                .then(data => {
                  this.selectContent = this.selectContent + data.index;
                  console.info('showDialog success, click button: ' + data.index);
                })
                .catch((err: Error) => {
                  console.info('showDialog error: ' + err);
                })
            } catch (error) {
              let message = (error as BusinessError).message;
              let code = (error as BusinessError).code;
              console.error(`showDialog args error code is ${code}, message is ${message}`);
            };
          }).key('UIComponentPopupPromptInterface007_button_001')
      }
      .width('100%')
    }
    .height('100%')
  }
}
