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

import { ArrEntity } from '../../../entity/ArrEntity'
import { TimeHelper } from '../../../util/TimeHelper'

@Entry
@Component
struct SliderStepSample {
  timeHelper: TimeHelper = new TimeHelper('SliderStepSample');
  @State sliderStep: number = 1;

  build() {
    Scroll() {
      Flex({ direction: FlexDirection.Row, wrap: FlexWrap.Wrap }) {
        Row() {
          Button('change Step')
            .id('SliderChangeStep')
            .margin('5vp')
            .onClick(() => {
              this.sliderStep = 10;
            })
        }.width('100%')



        ForEach(ArrEntity.arr, (index: number) => {
          if (this.sliderStep == 10 && this.timeHelper.printTime(true)) {
          }
          Slider({ step: this.sliderStep })
          Slider({ step: this.sliderStep })
          Slider({ step: this.sliderStep })
          Slider({ step: this.sliderStep })
          Slider({ step: this.sliderStep })
          Slider({ step: this.sliderStep })
          Slider({ step: this.sliderStep })
          Slider({ step: this.sliderStep })
          Slider({ step: this.sliderStep })
          Slider({ step: this.sliderStep })
          Slider({ step: this.sliderStep })
          Slider({ step: this.sliderStep })
          Slider({ step: this.sliderStep })
          Slider({ step: this.sliderStep })
          Slider({ step: this.sliderStep })
          Slider({ step: this.sliderStep })
          Slider({ step: this.sliderStep })
          Slider({ step: this.sliderStep })
          Slider({ step: this.sliderStep })
          Slider({ step: this.sliderStep })
          if (this.sliderStep == 10 && this.timeHelper.printTime(false)) {
          }
        }, (item: number) => JSON.stringify(item))



      }
      .width('100%')
      .padding({ right: '30%' })
    }.margin({ bottom: 60 })
    .width('100%')
  }
}