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
struct ComponentTextRicheditorPlaceholder0095 {
  controller: RichEditorController = new RichEditorController();
  options: RichEditorOptions = { controller: this.controller };
  @State tips: string = '这是提示';

  setOrientation() {
    try {
      window.getLastWindow(getContext(this), (err, data) => { // 获取window实例
        if (err.code) {
          return;
        }
        let windowClass = data;

        let orientation = window.Orientation.LANDSCAPE; // 设置窗口方向为传感器自动旋转模式。
        try {
          windowClass.setPreferredOrientation(orientation, (err) => {
            if (err.code) {
              return;
            }
          });
        } catch (exception) {
        }
        ;
      });
    } catch (exception) {
    }
    ;
  }

  build() {
    Row() {
      Column() {
        RichEditor(this.options)
          .placeholder(this.tips, {})
          .borderWidth(1)
          .borderColor(Color.Red)
          .id('ComponentTextRicheditorPlaceholder0095')
          .width('50%')
          .height('10%')
        Button('setContent')
          .id('setContent')
          .width(100)
          .height(30)
          .onClick(() => {
            this.tips = 'zhognguoahjdoha dnao oadjiafnofofnoasdfofaonafsnfudsfofdccvc v vccv mdfsj';
            this.setOrientation();
          })
      }
      .width('100%')
      .height('100%')
    }
  }
}