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

const timeHelper: TimeHelper = new TimeHelper('TraceDateSample');

@ObservedV2
class Info {
  a = timeHelper.printStateTime(true, 1, new StateModel(StateConstants.CREATE_STATE, true))
  @Trace selectedDate: Date = new Date('2024-05-28');
  @Trace selectedDate1: Date = new Date('2024-05-28');
  @Trace selectedDate2: Date = new Date('2024-05-28');
  @Trace selectedDate3: Date = new Date('2024-05-28');
  @Trace selectedDate4: Date = new Date('2024-05-28');
  @Trace selectedDate5: Date = new Date('2024-05-28');
  @Trace selectedDate6: Date = new Date('2024-05-28');
  @Trace selectedDate7: Date = new Date('2024-05-28');
  @Trace selectedDate8: Date = new Date('2024-05-28');
  @Trace selectedDate9: Date = new Date('2024-05-28');
  @Trace selectedDate10: Date = new Date('2024-05-28');
  @Trace selectedDate11: Date = new Date('2024-05-28');
  @Trace selectedDate12: Date = new Date('2024-05-28');
  @Trace selectedDate13: Date = new Date('2024-05-28');
  @Trace selectedDate14: Date = new Date('2024-05-28');
  @Trace selectedDate15: Date = new Date('2024-05-28');
  @Trace selectedDate16: Date = new Date('2024-05-28');
  @Trace selectedDate17: Date = new Date('2024-05-28');
  @Trace selectedDate18: Date = new Date('2024-05-28');
  @Trace selectedDate19: Date = new Date('2024-05-28');
  @Trace selectedDate20: Date = new Date('2024-05-28');
  @Trace selectedDate21: Date = new Date('2024-05-28');
  @Trace selectedDate22: Date = new Date('2024-05-28');
  @Trace selectedDate23: Date = new Date('2024-05-28');
  @Trace selectedDate24: Date = new Date('2024-05-28');
  @Trace selectedDate25: Date = new Date('2024-05-28');
  @Trace selectedDate26: Date = new Date('2024-05-28');
  @Trace selectedDate27: Date = new Date('2024-05-28');
  @Trace selectedDate28: Date = new Date('2024-05-28');
  @Trace selectedDate29: Date = new Date('2024-05-28');
  @Trace selectedDate30: Date = new Date('2024-05-28');
  @Trace selectedDate31: Date = new Date('2024-05-28');
  @Trace selectedDate32: Date = new Date('2024-05-28');
  @Trace selectedDate33: Date = new Date('2024-05-28');
  @Trace selectedDate34: Date = new Date('2024-05-28');
  @Trace selectedDate35: Date = new Date('2024-05-28');
  @Trace selectedDate36: Date = new Date('2024-05-28');
  @Trace selectedDate37: Date = new Date('2024-05-28');
  @Trace selectedDate38: Date = new Date('2024-05-28');
  @Trace selectedDate39: Date = new Date('2024-05-28');
  @Trace selectedDate40: Date = new Date('2024-05-28');
  @Trace selectedDate41: Date = new Date('2024-05-28');
  @Trace selectedDate42: Date = new Date('2024-05-28');
  @Trace selectedDate43: Date = new Date('2024-05-28');
  @Trace selectedDate44: Date = new Date('2024-05-28');
  @Trace selectedDate45: Date = new Date('2024-05-28');
  @Trace selectedDate46: Date = new Date('2024-05-28');
  @Trace selectedDate47: Date = new Date('2024-05-28');
  @Trace selectedDate48: Date = new Date('2024-05-28');
  @Trace selectedDate49: Date = new Date('2024-05-28');
  b = timeHelper.printStateTime(false, 1, new StateModel(StateConstants.CREATE_STATE, true))
}

let testDate: Info = new Info();

@ComponentV2
struct ChildTraceDateSample {
  @Local isTypeState: boolean = true
  aboutToAppear(): void {
    let arr: number[] =  [testDate.selectedDate.getTime() - 60 * 60 * 1000, testDate.selectedDate.getTime() - 20 * 60 * 1000]
    timeHelper.printStateTime(true, 1, new StateModel(StateConstants.WRITE_STATE, false))
    for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
      testDate.selectedDate.setTime(arr[index%2])
    }
    timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, false))
    timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, false))
    for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
      let value = testDate.selectedDate.getTime()
    }
    timeHelper.printStateTime(false, 1, new StateModel(StateConstants.READ_STATE, false))
  }

  build() {
    Column({ space: 15 }) {
      Text(`child value: ${testDate.selectedDate.toTimeString()}`)
      Button('child click: 读@Trace的耗时')
        .id('getStateTimeTaken')
        .onClick(() => {
          timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, true))
          for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
            let value = testDate.selectedDate.getTime()
          }
          timeHelper.printStateTime(false, 1, new StateModel(StateConstants.READ_STATE, true))
        })
      Button('child click: 写@Trace的耗时')
        .id('setStateTimeTaken')
        .onClick(() => {
          let timeArr: number[] =  [testDate.selectedDate.getTime() - 60 * 60 * 1000, testDate.selectedDate.getTime() - 20 * 60 * 1000]
          this.isTypeState = !this.isTypeState
          timeHelper.printStateTime(true, 1, new StateModel(StateConstants.WRITE_STATE, true))
          for (let index = ArrEntity.STATE_LOOP; index > 0; index--) {
            testDate.selectedDate.setTime(timeArr[index%2])
          }
          timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, true))
        })
    }
  }
}

@Entry
@ComponentV2
struct TraceDateSample {

  build() {
    Column({ space: 15 }) {
      Text('TraceDateSample')
        .fontSize('25')
        .textAlign(TextAlign.Center)
        .margin({ bottom: 50, top: 50 })
      Text(`parent value: ${testDate.selectedDate.toTimeString()}`)
      ChildTraceDateSample()
    }
  }
}
