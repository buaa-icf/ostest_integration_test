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

const timeHelper: TimeHelper = new TimeHelper('OnceUnionSample')
let isType: boolean = true
@ComponentV2
struct ChildOnceUnionSample {
  @Event changeChildUnion:(x: number) => void = (x: number) => {};
  a = timeHelper.printStateTime(true, 1, new StateModel(StateConstants.CREATE_STATE, true))
  @Once @Param childUnion: null|undefined|number=0
  @Once @Param childUnion1: null|undefined|number=0
  @Once @Param childUnion2: null|undefined|number=0
  @Once @Param childUnion3: null|undefined|number=0
  @Once @Param childUnion4: null|undefined|number=0
  @Once @Param childUnion5: null|undefined|number=0
  @Once @Param childUnion6: null|undefined|number=0
  @Once @Param childUnion7: null|undefined|number=0
  @Once @Param childUnion8: null|undefined|number=0
  @Once @Param childUnion9: null|undefined|number=0
  @Once @Param childUnion10: null|undefined|number=0
  @Once @Param childUnion11: null|undefined|number=0
  @Once @Param childUnion12: null|undefined|number=0
  @Once @Param childUnion13: null|undefined|number=0
  @Once @Param childUnion14: null|undefined|number=0
  @Once @Param childUnion15: null|undefined|number=0
  @Once @Param childUnion16: null|undefined|number=0
  @Once @Param childUnion17: null|undefined|number=0
  @Once @Param childUnion18: null|undefined|number=0
  @Once @Param childUnion19: null|undefined|number=0
  @Once @Param childUnion20: null|undefined|number=0
  @Once @Param childUnion21: null|undefined|number=0
  @Once @Param childUnion22: null|undefined|number=0
  @Once @Param childUnion23: null|undefined|number=0
  @Once @Param childUnion24: null|undefined|number=0
  @Once @Param childUnion25: null|undefined|number=0
  @Once @Param childUnion26: null|undefined|number=0
  @Once @Param childUnion27: null|undefined|number=0
  @Once @Param childUnion28: null|undefined|number=0
  @Once @Param childUnion29: null|undefined|number=0
  @Once @Param childUnion30: null|undefined|number=0
  @Once @Param childUnion31: null|undefined|number=0
  @Once @Param childUnion32: null|undefined|number=0
  @Once @Param childUnion33: null|undefined|number=0
  @Once @Param childUnion34: null|undefined|number=0
  @Once @Param childUnion35: null|undefined|number=0
  @Once @Param childUnion36: null|undefined|number=0
  @Once @Param childUnion37: null|undefined|number=0
  @Once @Param childUnion38: null|undefined|number=0
  @Once @Param childUnion39: null|undefined|number=0
  @Once @Param childUnion40: null|undefined|number=0
  @Once @Param childUnion41: null|undefined|number=0
  @Once @Param childUnion42: null|undefined|number=0
  @Once @Param childUnion43: null|undefined|number=0
  @Once @Param childUnion44: null|undefined|number=0
  @Once @Param childUnion45: null|undefined|number=0
  @Once @Param childUnion46: null|undefined|number=0
  @Once @Param childUnion47: null|undefined|number=0
  @Once @Param childUnion48: null|undefined|number=0
  @Once @Param childUnion49: null|undefined|number=0
  b = timeHelper.printStateTime(false, 1, new StateModel(StateConstants.CREATE_STATE, true))

  aboutToAppear(): void {
    timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, false))
    for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
      let value = this.childUnion
    }
    timeHelper.printStateTime(false, 1, new StateModel(StateConstants.READ_STATE, false))
  }

  build() {
    Column({ space: 15 }) {
      Text(StateUtils.isType(isType,timeHelper) ? `child value: ${this.childUnion}` :
        `child value: ${this.childUnion}`)
      Button('child click: 读@Once的耗时')
        .id('getStateTimeTaken')
        .onClick(() => {
          timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, true))
          for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
            let value = this.childUnion
          }
          timeHelper.printStateTime(false, 1, new StateModel(StateConstants.READ_STATE, true))
        })
    }
  }
}


@Entry
@ComponentV2
struct OnceUnionSample {
  @Local parentUnion: null|undefined|number=0
  changeParentUnion:(type: number) => void = (type: number) => {
    if(type==0){
      this.parentUnion=undefined
    }else if(type==1){
      this.parentUnion=null
    }
  };
  build() {
    Column({ space: 15 }) {
      Text('OnceUnionSample')
        .fontSize('25')
        .textAlign(TextAlign.Center)
        .margin({ bottom: 50, top: 50 })
      Text(`parent value: ${this.parentUnion}`)
      ChildOnceUnionSample({childUnion:this.parentUnion,changeChildUnion:this.changeParentUnion.bind(this)})
    }
  }
}