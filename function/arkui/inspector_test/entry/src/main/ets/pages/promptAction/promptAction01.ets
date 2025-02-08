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

import { promptAction } from '@kit.ArkUI'
import { BusinessError } from '@kit.BasicServicesKit';

@Entry
@Component
struct toastExample {
  build() {
    Column() {
      Text("promptAction.showToast()")
        .fontSize(18)
        .margin({top: 24, bottom: 24})

      Button('Show toast (showMode: DEFAULT)')
        .fontSize(20)
        .margin({bottom: 20})
        .onClick(() => {
          try {
            promptAction.showToast({
              message: 'Hello World',
              duration: 10000,
              showMode: promptAction.ToastShowMode.DEFAULT,
              backgroundColor: Color.Green,
              textColor: Color.Orange,
            });
          } catch (error) {
            let message = (error as BusinessError).message
            let code = (error as BusinessError).code
            console.error(`showToast args error code is ${code}, message is ${message}`);
          };
        })

      Button('Show toast (showMode: TOP_MOST)')
        .fontSize(20)
        .margin({bottom: 20})
        .onClick(() => {
          try {
            promptAction.showToast({
              message: 'Hello World',
              duration: 10000,
              showMode: promptAction.ToastShowMode.TOP_MOST,
            });
          } catch (error) {
            let message = (error as BusinessError).message
            let code = (error as BusinessError).code
            console.error(`showToast args error code is ${code}, message is ${message}`);
          };
        })

    }.height('100%').width('100%').justifyContent(FlexAlign.Center)
  }
}
