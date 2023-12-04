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
struct TextAreaTextAlignSample {
  timeHelper: TimeHelper = new TimeHelper('TextAreaTextAlignSample');
  @State textAlign: TextAlign = TextAlign.Center;

  build() {
    Scroll() {
      Flex({ direction: FlexDirection.Row, wrap: FlexWrap.Wrap }) {
        Column() {
          Button('change textAlign to Start')
            .id('change textAlign to Start')
            .margin('5vp')
            .onClick(() => {
              this.textAlign = TextAlign.Start;
            })
          Button('change textAlign to Center')
            .id('change textAlign to Center')
            .margin('5vp')
            .onClick(() => {
              this.textAlign = TextAlign.Center;
            })
          Button('change textAlign to End')
            .id('change textAlign to End')
            .margin('5vp')
            .onClick(() => {
              this.textAlign = TextAlign.End;
            })
        }.width('100%')

        ForEach(ArrEntity.arr, (index: number) => {
          if (this.textAlign != null && this.timeHelper.printTime(true)) {
          }
          TextArea({ text: ArrEntity.textTenLength }).textAlign(this.textAlign)
          TextArea({ text: ArrEntity.textTenLength }).textAlign(this.textAlign)
          TextArea({ text: ArrEntity.textTenLength }).textAlign(this.textAlign)
          TextArea({ text: ArrEntity.textTenLength }).textAlign(this.textAlign)
          TextArea({ text: ArrEntity.textTenLength }).textAlign(this.textAlign)
          TextArea({ text: ArrEntity.textTenLength }).textAlign(this.textAlign)
          TextArea({ text: ArrEntity.textTenLength }).textAlign(this.textAlign)
          TextArea({ text: ArrEntity.textTenLength }).textAlign(this.textAlign)
          TextArea({ text: ArrEntity.textTenLength }).textAlign(this.textAlign)
          TextArea({ text: ArrEntity.textTenLength }).textAlign(this.textAlign)
          TextArea({ text: ArrEntity.textTenLength }).textAlign(this.textAlign)
          TextArea({ text: ArrEntity.textTenLength }).textAlign(this.textAlign)
          TextArea({ text: ArrEntity.textTenLength }).textAlign(this.textAlign)
          TextArea({ text: ArrEntity.textTenLength }).textAlign(this.textAlign)
          TextArea({ text: ArrEntity.textTenLength }).textAlign(this.textAlign)
          TextArea({ text: ArrEntity.textTenLength }).textAlign(this.textAlign)
          TextArea({ text: ArrEntity.textTenLength }).textAlign(this.textAlign)
          TextArea({ text: ArrEntity.textTenLength }).textAlign(this.textAlign)
          TextArea({ text: ArrEntity.textTenLength }).textAlign(this.textAlign)
          TextArea({ text: ArrEntity.textTenLength }).textAlign(this.textAlign)
          if (this.textAlign != null && this.timeHelper.printTime(false)) {
          }
        })

      }
      .width('100%')
    }.margin({ bottom: 60 })
    .width('100%')

  }
}