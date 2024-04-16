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
import PlayerManager from '../manager/PlayerManager';

/**
 * List item information component.
 */
@Component
export default struct BookSecondItem {
  private item: ItemData = new ItemData('', $r('app.media.fig1'), '', [],$r('app.media.fig1'));
  private imgWidth: string = '';
  private playerManager: PlayerManager = AppStorage.get('playerManager') as PlayerManager;

  build() {
    Column() {
      Image(this.item.img)
        .width(this.imgWidth)
        .height('84vp')
        .borderRadius($r('app.float.podcast_text_border_Radius'))
      Text(this.item.title)
        .width(this.imgWidth)
        .fontSize($r('app.float.little_text_size'))
        .margin({ top: $r('app.float.home_homeCell_margin') })
        .maxLines(2)
    }
    .margin('8vp')
    .onClick(() => {;
      prompt.showToast({
        message: '播放歌单：' + this.item.title
      })
      this.playerManager.playList(this.item.title, this.item.list, 0);
    })
  }
}