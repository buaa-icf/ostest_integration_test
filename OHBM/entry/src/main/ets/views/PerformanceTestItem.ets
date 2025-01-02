/*
 * Copyright (c) 2024 Shenzhen Kaihong Digital Industry Development Co., Ltd.
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

import PerformanceTestItemData from '../models/PerformanceTestItemData';

/**
 * List item information component.
 */
@Component
export default struct PerformanceTestItem {
  @ObjectLink item: PerformanceTestItemData;
  @Prop isRunning:boolean;

  aboutToAppear() {
  }

  build() {
    Row() {
      Toggle({ type: ToggleType.Checkbox, isOn: this.item.isSelect })
        .size({ width: 20, height: 20 })
        .selectedColor('#007DFF')
        .enabled(!this.isRunning)
      Column() {
        Text(this.item.title)
          .fontSize(20)
          .maxLines(1)
          .textOverflow({ overflow: TextOverflow.MARQUEE })
          .textAlign(TextAlign.Center)
        Text(this.item.subTitle)
          .fontSize(16)
          .fontColor(Color.Gray)
      }
      .width('70%')
      .alignItems(HorizontalAlign.Start)
      .margin(4)

      Blank()
      Text(this.item.result)
        .fontSize(20)
        .margin(4)
        .fontColor(this.item.result === '未测试' ? Color.Black :
          this.item.result === '测试中' ? Color.Orange : Color.Blue)
    }
    .width('100%')
    .alignItems(VerticalAlign.Center)
    .justifyContent(FlexAlign.SpaceBetween)
  }
}