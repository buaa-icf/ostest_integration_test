/*
 * Copyright (c) 2024 Shenzhen Kaihong Digital Industry Development Co., Ltd.
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
import { LengthMetrics, LengthUnit } from '@ohos.arkui.node';

@Entry
@Component
struct UiTextShadow012 {
  @State message: string = '这是一段测试文字'
  mutableStyledString1: MutableStyledString = new MutableStyledString("这是一段测试文字",
    [{start:0, length:8, styledKey: StyledStringKey.FONT, styledValue: new TextStyle({fontSize:new LengthMetrics(40, LengthUnit.PX)})}]);

  controller1: TextController = new TextController();

  build() {
    Row() {
      Column() {
        Text(undefined, { controller: this.controller1 })
          .onAreaChange(() => {
            this.controller1.setStyledString(this.mutableStyledString1)
          })
          .fontStyle(FontStyle.Italic)
          .textShadow([{ radius: 0, color: Color.Red, offsetX: -10, offsetY: -10 },
            { radius: 3, color: Color.Blue, offsetX: 10, offsetY: 10 },
            { radius: 8, color: Color.Green, offsetX: -10, offsetY: 10 },
            { radius: 10, color: Color.Black, offsetX: 10, offsetY: -10 }])
          .margin({ top: 20 })
      }
      .width('100%')
      .height('100%')
    }
  }
}