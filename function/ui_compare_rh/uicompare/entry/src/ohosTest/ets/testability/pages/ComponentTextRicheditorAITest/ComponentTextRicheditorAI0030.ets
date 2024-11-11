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
struct ComponentTextRicheditorAI0030 {
  controller: RichEditorController = new RichEditorController();
  options: RichEditorOptions = { controller: this.controller };
  @State phoneNumber: string = '029-49781104';
  @State url: string = 'www.baidu.com';
  @State email: string = '***@example.com';
  @State address: string = 'XX省XX市XX区XXXX';
  @State enableDataDetector: boolean = false;
  @State types: TextDataDetectorType[] = [TextDataDetectorType.PHONE_NUMBER,TextDataDetectorType.URL,TextDataDetectorType.EMAIL,TextDataDetectorType.ADDRESS];

  build() {
    Row() {
      Column() {
        Button('open')
          .id('open')
          .width(100)
          .height(50)
          .onClick(() => {
            this.enableDataDetector = true;
          })
        Button('close')
          .id('close')
          .width(100)
          .height(50)
          .onClick(() => {
            this.enableDataDetector = false;
          })
        RichEditor(this.options)
          .onReady(() => {
            this.controller.addTextSpan('URL：' + this.url + '\n',
              {
                style:
                {
                  fontSize: 30
                }
              });
            this.controller.addTextSpan('电话号码：' + this.phoneNumber + '\n',
              {
                style:
                {
                  fontSize: 30
                }
              });
            this.controller.addTextSpan('邮箱：' + this.email + '\n',
              {
                style:
                {
                  fontSize: 30
                }
              });
            this.controller.addTextSpan('地址：' + this.address,
              {
                style:
                {
                  fontSize: 30
                }
              });
          })
          .id('ComponentTextRicheditorAI0030')
          .enableDataDetector(this.enableDataDetector)
      }
      .width('100%')
      .height('100%')
    }
  }
}