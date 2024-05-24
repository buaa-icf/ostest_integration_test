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

const timeHelper: TimeHelper = new TimeHelper('OnceStringSample')
let isType: boolean = true

@ComponentV2
struct ChildOnceStringSample {
  @Event changeChildString:(x: number) => void = (x: number) => {};
  a = timeHelper.printStateTime(true, 1, new StateModel(StateConstants.CREATE_STATE, true))
  @Once @Param childString: string = 'childString';
  @Once @Param childString1: string = 'childString';
  @Once @Param childString2: string = 'childString';
  @Once @Param childString3: string = 'childString';
  @Once @Param childString4: string = 'childString';
  @Once @Param childString5: string = 'childString';
  @Once @Param childString6: string = 'childString';
  @Once @Param childString7: string = 'childString';
  @Once @Param childString8: string = 'childString';
  @Once @Param childString9: string = 'childString';
  @Once @Param childString10: string = 'childString';
  @Once @Param childString11: string = 'childString';
  @Once @Param childString12: string = 'childString';
  @Once @Param childString13: string = 'childString';
  @Once @Param childString14: string = 'childString';
  @Once @Param childString15: string = 'childString';
  @Once @Param childString16: string = 'childString';
  @Once @Param childString17: string = 'childString';
  @Once @Param childString18: string = 'childString';
  @Once @Param childString19: string = 'childString';
  @Once @Param childString20: string = 'childString';
  @Once @Param childString21: string = 'childString';
  @Once @Param childString22: string = 'childString';
  @Once @Param childString23: string = 'childString';
  @Once @Param childString24: string = 'childString';
  @Once @Param childString25: string = 'childString';
  @Once @Param childString26: string = 'childString';
  @Once @Param childString27: string = 'childString';
  @Once @Param childString28: string = 'childString';
  @Once @Param childString29: string = 'childString';
  @Once @Param childString30: string = 'childString';
  @Once @Param childString31: string = 'childString';
  @Once @Param childString32: string = 'childString';
  @Once @Param childString33: string = 'childString';
  @Once @Param childString34: string = 'childString';
  @Once @Param childString35: string = 'childString';
  @Once @Param childString36: string = 'childString';
  @Once @Param childString37: string = 'childString';
  @Once @Param childString38: string = 'childString';
  @Once @Param childString39: string = 'childString';
  @Once @Param childString40: string = 'childString';
  @Once @Param childString41: string = 'childString';
  @Once @Param childString42: string = 'childString';
  @Once @Param childString43: string = 'childString';
  @Once @Param childString44: string = 'childString';
  @Once @Param childString45: string = 'childString';
  @Once @Param childString46: string = 'childString';
  @Once @Param childString47: string = 'childString';
  @Once @Param childString48: string = 'childString';
  @Once @Param childString49: string = 'childString';
  b = timeHelper.printStateTime(false, 1, new StateModel(StateConstants.CREATE_STATE, true))

  aboutToAppear(): void {
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
      Button('child click: 读@Once的耗时')
        .id('getStateTimeTaken')
        .onClick(() => {
          timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, true))
          for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
            let value = this.childString
          }
          timeHelper.printStateTime(false, 1, new StateModel(StateConstants.READ_STATE, true))
        })
    }
  }
}


@Entry
@ComponentV2
struct OnceStringSample {
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
      Text('OnceStringSample')
        .fontSize('25')
        .textAlign(TextAlign.Center)
        .margin({ bottom: 50, top: 50 })
      Text(`parent value: ${this.parentString}`)
      ChildOnceStringSample({childString: this.parentString,changeChildString:this.changeParentString.bind(this)})
    }
  }
}