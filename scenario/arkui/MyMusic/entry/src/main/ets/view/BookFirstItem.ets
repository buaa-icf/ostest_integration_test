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
import ItemData from '../viewmodel/ItemData';
import prompt from '@ohos.promptAction';

/**
 * List item information component.
 */
@Component
export struct BookFirstItem {
  private item: ItemData = new ItemData('', $r('app.media.fig1'), '', $r('app.media.fig1'));
  @Consume playingTitle: string;
  @Consume playingArtist: string;
  @Consume playingImg: Resource;
  @Consume rotateAngle: number;

  build() {
    Column() {
      Image(this.item.img)
        .width('48vp')
        .height('64vp')
        .borderRadius($r('app.float.podcast_text_border_Radius'))
      Text(this.item.title)
        .width('48vp')
        .fontSize($r('app.float.little_text_size'))
        .margin({ top: $r('app.float.home_homeCell_margin') })
        .maxLines(1)
        .textAlign(TextAlign.Center)
    }
    .backgroundColor('#f1f1f1')
    .padding('12vp')
    .margin('8vp')
    .borderRadius($r('app.float.podcast_text_border_Radius'))
    .onClick(() => {
      this.playingTitle = this.item.title;
      this.playingArtist = this.item.subTitle;
      this.playingImg = this.item.img;
      this.rotateAngle = 360;
      prompt.showToast({
        message: '进入歌单：' + this.item.title
      })
    })
  }
}