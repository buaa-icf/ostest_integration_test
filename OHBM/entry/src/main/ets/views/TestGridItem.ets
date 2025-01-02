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

import ItemData from '../models/TestItemData';

/**
 * List item information component.
 */
@Component
export default struct TestGridItem {
  item: ItemData = new ItemData('', $r('app.media.app_icon'), '', () => {
  });

  aboutToAppear() {
  }

  build() {
    Column() {
      Column() {
      }
      .borderRadius(12)
      .backgroundImage(this.item.img)
      .backgroundImageSize(ImageSize.Cover)
      .width(64)
      .height(64)
      .justifyContent(FlexAlign.SpaceBetween)

      Text(this.item.title)
        .fontSize(20)
        .maxLines(1)
        .textOverflow({ overflow: TextOverflow.MARQUEE })
        .width(120)
        .textAlign(TextAlign.Center)
        .margin({ top: 4 })
      Text(this.item.subTitle)
        .fontSize(16)
        .margin(4)
        .maxLines(1)
        .fontColor(Color.Gray)
    }
    .alignItems(HorizontalAlign.Center)
    .clickEffect({ level: ClickEffectLevel.MIDDLE, scale: 0.8 })
    .shadow({
      radius: 2,
      color: Color.Gray,
      offsetX: 1,
      offsetY: 1
    })
    .onClick(() => {
      this.item.onItemClick();
    })
  }
}