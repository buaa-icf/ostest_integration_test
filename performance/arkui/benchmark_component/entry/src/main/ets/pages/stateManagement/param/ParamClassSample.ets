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
import { StateUtils } from '../StateUtils';

const timeHelper: TimeHelper = new TimeHelper('ParamClassSample')
let isType: boolean = true

@ObservedV2
class Info {
  @Trace value: string;

  constructor(value: string) {
    this.value = value;
  }
}

@ComponentV2
struct ChildParamClassSample {
  @Event changeChildClass: (x: number) => void = (x: number) => {
  };
  a = timeHelper.printStateTime(true, 1, new StateModel(StateConstants.CREATE_STATE, true))
  @Param childClass: Info = new Info("childClass")
  @Param childClass1: Info = new Info("childClass")
  @Param childClass2: Info = new Info("childClass")
  @Param childClass3: Info = new Info("childClass")
  @Param childClass4: Info = new Info("childClass")
  @Param childClass5: Info = new Info("childClass")
  @Param childClass6: Info = new Info("childClass")
  @Param childClass7: Info = new Info("childClass")
  @Param childClass8: Info = new Info("childClass")
  @Param childClass9: Info = new Info("childClass")
  @Param childClass10: Info = new Info("childClass")
  @Param childClass11: Info = new Info("childClass")
  @Param childClass12: Info = new Info("childClass")
  @Param childClass13: Info = new Info("childClass")
  @Param childClass14: Info = new Info("childClass")
  @Param childClass15: Info = new Info("childClass")
  @Param childClass16: Info = new Info("childClass")
  @Param childClass17: Info = new Info("childClass")
  @Param childClass18: Info = new Info("childClass")
  @Param childClass19: Info = new Info("childClass")
  @Param childClass20: Info = new Info("childClass")
  @Param childClass21: Info = new Info("childClass")
  @Param childClass22: Info = new Info("childClass")
  @Param childClass23: Info = new Info("childClass")
  @Param childClass24: Info = new Info("childClass")
  @Param childClass25: Info = new Info("childClass")
  @Param childClass26: Info = new Info("childClass")
  @Param childClass27: Info = new Info("childClass")
  @Param childClass28: Info = new Info("childClass")
  @Param childClass29: Info = new Info("childClass")
  @Param childClass30: Info = new Info("childClass")
  @Param childClass31: Info = new Info("childClass")
  @Param childClass32: Info = new Info("childClass")
  @Param childClass33: Info = new Info("childClass")
  @Param childClass34: Info = new Info("childClass")
  @Param childClass35: Info = new Info("childClass")
  @Param childClass36: Info = new Info("childClass")
  @Param childClass37: Info = new Info("childClass")
  @Param childClass38: Info = new Info("childClass")
  @Param childClass39: Info = new Info("childClass")
  @Param childClass40: Info = new Info("childClass")
  @Param childClass41: Info = new Info("childClass")
  @Param childClass42: Info = new Info("childClass")
  @Param childClass43: Info = new Info("childClass")
  @Param childClass44: Info = new Info("childClass")
  @Param childClass45: Info = new Info("childClass")
  @Param childClass46: Info = new Info("childClass")
  @Param childClass47: Info = new Info("childClass")
  @Param childClass48: Info = new Info("childClass")
  @Param childClass49: Info = new Info("childClass")
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
      Text(StateUtils.isType(isType, timeHelper) ? `child value: ${this.childClass.value}` :
        `child value: ${this.childClass.value}`)
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
          isType = true
          this.isTypeState = !this.isTypeState
          timeHelper.printStateTime(true, 1, new StateModel(StateConstants.WRITE_STATE, true))
          for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
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
  @Local parentClass: Info = new Info("parentClass")
  changeParentClass: (type: number) => void = (type: number) => {
    if (type == 0) {
      this.parentClass = new Info('Class000')
    } else if (type == 1) {
      this.parentClass = new Info('Class111')
    }
  };

  build() {
    Column({ space: 15 }) {
      Text('ParamClassSample')
        .fontSize('25')
        .textAlign(TextAlign.Center)
        .margin({ bottom: 50, top: 50 })
      Text(`parent value: ${this.parentClass.value}`)
      Button('parent click')
        .id('changeUITimeTaken')
        .onClick(() => {
          isType = false
          this.parentClass.value = "parentClass1"
          timeHelper.printStateTime(true, 1, new StateModel(StateConstants.UI_CHANGE, true))
        })
      ChildParamClassSample({ childClass: this.parentClass, changeChildClass: this.changeParentClass.bind(this) })
    }
  }
}