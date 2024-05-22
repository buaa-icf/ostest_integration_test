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
import { StateUtils } from '../StateUtils';

const timeHelper: TimeHelper = new TimeHelper('ParamNumberSample')
let isType: boolean = true
@ComponentV2
struct ChildParamNumberSample {
  @Event changeChildNumber:(x: number) => void = (x: number) => {};
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
      this.changeChildNumber(index%2)
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
      Text(StateUtils.isType(isType,timeHelper) ? `child value: ${this.childNumber}` :
        `child value: ${this.childNumber}`)
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
          isType = true
          this.isTypeState = !this.isTypeState
          timeHelper.printStateTime(true, 1, new StateModel(StateConstants.WRITE_STATE, true))
          for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
            this.changeChildNumber(index%2)
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
  changeParentNumber:(type: number) => void = (type: number) => {
    if(type==0){
      this.parentNumber=99
    }else if(type==1){
      this.parentNumber=999
    }
  };
  build() {
    Column({ space: 15 }) {
      Text('ParamNumberSample')
        .fontSize('25')
        .textAlign(TextAlign.Center)
        .margin({ bottom: 50, top: 50 })
      Text(`parent value: ${this.parentNumber}`)
      Button('parent click')
        .id('changeUITimeTaken')
        .onClick(() => {
          isType = false
          this.parentNumber+=1
          timeHelper.printStateTime(true, 1, new StateModel(StateConstants.UI_CHANGE, true))
        })
      ChildParamNumberSample({childNumber:this.parentNumber,changeChildNumber:this.changeParentNumber.bind(this)})
    }
  }
}