/**
 * Copyright (c) 2024 Shenzhen Kaihong Digital Industry Development Co., Ltd.
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
import router from '@ohos.router';
function onJumpClick(): void {
  router.pushUrl({
    url:  "testability/pages/UiComponentTextTextareaInterface/UiComponentTextTextareaInterface750",
  }, router.RouterMode.Standard, (err) => {
    if (err) {
      console.error(`Invoke pushUrl failed, code is ${err.code}, message is ${err.message}`);
      return;
    }
    console.info('Invoke pushUrl succeeded.');
  });
}
@Entry
@Component
struct UiComponentTextTextareaInterface076{
  @State inputtext: string = '0123456789'
  controller: TextAreaController = new TextAreaController()
  build() {
    Column() {
      TextArea({
        text: this.inputtext,
        controller: this.controller
      })
        .width(300)
        .height(100)
        .margin(30)
        .maxLength(20)
        .fontSize('abc')
        .maxLength(40)
        .showCounter(true)
        .copyOption(CopyOptions.LocalDevice)
        .fontColor('#ff338cef')
        .caretColor('#ff338cef')
        .defaultFocus(true)
        .id('textArea760')
      TextArea({
        text: '',
        controller: this.controller
      })
        .width(300)
        .height(100)
        .margin(30)
        .maxLength(20)
        .fontSize('abc')
        .maxLength(40)
        .showCounter(true)
        .fontColor('#ff338cef')
        .caretColor('#ff338cef')
      Button('jump')
        .onClick(()=>{
          onJumpClick()
        })
        .id('jump0760')
    }.width('100%').height('100%')
  }
}