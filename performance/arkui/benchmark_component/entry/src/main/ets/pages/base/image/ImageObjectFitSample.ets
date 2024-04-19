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
import { TimeHelper } from '../../../util/TimeHelper';

@Entry
@Component
struct ImageObjectFitSample {
  timeHelper: TimeHelper = new TimeHelper('ImageObjectFitSample');
  @State imageImageFit: ImageFit = ImageFit.Cover;

  build() {
    Scroll() {
      Flex({ direction: FlexDirection.Row, wrap: FlexWrap.Wrap }) {
        Flex({ direction: FlexDirection.Row, wrap: FlexWrap.Wrap }) {
          Button('change objectFit Contain')
            .id('ImageObjectFit_Contain')
            .margin('5vp')
            .onClick(() => {
              this.imageImageFit = ImageFit.Contain;
            })
          Button('change objectFit Cover')
            .id('ImageObjectFit_Cover')
            .margin('5vp')
            .onClick(() => {
              this.imageImageFit = ImageFit.Cover;
            })
          Button('change objectFit Auto')
            .id('ImageObjectFit_Auto')
            .margin('5vp')
            .onClick(() => {
              this.imageImageFit = ImageFit.Auto;
            })
          Button('change objectFit Fill')
            .id('ImageObjectFit_Fill')
            .margin('5vp')
            .onClick(() => {
              this.imageImageFit = ImageFit.Fill;
            })
          Button('change objectFit ScaleDown')
            .id('ImageObjectFit_ScaleDown')
            .margin('5vp')
            .onClick(() => {
              this.imageImageFit = ImageFit.ScaleDown;
            })
          Button('change objectFit None')
            .id('ImageObjectFit_None')
            .margin('5vp')
            .onClick(() => {
              this.imageImageFit = ImageFit.None;
            })

        }.width('100%')


        ForEach(ArrEntity.arr, (index: number) => {
          if (this.imageImageFit != null && this.timeHelper.printTime(true)) {
          }
          Image($r('app.media.app_icon')).objectFit(this.imageImageFit)
          Image($r('app.media.app_icon')).objectFit(this.imageImageFit)
          Image($r('app.media.app_icon')).objectFit(this.imageImageFit)
          Image($r('app.media.app_icon')).objectFit(this.imageImageFit)
          Image($r('app.media.app_icon')).objectFit(this.imageImageFit)
          Image($r('app.media.app_icon')).objectFit(this.imageImageFit)
          Image($r('app.media.app_icon')).objectFit(this.imageImageFit)
          Image($r('app.media.app_icon')).objectFit(this.imageImageFit)
          Image($r('app.media.app_icon')).objectFit(this.imageImageFit)
          Image($r('app.media.app_icon')).objectFit(this.imageImageFit)
          Image($r('app.media.app_icon')).objectFit(this.imageImageFit)
          Image($r('app.media.app_icon')).objectFit(this.imageImageFit)
          Image($r('app.media.app_icon')).objectFit(this.imageImageFit)
          Image($r('app.media.app_icon')).objectFit(this.imageImageFit)
          Image($r('app.media.app_icon')).objectFit(this.imageImageFit)
          Image($r('app.media.app_icon')).objectFit(this.imageImageFit)
          Image($r('app.media.app_icon')).objectFit(this.imageImageFit)
          Image($r('app.media.app_icon')).objectFit(this.imageImageFit)
          Image($r('app.media.app_icon')).objectFit(this.imageImageFit)
          Image($r('app.media.app_icon')).objectFit(this.imageImageFit)
          if (this.imageImageFit != null && this.timeHelper.printTime(false)) {
          }
        }, (item: number) => JSON.stringify(item))


      }
      .width('100%')
    }.margin({ bottom: 60 })
    .width('100%')
  }
}