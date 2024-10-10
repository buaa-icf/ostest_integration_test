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
import { prompt, SelectOptions } from '@kit.ArkUI';


@Entry
@Component
struct ComponentTextRicheditorLongPresstoselectall0004 {
  controller: RichEditorController = new RichEditorController();
  options: RichEditorOptions = { controller: this.controller };

  build() {
    Row() {
      Column() {
        RichEditor(this.options)
          .onReady(() => {
            this.controller.addImageSpan(("cat.jpg"),
              {
                imageStyle:
                {
                  size: ["57px", "57px"]
                },
                gesture: {
                  onLongPress: (event) => {
                    let options: SelectionOptions = {
                      menuPolicy: MenuPolicy.SHOW
                    }
                    this.controller.setSelection(1, 2, options)
                  }
                }
              });
          })
          .id('ComponentTextRicheditorLongPresstoselectall0004')
        Button('')
          .id('select')
          .margin(15)
          .backgroundColor(Color.Transparent)
          .onClick(() => {
            let options: SelectionOptions = {
              menuPolicy: MenuPolicy.SHOW
            };
            this.controller.setSelection(1, 2, options);
          })
      }
      .width('100%')
      .height('100%')
    }
  }
}