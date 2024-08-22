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
struct ComponentAttributeStringModifyingStyleText005 {
  @State message: string = '这是一段测试文字'
  @State messageContent: string = "mutableStyledString1 content "
  @State messageLength: string = "mutableStyledString1 length "
  @State messageStyledStringKey: string = "mutableStyledString1 StyledStringKey "
  @State TestSwitch: number = 450;
  mutableStyledString1: MutableStyledString = new MutableStyledString('这是一段测试文字',
    [{start:0, length:8, styledKey:StyledStringKey.FONT, styledValue: new TextStyle({fontColor:Color.Blue})}]);


  controller1: TextController = new TextController();

  build() {
    Row() {
      Column() {
        Text(undefined, { controller: this.controller1 })
          .onAreaChange(() => {
            if(this.TestSwitch == 450){
              this.controller1.setStyledString(this.mutableStyledString1)
              this.mutableStyledString1.appendStyledString(new StyledString('文本输入',
                [{styledKey:StyledStringKey.FONT, styledValue: new TextStyle({fontColor:Color.Green})}]))
              let attachment1 = this.mutableStyledString1.getStyles(0,12,StyledStringKey.FONT)[0].styledValue as TextStyle
              let attachment2 = this.mutableStyledString1.getStyles(0,12,StyledStringKey.FONT)[1].styledValue as TextStyle
              this.messageContent += this.mutableStyledString1.getString()
              this.messageLength += this.mutableStyledString1.length
              this.messageStyledStringKey = this.messageStyledStringKey + " start " + this.mutableStyledString1.getStyles(0,12,StyledStringKey.FONT)[0].start + "\n" +
                "length " + this.mutableStyledString1.getStyles(0,12,StyledStringKey.FONT)[0].length  + "\n" + "styledKey " + this.mutableStyledString1.getStyles(0,12,StyledStringKey.FONT)[0].styledKey + "\n" +
                "styledValue " + attachment1.fontColor + "\n" + this.messageStyledStringKey + " start " + this.mutableStyledString1.getStyles(0,12,StyledStringKey.FONT)[1].start + "\n" +
                "length " + this.mutableStyledString1.getStyles(0,12,StyledStringKey.FONT)[1].length + "\n" + "styledKey " + this.mutableStyledString1.getStyles(0,12,StyledStringKey.FONT)[1].styledKey + "\n" +
                "styledValue " + attachment2.fontColor
              this.TestSwitch = 500
            }
          })
          .fontSize(20)
          .fontColor(Color.Blue)
          .margin({ top: 20 })

        Text(this.messageContent).fontSize(10)
        Text(this.messageLength).fontSize(10)
        Text(this.messageStyledStringKey).fontSize(10)
      }
      .width('100%')
      .height('100%')
    }
  }
}