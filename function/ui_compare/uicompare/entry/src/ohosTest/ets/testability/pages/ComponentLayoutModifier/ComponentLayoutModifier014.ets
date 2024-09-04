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
import { GridColModifier } from '@ohos.arkui.modifier'

class MyGridColModifier implements AttributeModifier<GridColModifier> {
  SwitchFlag: boolean = false

  applyNormalAttribute(instance: GridColModifier): void {
    if(this.SwitchFlag){
      instance.span({xs: 3})
    }else {
      instance.gridColOffset(1)
      instance.span({xs: 2})
    }
  }
}


@Entry
@Component
struct ComponentLayoutModifier014 {
  @State modifier: MyGridColModifier = new MyGridColModifier()

  @State SwitchNumber: number = 450
  @State SpanNumber: number = 1

  @State bgColors: Color[] = [Color.Red, Color.Blue, Color.Pink, Color.Orange, Color.Green, Color.Gray]
  @State currentBp: string = 'unknown'

  build() {
    Column() {
      GridRow({columns: 6, breakpoints: { value: ["400vp", "600vp", "800vp"], reference: BreakpointsReference.WindowSize }})
      {
        ForEach(this.bgColors, (color: Color) => {
          GridCol() {
            Row().width("100%").height("20vp")
          }.borderColor(color).borderWidth(2)
          .attributeModifier(this.modifier)
        })
      }.width("100%").height("100%")
      .onBreakpointChange((breakpoint) => {
        this.currentBp = breakpoint
      })

      Row() {
        Button('GridColModifier，两次设置attributeModifier').onClick(() => {
        })
      }

      Row() {
        Button('GridColModifier，混合设置').onClick(() => {
          if(this.modifier.SwitchFlag){
            this.modifier.SwitchFlag = !this.modifier.SwitchFlag
          }else {
            this.modifier.SwitchFlag = !this.modifier.SwitchFlag
          }
        })
      }
    }.width('80%').margin({ left: 10, top: 5, bottom: 5 }).height(200)
    .border({ color: '#880606', width: 2 })
  }
}

