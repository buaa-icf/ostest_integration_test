/*
 * Copyright (c) 2023 Huawei Device Co., Ltd.
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

let isType:boolean = true
const timeHelper : TimeHelper= new TimeHelper('ObjectLinkExtendsMapSample');

@Observed
class ClassA
{
  public a:MyMap<number,string>;

  constructor(a:MyMap<number,string>) {
    this.a = a
  }
}

@Observed
export class MyMap<K, V> extends Map<K, V> {
}

@Component
struct ChildObjectLinkExtendsMapSample {
  a = timeHelper.printStateTime(true, 1, new StateModel(StateConstants.CREATE_STATE, true))
  @ObjectLink message: MyMap<number,string>
  b = timeHelper.printStateTime(false, 1, new StateModel(StateConstants.CREATE_STATE, true))

  aboutToAppear(): void {
    timeHelper.printStateTime(true, 1, new StateModel(StateConstants.WRITE_STATE, false))
    for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
      this.message.set(index,index.toString())
    }
    timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, false))
    timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, false))
    for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
      let value = this.message.get(index)
    }
    timeHelper.printStateTime(false, 1, new StateModel(StateConstants.READ_STATE, false))
  }

  build() {
    Column({space: 15}) {
      Text(StateUtils.isType(isType, timeHelper) ? `parent value: ${this.message.get(3)}` :
        `parent value: ${this.message.get(3)}`)
      Button('parent clink读@Obseved的耗时')
        .id('getStateTimeTaken')
        .onClick(()=>{
          timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, true))
          let value = this.message.get(0)
          timeHelper.printStateTime(false, 1, new StateModel(StateConstants.READ_STATE, true))
        })
      Button('parent clink:写@Observed的耗时')
        .id('setStateTimeTaken')
        .onClick(()=>{
          isType = true
          timeHelper.printStateTime(true, 1, new StateModel(StateConstants.WRITE_STATE, true))
          this.message.set(3,'world')
          timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, true))
        })
    }
  }
}

@Entry
@Component
struct ObjectLinkExtendsMapSample {
  @State message: ClassA = new ClassA(new MyMap([[0, "a"], [1, "b"], [3, "c"]]));

  build() {
    Column({space: 15}) {
      Text('ObjectLinkExtendsMapSample')
        .fontSize('25')
        .textAlign(TextAlign.Center)
        .margin({bottom: 50, top: 50})
      Text(`child value: ${this.message.a.get(0)}`)
      Button('child click')
        .id('changeUITimeTaken')
        .onClick(()=>{
          isType = false
          this.message.a.set(3,'bye')
          timeHelper.printStateTime(true, 1, new StateModel(StateConstants.UI_CHANGE, true))
        })
      ChildObjectLinkExtendsMapSample({message: this.message.a})
    }
  }
}