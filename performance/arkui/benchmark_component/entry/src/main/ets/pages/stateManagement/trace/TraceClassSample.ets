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
import { TimeHelper } from '../../../util/TimeHelper';
import { classModel, ClassModel, classModel1 } from '../ClassModel';
import { StateConstants, StateModel } from '../StateModel';

const timeHelper: TimeHelper = new TimeHelper('TraceClassSample');

@ObservedV2
class Father {
  a = timeHelper.printStateTime(true, 1, new StateModel(StateConstants.CREATE_STATE, true))
  @Trace obj: ClassModel = classModel1;
  @Trace obj1: ClassModel = classModel1;
  @Trace obj2: ClassModel = classModel1;
  @Trace obj3: ClassModel = classModel1;
  @Trace obj4: ClassModel = classModel1;
  @Trace obj5: ClassModel = classModel1;
  @Trace obj6: ClassModel = classModel1;
  @Trace obj7: ClassModel = classModel1;
  @Trace obj8: ClassModel = classModel1;
  @Trace obj9: ClassModel = classModel1;
  @Trace obj10: ClassModel = classModel1;
  @Trace obj11: ClassModel = classModel1;
  @Trace obj12: ClassModel = classModel1;
  @Trace obj13: ClassModel = classModel1;
  @Trace obj14: ClassModel = classModel1;
  @Trace obj15: ClassModel = classModel1;
  @Trace obj16: ClassModel = classModel1;
  @Trace obj17: ClassModel = classModel1;
  @Trace obj18: ClassModel = classModel1;
  @Trace obj19: ClassModel = classModel1;
  @Trace obj20: ClassModel = classModel1;
  @Trace obj21: ClassModel = classModel1;
  @Trace obj22: ClassModel = classModel1;
  @Trace obj23: ClassModel = classModel1;
  @Trace obj24: ClassModel = classModel1;
  @Trace obj25: ClassModel = classModel1;
  @Trace obj26: ClassModel = classModel1;
  @Trace obj27: ClassModel = classModel1;
  @Trace obj28: ClassModel = classModel1;
  @Trace obj29: ClassModel = classModel1;
  @Trace obj30: ClassModel = classModel1;
  @Trace obj31: ClassModel = classModel1;
  @Trace obj32: ClassModel = classModel1;
  @Trace obj33: ClassModel = classModel1;
  @Trace obj34: ClassModel = classModel1;
  @Trace obj35: ClassModel = classModel1;
  @Trace obj36: ClassModel = classModel1;
  @Trace obj37: ClassModel = classModel1;
  @Trace obj38: ClassModel = classModel1;
  @Trace obj39: ClassModel = classModel1;
  @Trace obj40: ClassModel = classModel1;
  @Trace obj41: ClassModel = classModel1;
  @Trace obj42: ClassModel = classModel1;
  @Trace obj43: ClassModel = classModel1;
  @Trace obj44: ClassModel = classModel1;
  @Trace obj45: ClassModel = classModel1;
  @Trace obj46: ClassModel = classModel1;
  @Trace obj47: ClassModel = classModel1;
  @Trace obj48: ClassModel = classModel1;
  @Trace obj49: ClassModel = classModel1;
  b = timeHelper.printStateTime(false, 1, new StateModel(StateConstants.CREATE_STATE, true))
}

let parentClass: Father = new Father();

@ComponentV2
struct ChildTraceClassSample {
  tmpArr: ClassModel[] = [classModel, classModel1]
  @Local isTypeState: boolean = true

  aboutToAppear(): void {
    timeHelper.printStateTime(true, 1, new StateModel(StateConstants.WRITE_STATE, false))
    for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
      parentClass.obj = this.tmpArr[index % 2]
    }
    timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, false))
    timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, false))
    for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
      let value = parentClass.obj.value
    }
    timeHelper.printStateTime(false, 1, new StateModel(StateConstants.READ_STATE, false))
  }

  build() {
    Column({ space: 15 }) {
      Text(`child value: ${parentClass.obj.value}`)
      Button('child click: 读@Trace的耗时')
        .id('getStateTimeTaken')
        .onClick(() => {
          timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, true))
          for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
            let value = parentClass.obj.value
          }
          timeHelper.printStateTime(false, 1, new StateModel(StateConstants.READ_STATE, true))
        })
      Button('child click: 写@Trace的耗时')
        .id('setStateTimeTaken')
        .onClick(() => {
          this.isTypeState = !this.isTypeState
          timeHelper.printStateTime(true, 1, new StateModel(StateConstants.WRITE_STATE, true))
          for (let index = ArrEntity.STATE_LOOP; index > 0; index--) {
            parentClass.obj = this.tmpArr[index % 2]
          }
          timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, true))
        })
    }
  }
}

@Entry
@Component
struct TraceClassSample {

  build() {
    Column({ space: 15 }) {
      Text('TraceClassSample')
        .fontSize('25')
        .textAlign(TextAlign.Center)
        .margin({ bottom: 50, top: 50 })
      Text(`parent value: ${parentClass.obj.value}`)
      ChildTraceClassSample()
    }
  }
}
