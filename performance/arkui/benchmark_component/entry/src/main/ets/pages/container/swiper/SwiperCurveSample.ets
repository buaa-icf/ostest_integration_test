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
 * Swiper组件curve属性更新，滑动布局耗时
 */

import { ArrEntity } from '../../../entity/ArrEntity';
import { TimeHelper } from '../../../util/TimeHelper';

@Entry
@Component
struct SwiperCurveSample {
  timeHelper: TimeHelper = new TimeHelper('SwiperCurveSample');
  @State curve: Curve = Curve.Friction;

  build() {
    Scroll() {
      Flex({ direction: FlexDirection.Row, wrap: FlexWrap.Wrap }) {
        Button('change curve to Linear')
          .id('change curve to Linear')
          .margin('5vp')
          .fontSize(px2fp(16))
          .onClick(() => {
            this.curve = Curve.Linear;
          })
        Button('change curve to Ease')
          .id('change curve to Ease')
          .margin('5vp')
          .fontSize(px2fp(16))
          .onClick(() => {
            this.curve = Curve.Ease;
          })
        Button('change curve to EaseIn')
          .id('change curve to EaseIn')
          .margin('5vp')
          .fontSize(px2fp(16))
          .onClick(() => {
            this.curve = Curve.EaseIn;
          })
        Button('change curve to EaseOut')
          .id('change curve to EaseOut')
          .margin('5vp')
          .fontSize(px2fp(16))
          .onClick(() => {
            this.curve = Curve.EaseOut;
          })
        Button('change curve to EaseInOut')
          .id('change curve to EaseInOut')
          .margin('5vp')
          .fontSize(px2fp(16))
          .onClick(() => {
            this.curve = Curve.EaseInOut;
          })
        Button('change curve to FastOutSlowIn')
          .id('change curve to FastOutSlowIn')
          .margin('5vp')
          .fontSize(px2fp(16))
          .onClick(() => {
            this.curve = Curve.FastOutSlowIn;
          })
        Button('change curve to LinearOutSlowIn')
          .id('change curve to LinearOutSlowIn')
          .margin('5vp')
          .fontSize(px2fp(16))
          .onClick(() => {
            this.curve = Curve.LinearOutSlowIn;
          })
        Button('change curve to FastOutLinearIn')
          .id('change curve to FastOutLinearIn')
          .margin('5vp')
          .fontSize(px2fp(16))
          .onClick(() => {
            this.curve = Curve.FastOutLinearIn;
          })
        Button('change curve to ExtremeDeceleration')
          .id('change curve to ExtremeDeceleration')
          .margin('5vp')
          .fontSize(px2fp(16))
          .onClick(() => {
            this.curve = Curve.ExtremeDeceleration;
          })
        Button('change curve to Sharp')
          .id('change curve to Sharp')
          .margin('5vp')
          .fontSize(px2fp(16))
          .onClick(() => {
            this.curve = Curve.Sharp;
          })
        Button('change curve to Rhythm')
          .id('change curve to Rhythm')
          .margin('5vp')
          .fontSize(px2fp(16))
          .onClick(() => {
            this.curve = Curve.Rhythm;
          })
        Button('change curve to Smooth')
          .id('change curve to Smooth')
          .margin('5vp')
          .fontSize(px2fp(16))
          .onClick(() => {
            this.curve = Curve.Smooth;
          })
        Button('change curve to Friction')
          .id('change curve to Friction')
          .margin('5vp')
          .fontSize(px2fp(16))
          .onClick(() => {
            this.curve = Curve.Friction;
          })

        Swiper() {
          ForEach(ArrEntity.arr, (index: number) => {
            if (this.curve != null && this.timeHelper.printTime(true)) {
            }
            Text("" + index).width('100%').height('30%')
            Text("" + index).width('100%').height('30%')
            Text("" + index).width('100%').height('30%')
            Text("" + index).width('100%').height('30%')
            Text("" + index).width('100%').height('30%')
            Text("" + index).width('100%').height('30%')
            Text("" + index).width('100%').height('30%')
            Text("" + index).width('100%').height('30%')
            Text("" + index).width('100%').height('30%')
            Text("" + index).width('100%').height('30%')
            Text("" + index).width('100%').height('30%')
            Text("" + index).width('100%').height('30%')
            Text("" + index).width('100%').height('30%')
            Text("" + index).width('100%').height('30%')
            Text("" + index).width('100%').height('30%')
            Text("" + index).width('100%').height('30%')
            Text("" + index).width('100%').height('30%')
            Text("" + index).width('100%').height('30%')
            Text("" + index).width('100%').height('30%')
            Text("" + index).width('100%').height('30%')
            if (this.curve != null && this.timeHelper.printTime(false)) {
            }
          })
        }.curve(this.curve)

      }
      .width('100%')
    }.margin({ bottom: 60 })
    .width('100%')

  }
}