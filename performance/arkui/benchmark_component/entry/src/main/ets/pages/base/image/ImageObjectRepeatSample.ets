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
struct ImageObjectRepeatSample {
  timeHelper: TimeHelper = new TimeHelper('ImageObjectRepeatSample');
  @State imageRepeat: ImageRepeat = ImageRepeat.NoRepeat;

  build() {
    Scroll() {
      Flex({ direction: FlexDirection.Row, wrap: FlexWrap.Wrap }) {
        Flex({ direction: FlexDirection.Row, wrap: FlexWrap.Wrap }) {
          Button('change objectRepeat X')
            .id('ImageObjectRepeat_X')
            .margin('5vp')
            .onClick(() => {
              this.imageRepeat = ImageRepeat.X;
            })
          Button('change objectRepeat Y')
            .id('ImageObjectRepeat_Y')
            .margin('5vp')
            .onClick(() => {
              this.imageRepeat = ImageRepeat.Y;
            })
          Button('change objectRepeat XY')
            .id('ImageObjectRepeat_XY')
            .margin('5vp')
            .onClick(() => {
              this.imageRepeat = ImageRepeat.XY;
            })
          Button('change objectRepeat NoRepeat')
            .id('ImageObjectRepeat_NoRepeat')
            .margin('5vp')
            .onClick(() => {
              this.imageRepeat = ImageRepeat.NoRepeat;
            })
        }.width('100%')


        ForEach(ArrEntity.arr, (index: number) => {
          if (this.imageRepeat != null && this.timeHelper.printTime(true)) {
          }
          Image($r('app.media.app_icon')).objectRepeat(this.imageRepeat)
          Image($r('app.media.app_icon')).objectRepeat(this.imageRepeat)
          Image($r('app.media.app_icon')).objectRepeat(this.imageRepeat)
          Image($r('app.media.app_icon')).objectRepeat(this.imageRepeat)
          Image($r('app.media.app_icon')).objectRepeat(this.imageRepeat)
          Image($r('app.media.app_icon')).objectRepeat(this.imageRepeat)
          Image($r('app.media.app_icon')).objectRepeat(this.imageRepeat)
          Image($r('app.media.app_icon')).objectRepeat(this.imageRepeat)
          Image($r('app.media.app_icon')).objectRepeat(this.imageRepeat)
          Image($r('app.media.app_icon')).objectRepeat(this.imageRepeat)
          Image($r('app.media.app_icon')).objectRepeat(this.imageRepeat)
          Image($r('app.media.app_icon')).objectRepeat(this.imageRepeat)
          Image($r('app.media.app_icon')).objectRepeat(this.imageRepeat)
          Image($r('app.media.app_icon')).objectRepeat(this.imageRepeat)
          Image($r('app.media.app_icon')).objectRepeat(this.imageRepeat)
          Image($r('app.media.app_icon')).objectRepeat(this.imageRepeat)
          Image($r('app.media.app_icon')).objectRepeat(this.imageRepeat)
          Image($r('app.media.app_icon')).objectRepeat(this.imageRepeat)
          Image($r('app.media.app_icon')).objectRepeat(this.imageRepeat)
          Image($r('app.media.app_icon')).objectRepeat(this.imageRepeat)
          if (this.imageRepeat != null && this.timeHelper.printTime(false)) {
          }
        }, (item: number) => JSON.stringify(item))


      }
      .width('100%')
    }.margin({ bottom: 60 })
    .width('100%')
  }
}