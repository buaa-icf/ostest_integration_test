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
  isSpan: boolean = false
  SpanMode: number = 1
  gridColOffsetMode: number = 6

  applyNormalAttribute(instance: GridColModifier): void {
    if (this.isSpan) {
      instance.gridColOffset(undefined)
      if(this.SpanMode == 6){
        instance.span(undefined)
      }else if(this.SpanMode == 4){
        instance.span(null)
      }else{
        instance.span(this.SpanMode)
      }
    } else {
      instance.span(2)
      if(this.gridColOffsetMode == 6){
        instance.gridColOffset(undefined)
      }else if(this.gridColOffsetMode == 4){
        instance.gridColOffset(null)
      }else {
        instance.gridColOffset(this.gridColOffsetMode)
      }
    }
  }
}

@Entry
@Component
struct ComponentLayoutModifier001 {
  @State modifier: MyGridColModifier = new MyGridColModifier()
  @State SwitchNumber: number = 450

  @State bgColors: Color[] = [Color.Red, Color.Blue, Color.Pink, Color.Orange, Color.Green, Color.Gray]
  @State currentBp: string = 'unknown'

  @State SpanIndex: number = 0;
  @State SpanMode: number[] = [1, 2, 4, 3, 6, 2]
  @State SpanModeStr: string[] = ['1', '2', 'null', '3', 'undefined', '2']

  @State gridColOffsetIndex: number = 0;
  @State gridColOffsetMode: number[] = [6, 1, 4, 3]
  @State gridColOffsetModeStr: string[] = ['undefined', '1', 'null', '2']

  build() {
    Column() {
      GridRow({columns: 6, breakpoints: { value: ["400vp", "600vp", "800vp"], reference: BreakpointsReference.WindowSize } })
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
        Button('GridColModifier，span与gridColOffset').onClick(() => {
          if(this.SwitchNumber == 450){
            this.modifier.isSpan = !this.modifier.isSpan
            this.SwitchNumber = 500
          }
        })
      }

      Row() {
        Button('更改Span：' + this.SpanModeStr[this.SpanIndex]).onClick(() => {
          this.SpanIndex++
          this.modifier.SpanMode = this.SpanMode[this.SpanIndex]
          if (this.SpanIndex > (this.SpanModeStr.length - 1)) {
            this.SpanIndex = 0
            this.modifier.SpanMode = this.SpanMode[this.SpanIndex]
          }
        })
      }

      Row() {
        Button('更改gridColOffset：' + this.gridColOffsetModeStr[this.gridColOffsetIndex]).onClick(() => {
          this.gridColOffsetIndex++
          this.modifier.gridColOffsetMode = this.gridColOffsetMode[this.gridColOffsetIndex]
          if (this.gridColOffsetIndex > (this.gridColOffsetModeStr.length - 1)) {
            this.gridColOffsetIndex = 0
            this.modifier.gridColOffsetMode = this.gridColOffsetMode[this.gridColOffsetIndex]
          }
        })
      }

    }.width('80%').margin({ left: 10, top: 5, bottom: 5 }).height(200)
    .border({ color: '#880606', width: 2 })
  }
}