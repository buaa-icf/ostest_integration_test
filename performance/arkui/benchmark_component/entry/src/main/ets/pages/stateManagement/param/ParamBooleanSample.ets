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

const timeHelper: TimeHelper = new TimeHelper('ParamBooleanSample')
let isType: boolean = true
@ComponentV2
struct ChildParamBooleanSample {
  @Event changeChildBoolean : (x: number) => void = (x: number) => {};
  a = timeHelper.printStateTime(true, 1, new StateModel(StateConstants.CREATE_STATE, true))
  @Param childBoolean: boolean = true;
  @Param childBoolean1: boolean = true;
  @Param childBoolean2: boolean = true;
  @Param childBoolean3: boolean = true;
  @Param childBoolean4: boolean = true;
  @Param childBoolean5: boolean = true;
  @Param childBoolean6: boolean = true;
  @Param childBoolean7: boolean = true;
  @Param childBoolean8: boolean = true;
  @Param childBoolean9: boolean = true;
  @Param childBoolean10: boolean = true;
  @Param childBoolean11: boolean = true;
  @Param childBoolean12: boolean = true;
  @Param childBoolean13: boolean = true;
  @Param childBoolean14: boolean = true;
  @Param childBoolean15: boolean = true;
  @Param childBoolean16: boolean = true;
  @Param childBoolean17: boolean = true;
  @Param childBoolean18: boolean = true;
  @Param childBoolean19: boolean = true;
  @Param childBoolean20: boolean = true;
  @Param childBoolean21: boolean = true;
  @Param childBoolean22: boolean = true;
  @Param childBoolean23: boolean = true;
  @Param childBoolean24: boolean = true;
  @Param childBoolean25: boolean = true;
  @Param childBoolean26: boolean = true;
  @Param childBoolean27: boolean = true;
  @Param childBoolean28: boolean = true;
  @Param childBoolean29: boolean = true;
  @Param childBoolean30: boolean = true;
  @Param childBoolean31: boolean = true;
  @Param childBoolean32: boolean = true;
  @Param childBoolean33: boolean = true;
  @Param childBoolean34: boolean = true;
  @Param childBoolean35: boolean = true;
  @Param childBoolean36: boolean = true;
  @Param childBoolean37: boolean = true;
  @Param childBoolean38: boolean = true;
  @Param childBoolean39: boolean = true;
  @Param childBoolean40: boolean = true;
  @Param childBoolean41: boolean = true;
  @Param childBoolean42: boolean = true;
  @Param childBoolean43: boolean = true;
  @Param childBoolean44: boolean = true;
  @Param childBoolean45: boolean = true;
  @Param childBoolean46: boolean = true;
  @Param childBoolean47: boolean = true;
  @Param childBoolean48: boolean = true;
  @Param childBoolean49: boolean = true;
  b = timeHelper.printStateTime(false, 1, new StateModel(StateConstants.CREATE_STATE, true))
  @Local isTypeState: boolean = true

  aboutToAppear(): void {
    timeHelper.printStateTime(true, 1, new StateModel(StateConstants.WRITE_STATE, false))
    for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
      this.changeChildBoolean(index%2)
    }
    timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, false))
    timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, false))
    for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
      let value = this.childBoolean
    }
    timeHelper.printStateTime(false, 1, new StateModel(StateConstants.READ_STATE, false))
  }

  build() {
    Column({ space: 15 }) {
      Text(StateUtils.isType(isType,timeHelper) ? `child value: ${this.childBoolean}` :
        `child value: ${this.childBoolean}`)
      Button('child click: 读@Param的耗时')
        .id('getStateTimeTaken')
        .onClick(() => {
          timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, true))
          for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
            let value = this.childBoolean
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
            this.changeChildBoolean(index%2)
          }
          timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, true))
        })
    }
  }
}


@Entry
@ComponentV2
struct ParamBooleanSample {
  @Local parentBoolean: boolean = true;
  changeParentBoolean : (type: number) => void = (type: number) => {
    if(type==0){
      this.parentBoolean=true
    }else if(type==1){
      this.parentBoolean=false
    }
  };
  build() {
    Column({ space: 15 }) {
      Text('ParamBooleanSample')
        .fontSize('25')
        .textAlign(TextAlign.Center)
        .margin({ bottom: 50, top: 50 })
      Text(`parent value: ${this.parentBoolean}`)
      Button('parent click')
        .id('changeUITimeTaken')
        .onClick(() => {
          isType = false
          this.parentBoolean=!this.parentBoolean
          timeHelper.printStateTime(true, 1, new StateModel(StateConstants.UI_CHANGE, true))
        })
      ChildParamBooleanSample({childBoolean:this.parentBoolean,changeChildBoolean: this.changeParentBoolean.bind(this)})
    }
  }
}