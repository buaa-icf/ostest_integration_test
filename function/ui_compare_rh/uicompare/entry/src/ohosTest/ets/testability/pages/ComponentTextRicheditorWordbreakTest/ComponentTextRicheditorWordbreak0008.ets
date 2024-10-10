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
struct ComponentTextRicheditorWordbreak0008 {
  controller: RichEditorController = new RichEditorController();
  options: RichEditorOptions = { controller: this.controller };

  build() {
    Row() {
      Column() {
        RichEditor(this.options)
          .onReady(() => {
            this.controller.addTextSpan('test    wordbreak', {
              style: {
                fontStyle: FontStyle.Normal,
                fontColor: Color.Black,
                fontSize: 15,
              },
              paragraphStyle:{
                wordBreak:WordBreak.BREAK_ALL
              }
            })
            this.controller.addTextSpan('中国人あなたのことが好きです사랑해',
              {
                style: {
                  fontStyle: FontStyle.Normal,
                  fontColor: Color.Black,
                  fontSize: 15,
                },
                paragraphStyle:{
                  wordBreak:WordBreak.BREAK_ALL
                }
              })

            this.controller.addTextSpan('\uD83D\uDE00',
              {
                style: {
                  fontStyle: FontStyle.Normal,
                  fontColor: Color.Black,
                  fontSize: 15,
                },
                paragraphStyle:{
                  wordBreak:WordBreak.BREAK_ALL
                }
              })
            this.controller.addTextSpan('#$%&@',
              {
                style: {
                  fontStyle: FontStyle.Normal,
                  fontColor: Color.Black,
                  fontSize: 15,
                },
                paragraphStyle:{
                  wordBreak:WordBreak.BREAK_ALL
                }
              })
            this.controller.addSymbolSpan($r("sys.symbol.ohos_trash"),
              {
              })
            this.controller.addImageSpan(("cat.jpg"),
              {
                imageStyle:
                {
                  size: ["57px", "57px"]
                }
              })
          })
          .id('ComponentTextRicheditorWordbreak0008')
      }
      .width('100%')
      .height('100%')
    }
  }
}