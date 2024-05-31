/*
 * Copyright (c) 2024 Huawei Device Co., Ltd.
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
import { TimeHelper } from '../../../util/TimeHelper'
import { StateConstants, StateModel } from '../StateModel';

const timeHelper: TimeHelper = new TimeHelper('TraceNumberSample');

@ObservedV2
class Son {
  a = timeHelper.printStateTime(true, 1, new StateModel(StateConstants.CREATE_STATE, true))
  @Trace age: number = 10;
  @Trace age1: number = 10;
  @Trace age2: number = 10;
  @Trace age3: number = 10;
  @Trace age4: number = 10;
  @Trace age5: number = 10;
  @Trace age6: number = 10;
  @Trace age7: number = 10;
  @Trace age8: number = 10;
  @Trace age9: number = 10;
  @Trace age10: number = 10;
  @Trace age11: number = 10;
  @Trace age12: number = 10;
  @Trace age13: number = 10;
  @Trace age14: number = 10;
  @Trace age15: number = 10;
  @Trace age16: number = 10;
  @Trace age17: number = 10;
  @Trace age18: number = 10;
  @Trace age19: number = 10;
  @Trace age20: number = 10;
  @Trace age21: number = 10;
  @Trace age22: number = 10;
  @Trace age23: number = 10;
  @Trace age24: number = 10;
  @Trace age25: number = 10;
  @Trace age26: number = 10;
  @Trace age27: number = 10;
  @Trace age28: number = 10;
  @Trace age29: number = 10;
  @Trace age30: number = 10;
  @Trace age31: number = 10;
  @Trace age32: number = 10;
  @Trace age33: number = 10;
  @Trace age34: number = 10;
  @Trace age35: number = 10;
  @Trace age36: number = 10;
  @Trace age37: number = 10;
  @Trace age38: number = 10;
  @Trace age39: number = 10;
  @Trace age40: number = 10;
  @Trace age41: number = 10;
  @Trace age42: number = 10;
  @Trace age43: number = 10;
  @Trace age44: number = 10;
  @Trace age45: number = 10;
  @Trace age46: number = 10;
  @Trace age47: number = 10;
  @Trace age48: number = 10;
  @Trace age49: number = 10;
  b = timeHelper.printStateTime(false, 1, new StateModel(StateConstants.CREATE_STATE, true))
}

let parentNumber: Son = new Son();

@ComponentV2
struct ChildTraceNumberSample {
  @Local isTypeState: boolean = true

  aboutToAppear(): void {
    timeHelper.printStateTime(true, 1, new StateModel(StateConstants.WRITE_STATE, false))
    for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
      parentNumber.age = index
    }
    timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, false))
    timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, false))
    for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
      let value = parentNumber.age
    }
    timeHelper.printStateTime(false, 1, new StateModel(StateConstants.READ_STATE, false))
  }

  build() {
    Column({ space: 15 }) {
      Text(`child value: ${parentNumber.age}`)
      Button('child click: 读@Trace的耗时')
        .id('getStateTimeTaken')
        .onClick(() => {
          timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, true))
          for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
            let value = parentNumber.age
          }
          timeHelper.printStateTime(false, 1, new StateModel(StateConstants.READ_STATE, true))
        })
      Button('child click: 写@Trace的耗时')
        .id('setStateTimeTaken')
        .onClick(() => {
          this.isTypeState = !this.isTypeState
          timeHelper.printStateTime(true, 1, new StateModel(StateConstants.WRITE_STATE, true))
          for (let index = ArrEntity.STATE_LOOP; index > 0; index--) {
            parentNumber.age = index
          }
          timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, true))
        })
    }
  }
}

@Entry
@ComponentV2
struct TraceNumberSample {

  build() {
    Column({ space: 15 }) {
      Text('TraceNumberSample')
        .fontSize('25')
        .textAlign(TextAlign.Center)
        .margin({ bottom: 50, top: 50 })
      Text(`parent value: ${parentNumber.age}`)
      ChildTraceNumberSample()
    }
  }
}
