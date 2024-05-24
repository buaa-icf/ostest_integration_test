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

const timeHelper: TimeHelper = new TimeHelper('OnceObjectSample')
let isType: boolean = true
@ComponentV2
struct ChildOnceObjectSample {
  @Event changeChildObject:(x: number) => void = (x: number) => {};
  a = timeHelper.printStateTime(true, 1, new StateModel(StateConstants.CREATE_STATE, true))
  @Once @Param childObject: Object = "child Param"
  @Once @Param childObject1: Object = "child Param"
  @Once @Param childObject2: Object = "child Param"
  @Once @Param childObject3: Object = "child Param"
  @Once @Param childObject4: Object = "child Param"
  @Once @Param childObject5: Object = "child Param"
  @Once @Param childObject6: Object = "child Param"
  @Once @Param childObject7: Object = "child Param"
  @Once @Param childObject8: Object = "child Param"
  @Once @Param childObject9: Object = "child Param"
  @Once @Param childObject10: Object = "child Param"
  @Once @Param childObject11: Object = "child Param"
  @Once @Param childObject12: Object = "child Param"
  @Once @Param childObject13: Object = "child Param"
  @Once @Param childObject14: Object = "child Param"
  @Once @Param childObject15: Object = "child Param"
  @Once @Param childObject16: Object = "child Param"
  @Once @Param childObject17: Object = "child Param"
  @Once @Param childObject18: Object = "child Param"
  @Once @Param childObject19: Object = "child Param"
  @Once @Param childObject20: Object = "child Param"
  @Once @Param childObject21: Object = "child Param"
  @Once @Param childObject22: Object = "child Param"
  @Once @Param childObject23: Object = "child Param"
  @Once @Param childObject24: Object = "child Param"
  @Once @Param childObject25: Object = "child Param"
  @Once @Param childObject26: Object = "child Param"
  @Once @Param childObject27: Object = "child Param"
  @Once @Param childObject28: Object = "child Param"
  @Once @Param childObject29: Object = "child Param"
  @Once @Param childObject30: Object = "child Param"
  @Once @Param childObject31: Object = "child Param"
  @Once @Param childObject32: Object = "child Param"
  @Once @Param childObject33: Object = "child Param"
  @Once @Param childObject34: Object = "child Param"
  @Once @Param childObject35: Object = "child Param"
  @Once @Param childObject36: Object = "child Param"
  @Once @Param childObject37: Object = "child Param"
  @Once @Param childObject38: Object = "child Param"
  @Once @Param childObject39: Object = "child Param"
  @Once @Param childObject40: Object = "child Param"
  @Once @Param childObject41: Object = "child Param"
  @Once @Param childObject42: Object = "child Param"
  @Once @Param childObject43: Object = "child Param"
  @Once @Param childObject44: Object = "child Param"
  @Once @Param childObject45: Object = "child Param"
  @Once @Param childObject46: Object = "child Param"
  @Once @Param childObject47: Object = "child Param"
  @Once @Param childObject48: Object = "child Param"
  @Once @Param childObject49: Object = "child Param"
  b = timeHelper.printStateTime(false, 1, new StateModel(StateConstants.CREATE_STATE, true))

  aboutToAppear(): void {
    timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, false))
    for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
      let value = this.childObject
    }
    timeHelper.printStateTime(false, 1, new StateModel(StateConstants.READ_STATE, false))
  }

  build() {
    Column({ space: 15 }) {
      Text(StateUtils.isType(isType,timeHelper) ? `child value: ${this.childObject.toString()}` :
        `child value: ${this.childObject.toString()}`)
      Button('child click: 读@Once的耗时')
        .id('getStateTimeTaken')
        .onClick(() => {
          timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, true))
          for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
            let value = this.childObject
          }
          timeHelper.printStateTime(false, 1, new StateModel(StateConstants.READ_STATE, true))
        })
    }
  }
}


@Entry
@ComponentV2
struct OnceObjectSample {
  @Local parentObject: Object = 'hello, world';
  changeParentObject:(type: number) => void = (type: number) => {
    if(type==0){
      this.parentObject='你好, 世界'
    }else if(type==1){
      this.parentObject='world hello'
    }
  };
  build() {
    Column({ space: 15 }) {
      Text('OnceObjectSample')
        .fontSize('25')
        .textAlign(TextAlign.Center)
        .margin({ bottom: 50, top: 50 })
      Text(`parent value: ${this.parentObject.toString()}`)
      ChildOnceObjectSample({childObject:this.parentObject,changeChildObject:this.changeParentObject.bind(this)})
    }
  }
}