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
 * TextArea组件maxLines属性更新布局耗时
 */

import { ArrEntity } from '../../../entity/ArrEntity'
import { TimeHelper } from '../../../util/TimeHelper'

@Entry
@Component
struct TextAreaMaxLinesSample {
  timeHelper: TimeHelper = new TimeHelper('TextAreaMaxLinesSample');
  @State maxLines: number = 1;

  build() {
    Scroll() {
      Flex({ direction: FlexDirection.Row, wrap: FlexWrap.Wrap }) {
        Column() {
          Button('change maxLines 1 to 3')
            .id('change maxLines 1 to 3')
            .margin('5vp')
            .onClick(() => {
              this.maxLines = 3;
            })
        }.width('100%')

        ForEach(ArrEntity.arr, (index: number) => {
          if (this.maxLines != null && this.timeHelper.printTime(true)) {
          }
          TextArea({ text: ArrEntity.textTenLength + ArrEntity.textTenLength })
            .maxLines(this.maxLines)
          TextArea({ text: ArrEntity.textTenLength + ArrEntity.textTenLength })
            .maxLines(this.maxLines)
          TextArea({ text: ArrEntity.textTenLength + ArrEntity.textTenLength })
            .maxLines(this.maxLines)
          TextArea({ text: ArrEntity.textTenLength + ArrEntity.textTenLength })
            .maxLines(this.maxLines)
          TextArea({ text: ArrEntity.textTenLength + ArrEntity.textTenLength })
            .maxLines(this.maxLines)
          TextArea({ text: ArrEntity.textTenLength + ArrEntity.textTenLength })
            .maxLines(this.maxLines)
          TextArea({ text: ArrEntity.textTenLength + ArrEntity.textTenLength })
            .maxLines(this.maxLines)
          TextArea({ text: ArrEntity.textTenLength + ArrEntity.textTenLength })
            .maxLines(this.maxLines)
          TextArea({ text: ArrEntity.textTenLength + ArrEntity.textTenLength })
            .maxLines(this.maxLines)
          TextArea({ text: ArrEntity.textTenLength + ArrEntity.textTenLength })
            .maxLines(this.maxLines)
          TextArea({ text: ArrEntity.textTenLength + ArrEntity.textTenLength })
            .maxLines(this.maxLines)
          TextArea({ text: ArrEntity.textTenLength + ArrEntity.textTenLength })
            .maxLines(this.maxLines)
          TextArea({ text: ArrEntity.textTenLength + ArrEntity.textTenLength })
            .maxLines(this.maxLines)
          TextArea({ text: ArrEntity.textTenLength + ArrEntity.textTenLength })
            .maxLines(this.maxLines)
          TextArea({ text: ArrEntity.textTenLength + ArrEntity.textTenLength })
            .maxLines(this.maxLines)
          TextArea({ text: ArrEntity.textTenLength + ArrEntity.textTenLength })
            .maxLines(this.maxLines)
          TextArea({ text: ArrEntity.textTenLength + ArrEntity.textTenLength })
            .maxLines(this.maxLines)
          TextArea({ text: ArrEntity.textTenLength + ArrEntity.textTenLength })
            .maxLines(this.maxLines)
          TextArea({ text: ArrEntity.textTenLength + ArrEntity.textTenLength })
            .maxLines(this.maxLines)
          TextArea({ text: ArrEntity.textTenLength + ArrEntity.textTenLength })
            .maxLines(this.maxLines)
          if (this.maxLines != null && this.timeHelper.printTime(false)) {
          }
        })

      }
      .width('100%')
    }.margin({ bottom: 60 })
    .width('100%')

  }
}