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

/**
 * Button组件Option内type属性更新布局耗时
 */

import { ArrEntity } from '../../../entity/ArrEntity'
import { TimeHelper } from '../../../util/TimeHelper'

@Entry
@Component
struct ButtonOptionTypeSample {
  timeHelper: TimeHelper = new TimeHelper('ButtonOptionTypeSample');
  @State buttonType: ButtonType = ButtonType.Circle;

  build() {
    Scroll() {
      Flex({ direction: FlexDirection.Row, wrap: FlexWrap.Wrap }) {
        Column() {
          Button('change Option type to Capsule')
            .id('change Option type to Capsule')
            .margin('5vp')
            .onClick(() => {
              this.buttonType = ButtonType.Capsule;
            })
          Button('change Option type to Normal')
            .id('change Option type to Normal')
            .margin('5vp')
            .onClick(() => {
              this.buttonType = ButtonType.Normal;
            })
          Button('change Option type to Circle')
            .id('change Option type to Circle')
            .margin('5vp')
            .onClick(() => {
              this.buttonType = ButtonType.Circle;
            })
        }.width('100%')


        ForEach(ArrEntity.arr, (index: number) => {
          if (this.buttonType >= 0 && this.timeHelper.printTime(true)) {
          }
          Button({ type: this.buttonType })
          Button({ type: this.buttonType })
          Button({ type: this.buttonType })
          Button({ type: this.buttonType })
          Button({ type: this.buttonType })
          Button({ type: this.buttonType })
          Button({ type: this.buttonType })
          Button({ type: this.buttonType })
          Button({ type: this.buttonType })
          Button({ type: this.buttonType })
          Button({ type: this.buttonType })
          Button({ type: this.buttonType })
          Button({ type: this.buttonType })
          Button({ type: this.buttonType })
          Button({ type: this.buttonType })
          Button({ type: this.buttonType })
          Button({ type: this.buttonType })
          Button({ type: this.buttonType })
          Button({ type: this.buttonType })
          Button({ type: this.buttonType })
          if (this.buttonType >= 0 && this.timeHelper.printTime(false)) {
          }
        })


      }
      .width('100%')
    }.margin({ bottom: 60 })
    .width('100%')

  }
}