/*
 * Copyright (c) 2023 Huawei Device Co., Ltd.
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

import { ArrEntity } from '../../../entity/ArrEntity';
import { TimeHelper } from '../../../util/TimeHelper';

@Entry
@Component
struct GridRowBreakpointsSample {
  timeHelper: TimeHelper = new TimeHelper('GridRowBreakpointsSample');
  @State gridBreakpoints: BreakPoints = {
    value: ["400vp", "600vp", "800vp"],
    reference: BreakpointsReference.ComponentSize
  };

  build() {
    Scroll() {
      Flex({ direction: FlexDirection.Row, wrap: FlexWrap.Wrap }) {
        Row() {
          Button('change breakpoints')
            .id('GridRowBreakpoints')
            .margin('5vp')
            .onClick(() => {
              this.gridBreakpoints = {
                value: ["200vp", "400vp", "600vp"],
                reference: BreakpointsReference.ComponentSize
              };
            })
        }.width('100%')


        ForEach(ArrEntity.arr, (index: number) => {
          if (this.gridBreakpoints != null && this.timeHelper.printTime(true)) {
          }
          GridRow({
            columns: 8,
            breakpoints: this.gridBreakpoints
          }) {
            ForEach(ArrEntity.bgColors, (color: Color) => {
              GridCol({ span: { xs: 1, sm: 2, md: 3, lg: 4 }, offset: 0, order: 0 }) {
                Row().width("100%").height("20vp")
              }.borderWidth(2)
            })
          }
          GridRow({
            columns: 8,
            breakpoints: this.gridBreakpoints
          }) {
            ForEach(ArrEntity.bgColors, (color: Color) => {
              GridCol({ span: { xs: 1, sm: 2, md: 3, lg: 4 }, offset: 0, order: 0 }) {
                Row().width("100%").height("20vp")
              }.borderWidth(2)
            })
          }
          GridRow({
            columns: 8,
            breakpoints: this.gridBreakpoints
          }) {
            ForEach(ArrEntity.bgColors, (color: Color) => {
              GridCol({ span: { xs: 1, sm: 2, md: 3, lg: 4 }, offset: 0, order: 0 }) {
                Row().width("100%").height("20vp")
              }.borderWidth(2)
            })
          }
          GridRow({
            columns: 8,
            breakpoints: this.gridBreakpoints
          }) {
            ForEach(ArrEntity.bgColors, (color: Color) => {
              GridCol({ span: { xs: 1, sm: 2, md: 3, lg: 4 }, offset: 0, order: 0 }) {
                Row().width("100%").height("20vp")
              }.borderWidth(2)
            })
          }
          GridRow({
            columns: 8,
            breakpoints: this.gridBreakpoints
          }) {
            ForEach(ArrEntity.bgColors, (color: Color) => {
              GridCol({ span: { xs: 1, sm: 2, md: 3, lg: 4 }, offset: 0, order: 0 }) {
                Row().width("100%").height("20vp")
              }.borderWidth(2)
            })
          }
          GridRow({
            columns: 8,
            breakpoints: this.gridBreakpoints
          }) {
            ForEach(ArrEntity.bgColors, (color: Color) => {
              GridCol({ span: { xs: 1, sm: 2, md: 3, lg: 4 }, offset: 0, order: 0 }) {
                Row().width("100%").height("20vp")
              }.borderWidth(2)
            })
          }
          GridRow({
            columns: 8,
            breakpoints: this.gridBreakpoints
          }) {
            ForEach(ArrEntity.bgColors, (color: Color) => {
              GridCol({ span: { xs: 1, sm: 2, md: 3, lg: 4 }, offset: 0, order: 0 }) {
                Row().width("100%").height("20vp")
              }.borderWidth(2)
            })
          }
          GridRow({
            columns: 8,
            breakpoints: this.gridBreakpoints
          }) {
            ForEach(ArrEntity.bgColors, (color: Color) => {
              GridCol({ span: { xs: 1, sm: 2, md: 3, lg: 4 }, offset: 0, order: 0 }) {
                Row().width("100%").height("20vp")
              }.borderWidth(2)
            })
          }
          GridRow({
            columns: 8,
            breakpoints: this.gridBreakpoints
          }) {
            ForEach(ArrEntity.bgColors, (color: Color) => {
              GridCol({ span: { xs: 1, sm: 2, md: 3, lg: 4 }, offset: 0, order: 0 }) {
                Row().width("100%").height("20vp")
              }.borderWidth(2)
            })
          }
          GridRow({
            columns: 8,
            breakpoints: this.gridBreakpoints
          }) {
            ForEach(ArrEntity.bgColors, (color: Color) => {
              GridCol({ span: { xs: 1, sm: 2, md: 3, lg: 4 }, offset: 0, order: 0 }) {
                Row().width("100%").height("20vp")
              }.borderWidth(2)
            })
          }
          GridRow({
            columns: 8,
            breakpoints: this.gridBreakpoints
          }) {
            ForEach(ArrEntity.bgColors, (color: Color) => {
              GridCol({ span: { xs: 1, sm: 2, md: 3, lg: 4 }, offset: 0, order: 0 }) {
                Row().width("100%").height("20vp")
              }.borderWidth(2)
            })
          }
          GridRow({
            columns: 8,
            breakpoints: this.gridBreakpoints
          }) {
            ForEach(ArrEntity.bgColors, (color: Color) => {
              GridCol({ span: { xs: 1, sm: 2, md: 3, lg: 4 }, offset: 0, order: 0 }) {
                Row().width("100%").height("20vp")
              }.borderWidth(2)
            })
          }
          GridRow({
            columns: 8,
            breakpoints: this.gridBreakpoints
          }) {
            ForEach(ArrEntity.bgColors, (color: Color) => {
              GridCol({ span: { xs: 1, sm: 2, md: 3, lg: 4 }, offset: 0, order: 0 }) {
                Row().width("100%").height("20vp")
              }.borderWidth(2)
            })
          }
          GridRow({
            columns: 8,
            breakpoints: this.gridBreakpoints
          }) {
            ForEach(ArrEntity.bgColors, (color: Color) => {
              GridCol({ span: { xs: 1, sm: 2, md: 3, lg: 4 }, offset: 0, order: 0 }) {
                Row().width("100%").height("20vp")
              }.borderWidth(2)
            })
          }
          GridRow({
            columns: 8,
            breakpoints: this.gridBreakpoints
          }) {
            ForEach(ArrEntity.bgColors, (color: Color) => {
              GridCol({ span: { xs: 1, sm: 2, md: 3, lg: 4 }, offset: 0, order: 0 }) {
                Row().width("100%").height("20vp")
              }.borderWidth(2)
            })
          }
          GridRow({
            columns: 8,
            breakpoints: this.gridBreakpoints
          }) {
            ForEach(ArrEntity.bgColors, (color: Color) => {
              GridCol({ span: { xs: 1, sm: 2, md: 3, lg: 4 }, offset: 0, order: 0 }) {
                Row().width("100%").height("20vp")
              }.borderWidth(2)
            })
          }
          GridRow({
            columns: 8,
            breakpoints: this.gridBreakpoints
          }) {
            ForEach(ArrEntity.bgColors, (color: Color) => {
              GridCol({ span: { xs: 1, sm: 2, md: 3, lg: 4 }, offset: 0, order: 0 }) {
                Row().width("100%").height("20vp")
              }.borderWidth(2)
            })
          }
          GridRow({
            columns: 8,
            breakpoints: this.gridBreakpoints
          }) {
            ForEach(ArrEntity.bgColors, (color: Color) => {
              GridCol({ span: { xs: 1, sm: 2, md: 3, lg: 4 }, offset: 0, order: 0 }) {
                Row().width("100%").height("20vp")
              }.borderWidth(2)
            })
          }
          GridRow({
            columns: 8,
            breakpoints: this.gridBreakpoints
          }) {
            ForEach(ArrEntity.bgColors, (color: Color) => {
              GridCol({ span: { xs: 1, sm: 2, md: 3, lg: 4 }, offset: 0, order: 0 }) {
                Row().width("100%").height("20vp")
              }.borderWidth(2)
            })
          }
          GridRow({
            columns: 8,
            breakpoints: this.gridBreakpoints
          }) {
            ForEach(ArrEntity.bgColors, (color: Color) => {
              GridCol({ span: { xs: 1, sm: 2, md: 3, lg: 4 }, offset: 0, order: 0 }) {
                Row().width("100%").height("20vp")
              }.borderWidth(2)
            })
          }
          if (this.gridBreakpoints != null && this.timeHelper.printTime(false)) {
          }
        }, (item: number) => JSON.stringify(item))


      }
      .width(500)
    }.margin({ bottom: 60 })
    .width('100%')
  }
}