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
struct ComponentTextRicheditorPlaceholder0087{
  controller: RichEditorController = new RichEditorController();
  options: RichEditorOptions = { controller: this.controller };
  @State tips: string = 'input';
  build() {
    Row() {
      Column() {
        RichEditor(this.options)
          .placeholder(this.tips, {})
          .borderWidth(1)
          .borderColor(Color.Red)
          .id('ComponentTextRicheditorPlaceholder0087')
          .width(100)
          .height(300)
        TextInput()
          .id('change')
          .onChange((value: string) => {
            this.tips = value;
          })
      }
      .width('100%')
      .height('100%')
    }
  }
}