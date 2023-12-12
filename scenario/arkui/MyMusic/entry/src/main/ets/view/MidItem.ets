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

import ItemData from '../viewmodel/MidItemData';
import hilog from '@ohos.hilog';
import prompt from '@ohos.promptAction';

/**
 * List item information component.
 */
@Component
export struct MidItem {
  private item: ItemData = new ItemData('', $r('app.media.fig1'), '', '');
  @Consume playingTitle: string;
  @Consume playingArtist: string;
  @Consume playingImg: Resource;
  @Consume rotateAngle: number;

  aboutToAppear() {
    let space: number = 0;
    if (this.item.others !== undefined) {
      space = this.item.others.length * 3;
    }
    let spaceString = '';
    for (let i = 0; i < space; i++) {
      spaceString = spaceString + ' ';
    }
    hilog.error(0x0000, 'testTag', 'Failed to load the content. Cause: %{public}d', space);
    hilog.error(0x0000, 'testTag', 'Failed to load the content. Cause: %{public}s', '[' + spaceString + ']');
    if (space > 0) {
      this.item.title = spaceString + ' ' + this.item.title;
    }
    hilog.error(0x0000, 'testTag', 'Failed to load the content. Cause: %{public}s', this.item.title);
  }

  build() {
    Column() {
      Column() {
        Row() {
          Blank()
          Image($r('app.media.ic_public_play_white'))
            .width($r('app.float.home_list_head_size'))
            .height($r('app.float.home_list_head_size'))
          Text(this.item.subTitle)
            .fontSize($r('app.float.normal_text_size'))
            .padding({ right: $r('app.float.home_list_padding') })
            .fontColor(Color.White)
        }
        .width('100%')

        Row() {
          Blank()
          Image($r('app.media.ic_public_play_white'))
            .width($r('app.float.login_progress_margin_top'))
            .height($r('app.float.login_progress_margin_top'))
            .margin({ bottom: $r('app.float.home_list_padding'), right: $r('app.float.home_list_padding') })
        }
        .width('100%')
      }
      .padding({ top: $r('app.float.home_list_padding'), left: $r('app.float.home_list_padding') })
      .borderRadius($r('app.float.home_backgroundImage_borderRadius'))
      .align(Alignment.TopStart)
      .backgroundImage(this.item.img)
      .backgroundImageSize(ImageSize.Cover)
      .width($r('app.float.home_secondGrid_height'))
      .height($r('app.float.home_secondGrid_height'))
      .margin({ right: $r('app.float.home_list_padding') })
      .justifyContent(FlexAlign.SpaceBetween)

      Stack({ alignContent: Alignment.TopStart }) {
        Text(this.item.others)
          .fontSize($r('app.float.little_text_size'))
          .fontColor(Color.Red)
          .backgroundColor(Color.Pink)
          .borderRadius($r('app.float.home_backgroundImage_borderRadius'))
          .margin('1vp')

        Text(this.item.title)
          .fontSize($r('app.float.small_text_size'))
          .width($r('app.float.home_secondGrid_height'))
          .maxLines(2)
      }
      .margin({ top: $r('app.float.setting_list_padding') })
    }
    .alignItems(HorizontalAlign.Start)
    .onClick(() => {
      this.enterList();
    })
  }

  enterList() {
    this.playingTitle = this.item.title.replace(' ', '');
    this.playingArtist = 'None';
    this.playingImg = this.item.img;
    this.rotateAngle = 360;
    prompt.showToast({
      message: '进入歌单：' + this.item.title.replace(' ', '')
    })
  }
}