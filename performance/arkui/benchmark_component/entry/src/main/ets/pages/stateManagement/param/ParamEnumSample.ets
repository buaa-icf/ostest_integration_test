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
import { LanguageEnum } from '../ClassModel';
import { StateConstants, StateModel } from '../StateModel';
import { StateUtils } from '../StateUtils';

const timeHelper: TimeHelper = new TimeHelper('ParamEnumSample')
let isType: boolean = true
@ComponentV2
struct ChildParamEnumSample {
  @Event changeChildEnum:(x: number) => void = (x: number) => {};
  a = timeHelper.printStateTime(true, 1, new StateModel(StateConstants.CREATE_STATE, true))
  @Param childEnum: LanguageEnum = LanguageEnum.English;
  @Param childEnum1: LanguageEnum = LanguageEnum.English;
  @Param childEnum2: LanguageEnum = LanguageEnum.English;
  @Param childEnum3: LanguageEnum = LanguageEnum.English;
  @Param childEnum4: LanguageEnum = LanguageEnum.English;
  @Param childEnum5: LanguageEnum = LanguageEnum.English;
  @Param childEnum6: LanguageEnum = LanguageEnum.English;
  @Param childEnum7: LanguageEnum = LanguageEnum.English;
  @Param childEnum8: LanguageEnum = LanguageEnum.English;
  @Param childEnum9: LanguageEnum = LanguageEnum.English;
  @Param childEnum10: LanguageEnum = LanguageEnum.English;
  @Param childEnum11: LanguageEnum = LanguageEnum.English;
  @Param childEnum12: LanguageEnum = LanguageEnum.English;
  @Param childEnum13: LanguageEnum = LanguageEnum.English;
  @Param childEnum14: LanguageEnum = LanguageEnum.English;
  @Param childEnum15: LanguageEnum = LanguageEnum.English;
  @Param childEnum16: LanguageEnum = LanguageEnum.English;
  @Param childEnum17: LanguageEnum = LanguageEnum.English;
  @Param childEnum18: LanguageEnum = LanguageEnum.English;
  @Param childEnum19: LanguageEnum = LanguageEnum.English;
  @Param childEnum20: LanguageEnum = LanguageEnum.English;
  @Param childEnum21: LanguageEnum = LanguageEnum.English;
  @Param childEnum22: LanguageEnum = LanguageEnum.English;
  @Param childEnum23: LanguageEnum = LanguageEnum.English;
  @Param childEnum24: LanguageEnum = LanguageEnum.English;
  @Param childEnum25: LanguageEnum = LanguageEnum.English;
  @Param childEnum26: LanguageEnum = LanguageEnum.English;
  @Param childEnum27: LanguageEnum = LanguageEnum.English;
  @Param childEnum28: LanguageEnum = LanguageEnum.English;
  @Param childEnum29: LanguageEnum = LanguageEnum.English;
  @Param childEnum30: LanguageEnum = LanguageEnum.English;
  @Param childEnum31: LanguageEnum = LanguageEnum.English;
  @Param childEnum32: LanguageEnum = LanguageEnum.English;
  @Param childEnum33: LanguageEnum = LanguageEnum.English;
  @Param childEnum34: LanguageEnum = LanguageEnum.English;
  @Param childEnum35: LanguageEnum = LanguageEnum.English;
  @Param childEnum36: LanguageEnum = LanguageEnum.English;
  @Param childEnum37: LanguageEnum = LanguageEnum.English;
  @Param childEnum38: LanguageEnum = LanguageEnum.English;
  @Param childEnum39: LanguageEnum = LanguageEnum.English;
  @Param childEnum40: LanguageEnum = LanguageEnum.English;
  @Param childEnum41: LanguageEnum = LanguageEnum.English;
  @Param childEnum42: LanguageEnum = LanguageEnum.English;
  @Param childEnum43: LanguageEnum = LanguageEnum.English;
  @Param childEnum44: LanguageEnum = LanguageEnum.English;
  @Param childEnum45: LanguageEnum = LanguageEnum.English;
  @Param childEnum46: LanguageEnum = LanguageEnum.English;
  @Param childEnum47: LanguageEnum = LanguageEnum.English;
  @Param childEnum48: LanguageEnum = LanguageEnum.English;
  @Param childEnum49: LanguageEnum = LanguageEnum.English;
  b = timeHelper.printStateTime(false, 1, new StateModel(StateConstants.CREATE_STATE, true))
  @Local isTypeState: boolean = true

  aboutToAppear(): void {
    timeHelper.printStateTime(true, 1, new StateModel(StateConstants.WRITE_STATE, false))
    for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
      this.changeChildEnum(index%2)
    }
    timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, false))
    timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, false))
    for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
      let value = this.childEnum
    }
    timeHelper.printStateTime(false, 1, new StateModel(StateConstants.READ_STATE, false))
  }

  build() {
    Column({ space: 15 }) {
      Text(StateUtils.isType(isType,timeHelper) ? `child value: ${this.childEnum}` :
        `child value: ${this.childEnum}`)
      Button('child click:读@Param的耗时')
        .id('getStateTimeTaken')
        .onClick(() => {
          timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, true))
          for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
            let value = this.childEnum
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
            this.changeChildEnum(index%2)
          }
          timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, true))
        })
    }
  }
}


@Entry
@ComponentV2
struct ParamEnumSample {
  @Local parentEnum: LanguageEnum = LanguageEnum.English;
  changeParentEnum:(type: number) => void = (type: number) => {
    if(type==0){
      this.parentEnum=LanguageEnum.Chinese
    }else if(type==1){
      this.parentEnum=LanguageEnum.French
    }
  };
  build() {
    Column({ space: 15 }) {
      Text('ParamEnumSample')
        .fontSize('25')
        .textAlign(TextAlign.Center)
        .margin({ bottom: 50, top: 50 })
      Text(`parent value: ${this.parentEnum}`)
      Button('parent click')
        .id('changeUITimeTaken')
        .onClick(() => {
          isType = false
          this.parentEnum=LanguageEnum.Chinese
          timeHelper.printStateTime(true, 1, new StateModel(StateConstants.UI_CHANGE, true))
        })
      ChildParamEnumSample({childEnum:this.parentEnum,changeChildEnum:this.changeParentEnum.bind(this)})
    }
  }
}