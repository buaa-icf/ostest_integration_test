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
export default struct SongItem {
  @State item: AudioData = new AudioData('', '', '');
  private spaces: string = '                         '

  build() {
    Row() {
      Image(ServerConstants.SONG_IMAGE_URL + this.item.id)
        .width(64)
        .height(64)
        .borderRadius(4)
      Blank()
      Text() {
        if(this.item.isPlaying){
          Span(this.spaces)
            .fontSize('20fp')
        }
        Span(this.item.title)
          .fontSize('20fp')
        Span('·')
          .fontSize('20fp')
          .fontColor('#a0a0a0')
        Span(this.item.artist)
          .fontColor('#a0a0a0')
        if(this.item.isPlaying){
          Span(this.spaces)
            .fontSize('20fp')
        }
      }
      .id(this.item.title)
      .maxLines(1)
      .width('80%')
      .textAlign(TextAlign.End)
      .textOverflow({ overflow: this.item.isPlaying ? TextOverflow.MARQUEE : TextOverflow.None })
    }
    .justifyContent(FlexAlign.SpaceBetween)
    .width('90%')
    .alignSelf(ItemAlign.Center)
  }
}
