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
struct ComponentTextRicheditorPlaceholder00104 {
  controller: RichEditorController = new RichEditorController();
  options: RichEditorOptions = { controller: this.controller };
  @State richSize : number = 10;

  build() {
    Row() {
      Column() {
        RichEditor(this.options)
          .placeholder('这是提示文本', {
            font:{
              size:this.richSize
            }
          })
          .borderWidth(1)
          .borderColor(Color.Red)
          .id('ComponentTextRicheditorPlaceholder00104')
          .width(100)
          .height(40)
        Button('changeFeature')
          .id('changeFeature')
          .margin(20)
          .width(100)
          .height(20)
          .onClick(()=>{
            this.richSize = 30;
          })
      }
      .width('100%')
      .height('100%')
    }
  }
}