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
import { classModel, ClassModel, classModel1, classModel2, classModel3 } from '../ClassModel'

const timeHelper: TimeHelper = new TimeHelper('ProviderClassSample');

@ComponentV2
struct ChildProviderClassSample {
  @Consumer('Class') testData: ClassModel = classModel

  build() {
    Column({ space: 15 }) {
      Text(`child value: ${this.testData.value}`)
    }
  }
}

@Entry
@ComponentV2
struct ProviderClassSample {
  a = timeHelper.printStateTime(true, 1, new StateModel(StateConstants.CREATE_STATE, true))
  @Provider('Class') testData: ClassModel = classModel;
  @Provider('Class1') testData1: ClassModel = classModel
  @Provider('Class2') testData2: ClassModel = classModel
  @Provider('Class3') testData3: ClassModel = classModel
  @Provider('Class4') testData4: ClassModel = classModel
  @Provider('Class5') testData5: ClassModel = classModel
  @Provider('Class6') testData6: ClassModel = classModel
  @Provider('Class7') testData7: ClassModel = classModel
  @Provider('Class8') testData8: ClassModel = classModel
  @Provider('Class9') testData9: ClassModel = classModel
  @Provider('Class10') testData10: ClassModel = classModel
  @Provider('Class11') testData11: ClassModel = classModel
  @Provider('Class12') testData12: ClassModel = classModel
  @Provider('Class13') testData13: ClassModel = classModel
  @Provider('Class14') testData14: ClassModel = classModel
  @Provider('Class15') testData15: ClassModel = classModel
  @Provider('Class16') testData16: ClassModel = classModel
  @Provider('Class17') testData17: ClassModel = classModel
  @Provider('Class18') testData18: ClassModel = classModel
  @Provider('Class19') testData19: ClassModel = classModel
  @Provider('Class20') testData20: ClassModel = classModel
  @Provider('Class21') testData21: ClassModel = classModel
  @Provider('Class22') testData22: ClassModel = classModel
  @Provider('Class23') testData23: ClassModel = classModel
  @Provider('Class24') testData24: ClassModel = classModel
  @Provider('Class25') testData25: ClassModel = classModel
  @Provider('Class26') testData26: ClassModel = classModel
  @Provider('Class27') testData27: ClassModel = classModel
  @Provider('Class28') testData28: ClassModel = classModel
  @Provider('Class29') testData29: ClassModel = classModel
  @Provider('Class30') testData30: ClassModel = classModel
  @Provider('Class31') testData31: ClassModel = classModel
  @Provider('Class32') testData32: ClassModel = classModel
  @Provider('Class33') testData33: ClassModel = classModel
  @Provider('Class34') testData34: ClassModel = classModel
  @Provider('Class35') testData35: ClassModel = classModel
  @Provider('Class36') testData36: ClassModel = classModel
  @Provider('Class37') testData37: ClassModel = classModel
  @Provider('Class38') testData38: ClassModel = classModel
  @Provider('Class39') testData39: ClassModel = classModel
  @Provider('Class40') testData40: ClassModel = classModel
  @Provider('Class41') testData41: ClassModel = classModel
  @Provider('Class42') testData42: ClassModel = classModel
  @Provider('Class43') testData43: ClassModel = classModel
  @Provider('Class44') testData44: ClassModel = classModel
  @Provider('Class45') testData45: ClassModel = classModel
  @Provider('Class46') testData46: ClassModel = classModel
  @Provider('Class47') testData47: ClassModel = classModel
  @Provider('Class48') testData48: ClassModel = classModel
  @Provider('Class49') testData49: ClassModel = classModel
  b = timeHelper.printStateTime(false, 1, new StateModel(StateConstants.CREATE_STATE, true))
  tmpArr: ClassModel[] = [classModel1, classModel2]
  @Local isTypeState: boolean = true

  aboutToAppear(): void {
    timeHelper.printStateTime(true, 1, new StateModel(StateConstants.WRITE_STATE, false))
    for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
      this.testData = this.tmpArr[index % 2]
    }
    timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, false))
    timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, false))
    for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
      let value = this.testData
    }
    timeHelper.printStateTime(false, 1, new StateModel(StateConstants.READ_STATE, false))
  }

  build() {
    Column({ space: 15 }) {
      Text('ProviderClassSample')
        .fontSize('25')
        .textAlign(TextAlign.Center)
        .margin({ bottom: 50, top: 50 })
      Text(`parent value: ${this.testData.value}`)
      Button('parent click: 读@Provider的耗时')
        .id('getStateTimeTaken')
        .onClick(() => {
          timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, true))
          for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
            let value = this.testData
          }
          timeHelper.printStateTime(false, 1, new StateModel(StateConstants.READ_STATE, true))
        })
      Button('parent click: 写@Provider的耗时')
        .id('setStateTimeTaken')
        .onClick(() => {
          this.isTypeState = !this.isTypeState
          timeHelper.printStateTime(true, 1, new StateModel(StateConstants.WRITE_STATE, true))
          for (let index = ArrEntity.STATE_LOOP; index > 0; index--) {
            this.testData = this.tmpArr[index % 2]
          }
          timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, true))
        })
      ChildProviderClassSample()
    }
  }
}
