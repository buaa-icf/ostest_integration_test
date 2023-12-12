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

import ItemData from '../viewmodel/MineListItemData';
import hilog from '@ohos.hilog';
import prompt from '@ohos.promptAction';

/**
 * List item information component.
 */
@Component
export struct MineListItem {
  private item: ItemData = new ItemData('', $r('app.media.fig21'), '', Visibility.None, Visibility.None);
  @Consume playingTitle: string;
  @Consume playingArtist: string;
  @Consume playingImg: Resource;
  @Consume rotateAngle: number;

  build() {
    Row() {
      Image(this.item.img)
        .width($r('app.float.home_third_Cell_width'))
        .height($r('app.float.home_third_Cell_width'))
        .borderRadius($r('app.float.home_backgroundImage_borderRadius'))
        .backgroundColor(Color.Gray)
      Column() {
        Text(this.item.title)
          .fontSize('20fp')
          .maxLines(1)
          .textOverflow({ overflow: TextOverflow.Ellipsis })
        Text(this.item.subTitle)
          .fontSize($r('app.float.small_text_size'))
          .fontColor(Color.Grey)
          .textOverflow({ overflow: TextOverflow.Ellipsis })
          .maxLines(1)
          .margin({ top: '4vp' })
      }
      .margin({ left: '4vp' })
      .alignItems(HorizontalAlign.Start)
      .width('60%')

      Blank()
      Row() {
        Image($r('app.media.ic_public_favor'))
          .height('10vp')
          .width('10vp')
        Text('心动模式')
          .fontSize('12fp')
          .margin({ left: '2vp' })
      }.backgroundColor($r('app.color.mainPage_backgroundColor'))
      .padding('4vp')
      .borderRadius('4vp')
      .visibility(this.item.patternVisibility)

      Image($r('app.media.ic_public_more_list'))
        .height('10vp')
        .width('10vp')
        .margin('1vp')
        .visibility(this.item.moreVisibility)

    }
    .justifyContent(FlexAlign.SpaceBetween)
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