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


@Entry
@Component
struct ComponentAttributeStringModifyingText010 {
  @State message: string = '这是一段测试文字'
  @State TestSwitch: number = 450;
  @State messageFontColor: string = "mutableStyledString1 fontColor "
  mutableStyledString1: MutableStyledString = new MutableStyledString('这是一段测试文字',
    [{start:0, length:8, styledKey:StyledStringKey.FONT,  styledValue: new TextStyle({fontColor:Color.Blue})}]);

  controller1: TextController = new TextController();

  build() {
    Row() {
      Column() {
        Text(undefined, { controller: this.controller1 })
          .onAreaChange(() => {
            if(this.TestSwitch == 450){
              this.controller1.setStyledString(this.mutableStyledString1)
              let styles = this.mutableStyledString1.getStyles(0, this.mutableStyledString1.length)
              let fontAttr = styles[0].styledValue as TextStyle;
              console.info('mutableStyledString1 fontColor:' + fontAttr.fontColor)
              this.messageFontColor += fontAttr.fontColor
              this.TestSwitch = 500
            }
          })
          .fontSize(20)
          .fontColor(Color.Blue)
          .margin({ top: 20 })

        Text(this.messageFontColor).fontSize(10)
      }
      .width('100%')
      .height('100%')
    }
  }
}