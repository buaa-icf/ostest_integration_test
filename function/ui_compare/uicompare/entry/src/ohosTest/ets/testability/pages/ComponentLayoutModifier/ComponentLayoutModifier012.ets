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
  SpanMode: number = 1
  gridColOffsetMode: number = 6
  orderMode: number = 4

  applyNormalAttribute(instance: GridColModifier): void {
    instance.span(undefined)
    if(this.gridColOffsetMode == 6){
      instance.gridColOffset({xs: undefined})
    }else if(this.gridColOffsetMode == 8){
      instance.gridColOffset({xs: null})
    }else {
      instance.gridColOffset({xs: this.gridColOffsetMode})
    }
  }
}

@Entry
@Component
struct ComponentLayoutModifier012 {
  @State modifier: MyGridColModifier = new MyGridColModifier()
  @State SwitchNumber: number = 450
  @State SpanNumber: number = 1

  @State bgColors: Color[] = [Color.Red, Color.Blue, Color.Pink, Color.Orange, Color.Green, Color.Gray]
  @State currentBp: string = 'unknown'

  @State SpanIndex: number = 0;
  @State SpanMode: number[] = [1, 2, 3]
  @State SpanModeStr: string[] = ['1', '2', '3']

  @State gridColOffsetIndex: number = 0;
  @State gridColOffsetMode: number[] = [1, 2, 3]
  @State gridColOffsetModeStr: string[] = ['1', '2', '3']

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
        Button('GridColModifier，new MyModifier().span({xs:xx})动态切换不感知').onClick(() => {
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
          .id("ComponentLayoutModifier012_Span")
      }

      Row() {
        Button('Modifier设置').onClick(() => {
          this.gridColOffsetIndex = 3
        }).id("ComponentLayoutModifier012_Modifier")
      }


      Row() {
        Button('更改Span-xs2：' + this.SpanModeStr[this.SpanIndex]).onClick(() => {
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
          .id("ComponentLayoutModifier012_gridColOffset")
      }
    }.width('80%').margin({ left: 10, top: 5, bottom: 5 }).height(200)
    .border({ color: '#880606', width: 2 })
  }
}

