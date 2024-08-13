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
struct ComponentTextAttributeStringConstructs021 {
  @State message: string = '这是一段测试文字'
  StyledString1: StyledString = new StyledString('这是一段测试文字这是一段测试文字这是一段测试文字这是一段测试文字这是一段测试文字这是一段测试文字这是一段测试文字这是一段测试文字这是一段测试文字',
    [{start:0, length:8, styledKey:StyledStringKey.FONT, styledValue: new TextStyle({fontColor:Color.Blue})},
      {start:9, length:8,styledKey: StyledStringKey.BASELINE_OFFSET,styledValue: new BaselineOffsetStyle(new LengthMetrics(10))},
      {start:18, length:8,styledKey: StyledStringKey.DECORATION,styledValue: new DecorationStyle({ type: TextDecorationType.LineThrough, color: Color.Red })},
      {start:26, length:8,styledKey: StyledStringKey.LETTER_SPACING,styledValue: new LetterSpacingStyle(new LengthMetrics(10))},
      {start:34, length:8,styledKey: StyledStringKey.TEXT_SHADOW, styledValue: new TextShadowStyle([{radius: 0, color: Color.Blue, offsetX: 10, offsetY: 10, fill: true }, { radius: 15, color:Color.Green, offsetX: 0, offsetY: 0, fill: true }])
      }]);

  controller1: TextController = new TextController();

  build() {
    Row() {
      Column() {
        Text(undefined, { controller: this.controller1 })
          .onAreaChange(() => {
            this.controller1.setStyledString(this.StyledString1)
          })
          .fontSize(20)
          .fontColor(Color.Red)
          .margin({ top: 20 })
      }
      .width('100%')
      .height('100%')
    }
  }
}