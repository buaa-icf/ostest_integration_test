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
import matrix4 from '@ohos.matrix4';
let  matrix1= matrix4.init([1.0, 0.0, 0.0, 0.0,
  0.0, 1.0, 0.0, 0.0,
  0.0, 0.0, 1.0, 0.0,
  0.0, 0.0, 0.0, 1.0])
let matrix2= matrix1.copy().translate({ x: 50, y: 50 }).scale({ x: 1.5, y: 1 }).rotate({
  x: 0,
  y: 0,
  z: 1,
  angle: 60
})
let mars=[matrix1,matrix2]
@Entry
@Component
struct UIComponentTextCommonAffingTran0240 {
  @State result: number = 0;
  @State m: number = 0;
  @State n: number = 0;
  @State texts: string = '';
  controller0: TextInputController = new TextInputController()
  controller1: TextAreaController = new TextAreaController()
  controller2: SearchController = new SearchController()
  build() {
    Column() {
      TextInput({
        text: this.texts,
        placeholder: '这里是提示文本',
        controller:this.controller0})
        .placeholderColor(0x008000)
        .width(100)
        .width('50%')
        .height(95)
        .height(75)
        .margin(20)
        .fontSize(18)
        .fontColor(Color.Black)
        .transform(mars[this.result])
        .id('TextCommonAffing0240')
      TextArea({
        text: this.texts,
        controller: this.controller1
      })
        .width('50%')
        .height(95)
        .fontSize(20)
        .fontColor('#ff338cef')
        .fontStyle(FontStyle.Normal)
        .fontWeight(100)
        .backgroundColor('#ffece6e6')
        .transform(mars[this.m])
        .caretColor('#ff338cef')
        .onChange((value: string) => {
          this.texts = value
        })
        .id('TextArea0240')
      Search({ placeholder: this.texts, controller: this.controller2 })
        .width('50%')
        .height(95)
        .fontColor('#ffc0d3e9')
        .transform(mars[this.n])
        .backgroundColor('#ffecc3c3')
        .onChange((value: string) => {
          this.texts = value
        })
        .id('searchAffing0240')
    Row()
     { Button('transform')
        .onClick(()=>{
        this.result+=1
        })
        .id('transform0240')
      Button('transform')
        .onClick(()=>{
          this.m+=1
        })
        .id('transform0240-1')
      Button('transform')
        .onClick(()=>{
          this.n+=1
        })
        .id('transform0240-2')}
    }
  }
}
