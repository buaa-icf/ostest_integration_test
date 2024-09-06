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
import { BlankModifier, CommonModifier} from '@ohos.arkui.modifier';
class MyBlankModifier extends BlankModifier {
  applyNormalAttribute(instance: MyBlankModifier): void {
    instance.color(Color.Yellow)
  }
}
@Entry
@Component
struct UITestCase040 {
  @State result: number = 0
  @State color1: ResourceColor = Color.Green;
  @State myBlankModifier: CommonModifier = new MyBlankModifier().color(this.color1)
  build() {
    Row() {
     Text('hello')
       .fontSize(25)
      Blank()
        .color(Color.Yellow)
        .attributeModifier(this.myBlankModifier as MyBlankModifier)
      Toggle({ type: ToggleType.Switch })
    }.backgroundColor(0xFFFFFF)
    .borderRadius(15)
    .padding({ left: 12 })
    .width('100%')
  }
}