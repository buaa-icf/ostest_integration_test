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
struct GridColOptionSpanSample {
  timeHelper: TimeHelper = new TimeHelper('GridColOptionSpanSample');
  @State gridColSpan: number = 2;

  build() {
    Scroll() {
      Flex({ direction: FlexDirection.Row, wrap: FlexWrap.Wrap }) {
        Row() {
          Button('change span 2 to 4')
            .id('GridColOptionSpan')
            .margin('5vp')
            .onClick(() => {
              this.gridColSpan = 4;
            })
        }.width('100%')


        ForEach(ArrEntity.arr, (index: number) => {
          if (this.gridColSpan > 0 && this.timeHelper.printTime(true)) {
          }
          GridRow({
            columns: 8
          }) {
            ForEach(ArrEntity.bgColors, (color: Color) => {
              GridCol({ span: this.gridColSpan }) {
                Row().width("100%").height("20vp")
              }.borderWidth(2)
            })
          }

          GridRow({
            columns: 8
          }) {
            ForEach(ArrEntity.bgColors, (color: Color) => {
              GridCol({ span: this.gridColSpan }) {
                Row().width("100%").height("20vp")
              }.borderWidth(2)
            })
          }

          GridRow({
            columns: 8
          }) {
            ForEach(ArrEntity.bgColors, (color: Color) => {
              GridCol({ span: this.gridColSpan }) {
                Row().width("100%").height("20vp")
              }.borderWidth(2)
            })
          }

          GridRow({
            columns: 8
          }) {
            ForEach(ArrEntity.bgColors, (color: Color) => {
              GridCol({ span: this.gridColSpan }) {
                Row().width("100%").height("20vp")
              }.borderWidth(2)
            })
          }

          GridRow({
            columns: 8
          }) {
            ForEach(ArrEntity.bgColors, (color: Color) => {
              GridCol({ span: this.gridColSpan }) {
                Row().width("100%").height("20vp")
              }.borderWidth(2)
            })
          }

          GridRow({
            columns: 8
          }) {
            ForEach(ArrEntity.bgColors, (color: Color) => {
              GridCol({ span: this.gridColSpan }) {
                Row().width("100%").height("20vp")
              }.borderWidth(2)
            })
          }

          GridRow({
            columns: 8
          }) {
            ForEach(ArrEntity.bgColors, (color: Color) => {
              GridCol({ span: this.gridColSpan }) {
                Row().width("100%").height("20vp")
              }.borderWidth(2)
            })
          }

          GridRow({
            columns: 8
          }) {
            ForEach(ArrEntity.bgColors, (color: Color) => {
              GridCol({ span: this.gridColSpan }) {
                Row().width("100%").height("20vp")
              }.borderWidth(2)
            })
          }

          GridRow({
            columns: 8
          }) {
            ForEach(ArrEntity.bgColors, (color: Color) => {
              GridCol({ span: this.gridColSpan }) {
                Row().width("100%").height("20vp")
              }.borderWidth(2)
            })
          }

          GridRow({
            columns: 8
          }) {
            ForEach(ArrEntity.bgColors, (color: Color) => {
              GridCol({ span: this.gridColSpan }) {
                Row().width("100%").height("20vp")
              }.borderWidth(2)
            })
          }

          GridRow({
            columns: 8
          }) {
            ForEach(ArrEntity.bgColors, (color: Color) => {
              GridCol({ span: this.gridColSpan }) {
                Row().width("100%").height("20vp")
              }.borderWidth(2)
            })
          }

          GridRow({
            columns: 8
          }) {
            ForEach(ArrEntity.bgColors, (color: Color) => {
              GridCol({ span: this.gridColSpan }) {
                Row().width("100%").height("20vp")
              }.borderWidth(2)
            })
          }

          GridRow({
            columns: 8
          }) {
            ForEach(ArrEntity.bgColors, (color: Color) => {
              GridCol({ span: this.gridColSpan }) {
                Row().width("100%").height("20vp")
              }.borderWidth(2)
            })
          }

          GridRow({
            columns: 8
          }) {
            ForEach(ArrEntity.bgColors, (color: Color) => {
              GridCol({ span: this.gridColSpan }) {
                Row().width("100%").height("20vp")
              }.borderWidth(2)
            })
          }

          GridRow({
            columns: 8
          }) {
            ForEach(ArrEntity.bgColors, (color: Color) => {
              GridCol({ span: this.gridColSpan }) {
                Row().width("100%").height("20vp")
              }.borderWidth(2)
            })
          }

          GridRow({
            columns: 8
          }) {
            ForEach(ArrEntity.bgColors, (color: Color) => {
              GridCol({ span: this.gridColSpan }) {
                Row().width("100%").height("20vp")
              }.borderWidth(2)
            })
          }

          GridRow({
            columns: 8
          }) {
            ForEach(ArrEntity.bgColors, (color: Color) => {
              GridCol({ span: this.gridColSpan }) {
                Row().width("100%").height("20vp")
              }.borderWidth(2)
            })
          }

          GridRow({
            columns: 8
          }) {
            ForEach(ArrEntity.bgColors, (color: Color) => {
              GridCol({ span: this.gridColSpan }) {
                Row().width("100%").height("20vp")
              }.borderWidth(2)
            })
          }

          GridRow({
            columns: 8
          }) {
            ForEach(ArrEntity.bgColors, (color: Color) => {
              GridCol({ span: this.gridColSpan }) {
                Row().width("100%").height("20vp")
              }.borderWidth(2)
            })
          }

          GridRow({
            columns: 8
          }) {
            ForEach(ArrEntity.bgColors, (color: Color) => {
              GridCol({ span: this.gridColSpan }) {
                Row().width("100%").height("20vp")
              }.borderWidth(2)
            })
          }

          if (this.gridColSpan > 0 && this.timeHelper.printTime(false)) {
          }
        }, (item: number) => JSON.stringify(item))


      }
      .width(500)
    }.margin({ bottom: 60 })
    .width('100%')
  }
}