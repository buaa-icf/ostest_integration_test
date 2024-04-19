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

// /**
//  * Gauge组件trackShadow属性更新布局耗时 todo trackShadow属性在11之上存在,暂时屏蔽
//  */
//
// import { ArrEntity } from '../../../entity/ArrEntity'
// import { TimeHelper } from '../../../util/TimeHelper'
//
// @Entry
// @Component
// struct GaugeTrackShadowSample {
//   timeHelper: TimeHelper = new TimeHelper('GaugeTrackShadowSample');
//   @State gaugeTrackShadow: number = { radius: 5, offsetX: 5, offsetY: 5 };
//
//   build() {
//     Scroll() {
//       Flex({ direction: FlexDirection.Row, wrap: FlexWrap.Wrap }) {
//         Column() {
//           Button('change trackShadow')
//             .id('change trackShadow')
//             .margin('5vp')
//             .onClick(() => {
//               this.gaugeTrackShadow = { radius: 10, offsetX: -20, offsetY: -20 };
//             })
//         }.width('100%')
//
//         ForEach(ArrEntity.arr, (index: number) => {
//         if (this.gaugeTrackShadow != null && this.timeHelper.printTime(true)) {
//         }
//           Gauge({ value: 0 }).trackShadow(this.gaugeTrackShadow)
//           Gauge({ value: 0 }).trackShadow(this.gaugeTrackShadow)
//           Gauge({ value: 0 }).trackShadow(this.gaugeTrackShadow)
//           Gauge({ value: 0 }).trackShadow(this.gaugeTrackShadow)
//           Gauge({ value: 0 }).trackShadow(this.gaugeTrackShadow)
//           Gauge({ value: 0 }).trackShadow(this.gaugeTrackShadow)
//           Gauge({ value: 0 }).trackShadow(this.gaugeTrackShadow)
//           Gauge({ value: 0 }).trackShadow(this.gaugeTrackShadow)
//           Gauge({ value: 0 }).trackShadow(this.gaugeTrackShadow)
//           Gauge({ value: 0 }).trackShadow(this.gaugeTrackShadow)
//           Gauge({ value: 0 }).trackShadow(this.gaugeTrackShadow)
//           Gauge({ value: 0 }).trackShadow(this.gaugeTrackShadow)
//           Gauge({ value: 0 }).trackShadow(this.gaugeTrackShadow)
//           Gauge({ value: 0 }).trackShadow(this.gaugeTrackShadow)
//           Gauge({ value: 0 }).trackShadow(this.gaugeTrackShadow)
//           Gauge({ value: 0 }).trackShadow(this.gaugeTrackShadow)
//           Gauge({ value: 0 }).trackShadow(this.gaugeTrackShadow)
//           Gauge({ value: 0 }).trackShadow(this.gaugeTrackShadow)
//           Gauge({ value: 0 }).trackShadow(this.gaugeTrackShadow)
//           Gauge({ value: 0 }).trackShadow(this.gaugeTrackShadow)

//         if (this.gaugeTrackShadow != null && this.timeHelper.printTime(false)) {
//         }
//         })
//
//       }
//       .width('100%')
//     }.margin({ bottom: 60 })
//     .width('100%')
//
//   }
// }