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

import { promptAction } from '@kit.ArkUI';
import { BusinessError } from '@kit.BasicServicesKit';

@Entry
@Component
struct dialogExample {
  @State private title: string = "";
  @State private message: string = "";

  build() {
    Scroll() {
      Column() {
        Text("promptAction.showDialog()")
          .fontSize(18)
          .margin({top: 24, bottom: 24})

        Text("title: " + this.title)
          .fontSize(18)
          .margin({top: 24, bottom: 5})
        Button('Switch whether title exists')
          .fontSize(20)
          .onClick(() => {
            if (this.title == "") {
              this.title = "Title Info";
            } else {
              this.title = "";
            }
          })
          .margin({top: 5, bottom: 5})

        Text("message: " + this.message)
          .fontSize(18)
          .margin({top: 5, bottom: 5})
        Button('Switch whether message exists')
          .fontSize(20)
          .onClick(() => {
            if (this.message == "") {
              this.message = "Message Info";
            } else {
              this.message = "";
            }
          })
          .margin({top: 5, bottom: 24})

        Text("Show dialog01 without buttons")
          .fontSize(18)
          .margin({top: 24})
        Button('Show dialog01')
          .fontSize(20)
          .margin({bottom: 20})
          .onClick(() => {
            try {
              promptAction.showDialog({
                title: this.title,
                message: this.message,
              })
                .then(data => {
                  console.info('showDialog success, click button: ' + data.index);
                })
                .catch((err:Error) => {
                  console.info('showDialog error: ' + err);
                })
            } catch (error) {
              let message = (error as BusinessError).message
              let code = (error as BusinessError).code
              console.error(`showDialog args error code is ${code}, message is ${message}`);
            };
          })

        Text("Show dialog02 with 1 button")
          .fontSize(18)
          .margin({top: 24})
        Button('Show dialog02')
          .fontSize(20)
          .margin({bottom: 20})
          .onClick(() => {
            try {
              promptAction.showDialog({
                title: this.title,
                message: this.message,
                buttons: [
                  {
                    text: 'button1',
                    color: '#000000'
                  },
                ],
              })
                .then(data => {
                  console.info('showDialog success, click button: ' + data.index);
                })
                .catch((err:Error) => {
                  console.info('showDialog error: ' + err);
                })
            } catch (error) {
              let message = (error as BusinessError).message
              let code = (error as BusinessError).code
              console.error(`showDialog args error code is ${code}, message is ${message}`);
            };
          })

        Text("Show dialog03 with 2 buttons")
          .fontSize(18)
          .margin({top: 24})
        Button('Show dialog03')
          .fontSize(20)
          .margin({bottom: 20})
          .onClick(() => {
            try {
              promptAction.showDialog({
                title: this.title,
                message: this.message,
                buttons: [
                  {
                    text: 'button1',
                    color: '#000000'
                  },
                  {
                    text: 'button2',
                    color: '#000000'
                  },
                ],
              })
                .then(data => {
                  console.info('showDialog success, click button: ' + data.index);
                })
                .catch((err:Error) => {
                  console.info('showDialog error: ' + err);
                })
            } catch (error) {
              let message = (error as BusinessError).message
              let code = (error as BusinessError).code
              console.error(`showDialog args error code is ${code}, message is ${message}`);
            };
          })

        Text("Show dialog04 with 3 buttons")
          .fontSize(18)
          .margin({top: 24})
        Button('Show dialog04')
          .fontSize(20)
          .margin({bottom: 20})
          .onClick(() => {
            try {
              promptAction.showDialog({
                title: this.title,
                message: this.message,
                buttons: [
                  {
                    text: 'button1',
                    color: '#000000'
                  },
                  {
                    text: 'button2',
                    color: '#000000'
                  },
                  {
                    text: 'button3',
                    color: '#000000'
                  },
                ],
              })
                .then(data => {
                  console.info('showDialog success, click button: ' + data.index);
                })
                .catch((err:Error) => {
                  console.info('showDialog error: ' + err);
                })
            } catch (error) {
              let message = (error as BusinessError).message
              let code = (error as BusinessError).code
              console.error(`showDialog args error code is ${code}, message is ${message}`);
            };
          })

        Text("Show dialog05 with 4 buttons")
          .fontSize(18)
          .margin({top: 24})
        Button('Show dialog05')
          .fontSize(20)
          .margin({bottom: 20})
          .onClick(() => {
            try {
              promptAction.showDialog({
                title: this.title,
                message: this.message,
                alignment: DialogAlignment.Top,
                offset: {dx: 5, dy: 5},
                isModal: false,
                backgroundColor: Color.Orange,
                backgroundBlurStyle: BlurStyle.NONE,
                buttons: [
                  {
                    text: 'button1',
                    color: '#000000'
                  },
                  {
                    text: 'button2',
                    color: '#000000'
                  },
                  {
                    text: 'button3',
                    color: '#000000'
                  },
                  {
                    text: 'button4',
                    color: '#000000'
                  },
                ],
              })
                .then(data => {
                  console.info('showDialog success, click button: ' + data.index);
                })
                .catch((err:Error) => {
                  console.info('showDialog error: ' + err);
                })
            } catch (error) {
              let message = (error as BusinessError).message
              let code = (error as BusinessError).code
              console.error(`showDialog args error code is ${code}, message is ${message}`);
            };
          })

      }.width('100%')
    }.height('100%')
  }
}

