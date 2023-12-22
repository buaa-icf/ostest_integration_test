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
import ItemData from '../viewmodel/BookTriItemData';
import prompt from '@ohos.promptAction';

/**
 * List item information component.
 */
@Component
export default struct BookTriItem {
  private items: ItemData[] = new Array<ItemData>();
  ;
  @Consume playingTitle: string;
  @Consume playingArtist: string;
  @Consume playingImg: Resource;
  @Consume rotateAngle: number;

  build() {
    Column() {
      ForEach(this.items, (item: ItemData) => {
        Row() {
          Image(item.img)
            .width($r('app.float.home_third_Cell_width'))
            .height('84vp')
            .borderRadius($r('app.float.home_backgroundImage_borderRadius'))
          Text(item.rank)
            .fontSize('20fp')
            .fontWeight(FontWeight.Bold)
            .fontColor(Color.Orange)
            .margin($r('app.float.home_homeCell_margin'))
          Column() {
            Text(item.title)
              .fontSize('20fp')
              .fontWeight(FontWeight.Bold)
              .maxLines(1)
              .textOverflow({ overflow: TextOverflow.Ellipsis })
            Text(item.subTitle)
              .fontSize($r('app.float.small_text_size'))
              .fontColor(Color.Grey)
              .textOverflow({ overflow: TextOverflow.Ellipsis })
              .maxLines(1)
            Blank()
            Row() {
              Text(item.others)
                .fontSize($r('app.float.little_text_size'))
                .fontColor(Color.Blue)
                .borderColor(Color.Blue)
                .borderWidth(1)
                .borderRadius('4vp')
                .margin('1vp')
              Image($r('app.media.ic_public_play'))
                .height('10vp')
                .width('10vp')
                .margin('1vp')
              Text(item.playNum)
                .fontSize($r('app.float.small_text_size'))
                .fontColor(Color.Grey)
            }
          }
          .alignItems(HorizontalAlign.Start)
          .width('60%')
          .height('72vp')

          Blank()
          Text(item.score)
        }
        .margin($r('app.float.home_homeCell_margin'))
        .onClick(() => {
          this.playingTitle = item.title;
          this.playingArtist = item.subTitle;
          this.playingImg = item.img;
          this.rotateAngle = 360;
          prompt.showToast({
            message: '进入歌单：' + item.title
          })
        })
      }, (item: ItemData) => JSON.stringify(item))
    }
    .width('90%')
    .alignItems(HorizontalAlign.Start)

  }
}