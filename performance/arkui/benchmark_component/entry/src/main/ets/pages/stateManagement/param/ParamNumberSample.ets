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

const timeHelper: TimeHelper = new TimeHelper('ParamNumberSample')

@ComponentV2
struct ChildParamNumberSample {
  @Event changeChildNumber: (x: number) => void = (x: number) => {
  };
  a = timeHelper.printStateTime(true, 1, new StateModel(StateConstants.CREATE_STATE, true))
  @Param childNumber: number = 10;
  @Param childNumber1: number = 10;
  @Param childNumber2: number = 10;
  @Param childNumber3: number = 10;
  @Param childNumber4: number = 10;
  @Param childNumber5: number = 10;
  @Param childNumber6: number = 10;
  @Param childNumber7: number = 10;
  @Param childNumber8: number = 10;
  @Param childNumber9: number = 10;
  @Param childNumber10: number = 10;
  @Param childNumber11: number = 10;
  @Param childNumber12: number = 10;
  @Param childNumber13: number = 10;
  @Param childNumber14: number = 10;
  @Param childNumber15: number = 10;
  @Param childNumber16: number = 10;
  @Param childNumber17: number = 10;
  @Param childNumber18: number = 10;
  @Param childNumber19: number = 10;
  @Param childNumber20: number = 10;
  @Param childNumber21: number = 10;
  @Param childNumber22: number = 10;
  @Param childNumber23: number = 10;
  @Param childNumber24: number = 10;
  @Param childNumber25: number = 10;
  @Param childNumber26: number = 10;
  @Param childNumber27: number = 10;
  @Param childNumber28: number = 10;
  @Param childNumber29: number = 10;
  @Param childNumber30: number = 10;
  @Param childNumber31: number = 10;
  @Param childNumber32: number = 10;
  @Param childNumber33: number = 10;
  @Param childNumber34: number = 10;
  @Param childNumber35: number = 10;
  @Param childNumber36: number = 10;
  @Param childNumber37: number = 10;
  @Param childNumber38: number = 10;
  @Param childNumber39: number = 10;
  @Param childNumber40: number = 10;
  @Param childNumber41: number = 10;
  @Param childNumber42: number = 10;
  @Param childNumber43: number = 10;
  @Param childNumber44: number = 10;
  @Param childNumber45: number = 10;
  @Param childNumber46: number = 10;
  @Param childNumber47: number = 10;
  @Param childNumber48: number = 10;
  @Param childNumber49: number = 10;
  b = timeHelper.printStateTime(false, 1, new StateModel(StateConstants.CREATE_STATE, true))
  @Local isTypeState: boolean = true

  aboutToAppear(): void {
    timeHelper.printStateTime(true, 1, new StateModel(StateConstants.WRITE_STATE, false))
    for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
      this.changeChildNumber(0)
    }
    timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, false))
    timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, false))
    for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
      let value = this.childNumber
    }
    timeHelper.printStateTime(false, 1, new StateModel(StateConstants.READ_STATE, false))
  }

  build() {
    Column({ space: 15 }) {
      Text(`child value: ${this.childNumber}`)
      Button('child click: 读@Param的耗时')
        .id('getStateTimeTaken')
        .onClick(() => {
          timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, true))
          for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
            let value = this.childNumber
          }
          timeHelper.printStateTime(false, 1, new StateModel(StateConstants.READ_STATE, true))
        })
      Button('child click: 写@Param的耗时')
        .id('setStateTimeTaken')
        .onClick(() => {
          this.isTypeState = !this.isTypeState
          timeHelper.printStateTime(true, 1, new StateModel(StateConstants.WRITE_STATE, true))
          for (let index = ArrEntity.STATE_LOOP; index > 0; index--) {
            this.changeChildNumber(0)
          }
          timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, true))
        })
    }
  }
}


@Entry
@ComponentV2
struct ParamNumberSample {
  @Local parentNumber: number = 10;
  changeParentNumber: (type: number) => void = (type: number) => {
    if (type == 0) {
      this.parentNumber += 1
    }
  };

  build() {
    Column({ space: 15 }) {
      Text('ParamNumberSample')
        .fontSize('25')
        .textAlign(TextAlign.Center)
        .margin({ bottom: 50, top: 50 })
      Text(`parent value: ${this.parentNumber}`)
      ChildParamNumberSample({
        childNumber: this.parentNumber,
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
        changeChildNumber: this.changeParentNumber.bind(this)
      })
    }
  }
}