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

import AudioData from '../model/AudioData';
import ServerConstants from '../constants/ServerConstants';

@Component
export default struct ExploreSongItem {
  @State item: AudioData = new AudioData('', '', '');
  @State index: number = 0;

  aboutToAppear(): void {
  }

  build() {
    Row() {
      Text((this.index + 1).toString())
        .fontSize(20)
        .fontColor('#a0a0a0')
      Column() {
        Text(this.item.title)
          .fontSize(20)
          .maxLines(1)
          .width('90%')
          .margin({top:4,bottom:8})
        Row() {
          Text(this.item.artist)
            .fontColor('#a0a0a0')
            .maxLines(1)
          Blank()
          Text(this.item.album+'('+this.item.year+')')
            .fontColor('#a0a0a0')
            .maxLines(1)
        }
        .align(Alignment.Start)
        .width('90%')
        .justifyContent(FlexAlign.SpaceBetween)
      }
    }
    .justifyContent(FlexAlign.SpaceBetween)
    .width('90%')
    .alignSelf(ItemAlign.Center)
  }
}
