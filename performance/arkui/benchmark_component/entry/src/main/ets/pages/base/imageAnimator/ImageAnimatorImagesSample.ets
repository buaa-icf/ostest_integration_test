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
 * ImageAnimator组件images属性更新布局耗时
 */

import { ArrEntity } from '../../../entity/ArrEntity'
import { TimeHelper } from '../../../util/TimeHelper'

@Entry
@Component
struct ImageAnimatorImagesSample {
  timeHelper: TimeHelper = new TimeHelper('ImageAnimatorImagesSample');
  @State imageAnimatorImages: Array<ImageFrameInfo> = [];

  build() {
    Scroll() {
      Flex({ direction: FlexDirection.Row, wrap: FlexWrap.Wrap }) {
        Column() {
          Button('change images')
            .id('change images')
            .margin('5vp')
            .onClick(() => {
              this.imageAnimatorImages = [{ src: $r('app.media.icon') }];
            })
        }.width('100%')

        ForEach(ArrEntity.arr, (index: number) => {
          if (this.imageAnimatorImages != null && this.timeHelper.printTime(true)) {
          }
          ImageAnimator().width(100).height(100).images(this.imageAnimatorImages)
          ImageAnimator().width(100).height(100).images(this.imageAnimatorImages)
          ImageAnimator().width(100).height(100).images(this.imageAnimatorImages)
          ImageAnimator().width(100).height(100).images(this.imageAnimatorImages)
          ImageAnimator().width(100).height(100).images(this.imageAnimatorImages)
          ImageAnimator().width(100).height(100).images(this.imageAnimatorImages)
          ImageAnimator().width(100).height(100).images(this.imageAnimatorImages)
          ImageAnimator().width(100).height(100).images(this.imageAnimatorImages)
          ImageAnimator().width(100).height(100).images(this.imageAnimatorImages)
          ImageAnimator().width(100).height(100).images(this.imageAnimatorImages)
          ImageAnimator().width(100).height(100).images(this.imageAnimatorImages)
          ImageAnimator().width(100).height(100).images(this.imageAnimatorImages)
          ImageAnimator().width(100).height(100).images(this.imageAnimatorImages)
          ImageAnimator().width(100).height(100).images(this.imageAnimatorImages)
          ImageAnimator().width(100).height(100).images(this.imageAnimatorImages)
          ImageAnimator().width(100).height(100).images(this.imageAnimatorImages)
          ImageAnimator().width(100).height(100).images(this.imageAnimatorImages)
          ImageAnimator().width(100).height(100).images(this.imageAnimatorImages)
          ImageAnimator().width(100).height(100).images(this.imageAnimatorImages)
          ImageAnimator().width(100).height(100).images(this.imageAnimatorImages)
          if (this.imageAnimatorImages != null && this.timeHelper.printTime(false)) {
          }
        })

      }
      .width('100%')
    }.margin({ bottom: 60 })
    .width('100%')

  }
}