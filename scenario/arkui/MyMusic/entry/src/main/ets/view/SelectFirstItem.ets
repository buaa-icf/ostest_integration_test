/*
 * Copyright (c) 2023 Shenzhen Kaihong Digital Industry Development Co., Ltd.
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

import ItemData from '../viewmodel/SelectFirstItemData';
import prompt from '@ohos.promptAction';

/**
 * List item information component.
 */
@Component
export default struct SelectFirstItem {
  private item: ItemData = new ItemData('', $r('app.media.fig1'), '', 'ffffff');

  build() {
    Column() {
      Image(this.item.img)
        .width('48vp')
        .height('48vp')
        .borderRadius($r('app.float.podcast_text_border_Radius'))
      Text(this.item.title)
        .width('72vp')
        .fontSize($r('app.float.small_text_size'))
        .maxLines(1)
        .textAlign(TextAlign.Center)
        .fontColor('#' + this.item.color)
        .margin({ top: $r('app.float.home_homeCell_margin') })
      Text(this.item.subTitle)
        .width('72vp')
        .fontSize($r('app.float.little_text_size'))
        .margin({ top: $r('app.float.home_homeCell_margin') })
        .maxLines(1)
        .textAlign(TextAlign.Center)
        .fontColor('#' + this.item.color)
    }
    .backgroundColor('#22' + this.item.color)
    .padding('16vp')
    .margin('8vp')
    .borderRadius($r('app.float.podcast_text_border_Radius'))
    .onClick(() => {
      prompt.showToast({
        message: '播放歌单：' + this.item.title
      })
    })
  }
}