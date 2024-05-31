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
import { ClassModel, classModel, classModel1, classModel2, classModel3 } from '../ClassModel';
import { StateConstants, StateModel } from '../StateModel';

const timeHelper: TimeHelper = new TimeHelper('ParamClassSample')

@ComponentV2
struct ChildParamClassSample {
  @Event changeChildClass: (x: number) => void = (x: number) => {
  };
  a = timeHelper.printStateTime(true, 1, new StateModel(StateConstants.CREATE_STATE, true))
  @Param childClass: ClassModel = classModel1
  @Param childClass1: ClassModel = classModel1
  @Param childClass2: ClassModel = classModel1
  @Param childClass3: ClassModel = classModel1
  @Param childClass4: ClassModel = classModel1
  @Param childClass5: ClassModel = classModel1
  @Param childClass6: ClassModel = classModel1
  @Param childClass7: ClassModel = classModel1
  @Param childClass8: ClassModel = classModel1
  @Param childClass9: ClassModel = classModel1
  @Param childClass10: ClassModel = classModel1
  @Param childClass11: ClassModel = classModel1
  @Param childClass12: ClassModel = classModel1
  @Param childClass13: ClassModel = classModel1
  @Param childClass14: ClassModel = classModel1
  @Param childClass15: ClassModel = classModel1
  @Param childClass16: ClassModel = classModel1
  @Param childClass17: ClassModel = classModel1
  @Param childClass18: ClassModel = classModel1
  @Param childClass19: ClassModel = classModel1
  @Param childClass20: ClassModel = classModel1
  @Param childClass21: ClassModel = classModel1
  @Param childClass22: ClassModel = classModel1
  @Param childClass23: ClassModel = classModel1
  @Param childClass24: ClassModel = classModel1
  @Param childClass25: ClassModel = classModel1
  @Param childClass26: ClassModel = classModel1
  @Param childClass27: ClassModel = classModel1
  @Param childClass28: ClassModel = classModel1
  @Param childClass29: ClassModel = classModel1
  @Param childClass30: ClassModel = classModel1
  @Param childClass31: ClassModel = classModel1
  @Param childClass32: ClassModel = classModel1
  @Param childClass33: ClassModel = classModel1
  @Param childClass34: ClassModel = classModel1
  @Param childClass35: ClassModel = classModel1
  @Param childClass36: ClassModel = classModel1
  @Param childClass37: ClassModel = classModel1
  @Param childClass38: ClassModel = classModel1
  @Param childClass39: ClassModel = classModel1
  @Param childClass40: ClassModel = classModel1
  @Param childClass41: ClassModel = classModel1
  @Param childClass42: ClassModel = classModel1
  @Param childClass43: ClassModel = classModel1
  @Param childClass44: ClassModel = classModel1
  @Param childClass45: ClassModel = classModel1
  @Param childClass46: ClassModel = classModel1
  @Param childClass47: ClassModel = classModel1
  @Param childClass48: ClassModel = classModel1
  @Param childClass49: ClassModel = classModel1
  b = timeHelper.printStateTime(false, 1, new StateModel(StateConstants.CREATE_STATE, true))
  @Local isTypeState: boolean = true

  aboutToAppear(): void {
    timeHelper.printStateTime(true, 1, new StateModel(StateConstants.WRITE_STATE, false))
    for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
      this.changeChildClass(index % 2)
    }
    timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, false))
    timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, false))
    for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
      let value = this.childClass
    }
    timeHelper.printStateTime(false, 1, new StateModel(StateConstants.READ_STATE, false))
  }

  build() {
    Column({ space: 15 }) {
      Text(`child value: ${this.childClass.value}`)
      Button('child click: 读@Param的耗时')
        .id('getStateTimeTaken')
        .onClick(() => {
          timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, true))
          for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
            let value = this.childClass
          }
          timeHelper.printStateTime(false, 1, new StateModel(StateConstants.READ_STATE, true))
        })
      Button('child click: 写@Param的耗时')
        .id('setStateTimeTaken')
        .onClick(() => {
          this.isTypeState = !this.isTypeState
          timeHelper.printStateTime(true, 1, new StateModel(StateConstants.WRITE_STATE, true))
          for (let index = ArrEntity.STATE_LOOP; index > 0; index--) {
            this.changeChildClass(index % 2)
          }
          timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, true))
        })
    }
  }
}


@Entry
@ComponentV2
struct ParamClassSample {
  @Local parentClass: ClassModel = classModel
  changeParentClass: (type: number) => void = (type: number) => {
    if (type == 0) {
      this.parentClass = classModel1
    } else if (type == 1) {
      this.parentClass = classModel2
    }
  };

  build() {
    Column({ space: 15 }) {
      Text('ParamClassSample')
        .fontSize('25')
        .textAlign(TextAlign.Center)
        .margin({ bottom: 50, top: 50 })
      Text(`parent value: ${this.parentClass.value}`)
      ChildParamClassSample({
        childClass: this.parentClass,
        childClass1: this.parentClass,
        childClass2: this.parentClass,
        childClass3: this.parentClass,
        childClass4: this.parentClass,
        childClass5: this.parentClass,
        childClass6: this.parentClass,
        childClass7: this.parentClass,
        childClass8: this.parentClass,
        childClass9: this.parentClass,
        childClass10: this.parentClass,
        childClass11: this.parentClass,
        childClass12: this.parentClass,
        childClass13: this.parentClass,
        childClass14: this.parentClass,
        childClass15: this.parentClass,
        childClass16: this.parentClass,
        childClass17: this.parentClass,
        childClass18: this.parentClass,
        childClass19: this.parentClass,
        childClass20: this.parentClass,
        childClass21: this.parentClass,
        childClass22: this.parentClass,
        childClass23: this.parentClass,
        childClass24: this.parentClass,
        childClass25: this.parentClass,
        childClass26: this.parentClass,
        childClass27: this.parentClass,
        childClass28: this.parentClass,
        childClass29: this.parentClass,
        childClass30: this.parentClass,
        childClass31: this.parentClass,
        childClass32: this.parentClass,
        childClass33: this.parentClass,
        childClass34: this.parentClass,
        childClass35: this.parentClass,
        childClass36: this.parentClass,
        childClass37: this.parentClass,
        childClass38: this.parentClass,
        childClass39: this.parentClass,
        childClass40: this.parentClass,
        childClass41: this.parentClass,
        childClass42: this.parentClass,
        childClass43: this.parentClass,
        childClass44: this.parentClass,
        childClass45: this.parentClass,
        childClass46: this.parentClass,
        childClass47: this.parentClass,
        childClass48: this.parentClass,
        childClass49: this.parentClass,
        changeChildClass: this.changeParentClass.bind(this)
      })
    }
  }
}