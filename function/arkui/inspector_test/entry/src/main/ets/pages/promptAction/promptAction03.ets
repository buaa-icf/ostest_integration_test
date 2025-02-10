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
struct actionMenuExample {
  @State private title: string = "";
  @State private showInSubWindow: boolean = false;
  @State private isModal: boolean = true;

  build() {
    Scroll() {
      Column() {
        Text("promptAction.showActionMenu()")
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
          .margin({top: 5, bottom: 24})

        Text("showInSubWindow: " + this.showInSubWindow)
          .fontSize(18)
          .margin({top: 24, bottom: 5})
        Button('Switch boolean variable: showInSubWindow')
          .fontSize(20)
          .onClick(() => {
            this.showInSubWindow = !this.showInSubWindow;
          })
          .margin({top: 5, bottom: 24})

        Text("isModal: " + this.isModal)
          .fontSize(18)
          .margin({top: 24, bottom: 5})
        Button('Switch boolean variable: isModal')
          .fontSize(20)
          .onClick(() => {
            this.isModal = !this.isModal;
          })
          .margin({top: 5, bottom: 24})

        Text("Show ActionMenu01 with 1 button")
          .fontSize(18)
          .margin({top: 24})
        Button('Show ActionMenu01')
          .fontSize(20)
          .margin({bottom: 20})
          .onClick(() => {
            try {
              promptAction.showActionMenu({
                title: this.title,
                showInSubWindow: this.showInSubWindow,
                isModal: this.isModal,
                buttons: [
                  {
                    text: 'item1',
                    color: '#666666'
                  },
                ]
              }, (err, data) => {
                if (err) {
                  console.info('showActionMenu err: ' + err);
                  return;
                }
                console.info('showActionMenu success callback, click button: ' + data.index);
              })
            } catch (error) {
              let message = (error as BusinessError).message
              let code = (error as BusinessError).code
              console.error(`showActionMenu args error code is ${code}, message is ${message}`);
            };
          })

        Text("Show ActionMenu02 with 2 buttons")
          .fontSize(18)
          .margin({top: 24})
        Button('Show ActionMenu02')
          .fontSize(20)
          .margin({bottom: 20})
          .onClick(() => {
            try {
              promptAction.showActionMenu({
                title: this.title,
                showInSubWindow: this.showInSubWindow,
                isModal: this.isModal,
                buttons: [
                  {
                    text: 'item1',
                    color: '#666666'
                  },
                  {
                    text: 'item2',
                    color: '#666666'
                  },
                ]
              }, (err, data) => {
                if (err) {
                  console.info('showActionMenu err: ' + err);
                  return;
                }
                console.info('showActionMenu success callback, click button: ' + data.index);
              })
            } catch (error) {
              let message = (error as BusinessError).message
              let code = (error as BusinessError).code
              console.error(`showActionMenu args error code is ${code}, message is ${message}`);
            };
          })

        Text("Show ActionMenu03 with 3 buttons")
          .fontSize(18)
          .margin({top: 24})
        Button('Show ActionMenu03')
          .fontSize(20)
          .margin({bottom: 20})
          .onClick(() => {
            try {
              promptAction.showActionMenu({
                title: this.title,
                showInSubWindow: this.showInSubWindow,
                isModal: this.isModal,
                buttons: [
                  {
                    text: 'item1',
                    color: '#666666'
                  },
                  {
                    text: 'item2',
                    color: '#666666'
                  },
                  {
                    text: 'item3',
                    color: '#666666'
                  },
                ]
              }, (err, data) => {
                if (err) {
                  console.info('showActionMenu err: ' + err);
                  return;
                }
                console.info('showActionMenu success callback, click button: ' + data.index);
              })
            } catch (error) {
              let message = (error as BusinessError).message
              let code = (error as BusinessError).code
              console.error(`showActionMenu args error code is ${code}, message is ${message}`);
            };
          })

        Text("Show ActionMenu04 with 4 buttons")
          .fontSize(18)
          .margin({top: 24})
        Button('Show ActionMenu04')
          .fontSize(20)
          .margin({bottom: 20})
          .onClick(() => {
            try {
              promptAction.showActionMenu({
                title: this.title,
                showInSubWindow: this.showInSubWindow,
                isModal: this.isModal,
                buttons: [
                  {
                    text: 'item1',
                    color: '#666666'
                  },
                  {
                    text: 'item2',
                    color: '#666666'
                  },
                  {
                    text: 'item3',
                    color: '#666666'
                  },
                  {
                    text: 'item4',
                    color: '#666666'
                  },
                ]
              }, (err, data) => {
                if (err) {
                  console.info('showActionMenu err: ' + err);
                  return;
                }
                console.info('showActionMenu success callback, click button: ' + data.index);
              })
            } catch (error) {
              let message = (error as BusinessError).message
              let code = (error as BusinessError).code
              console.error(`showActionMenu args error code is ${code}, message is ${message}`);
            };
          })

        Text("Show ActionMenu05 with 5 buttons")
          .fontSize(18)
          .margin({top: 24})
        Button('Show ActionMenu05')
          .fontSize(20)
          .margin({bottom: 20})
          .onClick(() => {
            try {
              promptAction.showActionMenu({
                title: this.title,
                showInSubWindow: this.showInSubWindow,
                isModal: this.isModal,
                buttons: [
                  {
                    text: 'item1',
                    color: '#666666'
                  },
                  {
                    text: 'item2',
                    color: '#666666'
                  },
                  {
                    text: 'item3',
                    color: '#666666'
                  },
                  {
                    text: 'item4',
                    color: '#666666'
                  },
                  {
                    text: 'item5',
                    color: '#666666'
                  },
                ]
              }, (err, data) => {
                if (err) {
                  console.info('showActionMenu err: ' + err);
                  return;
                }
                console.info('showActionMenu success callback, click button: ' + data.index);
              })
            } catch (error) {
              let message = (error as BusinessError).message
              let code = (error as BusinessError).code
              console.error(`showActionMenu args error code is ${code}, message is ${message}`);
            };
          })

        Text("Show ActionMenu06 with 6 buttons")
          .fontSize(18)
          .margin({top: 24})
        Button('Show ActionMenu06')
          .fontSize(20)
          .margin({bottom: 20})
          .onClick(() => {
            try {
              promptAction.showActionMenu({
                title: this.title,
                showInSubWindow: this.showInSubWindow,
                isModal: this.isModal,
                buttons: [
                  {
                    text: 'item1',
                    color: '#666666'
                  },
                  {
                    text: 'item2',
                    color: '#666666'
                  },
                  {
                    text: 'item3',
                    color: '#666666'
                  },
                  {
                    text: 'item4',
                    color: '#666666'
                  },
                  {
                    text: 'item5',
                    color: '#666666'
                  },
                  {
                    text: 'item6',
                    color: '#666666'
                  },
                ]
              }, (err, data) => {
                if (err) {
                  console.info('showActionMenu err: ' + err);
                  return;
                }
                console.info('showActionMenu success callback, click button: ' + data.index);
              })
            } catch (error) {
              let message = (error as BusinessError).message
              let code = (error as BusinessError).code
              console.error(`showActionMenu args error code is ${code}, message is ${message}`);
            };
          })

      }.width('100%')
    }.height('100%')
  }
}

