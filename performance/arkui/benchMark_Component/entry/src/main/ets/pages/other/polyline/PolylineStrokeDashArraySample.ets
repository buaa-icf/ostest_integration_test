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

/**
 * Polyline组件strokeDashArray属性更新布局耗时
 */

import { ArrEntity } from '../../../entity/ArrEntity'
import { TimeHelper } from '../../../util/TimeHelper'

@Entry
@Component
struct PolylineStrokeDashArraySample {
  timeHelper: TimeHelper = new TimeHelper('PolylineStrokeDashArraySample');
  @State polylineStrokeDashArray: Array<number> = [5];

  build() {
    Scroll() {
      Flex({ direction: FlexDirection.Row, wrap: FlexWrap.Wrap }) {
        Column() {
          Button('change strokeDashArray')
            .id('change strokeDashArray')
            .margin('5vp')
            .onClick(() => {
              this.polylineStrokeDashArray = [10];
            })
        }.width('100%')

        ForEach(ArrEntity.arr, (index: number) => {
          if (this.polylineStrokeDashArray != null && this.timeHelper.printTime(true)) {
          }
          Polyline()
            .width(100)
            .height(100)
            .fillOpacity(0)
            .stroke(Color.Red)
            .strokeWidth(5)
            .strokeDashArray(this.polylineStrokeDashArray)
            .points([[0, 0], [50, 100], [100, 0]])
          Polyline()
            .width(100)
            .height(100)
            .fillOpacity(0)
            .stroke(Color.Red)
            .strokeWidth(5)
            .strokeDashArray(this.polylineStrokeDashArray)
            .points([[0, 0], [50, 100], [100, 0]])
          Polyline()
            .width(100)
            .height(100)
            .fillOpacity(0)
            .stroke(Color.Red)
            .strokeWidth(5)
            .strokeDashArray(this.polylineStrokeDashArray)
            .points([[0, 0], [50, 100], [100, 0]])
          Polyline()
            .width(100)
            .height(100)
            .fillOpacity(0)
            .stroke(Color.Red)
            .strokeWidth(5)
            .strokeDashArray(this.polylineStrokeDashArray)
            .points([[0, 0], [50, 100], [100, 0]])
          Polyline()
            .width(100)
            .height(100)
            .fillOpacity(0)
            .stroke(Color.Red)
            .strokeWidth(5)
            .strokeDashArray(this.polylineStrokeDashArray)
            .points([[0, 0], [50, 100], [100, 0]])
          Polyline()
            .width(100)
            .height(100)
            .fillOpacity(0)
            .stroke(Color.Red)
            .strokeWidth(5)
            .strokeDashArray(this.polylineStrokeDashArray)
            .points([[0, 0], [50, 100], [100, 0]])
          Polyline()
            .width(100)
            .height(100)
            .fillOpacity(0)
            .stroke(Color.Red)
            .strokeWidth(5)
            .strokeDashArray(this.polylineStrokeDashArray)
            .points([[0, 0], [50, 100], [100, 0]])
          Polyline()
            .width(100)
            .height(100)
            .fillOpacity(0)
            .stroke(Color.Red)
            .strokeWidth(5)
            .strokeDashArray(this.polylineStrokeDashArray)
            .points([[0, 0], [50, 100], [100, 0]])
          Polyline()
            .width(100)
            .height(100)
            .fillOpacity(0)
            .stroke(Color.Red)
            .strokeWidth(5)
            .strokeDashArray(this.polylineStrokeDashArray)
            .points([[0, 0], [50, 100], [100, 0]])
          Polyline()
            .width(100)
            .height(100)
            .fillOpacity(0)
            .stroke(Color.Red)
            .strokeWidth(5)
            .strokeDashArray(this.polylineStrokeDashArray)
            .points([[0, 0], [50, 100], [100, 0]])
          Polyline()
            .width(100)
            .height(100)
            .fillOpacity(0)
            .stroke(Color.Red)
            .strokeWidth(5)
            .strokeDashArray(this.polylineStrokeDashArray)
            .points([[0, 0], [50, 100], [100, 0]])
          Polyline()
            .width(100)
            .height(100)
            .fillOpacity(0)
            .stroke(Color.Red)
            .strokeWidth(5)
            .strokeDashArray(this.polylineStrokeDashArray)
            .points([[0, 0], [50, 100], [100, 0]])
          Polyline()
            .width(100)
            .height(100)
            .fillOpacity(0)
            .stroke(Color.Red)
            .strokeWidth(5)
            .strokeDashArray(this.polylineStrokeDashArray)
            .points([[0, 0], [50, 100], [100, 0]])
          Polyline()
            .width(100)
            .height(100)
            .fillOpacity(0)
            .stroke(Color.Red)
            .strokeWidth(5)
            .strokeDashArray(this.polylineStrokeDashArray)
            .points([[0, 0], [50, 100], [100, 0]])
          Polyline()
            .width(100)
            .height(100)
            .fillOpacity(0)
            .stroke(Color.Red)
            .strokeWidth(5)
            .strokeDashArray(this.polylineStrokeDashArray)
            .points([[0, 0], [50, 100], [100, 0]])
          Polyline()
            .width(100)
            .height(100)
            .fillOpacity(0)
            .stroke(Color.Red)
            .strokeWidth(5)
            .strokeDashArray(this.polylineStrokeDashArray)
            .points([[0, 0], [50, 100], [100, 0]])
          Polyline()
            .width(100)
            .height(100)
            .fillOpacity(0)
            .stroke(Color.Red)
            .strokeWidth(5)
            .strokeDashArray(this.polylineStrokeDashArray)
            .points([[0, 0], [50, 100], [100, 0]])
          Polyline()
            .width(100)
            .height(100)
            .fillOpacity(0)
            .stroke(Color.Red)
            .strokeWidth(5)
            .strokeDashArray(this.polylineStrokeDashArray)
            .points([[0, 0], [50, 100], [100, 0]])
          Polyline()
            .width(100)
            .height(100)
            .fillOpacity(0)
            .stroke(Color.Red)
            .strokeWidth(5)
            .strokeDashArray(this.polylineStrokeDashArray)
            .points([[0, 0], [50, 100], [100, 0]])
          Polyline()
            .width(100)
            .height(100)
            .fillOpacity(0)
            .stroke(Color.Red)
            .strokeWidth(5)
            .strokeDashArray(this.polylineStrokeDashArray)
            .points([[0, 0], [50, 100], [100, 0]])
          if (this.polylineStrokeDashArray != null && this.timeHelper.printTime(false)) {
          }
        })

      }
      .width('100%')
    }.margin({ bottom: 60 })
    .width('100%')

  }
}