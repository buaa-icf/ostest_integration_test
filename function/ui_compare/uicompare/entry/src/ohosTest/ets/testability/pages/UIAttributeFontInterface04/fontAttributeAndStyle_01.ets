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

import { BlankModifier } from "@ohos.arkui.modifier";

class MyBlankModifier extends BlankModifier {
  applyBlankAttribute(instance: BlankAttribute): void {
    super.applyNormalAttribute?.(instance);
  }

  onChange() {
    this.color("#FF654321")
  }
}

@Entry
@Component
struct BlankExample {
  @State myBlankModifier: BlankModifier = new MyBlankModifier()
  // @State customModifier: BlankModifier = new CustomModifier()
  //   .color("#FF123456")

  build() {
    Column({ space: 5 }) {
      Button("change value").onClick(() => {
        (this.myBlankModifier as MyBlankModifier).onChange();
      }).key("changeButton")

      Column() {
        Blank("160")
          .attributeModifier(this.myBlankModifier as MyBlankModifier)
          .key('blank')
        Toggle({ type: ToggleType.Switch }).margin({ top: 14, bottom: 14, left: 6, right: 6 })
      }.backgroundColor(Color.Gray).padding(20)
    }
    .width('100%')
    .margin({ top: 5 })
  }
}