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

import router from '@ohos.router';
import { ArrEntity } from '../../../entity/ArrEntity'
import { TimeHelper } from '../../../util/TimeHelper'

@Entry
@Component
struct TextHeightAdaptivePolicy100CharTwoSample {
  timeHelper: TimeHelper = new TimeHelper('TextHeightAdaptivePolicy100CharTwoSample');
  @State textStr: string = '';
  @State minfontSize: number = 20;

  aboutToAppear() {
    this.textStr = (router.getParams() as Record<string, Object>)['text'] as string;
  }

  build() {
    Scroll() {
      Flex({ direction: FlexDirection.Row, wrap: FlexWrap.Wrap }) {
        Button('change minfontSize')
          .id('TextChangeheightAdaptivePolicyTwo')
          .margin('5vp')
          .onClick(() => {
            this.minfontSize = 10;
          })

        ForEach(ArrEntity.arr, (index: number) => {
          if (this.minfontSize != null && this.timeHelper.printTime(true)) {
          }
          Text(this.textStr)
            .minFontSize(this.minfontSize)
            .heightAdaptivePolicy(TextHeightAdaptivePolicy.MIN_FONT_SIZE_FIRST)
            .maxFontSize(30)
          Text(this.textStr)
            .minFontSize(this.minfontSize)
            .heightAdaptivePolicy(TextHeightAdaptivePolicy.MIN_FONT_SIZE_FIRST)
            .maxFontSize(30)
          Text(this.textStr)
            .minFontSize(this.minfontSize)
            .heightAdaptivePolicy(TextHeightAdaptivePolicy.MIN_FONT_SIZE_FIRST)
            .maxFontSize(30)
          Text(this.textStr)
            .minFontSize(this.minfontSize)
            .heightAdaptivePolicy(TextHeightAdaptivePolicy.MIN_FONT_SIZE_FIRST)
            .maxFontSize(30)
          Text(this.textStr)
            .minFontSize(this.minfontSize)
            .heightAdaptivePolicy(TextHeightAdaptivePolicy.MIN_FONT_SIZE_FIRST)
            .maxFontSize(30)
          Text(this.textStr)
            .minFontSize(this.minfontSize)
            .heightAdaptivePolicy(TextHeightAdaptivePolicy.MIN_FONT_SIZE_FIRST)
            .maxFontSize(30)
          Text(this.textStr)
            .minFontSize(this.minfontSize)
            .heightAdaptivePolicy(TextHeightAdaptivePolicy.MIN_FONT_SIZE_FIRST)
            .maxFontSize(30)
          Text(this.textStr)
            .minFontSize(this.minfontSize)
            .heightAdaptivePolicy(TextHeightAdaptivePolicy.MIN_FONT_SIZE_FIRST)
            .maxFontSize(30)
          Text(this.textStr)
            .minFontSize(this.minfontSize)
            .heightAdaptivePolicy(TextHeightAdaptivePolicy.MIN_FONT_SIZE_FIRST)
            .maxFontSize(30)
          Text(this.textStr)
            .minFontSize(this.minfontSize)
            .heightAdaptivePolicy(TextHeightAdaptivePolicy.MIN_FONT_SIZE_FIRST)
            .maxFontSize(30)
          Text(this.textStr)
            .minFontSize(this.minfontSize)
            .heightAdaptivePolicy(TextHeightAdaptivePolicy.MIN_FONT_SIZE_FIRST)
            .maxFontSize(30)
          Text(this.textStr)
            .minFontSize(this.minfontSize)
            .heightAdaptivePolicy(TextHeightAdaptivePolicy.MIN_FONT_SIZE_FIRST)
            .maxFontSize(30)
          Text(this.textStr)
            .minFontSize(this.minfontSize)
            .heightAdaptivePolicy(TextHeightAdaptivePolicy.MIN_FONT_SIZE_FIRST)
            .maxFontSize(30)
          Text(this.textStr)
            .minFontSize(this.minfontSize)
            .heightAdaptivePolicy(TextHeightAdaptivePolicy.MIN_FONT_SIZE_FIRST)
            .maxFontSize(30)
          Text(this.textStr)
            .minFontSize(this.minfontSize)
            .heightAdaptivePolicy(TextHeightAdaptivePolicy.MIN_FONT_SIZE_FIRST)
            .maxFontSize(30)
          Text(this.textStr)
            .minFontSize(this.minfontSize)
            .heightAdaptivePolicy(TextHeightAdaptivePolicy.MIN_FONT_SIZE_FIRST)
            .maxFontSize(30)
          Text(this.textStr)
            .minFontSize(this.minfontSize)
            .heightAdaptivePolicy(TextHeightAdaptivePolicy.MIN_FONT_SIZE_FIRST)
            .maxFontSize(30)
          Text(this.textStr)
            .minFontSize(this.minfontSize)
            .heightAdaptivePolicy(TextHeightAdaptivePolicy.MIN_FONT_SIZE_FIRST)
            .maxFontSize(30)
          Text(this.textStr)
            .minFontSize(this.minfontSize)
            .heightAdaptivePolicy(TextHeightAdaptivePolicy.MIN_FONT_SIZE_FIRST)
            .maxFontSize(30)
          Text(this.textStr)
            .minFontSize(this.minfontSize)
            .heightAdaptivePolicy(TextHeightAdaptivePolicy.MIN_FONT_SIZE_FIRST)
            .maxFontSize(30)
          if (this.minfontSize != null && this.timeHelper.printTime(false)) {
          }
        }, (item: number) => JSON.stringify(item))

      }
      .width('100%')
    }.margin({ bottom: 60 })
    .width('100%')
  }
}