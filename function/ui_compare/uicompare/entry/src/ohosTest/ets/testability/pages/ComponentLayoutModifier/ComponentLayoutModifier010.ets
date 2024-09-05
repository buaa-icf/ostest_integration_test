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
    if(this.SpanMode == 6){
      instance.span({xs: undefined})
    }else if(this.SpanMode == 8){
      instance.span({xs: null})
    }else{
      instance.span({xs: this.SpanMode})
    }

    if(this.gridColOffsetMode == 6){
      instance.gridColOffset({xs: undefined})
    }else if(this.gridColOffsetMode == 8){
      instance.gridColOffset({xs: null})
    }else {
      instance.gridColOffset({xs: this.gridColOffsetMode})
    }

    if(this.orderMode == 6){
      instance.order({xs: undefined})
    }else if(this.orderMode == 8){
      instance.order({xs: null})
    }else {
      instance.gridColOffset({xs: this.orderMode})
    }

    instance.height(100)
  }
}

@Entry
@Component
struct ComponentLayoutModifier010 {
  @State modifier: MyGridColModifier = new MyGridColModifier()
  @State SwitchNumber: number = 450

  @State bgColors: Color[] = [Color.Red, Color.Blue, Color.Pink, Color.Orange, Color.Green, Color.Gray]
  @State currentBp: string = 'unknown'

  @State SpanIndex: number = 0;
  @State SpanMode: number[] = [1, 3, 8, 2, 6, 2]
  @State SpanModeStr: string[] = ['1', '2', 'null', '3', 'undefined', '2']

  @State gridColOffsetIndex: number = 0;
  @State gridColOffsetMode: number[] = [1, 6, 8, 3]
  @State gridColOffsetModeStr: string[] = ['undefined', '1', 'null', '2']

  @State orderIndex: number = 0;
  @State orderMode: number[] = [4, 6, 1, 3, 8, 3]
  @State orderModeStr: string[] = ['4', 'undefined', '1', '3', 'null', '2']

  build() {
    Column() {
      GridRow({columns: 6, breakpoints: { value: ["400vp", "600vp", "800vp"], reference: BreakpointsReference.WindowSize }})
      {
        ForEach(this.bgColors, (color: Color) => {
          GridCol() {
            Row().width("100%")
          }.borderColor(color).borderWidth(2)
          .attributeModifier(this.modifier).height(100)
        })
      }.width("100%").height("100%")
      .onBreakpointChange((breakpoint) => {
        this.currentBp = breakpoint
      })

      Column(){
        Row() {
          Button('GridColModifier，order属性').onClick(() => {
          })
        }

        Row() {
          Button('更改Span-xs：' + this.SpanModeStr[this.SpanIndex]).onClick(() => {
            this.SpanIndex++
            this.modifier.SpanMode = this.SpanMode[this.SpanIndex]
            if (this.SpanIndex > (this.SpanModeStr.length - 1)) {
              this.SpanIndex = 0
              this.modifier.SpanMode = this.SpanMode[this.SpanIndex]
            }
          })
            .id("ComponentLayoutModifier010_Span")
        }

        Row() {
          Button('更改gridColOffset-xs：' + this.gridColOffsetModeStr[this.gridColOffsetIndex]).onClick(() => {
            this.gridColOffsetIndex++
            this.modifier.gridColOffsetMode = this.gridColOffsetMode[this.gridColOffsetIndex]
            if (this.gridColOffsetIndex > (this.gridColOffsetModeStr.length - 1)) {
              this.gridColOffsetIndex = 0
              this.modifier.gridColOffsetMode = this.gridColOffsetMode[this.gridColOffsetIndex]
            }
          })
            .id("ComponentLayoutModifier010_gridColOffset")
        }

        Row() {
          Button('更改order-xs：' + this.orderModeStr[this.orderIndex]).onClick(() => {
            this.orderIndex++
            this.modifier.orderMode = this.orderMode[this.orderIndex]
            if (this.orderIndex > (this.orderModeStr.length - 1)) {
              this.orderIndex = 0
              this.modifier.orderMode = this.orderMode[this.orderIndex]
            }
          })
        }
      }
    }.width('80%').margin({ left: 10, top: 5, bottom: 5 }).height(200)
    .border({ color: '#880606', width: 2 })

  }
}