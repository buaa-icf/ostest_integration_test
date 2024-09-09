/**
 * Copyright (c) 2024 Shenzhen Kaihong Digital Industry Development Co., Ltd.
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
import measure from '@ohos.measure'
import window from "@ohos.window";
import common from '@ohos.app.ability.common';

@Entry
@Component
struct fontAttributePage177 {
  @State text: string = '1 height:'
  @State positionInfo: CaretOffset = { index: 0, x: 0, y: 0 }
  @State passwordState: boolean = false
  @State maxLine:number = 2
  controller: TextInputController = new TextInputController()

  private changeOrientation(isLandscape: boolean) {
    // 获取UIAbility实例的上下文信息
    let context:common.UIAbilityContext = getContext(this) as common.UIAbilityContext;
    // 调用该接口手动改变设备横竖屏状态
    window.getLastWindow(context).then((lastWindow) => {
      lastWindow.setPreferredOrientation(isLandscape ? window.Orientation.LANDSCAPE : window.Orientation.PORTRAIT)
    });
  }

  textSize : SizeOptions = measure.measureTextSize({
    textContent: "Hello word",
    fontSize: '50px'
  })

  build() {
    Column() {
      Text(this.text)
        .margin({top:50})
        .maxLines(this.maxLine)
        .width('220vp')
        .minFontSize(14)
        .maxFontSize(24)

      TextInput({ text: this.text, placeholder: 'input your word...', controller: this.controller })
        .placeholderColor(Color.Grey)
        .placeholderFont({ size: 14, weight: 400 })
        .caretColor(Color.Blue)
        .width('95%')
        .height(40)
        .margin(20)
        .fontSize(14)
        .fontColor(Color.Black)
        .onChange((value: string) => {
          this.text = value
        })

      Button("输入：本截断是按字截断文本截断是按字截断文本截断是按字截断文本i am本截断是按字截断文本截断是按字截断文本截断是按字截断文本")
        .id("fontAttributePage177")
        .fontSize(18)
        .onClick(()=>{
          this.changeOrientation(false)
          this.text = "本截断是按字截断文本截断是按字截断文本截断是按字截断文本i am本截断是按字截断文本截断是按字截断文本截断是按字截断文本"
        })
        .margin({top:50})
    }.width('100%').alignItems(HorizontalAlign.Center)
  }
}