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

import { prompt } from '@kit.ArkUI';

@Entry
@Component
struct UIComponentPopupBoxPopupInterface002 {
  @State inputValue: string = 'show dialog';

  build() {
    Column() {
      Button(this.inputValue)
        .onClick(() => {
          prompt.showDialog({
            title: 'Title Info',
            message: 'Message Info',
            buttons: [
              {
                text: 'cancel',
                color: '#000000'
              },
              {
                text: 'confirm',
                color: '#000000'
              }
            ],
          })
            .then(data => {
              console.info('showDialog success, click button: ' + data.index);
            })
            .catch((err: Error) => {
              console.info('showDialog error: ' + err);
            })
        }).backgroundColor(0x317aff).key('UIComponentPopupBoxPopupInterface002_button_001')
    }.width('100%').margin({ top: 5 })
  }
}
