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

const timeHelper: TimeHelper = new TimeHelper('ConsumerClassSample');

@ComponentV2
struct ChildConsumerClassSample {
  a = timeHelper.printStateTime(true, 1, new StateModel(StateConstants.CREATE_STATE, true))
  @Consumer('Class') testData: ClassModel = classModel
  @Consumer('Class1') testData1: ClassModel = classModel
  @Consumer('Class2') testData2: ClassModel = classModel
  @Consumer('Class3') testData3: ClassModel = classModel
  @Consumer('Class4') testData4: ClassModel = classModel
  @Consumer('Class5') testData5: ClassModel = classModel
  @Consumer('Class6') testData6: ClassModel = classModel
  @Consumer('Class7') testData7: ClassModel = classModel
  @Consumer('Class8') testData8: ClassModel = classModel
  @Consumer('Class9') testData9: ClassModel = classModel
  @Consumer('Class10') testData10: ClassModel = classModel
  @Consumer('Class11') testData11: ClassModel = classModel
  @Consumer('Class12') testData12: ClassModel = classModel
  @Consumer('Class13') testData13: ClassModel = classModel
  @Consumer('Class14') testData14: ClassModel = classModel
  @Consumer('Class15') testData15: ClassModel = classModel
  @Consumer('Class16') testData16: ClassModel = classModel
  @Consumer('Class17') testData17: ClassModel = classModel
  @Consumer('Class18') testData18: ClassModel = classModel
  @Consumer('Class19') testData19: ClassModel = classModel
  @Consumer('Class20') testData20: ClassModel = classModel
  @Consumer('Class21') testData21: ClassModel = classModel
  @Consumer('Class22') testData22: ClassModel = classModel
  @Consumer('Class23') testData23: ClassModel = classModel
  @Consumer('Class24') testData24: ClassModel = classModel
  @Consumer('Class25') testData25: ClassModel = classModel
  @Consumer('Class26') testData26: ClassModel = classModel
  @Consumer('Class27') testData27: ClassModel = classModel
  @Consumer('Class28') testData28: ClassModel = classModel
  @Consumer('Class29') testData29: ClassModel = classModel
  @Consumer('Class30') testData30: ClassModel = classModel
  @Consumer('Class31') testData31: ClassModel = classModel
  @Consumer('Class32') testData32: ClassModel = classModel
  @Consumer('Class33') testData33: ClassModel = classModel
  @Consumer('Class34') testData34: ClassModel = classModel
  @Consumer('Class35') testData35: ClassModel = classModel
  @Consumer('Class36') testData36: ClassModel = classModel
  @Consumer('Class37') testData37: ClassModel = classModel
  @Consumer('Class38') testData38: ClassModel = classModel
  @Consumer('Class39') testData39: ClassModel = classModel
  @Consumer('Class40') testData40: ClassModel = classModel
  @Consumer('Class41') testData41: ClassModel = classModel
  @Consumer('Class42') testData42: ClassModel = classModel
  @Consumer('Class43') testData43: ClassModel = classModel
  @Consumer('Class44') testData44: ClassModel = classModel
  @Consumer('Class45') testData45: ClassModel = classModel
  @Consumer('Class46') testData46: ClassModel = classModel
  @Consumer('Class47') testData47: ClassModel = classModel
  @Consumer('Class48') testData48: ClassModel = classModel
  @Consumer('Class49') testData49: ClassModel = classModel
  b = timeHelper.printStateTime(false, 1, new StateModel(StateConstants.CREATE_STATE, true))
  tmpArr: ClassModel[] = [classModel1,classModel2]
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
    Column({space: 15}) {
      Text('ConsumerClassSample')
        .fontSize('25')
        .textAlign(TextAlign.Center)
        .margin({bottom: 50, top: 50})
      Text(`child value: ${this.testData.value}`)
      Button('child clink: 读@Consumer的耗时')
        .id('getStateTimeTaken')
        .onClick(()=>{
          timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, true))
          for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
            let value = this.testData
          }
          timeHelper.printStateTime(false, 1, new StateModel(StateConstants.READ_STATE, true))
        })
      Button('child clink: 写@Consumer的耗时')
        .id('setStateTimeTaken')
        .onClick(()=>{
          this.isTypeState = !this.isTypeState
          timeHelper.printStateTime(true, 1, new StateModel(StateConstants.WRITE_STATE, true))
          for (let index = ArrEntity.STATE_LOOP; index > 0; index--) {
            this.testData = this.tmpArr[index % 2]
          }
          timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, true))
        })
    }
  }
}

@Entry
@ComponentV2
struct ConsumerClassSample {
  @Provider('Class') testData: ClassModel = classModel;
  build() {
    Column({space: 15}) {
      ChildConsumerClassSample()
      Text(`parent value: ${this.testData.value}`)
    }
  }
}
