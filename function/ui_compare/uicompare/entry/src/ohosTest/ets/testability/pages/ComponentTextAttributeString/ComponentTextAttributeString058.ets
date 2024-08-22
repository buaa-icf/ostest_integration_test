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
struct ComponentTextAttributeString058 {
  @State message: string = '这是一段测试文字'
  @State TestSwitch: number = 450
  fontStyleAttr1: StyledStringValue = new TextStyle({ fontSize: new LengthMetrics(20), fontStyle: FontStyle.Italic, fontWeight:FontWeight.Bolder, fontColor: Color.Red ,});
  mutableStyledString1: MutableStyledString = new MutableStyledString("这是属性字符串文本",
    [{start:2, length:7,styledKey:StyledStringKey.FONT,styledValue: this.fontStyleAttr1},
      {start:2, length:7,styledKey: StyledStringKey.BASELINE_OFFSET,styledValue: new BaselineOffsetStyle(new LengthMetrics(10))},
      {start:2, length:7,styledKey: StyledStringKey.DECORATION,styledValue: new DecorationStyle({ type: TextDecorationType.LineThrough, color: Color.Red })},
      {start:2, length:7,styledKey: StyledStringKey.LETTER_SPACING,styledValue: new LetterSpacingStyle(new LengthMetrics(10))},
      {start:2, length:7,styledKey: StyledStringKey.TEXT_SHADOW, styledValue: new TextShadowStyle([{radius: 0, color: Color.Blue, offsetX: 10, offsetY: 10, fill: true }, { radius: 15, color:Color.Green, offsetX: 0, offsetY: 0, fill: true }])
      }])

  controller1: TextController = new TextController();

  build() {
    Row() {
      Column() {
        Text(undefined, { controller: this.controller1 })
          .key('mutableStyledString8')
          .onAreaChange(() => {
            if(this.TestSwitch == 450){
              this.controller1.setStyledString(this.mutableStyledString1)
              this.TestSwitch = 500
            }
          })
          .copyOption(CopyOptions.InApp)
      }
      .width('100%')
      .height('100%')
    }
  }
}