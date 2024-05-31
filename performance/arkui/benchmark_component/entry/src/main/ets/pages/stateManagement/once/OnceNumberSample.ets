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

const timeHelper: TimeHelper = new TimeHelper('OnceNumberSample')

@ComponentV2
struct ChildOnceNumberSample {
  a = timeHelper.printStateTime(true, 1, new StateModel(StateConstants.CREATE_STATE, true))
  @Once @Param childNumber: number = 10;
  @Once @Param childNumber1: number = 10;
  @Once @Param childNumber2: number = 10;
  @Once @Param childNumber3: number = 10;
  @Once @Param childNumber4: number = 10;
  @Once @Param childNumber5: number = 10;
  @Once @Param childNumber6: number = 10;
  @Once @Param childNumber7: number = 10;
  @Once @Param childNumber8: number = 10;
  @Once @Param childNumber9: number = 10;
  @Once @Param childNumber10: number = 10;
  @Once @Param childNumber11: number = 10;
  @Once @Param childNumber12: number = 10;
  @Once @Param childNumber13: number = 10;
  @Once @Param childNumber14: number = 10;
  @Once @Param childNumber15: number = 10;
  @Once @Param childNumber16: number = 10;
  @Once @Param childNumber17: number = 10;
  @Once @Param childNumber18: number = 10;
  @Once @Param childNumber19: number = 10;
  @Once @Param childNumber20: number = 10;
  @Once @Param childNumber21: number = 10;
  @Once @Param childNumber22: number = 10;
  @Once @Param childNumber23: number = 10;
  @Once @Param childNumber24: number = 10;
  @Once @Param childNumber25: number = 10;
  @Once @Param childNumber26: number = 10;
  @Once @Param childNumber27: number = 10;
  @Once @Param childNumber28: number = 10;
  @Once @Param childNumber29: number = 10;
  @Once @Param childNumber30: number = 10;
  @Once @Param childNumber31: number = 10;
  @Once @Param childNumber32: number = 10;
  @Once @Param childNumber33: number = 10;
  @Once @Param childNumber34: number = 10;
  @Once @Param childNumber35: number = 10;
  @Once @Param childNumber36: number = 10;
  @Once @Param childNumber37: number = 10;
  @Once @Param childNumber38: number = 10;
  @Once @Param childNumber39: number = 10;
  @Once @Param childNumber40: number = 10;
  @Once @Param childNumber41: number = 10;
  @Once @Param childNumber42: number = 10;
  @Once @Param childNumber43: number = 10;
  @Once @Param childNumber44: number = 10;
  @Once @Param childNumber45: number = 10;
  @Once @Param childNumber46: number = 10;
  @Once @Param childNumber47: number = 10;
  @Once @Param childNumber48: number = 10;
  @Once @Param childNumber49: number = 10;
  b = timeHelper.printStateTime(false, 1, new StateModel(StateConstants.CREATE_STATE, true))

  aboutToAppear(): void {
    timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, false))
    for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
      let value = this.childNumber
    }
    timeHelper.printStateTime(false, 1, new StateModel(StateConstants.READ_STATE, false))
  }

  build() {
    Column({ space: 15 }) {
      Text(`child value: ${this.childNumber}`)
      Button('child click: 读@Once的耗时')
        .id('getStateTimeTaken')
        .onClick(() => {
          timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, true))
          for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
            let value = this.childNumber
          }
          timeHelper.printStateTime(false, 1, new StateModel(StateConstants.READ_STATE, true))
        })
    }
  }
}


@Entry
@ComponentV2
struct OnceNumberSample {
  @Local parentNumber: number = 10;
  changeParentNumber: (type: number) => void = (type: number) => {
    if (type == 0) {
      this.parentNumber = 99
    } else if (type == 1) {
      this.parentNumber = 999
    }
  };

  build() {
    Column({ space: 15 }) {
      Text('OnceNumberSample')
        .fontSize('25')
        .textAlign(TextAlign.Center)
        .margin({ bottom: 50, top: 50 })
      Text(`parent value: ${this.parentNumber}`)
      ChildOnceNumberSample({
        childNumber1: this.parentNumber,
        childNumber2: this.parentNumber,
        childNumber3: this.parentNumber,
        childNumber4: this.parentNumber,
        childNumber5: this.parentNumber,
        childNumber6: this.parentNumber,
        childNumber7: this.parentNumber,
        childNumber8: this.parentNumber,
        childNumber9: this.parentNumber,
        childNumber10: this.parentNumber,
        childNumber11: this.parentNumber,
        childNumber12: this.parentNumber,
        childNumber13: this.parentNumber,
        childNumber14: this.parentNumber,
        childNumber15: this.parentNumber,
        childNumber16: this.parentNumber,
        childNumber17: this.parentNumber,
        childNumber18: this.parentNumber,
        childNumber19: this.parentNumber,
        childNumber20: this.parentNumber,
        childNumber21: this.parentNumber,
        childNumber22: this.parentNumber,
        childNumber23: this.parentNumber,
        childNumber24: this.parentNumber,
        childNumber25: this.parentNumber,
        childNumber26: this.parentNumber,
        childNumber27: this.parentNumber,
        childNumber28: this.parentNumber,
        childNumber29: this.parentNumber,
        childNumber30: this.parentNumber,
        childNumber31: this.parentNumber,
        childNumber32: this.parentNumber,
        childNumber33: this.parentNumber,
        childNumber34: this.parentNumber,
        childNumber35: this.parentNumber,
        childNumber36: this.parentNumber,
        childNumber37: this.parentNumber,
        childNumber38: this.parentNumber,
        childNumber39: this.parentNumber,
        childNumber40: this.parentNumber,
        childNumber41: this.parentNumber,
        childNumber42: this.parentNumber,
        childNumber43: this.parentNumber,
        childNumber44: this.parentNumber,
        childNumber45: this.parentNumber,
        childNumber46: this.parentNumber,
        childNumber47: this.parentNumber,
        childNumber48: this.parentNumber,
        childNumber49: this.parentNumber,
      })
    }
  }
}