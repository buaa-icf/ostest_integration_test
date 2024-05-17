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
  b = timeHelper.printStateTime(false, 1, new StateModel(StateConstants.CREATE_STATE, true))

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
          let value = this.childBoolean
          timeHelper.printStateTime(false, 1, new StateModel(StateConstants.READ_STATE, true))
        })
      Button('child click: 写@Param的耗时')
        .id('setStateTimeTaken')
        .onClick(() => {
          isType = true
          timeHelper.printStateTime(true, 1, new StateModel(StateConstants.WRITE_STATE, true))
          this.changeChildBoolean(1)
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