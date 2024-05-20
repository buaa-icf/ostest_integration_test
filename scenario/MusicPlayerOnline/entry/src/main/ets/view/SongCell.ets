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

import AudioItem from '../model/AudioItem';
import ServerConstants from '../manager/ServerConstants';

@Component
export default struct SongCell {
  @State item: AudioItem = new AudioItem('', '', '');

  build() {
    Row() {
      Image(ServerConstants.SONG_IMAGE_URL + this.item.id)
        .width(64)
        .height(64)
      Blank()
      Text(this.item.title)
        .fontSize('20fp')
      Text('·')
        .fontSize('20fp')
        .fontColor('#e0e0e0')
      Text(this.item.artist)
        .maxLines(1)
        .fontSize('14fp')
        .fontColor('#e0e0e0')
    }
    .justifyContent(FlexAlign.SpaceBetween)
    .width('90%')
    .alignSelf(ItemAlign.Center)
  }
}
