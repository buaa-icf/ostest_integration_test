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

import {RichEditorModifier} from "@ohos.arkui.modifier"

class MyModifier extends RichEditorModifier {
  applyNormalAttribute(instance: RichEditorAttribute) : void{
    super.applyNormalAttribute?.(instance);
  }
  public setGroup0() : void {
    this.copyOptions(CopyOptions.None)
  }
  public setGroup1() : void {
    this.copyOptions(CopyOptions.InApp)
  }
  public setGroup2() : void {
    this.copyOptions(CopyOptions.LocalDevice)
  }
  public setGroup3() : void {
    this.copyOptions(CopyOptions.CROSS_DEVICE)
  }
}

@Component
struct MyRichEditor {
  @Link modifier : RichEditorModifier
  controller: RichEditorController = new RichEditorController();
  options: RichEditorOptions = { controller: this.controller };
  private start: number = -1;
  private end: number = -1;
  @State message: string = "[-1, -1]"
  @State content: string = ""
  build(){
    RichEditor(this.options)
      .onReady(() => {
        this.controller.addTextSpan("012345",
          {
            style:
            {
              fontColor: Color.Orange,
              fontSize: 30
            }
          })
        this.controller.addSymbolSpan($r("sys.symbol.ohos_trash"),
          {
            style:
            {
              fontSize: 30
            }
          })
        this.controller.addTextSpan("56789",
          {
            style:
            {
              fontColor: Color.Black,
              fontSize: 30
            }
          })
      })
      .onSelect((value: RichEditorSelection) => {
        this.start = value.selection[0];
        this.end = value.selection[1];
        this.message = "[" + this.start + ", " + this.end + "]"
      })
      .aboutToIMEInput((value: RichEditorInsertValue) => {
        console.log("---------------------- aboutToIMEInput ----------------------")
        console.log("insertOffset:" + value.insertOffset)
        console.log("insertValue:" + value.insertValue)
        return true;
      })
      .onIMEInputComplete((value: RichEditorTextSpanResult) => {
        console.log("---------------------- onIMEInputComplete ---------------------")
        console.log("spanIndex:" + value.spanPosition.spanIndex)
        console.log("spanRange:[" + value.spanPosition.spanRange[0] + "," + value.spanPosition.spanRange[1] + "]")
        console.log("offsetInSpan:[" + value.offsetInSpan[0] + "," + value.offsetInSpan[1] + "]")
        console.log("value:" + value.value)
      })
      .aboutToDelete((value: RichEditorDeleteValue) => {
        console.log("---------------------- aboutToDelete --------------------------")
        console.log("offset:" + value.offset)
        console.log("direction:" + value.direction)
        console.log("length:" + value.length)
        value.richEditorDeleteSpans.forEach(item => {
          console.log("---------------------- item --------------------------")
          console.log("spanIndex:" + item.spanPosition.spanIndex)
          console.log("spanRange:[" + item.spanPosition.spanRange[0] + "," + item.spanPosition.spanRange[1] + "]")
          console.log("offsetInSpan:[" + item.offsetInSpan[0] + "," + item.offsetInSpan[1] + "]")
          if (typeof(item as RichEditorImageSpanResult)['imageStyle'] != 'undefined') {
            console.log("image:" + (item as RichEditorImageSpanResult).valueResourceStr)
          } else {
            console.log("text:" + (item as RichEditorTextSpanResult).value)
          }
        })
        return true;
      })
      .onDeleteComplete(() => {
        console.log("---------------------- onDeleteComplete ------------------------")
      })
      .borderWidth(1)
      .borderColor(Color.Green)
      .width("100%")
      .height("30%")
      .attributeModifier(this.modifier as MyModifier)
  }
}

@Entry
@Component
struct UiComponentTextModifier009 {
  @State myModifier: RichEditorModifier = new MyModifier().width(300).height(300).margin(10)
  @State total : number = 4;
  @State index : number = 0;
  @State text : String = 'init';

  build() {
    Column() {
      Text((this.text).toString()).width(100).height(100)
      Button('button', { type: ButtonType.Capsule, stateEffect: true })
        .margin(10)
        .onClick(() => {
          console.log("Modifier","onClick")
          if(this.index % this.total == 0){
            (this.myModifier as MyModifier).setGroup0()
            console.log("Modifier","setGroup0")
            this.text = 'None，第'+this.index % this.total
          }
          if(this.index % this.total == 1){
            (this.myModifier as MyModifier).setGroup1()
            console.log("Modifier","setGroup1")
            this.text = 'InApp，第'+this.index % this.total
          }
          if(this.index % this.total == 2){
            (this.myModifier as MyModifier).setGroup2()
            console.log("Modifier","setGroup2")
            this.text = 'LocalDevice，第'+this.index % this.total
          }
          if(this.index % this.total == 3){
            (this.myModifier as MyModifier).setGroup3()
            console.log("Modifier","setGroup3")
            this.text = 'CROSS_DEVICE，第'+this.index % this.total
          }
          this.index ++;
        })
      MyRichEditor({modifier:this.myModifier})
    }
    .width('100%')
  }
}
