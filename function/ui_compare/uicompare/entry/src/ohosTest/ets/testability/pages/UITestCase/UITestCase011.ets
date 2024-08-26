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
import { BlankModifier, CommonModifier } from '@ohos.arkui.modifier';
class MyBlankModifier extends BlankModifier {
  isDark: boolean = false
  applyNormalAttribute(instance: MyBlankModifier): void {
    if (this.isDark) {
      instance.color(undefined)
    } else {
      instance.color(Color.Yellow)
    }
  }
  public setGroup1():void{
    this.isDark=!this.isDark
  }
}
@Entry
@Component
struct UITestCase011 {
  @State result: number = 0
  @State myBlankModifier: CommonModifier = new MyBlankModifier().color(Color.Yellow)
  build() {
    Column() {
Row(){
  Text('hello world')
  Blank()
    .attributeModifier(this.myBlankModifier as MyBlankModifier)
  Text('hello harmony')
}.width('100%')
      Button('change resizeable')
        .onClick(() => {
          (this.myBlankModifier as MyBlankModifier).setGroup1()
        })
        .id('tectcase011')
    }
  }
}