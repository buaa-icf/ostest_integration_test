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

import ItemData from '../viewmodel/TriItemData';
import prompt from '@ohos.promptAction';
import PlayerManager from '../manager/PlayerManager';

/**
 * List item information component.
 */
@Component
export default struct TriItem {
  private items: ItemData[] = new Array<ItemData>();
  private playerManager: PlayerManager = AppStorage.get('playerManager') as PlayerManager;

  build() {
    Column() {
      ForEach(this.items, (item: ItemData) => {
        Row() {
          Image(item.img)
            .width($r('app.float.home_third_Cell_width'))
            .height($r('app.float.home_third_Cell_width'))
            .borderRadius($r('app.float.home_backgroundImage_borderRadius'))
          Column() {
            Text(item.title)
            Row() {
              Text(item.others)
                .fontSize($r('app.float.little_text_size'))
                .fontColor(Color.Red)
                .backgroundColor(Color.Pink)
                .borderRadius($r('app.float.home_backgroundImage_borderRadius'))
                .margin('1vp')
              Text(item.subTitle)
                .fontSize($r('app.float.small_text_size'))
                .fontColor(Color.Grey)
            }
          }
          .alignItems(HorizontalAlign.Start)
        }
        .margin($r('app.float.home_homeCell_margin'))
        .onClick(() => {
          prompt.showToast({
            message: '播放歌单：' + item.title
          })
          this.playerManager.playList(item.title, item.list, 0);
        })
      })
    }
    .width('90%')
    .alignItems(HorizontalAlign.Start)

  }
}