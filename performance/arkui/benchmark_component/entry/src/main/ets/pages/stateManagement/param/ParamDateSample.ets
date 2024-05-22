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

const timeHelper: TimeHelper = new TimeHelper('ParamDateSample')
let isType: boolean = true
@ComponentV2
struct ChildParamDateSample {
  @Event changeChildDate:(x: number) => void = (x: number) => {};
  a = timeHelper.printStateTime(true, 1, new StateModel(StateConstants.CREATE_STATE, true))
  @Param childDate: Date = new Date('2021-08-08')
  @Param childDate1: Date = new Date('2021-08-08')
  @Param childDate2: Date = new Date('2021-08-08')
  @Param childDate3: Date = new Date('2021-08-08')
  @Param childDate4: Date = new Date('2021-08-08')
  @Param childDate5: Date = new Date('2021-08-08')
  @Param childDate6: Date = new Date('2021-08-08')
  @Param childDate7: Date = new Date('2021-08-08')
  @Param childDate8: Date = new Date('2021-08-08')
  @Param childDate9: Date = new Date('2021-08-08')
  @Param childDate10: Date = new Date('2021-08-08')
  @Param childDate11: Date = new Date('2021-08-08')
  @Param childDate12: Date = new Date('2021-08-08')
  @Param childDate13: Date = new Date('2021-08-08')
  @Param childDate14: Date = new Date('2021-08-08')
  @Param childDate15: Date = new Date('2021-08-08')
  @Param childDate16: Date = new Date('2021-08-08')
  @Param childDate17: Date = new Date('2021-08-08')
  @Param childDate18: Date = new Date('2021-08-08')
  @Param childDate19: Date = new Date('2021-08-08')
  @Param childDate20: Date = new Date('2021-08-08')
  @Param childDate21: Date = new Date('2021-08-08')
  @Param childDate22: Date = new Date('2021-08-08')
  @Param childDate23: Date = new Date('2021-08-08')
  @Param childDate24: Date = new Date('2021-08-08')
  @Param childDate25: Date = new Date('2021-08-08')
  @Param childDate26: Date = new Date('2021-08-08')
  @Param childDate27: Date = new Date('2021-08-08')
  @Param childDate28: Date = new Date('2021-08-08')
  @Param childDate29: Date = new Date('2021-08-08')
  @Param childDate30: Date = new Date('2021-08-08')
  @Param childDate31: Date = new Date('2021-08-08')
  @Param childDate32: Date = new Date('2021-08-08')
  @Param childDate33: Date = new Date('2021-08-08')
  @Param childDate34: Date = new Date('2021-08-08')
  @Param childDate35: Date = new Date('2021-08-08')
  @Param childDate36: Date = new Date('2021-08-08')
  @Param childDate37: Date = new Date('2021-08-08')
  @Param childDate38: Date = new Date('2021-08-08')
  @Param childDate39: Date = new Date('2021-08-08')
  @Param childDate40: Date = new Date('2021-08-08')
  @Param childDate41: Date = new Date('2021-08-08')
  @Param childDate42: Date = new Date('2021-08-08')
  @Param childDate43: Date = new Date('2021-08-08')
  @Param childDate44: Date = new Date('2021-08-08')
  @Param childDate45: Date = new Date('2021-08-08')
  @Param childDate46: Date = new Date('2021-08-08')
  @Param childDate47: Date = new Date('2021-08-08')
  @Param childDate48: Date = new Date('2021-08-08')
  @Param childDate49: Date = new Date('2021-08-08')
  b = timeHelper.printStateTime(false, 1, new StateModel(StateConstants.CREATE_STATE, true))
  @Local isTypeState: boolean = true

  aboutToAppear(): void {
    timeHelper.printStateTime(true, 1, new StateModel(StateConstants.WRITE_STATE, false))
    for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
      this.changeChildDate(index%1)
    }
    timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, false))
    timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, false))
    for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
      let value = this.childDate.getTime()
    }
    timeHelper.printStateTime(false, 1, new StateModel(StateConstants.READ_STATE, false))
  }

  build() {
    Column({ space: 15 }) {
      Text(StateUtils.isType(isType,timeHelper) ? `child value: ${this.childDate.toTimeString()}` :
        `child value: ${this.childDate.toTimeString()}`)
      Button('child click: 读@Param的耗时')
        .id('getStateTimeTaken')
        .onClick(() => {
          timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, true))
          for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
            let value = this.childDate.getTime()
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
            this.changeChildDate(index%1)
          }
          timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, true))
        })
    }
  }
}


@Entry
@ComponentV2
struct ParamDateSample {
  @Local parentDate: Date=new Date('2021-08-08');
  changeParentDate : (type: number) => void = (type: number) => {
    if(type==0){
      this.parentDate.setTime(this.parentDate.getTime() + 100 * 60 * 60 * 1000)
    }
  };
  build() {
    Column({ space: 15 }) {
      Text('ParamDateSample')
        .fontSize('25')
        .textAlign(TextAlign.Center)
        .margin({ bottom: 50, top: 50 })
      Text(`parent value: ${this.parentDate.toTimeString()}`)
      Button('parent click')
        .id('changeUITimeTaken')
        .onClick(() => {
          isType = false
          this.parentDate.setTime((this.parentDate.getTime() + 100 * 60 * 60 * 1000))
          timeHelper.printStateTime(true, 1, new StateModel(StateConstants.UI_CHANGE, true))
        })
      ChildParamDateSample({childDate:this.parentDate,changeChildDate:this.changeParentDate.bind(this)})
    }
  }
}