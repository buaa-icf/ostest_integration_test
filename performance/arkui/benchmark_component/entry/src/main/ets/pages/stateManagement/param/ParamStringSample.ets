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

const timeHelper: TimeHelper = new TimeHelper('ParamStringSample')
let isType: boolean = true

@ComponentV2
struct ChildParamStringSample {
  @Event changeChildString:(x: number) => void = (x: number) => {};
  a = timeHelper.printStateTime(true, 1, new StateModel(StateConstants.CREATE_STATE, true))
  @Param childString: string = 'childString';
  @Param childString1: string = 'childString';
  @Param childString2: string = 'childString';
  @Param childString3: string = 'childString';
  @Param childString4: string = 'childString';
  @Param childString5: string = 'childString';
  @Param childString6: string = 'childString';
  @Param childString7: string = 'childString';
  @Param childString8: string = 'childString';
  @Param childString9: string = 'childString';
  @Param childString10: string = 'childString';
  @Param childString11: string = 'childString';
  @Param childString12: string = 'childString';
  @Param childString13: string = 'childString';
  @Param childString14: string = 'childString';
  @Param childString15: string = 'childString';
  @Param childString16: string = 'childString';
  @Param childString17: string = 'childString';
  @Param childString18: string = 'childString';
  @Param childString19: string = 'childString';
  @Param childString20: string = 'childString';
  @Param childString21: string = 'childString';
  @Param childString22: string = 'childString';
  @Param childString23: string = 'childString';
  @Param childString24: string = 'childString';
  @Param childString25: string = 'childString';
  @Param childString26: string = 'childString';
  @Param childString27: string = 'childString';
  @Param childString28: string = 'childString';
  @Param childString29: string = 'childString';
  @Param childString30: string = 'childString';
  @Param childString31: string = 'childString';
  @Param childString32: string = 'childString';
  @Param childString33: string = 'childString';
  @Param childString34: string = 'childString';
  @Param childString35: string = 'childString';
  @Param childString36: string = 'childString';
  @Param childString37: string = 'childString';
  @Param childString38: string = 'childString';
  @Param childString39: string = 'childString';
  @Param childString40: string = 'childString';
  @Param childString41: string = 'childString';
  @Param childString42: string = 'childString';
  @Param childString43: string = 'childString';
  @Param childString44: string = 'childString';
  @Param childString45: string = 'childString';
  @Param childString46: string = 'childString';
  @Param childString47: string = 'childString';
  @Param childString48: string = 'childString';
  @Param childString49: string = 'childString';
  b = timeHelper.printStateTime(false, 1, new StateModel(StateConstants.CREATE_STATE, true))
  @Local isTypeState: boolean = true

  aboutToAppear(): void {
    timeHelper.printStateTime(true, 1, new StateModel(StateConstants.WRITE_STATE, false))
    for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
      this.changeChildString(index%2)
    }
    timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, false))
    timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, false))
    for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
      let value = this.childString
    }
    timeHelper.printStateTime(false, 1, new StateModel(StateConstants.READ_STATE, false))
  }

  build() {
    Column({ space: 15 }) {
      Text(StateUtils.isType(isType,timeHelper) ? `child value: ${this.childString}` :
        `child value: ${this.childString}`)
      Button('child click: 读@Param的耗时')
        .id('getStateTimeTaken')
        .onClick(() => {
          timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, true))
          for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
            let value = this.childString
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
            this.changeChildString(index%2)
          }
          timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, true))
        })
    }
  }
}


@Entry
@ComponentV2
struct ParamStringSample {
  @Local parentString: string = 'parentParam';
  changeParentString:(type: number) => void = (type: number) => {
    if(type==0){
      this.parentString='你好, 世界'
    }else if(type==1){
      this.parentString='world hello'
    }
  };
  build() {
    Column({ space: 15 }) {
      Text('ParamStringSample')
        .fontSize('25')
        .textAlign(TextAlign.Center)
        .margin({ bottom: 50, top: 50 })
      Text(`parent value: ${this.parentString}`)
      Button('parent click')
        .id('changeUITimeTaken')
        .onClick(() => {
          isType = false
          this.parentString= 'parent: parentSetStateTimeTaken'
          timeHelper.printStateTime(true, 1, new StateModel(StateConstants.UI_CHANGE, true))
        })
      ChildParamStringSample({childString: this.parentString,changeChildString:this.changeParentString.bind(this)})
    }
  }
}