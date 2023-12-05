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
struct TextHeightAdaptivePolicy10CharOneSample {
  timeHelper: TimeHelper = new TimeHelper('TextHeightAdaptivePolicy10CharOneSample');
  @State textStr: string = '';
  @State maxLine: number = 2;

  aboutToAppear() {
    this.textStr = (router.getParams() as Record<string, Object>)['text'] as string;
  }

  build() {
    Scroll() {
      Flex({ direction: FlexDirection.Row, wrap: FlexWrap.Wrap }) {
        Button('change maxLines')
          .id('TextChangeheightAdaptivePolicyOne')
          .margin('5vp')
          .onClick(() => {
            this.maxLine = 1;
          })

        ForEach(ArrEntity.arr, (index: number) => {
          if (this.maxLine != null && this.timeHelper.printTime(true)) {
          }
          Text(this.textStr)
            .maxLines(this.maxLine)
            .heightAdaptivePolicy(TextHeightAdaptivePolicy.MAX_LINES_FIRST)
            .minFontSize(10)
            .maxFontSize(30)
          Text(this.textStr)
            .maxLines(this.maxLine)
            .heightAdaptivePolicy(TextHeightAdaptivePolicy.MAX_LINES_FIRST)
            .minFontSize(10)
            .maxFontSize(30)
          Text(this.textStr)
            .maxLines(this.maxLine)
            .heightAdaptivePolicy(TextHeightAdaptivePolicy.MAX_LINES_FIRST)
            .minFontSize(10)
            .maxFontSize(30)
          Text(this.textStr)
            .maxLines(this.maxLine)
            .heightAdaptivePolicy(TextHeightAdaptivePolicy.MAX_LINES_FIRST)
            .minFontSize(10)
            .maxFontSize(30)
          Text(this.textStr)
            .maxLines(this.maxLine)
            .heightAdaptivePolicy(TextHeightAdaptivePolicy.MAX_LINES_FIRST)
            .minFontSize(10)
            .maxFontSize(30)
          Text(this.textStr)
            .maxLines(this.maxLine)
            .heightAdaptivePolicy(TextHeightAdaptivePolicy.MAX_LINES_FIRST)
            .minFontSize(10)
            .maxFontSize(30)
          Text(this.textStr)
            .maxLines(this.maxLine)
            .heightAdaptivePolicy(TextHeightAdaptivePolicy.MAX_LINES_FIRST)
            .minFontSize(10)
            .maxFontSize(30)
          Text(this.textStr)
            .maxLines(this.maxLine)
            .heightAdaptivePolicy(TextHeightAdaptivePolicy.MAX_LINES_FIRST)
            .minFontSize(10)
            .maxFontSize(30)
          Text(this.textStr)
            .maxLines(this.maxLine)
            .heightAdaptivePolicy(TextHeightAdaptivePolicy.MAX_LINES_FIRST)
            .minFontSize(10)
            .maxFontSize(30)
          Text(this.textStr)
            .maxLines(this.maxLine)
            .heightAdaptivePolicy(TextHeightAdaptivePolicy.MAX_LINES_FIRST)
            .minFontSize(10)
            .maxFontSize(30)
          Text(this.textStr)
            .maxLines(this.maxLine)
            .heightAdaptivePolicy(TextHeightAdaptivePolicy.MAX_LINES_FIRST)
            .minFontSize(10)
            .maxFontSize(30)
          Text(this.textStr)
            .maxLines(this.maxLine)
            .heightAdaptivePolicy(TextHeightAdaptivePolicy.MAX_LINES_FIRST)
            .minFontSize(10)
            .maxFontSize(30)
          Text(this.textStr)
            .maxLines(this.maxLine)
            .heightAdaptivePolicy(TextHeightAdaptivePolicy.MAX_LINES_FIRST)
            .minFontSize(10)
            .maxFontSize(30)
          Text(this.textStr)
            .maxLines(this.maxLine)
            .heightAdaptivePolicy(TextHeightAdaptivePolicy.MAX_LINES_FIRST)
            .minFontSize(10)
            .maxFontSize(30)
          Text(this.textStr)
            .maxLines(this.maxLine)
            .heightAdaptivePolicy(TextHeightAdaptivePolicy.MAX_LINES_FIRST)
            .minFontSize(10)
            .maxFontSize(30)
          Text(this.textStr)
            .maxLines(this.maxLine)
            .heightAdaptivePolicy(TextHeightAdaptivePolicy.MAX_LINES_FIRST)
            .minFontSize(10)
            .maxFontSize(30)
          Text(this.textStr)
            .maxLines(this.maxLine)
            .heightAdaptivePolicy(TextHeightAdaptivePolicy.MAX_LINES_FIRST)
            .minFontSize(10)
            .maxFontSize(30)
          Text(this.textStr)
            .maxLines(this.maxLine)
            .heightAdaptivePolicy(TextHeightAdaptivePolicy.MAX_LINES_FIRST)
            .minFontSize(10)
            .maxFontSize(30)
          Text(this.textStr)
            .maxLines(this.maxLine)
            .heightAdaptivePolicy(TextHeightAdaptivePolicy.MAX_LINES_FIRST)
            .minFontSize(10)
            .maxFontSize(30)
          Text(this.textStr)
            .maxLines(this.maxLine)
            .heightAdaptivePolicy(TextHeightAdaptivePolicy.MAX_LINES_FIRST)
            .minFontSize(10)
            .maxFontSize(30)
          if (this.maxLine != null && this.timeHelper.printTime(false)) {
          }
        }, (item: number) => JSON.stringify(item))

      }
      .width('100%')
    }.margin({ bottom: 60 })
    .width('100%')
  }
}