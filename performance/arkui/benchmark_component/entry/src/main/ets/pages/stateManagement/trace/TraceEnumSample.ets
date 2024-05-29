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
import { LanguageEnum , enumArr } from '../ClassModel';

const timeHelper: TimeHelper = new TimeHelper('TraceEnumSample');

@ObservedV2
class Arr {
  a = timeHelper.printStateTime(true, 1, new StateModel(StateConstants.CREATE_STATE, true))
  @Trace enumType: LanguageEnum = LanguageEnum.English;
  @Trace enumType1: LanguageEnum = LanguageEnum.English;
  @Trace enumType2: LanguageEnum = LanguageEnum.English;
  @Trace enumType3: LanguageEnum = LanguageEnum.English;
  @Trace enumType4: LanguageEnum = LanguageEnum.English;
  @Trace enumType5: LanguageEnum = LanguageEnum.English;
  @Trace enumType6: LanguageEnum = LanguageEnum.English;
  @Trace enumType7: LanguageEnum = LanguageEnum.English;
  @Trace enumType8: LanguageEnum = LanguageEnum.English;
  @Trace enumType9: LanguageEnum = LanguageEnum.English;
  @Trace enumType10: LanguageEnum = LanguageEnum.English;
  @Trace enumType11: LanguageEnum = LanguageEnum.English;
  @Trace enumType12: LanguageEnum = LanguageEnum.English;
  @Trace enumType13: LanguageEnum = LanguageEnum.English;
  @Trace enumType14: LanguageEnum = LanguageEnum.English;
  @Trace enumType15: LanguageEnum = LanguageEnum.English;
  @Trace enumType16: LanguageEnum = LanguageEnum.English;
  @Trace enumType17: LanguageEnum = LanguageEnum.English;
  @Trace enumType18: LanguageEnum = LanguageEnum.English;
  @Trace enumType19: LanguageEnum = LanguageEnum.English;
  @Trace enumType20: LanguageEnum = LanguageEnum.English;
  @Trace enumType21: LanguageEnum = LanguageEnum.English;
  @Trace enumType22: LanguageEnum = LanguageEnum.English;
  @Trace enumType23: LanguageEnum = LanguageEnum.English;
  @Trace enumType24: LanguageEnum = LanguageEnum.English;
  @Trace enumType25: LanguageEnum = LanguageEnum.English;
  @Trace enumType26: LanguageEnum = LanguageEnum.English;
  @Trace enumType27: LanguageEnum = LanguageEnum.English;
  @Trace enumType28: LanguageEnum = LanguageEnum.English;
  @Trace enumType29: LanguageEnum = LanguageEnum.English;
  @Trace enumType30: LanguageEnum = LanguageEnum.English;
  @Trace enumType31: LanguageEnum = LanguageEnum.English;
  @Trace enumType32: LanguageEnum = LanguageEnum.English;
  @Trace enumType33: LanguageEnum = LanguageEnum.English;
  @Trace enumType34: LanguageEnum = LanguageEnum.English;
  @Trace enumType35: LanguageEnum = LanguageEnum.English;
  @Trace enumType36: LanguageEnum = LanguageEnum.English;
  @Trace enumType37: LanguageEnum = LanguageEnum.English;
  @Trace enumType38: LanguageEnum = LanguageEnum.English;
  @Trace enumType39: LanguageEnum = LanguageEnum.English;
  @Trace enumType40: LanguageEnum = LanguageEnum.English;
  @Trace enumType41: LanguageEnum = LanguageEnum.English;
  @Trace enumType42: LanguageEnum = LanguageEnum.English;
  @Trace enumType43: LanguageEnum = LanguageEnum.English;
  @Trace enumType44: LanguageEnum = LanguageEnum.English;
  @Trace enumType45: LanguageEnum = LanguageEnum.English;
  @Trace enumType46: LanguageEnum = LanguageEnum.English;
  @Trace enumType47: LanguageEnum = LanguageEnum.English;
  @Trace enumType48: LanguageEnum = LanguageEnum.English;
  @Trace enumType49: LanguageEnum = LanguageEnum.English;
  b = timeHelper.printStateTime(false, 1, new StateModel(StateConstants.CREATE_STATE, true))
}

let test: Arr = new Arr()

@ComponentV2
struct ChildTraceEnumSample {
  @Local isTypeState: boolean = true
  tmpArr: LanguageEnum[] = [LanguageEnum.English, LanguageEnum.Chinese]

  aboutToAppear(): void {
    timeHelper.printStateTime(true, 1, new StateModel(StateConstants.WRITE_STATE, false))
    for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
      test.enumType = this.tmpArr[index%2]
    }
    timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, false))
    timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, false))
    for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
      let value = test.enumType
    }
    timeHelper.printStateTime(false, 1, new StateModel(StateConstants.READ_STATE, false))
  }

  build() {
    Column({ space: 15 }) {
      Text(`child value: ${test.enumType}`)
      Button('child clink: 读@Trace的耗时')
        .id('getStateTimeTaken')
        .onClick(() => {
          timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, true))
          for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
            let value = test.enumType
          }
          timeHelper.printStateTime(false, 1, new StateModel(StateConstants.READ_STATE, true))
        })
      Button('child clink:  写@Trace的耗时')
        .id('setStateTimeTaken')
        .onClick(() => {
          this.isTypeState = !this.isTypeState
          timeHelper.printStateTime(true, 1, new StateModel(StateConstants.WRITE_STATE, true))
          for (let index = ArrEntity.STATE_LOOP; index > 0; index--) {
            test.enumType = this.tmpArr[index%2]
          }
          timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, true))
        })
    }
  }
}

@Entry
@ComponentV2
struct TraceEnumSample {

  build() {
    Column({ space: 15 }) {
      Text('TraceEnumSample')
        .fontSize('25')
        .textAlign(TextAlign.Center)
        .margin({ bottom: 50, top: 50 })
      Text(`parent value:${test.enumType}`)
      ChildTraceEnumSample()
    }
  }
}