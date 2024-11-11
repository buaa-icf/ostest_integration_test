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
struct ComponentTextRicheditorShortKcutKeys0210 {
  controller: RichEditorController = new RichEditorController();
  options: RichEditorOptions = { controller: this.controller };
  controller1: RichEditorController = new RichEditorController();
  options1: RichEditorOptions = { controller: this.controller1 };

  build() {
    Row() {
      Column() {
        Button('select')
          .id('select')
          .width(100)
          .height(40)
          .onClick(()=>{
            this.controller.setSelection(-1,1);
          })
        Button('select1')
          .id('select1')
          .width(100)
          .height(40)
          .onClick(()=>{
            this.controller.setSelection(-1,-1);
          })
        RichEditor(this.options)
          .borderWidth(2)
          .borderColor(Color.Blue)
          .width('100%')
          .height('30%')
          .onReady(() => {
            this.controller.addImageSpan(('cat.jpg'),
              {
                imageStyle:
                {
                  size: ["57px", "57px"]
                }
              });
            this.controller.addTextSpan('我是中国人', {
            });
          })
          .id('ComponentTextRicheditorShortKcutKeys0210')

        RichEditor(this.options1)
          .width('100%')
          .height('50%')
          .borderWidth(2)
          .borderColor(Color.Red)
          .margin({top:20})
          .onReady(() => {
          })
          .id('ComponentTextRicheditorShortKcutKeys0210_01')
          .onPaste(() => {
           this.controller1.stopEditing();
          })
      }
      .width('100%')
      .height('100%')
    }
  }
}