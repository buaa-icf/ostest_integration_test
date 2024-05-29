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

const timeHelper: TimeHelper = new TimeHelper('TraceBooleanSample');

@ObservedV2
class Father {
  a = timeHelper.printStateTime(true, 1, new StateModel(StateConstants.CREATE_STATE, true))
  @Trace boolType: boolean = true;
  @Trace boolType1: boolean = true;
  @Trace boolType2: boolean = true;
  @Trace boolType3: boolean = true;
  @Trace boolType4: boolean = true;
  @Trace boolType5: boolean = true;
  @Trace boolType6: boolean = true;
  @Trace boolType7: boolean = true;
  @Trace boolType8: boolean = true;
  @Trace boolType9: boolean = true;
  @Trace boolType10: boolean = true;
  @Trace boolType11: boolean = true;
  @Trace boolType12: boolean = true;
  @Trace boolType13: boolean = true;
  @Trace boolType14: boolean = true;
  @Trace boolType15: boolean = true;
  @Trace boolType16: boolean = true;
  @Trace boolType17: boolean = true;
  @Trace boolType18: boolean = true;
  @Trace boolType19: boolean = true;
  @Trace boolType20: boolean = true;
  @Trace boolType21: boolean = true;
  @Trace boolType22: boolean = true;
  @Trace boolType23: boolean = true;
  @Trace boolType24: boolean = true;
  @Trace boolType25: boolean = true;
  @Trace boolType26: boolean = true;
  @Trace boolType27: boolean = true;
  @Trace boolType28: boolean = true;
  @Trace boolType29: boolean = true;
  @Trace boolType30: boolean = true;
  @Trace boolType31: boolean = true;
  @Trace boolType32: boolean = true;
  @Trace boolType33: boolean = true;
  @Trace boolType34: boolean = true;
  @Trace boolType35: boolean = true;
  @Trace boolType36: boolean = true;
  @Trace boolType37: boolean = true;
  @Trace boolType38: boolean = true;
  @Trace boolType39: boolean = true;
  @Trace boolType40: boolean = true;
  @Trace boolType41: boolean = true;
  @Trace boolType42: boolean = true;
  @Trace boolType43: boolean = true;
  @Trace boolType44: boolean = true;
  @Trace boolType45: boolean = true;
  @Trace boolType46: boolean = true;
  @Trace boolType47: boolean = true;
  @Trace boolType48: boolean = true;
  @Trace boolType49: boolean = true;
  b = timeHelper.printStateTime(false, 1, new StateModel(StateConstants.CREATE_STATE, true))
}

let parentBoolean: Father = new Father();

@ComponentV2
struct ChildTraceBooleanSample {
  tmpArr: boolean[] = [false, true]
  @Local isTypeState: boolean = true

  aboutToAppear(): void {
    timeHelper.printStateTime(true, 1, new StateModel(StateConstants.WRITE_STATE, false))
    for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
      parentBoolean.boolType = this.tmpArr[index % 2]
    }
    timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, false))
    timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, false))
    for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
      let value = parentBoolean.boolType
    }
    timeHelper.printStateTime(false, 1, new StateModel(StateConstants.READ_STATE, false))
  }

  build() {
    Column({ space: 15 }) {
      Text(`child value: ${parentBoolean.boolType}`)
      Button('child click: 读@Trace的耗时')
        .id('getStateTimeTaken')
        .onClick(() => {
          timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, true))
          for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
            let value = parentBoolean.boolType
          }
          timeHelper.printStateTime(false, 1, new StateModel(StateConstants.READ_STATE, true))
        })
      Button('child click: 写@Trace的耗时')
        .id('setStateTimeTaken')
        .onClick(() => {
          this.isTypeState = !this.isTypeState
          timeHelper.printStateTime(true, 1, new StateModel(StateConstants.WRITE_STATE, true))
          for (let index = ArrEntity.STATE_LOOP; index > 0; index--) {
            parentBoolean.boolType = this.tmpArr[index % 2]
          }
          timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, true))
        })
    }
  }
}

@Entry
@ComponentV2
struct TraceBooleanSample {

  build() {
    Column({ space: 15 }) {
      Text('TraceBooleanSample')
        .fontSize('25')
        .textAlign(TextAlign.Center)
        .margin({ bottom: 50, top: 50 })
      Text(`parent value: ${parentBoolean.boolType}`)
      ChildTraceBooleanSample()
    }
  }
}
