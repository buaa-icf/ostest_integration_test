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

import {SearchModifier} from "@ohos.arkui.modifier"

class MyModifier extends SearchModifier {
  applyNormalAttribute(instance: SearchAttribute) : void{
    super.applyNormalAttribute?.(instance);
  }
  public setGroup0() : void {
    this.searchButton("SEARCH",
      {
        fontSize: 10,
        fontColor: Color.Pink
      })
  }
  public setGroup1() : void {
    this.searchButton("搜索",
      {
        fontSize: '20fp',
        fontColor: 0x008000
      })
  }
  public setGroup2() : void {
    this.searchButton("SEARCH",
      {
        fontSize: '30%',
        fontColor: "rgb(255,0,0)"
      })
  }
  public setGroup3() : void {
    this.searchButton("搜索",
      {
        fontSize: -1,
        fontColor: $r('app.color.blue')
      })
  }
  public setGroup4() : void {
    this.searchButton("SEARCH",
      {
        fontSize: '10abc',
        fontColor: -1
      })
  }
  public setGroup5() : void {
    this.searchButton("搜索",
      {
        fontSize: $r('app.string.size_30'),
        fontColor: null
      })
  }
}

@Component
struct MySearch {
  @Link modifier : SearchModifier
  @State changeValue: string = '测试文本'
  @State submitValue: string = ''
  controller: SearchController = new SearchController()

  build(){
    Search({ value: this.changeValue, placeholder: 'Type to search...', controller: this.controller })
      .width('95%')
      .height(40)
      .backgroundColor('#F5F5F5')
      .placeholderColor(Color.Grey)
      .placeholderFont({ size: 14, weight: 400 })
      .textFont({ size: 14, weight: 400 })
      .onSubmit((value: string) => {
        this.submitValue = value
      })
      .onChange((value: string) => {
        this.changeValue = value
      })
      .margin(20)
      .attributeModifier(this.modifier as MyModifier)
  }
}

@Entry
@Component
struct UiComponentTextModifier011 {
  @State myModifier: SearchModifier = new MyModifier().width(300).height(300).margin(10)
  @State total : number = 6;
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
            this.text = '第'+this.index % this.total
          }
          if(this.index % this.total == 1){
            (this.myModifier as MyModifier).setGroup1()
            console.log("Modifier","setGroup1")
            this.text = '第'+this.index % this.total
          }
          if(this.index % this.total == 2){
            (this.myModifier as MyModifier).setGroup2()
            console.log("Modifier","setGroup2")
            this.text = '第'+this.index % this.total
          }
          if(this.index % this.total == 3){
            (this.myModifier as MyModifier).setGroup3()
            console.log("Modifier","setGroup3")
            this.text = '第'+this.index % this.total
          }
          if(this.index % this.total == 4){
            (this.myModifier as MyModifier).setGroup4()
            console.log("Modifier","setGroup4")
            this.text = '第'+this.index % this.total
          }
          if(this.index % this.total == 5){
            (this.myModifier as MyModifier).setGroup5()
            console.log("Modifier","setGroup5")
            this.text = '第'+this.index % this.total
          }
          this.index ++;
        })
      MySearch({modifier:this.myModifier})
    }
    .width('100%')
  }
}
