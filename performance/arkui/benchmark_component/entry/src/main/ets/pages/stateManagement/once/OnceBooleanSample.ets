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

const timeHelper: TimeHelper = new TimeHelper('OnceBooleanSample')
let isType: boolean = true
@ComponentV2
struct ChildOnceBooleanSample {
  @Event changeChildBoolean : (x: number) => void = (x: number) => {};
  a = timeHelper.printStateTime(true, 1, new StateModel(StateConstants.CREATE_STATE, true))
  @Once @Param childBoolean: boolean = true;
  @Once @Param childBoolean1: boolean = true;
  @Once @Param childBoolean2: boolean = true;
  @Once @Param childBoolean3: boolean = true;
  @Once @Param childBoolean4: boolean = true;
  @Once @Param childBoolean5: boolean = true;
  @Once @Param childBoolean6: boolean = true;
  @Once @Param childBoolean7: boolean = true;
  @Once @Param childBoolean8: boolean = true;
  @Once @Param childBoolean9: boolean = true;
  @Once @Param childBoolean10: boolean = true;
  @Once @Param childBoolean11: boolean = true;
  @Once @Param childBoolean12: boolean = true;
  @Once @Param childBoolean13: boolean = true;
  @Once @Param childBoolean14: boolean = true;
  @Once @Param childBoolean15: boolean = true;
  @Once @Param childBoolean16: boolean = true;
  @Once @Param childBoolean17: boolean = true;
  @Once @Param childBoolean18: boolean = true;
  @Once @Param childBoolean19: boolean = true;
  @Once @Param childBoolean20: boolean = true;
  @Once @Param childBoolean21: boolean = true;
  @Once @Param childBoolean22: boolean = true;
  @Once @Param childBoolean23: boolean = true;
  @Once @Param childBoolean24: boolean = true;
  @Once @Param childBoolean25: boolean = true;
  @Once @Param childBoolean26: boolean = true;
  @Once @Param childBoolean27: boolean = true;
  @Once @Param childBoolean28: boolean = true;
  @Once @Param childBoolean29: boolean = true;
  @Once @Param childBoolean30: boolean = true;
  @Once @Param childBoolean31: boolean = true;
  @Once @Param childBoolean32: boolean = true;
  @Once @Param childBoolean33: boolean = true;
  @Once @Param childBoolean34: boolean = true;
  @Once @Param childBoolean35: boolean = true;
  @Once @Param childBoolean36: boolean = true;
  @Once @Param childBoolean37: boolean = true;
  @Once @Param childBoolean38: boolean = true;
  @Once @Param childBoolean39: boolean = true;
  @Once @Param childBoolean40: boolean = true;
  @Once @Param childBoolean41: boolean = true;
  @Once @Param childBoolean42: boolean = true;
  @Once @Param childBoolean43: boolean = true;
  @Once @Param childBoolean44: boolean = true;
  @Once @Param childBoolean45: boolean = true;
  @Once @Param childBoolean46: boolean = true;
  @Once @Param childBoolean47: boolean = true;
  @Once @Param childBoolean48: boolean = true;
  @Once @Param childBoolean49: boolean = true;
  b = timeHelper.printStateTime(false, 1, new StateModel(StateConstants.CREATE_STATE, true))

  aboutToAppear(): void {
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
      Button('child click: 读@Once的耗时')
        .id('getStateTimeTaken')
        .onClick(() => {
          timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, true))
          for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
            let value = this.childBoolean
          }
          timeHelper.printStateTime(false, 1, new StateModel(StateConstants.READ_STATE, true))
        })
    }
  }
}


@Entry
@ComponentV2
struct OnceBooleanSample {
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
      Text('OnceBooleanSample')
        .fontSize('25')
        .textAlign(TextAlign.Center)
        .margin({ bottom: 50, top: 50 })
      Text(`parent value: ${this.parentBoolean}`)
      ChildOnceBooleanSample({childBoolean:this.parentBoolean,changeChildBoolean: this.changeParentBoolean.bind(this)})
    }
  }
}