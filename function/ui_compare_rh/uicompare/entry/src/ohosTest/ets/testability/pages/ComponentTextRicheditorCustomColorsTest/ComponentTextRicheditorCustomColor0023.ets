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
import { window } from '@kit.ArkUI';


@Entry
@Component
struct ComponentTextRicheditorCustomColor0023 {
  controller: RichEditorController = new RichEditorController();
  options: RichEditorOptions = { controller: this.controller };
  build() {
    Row() {
      Column() {
        RichEditor(this.options)
          .onReady(() => {
            this.controller.addTextSpan('',
              {
                style: {
                  fontStyle: FontStyle.Normal,
                  fontColor: Color.Black,
                  fontSize: 15,
                }
              })
          })
          .id('ComponentTextRicheditorCustomColor0023')
          .caretColor(Color.Red)  //光标颜色
          .selectedBackgroundColor(Color.Red)  //选中背景色
        Button('', {
          buttonStyle: ButtonStyleMode.NORMAL
        })
          .id('set select')
          .height(30)
          .fontSize(13)
          .onClick(() => {
            this.controller.setSelection( -1,-1);
            this.controller.updateSpanStyle({ start:-1,end:-1,
              textStyle: {

              }
            })
          })
      }
      .width('100%')
      .height('100%')
    }
  }
}