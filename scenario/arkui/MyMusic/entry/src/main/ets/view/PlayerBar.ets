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

/**
 * List item information component.
 */
@Component
export struct PlayerBar {
  @Consume playingTitle: string;
  @Consume playingArtist: string;
  @Consume playingImg: Resource;
  @Consume rotateAngle: number;

  build() {
    Column() {
      Row() {
        Image(this.playingImg)
          .width('36vp')
          .height('36vp')
          .margin('8vp')
          .borderRadius('18vp')
          .rotate({ angle: this.rotateAngle })
          .animation({
            duration: 3600,
            curve: Curve.Linear,
            delay: 500,
            iterations: -1, // 设置-1表示动画无限循环
            playMode: PlayMode.Normal
          })
        Row() {
          Text(this.playingTitle)
            .height($r('app.float.home_homeCell_size'))
            .fontWeight(FontWeight.Bold)
            .maxLines(1)
            .textOverflow({ overflow: TextOverflow.Ellipsis })
          Text(' - ')
            .height($r('app.float.home_homeCell_size'))
          Text(this.playingArtist)
            .height($r('app.float.home_homeCell_size'))
            .maxLines(1)
            .textOverflow({ overflow: TextOverflow.Ellipsis })
        }.width('35%')

        Blank()
        Image($r('app.media.ic_public_pause_norm'))
          .objectFit(ImageFit.Contain)
          .width($r('app.float.home_homeCell_size'))
          .height($r('app.float.home_homeCell_size'))
          .margin({ right: $r('app.float.home_text_margin') })
        Image($r('app.media.ic_public_view_list'))
          .objectFit(ImageFit.Contain)
          .width($r('app.float.home_homeCell_size'))
          .height($r('app.float.home_homeCell_size'))
          .margin({ right: $r('app.float.home_text_margin') })
      }
      .width('100%')
      .margin({ top: $r('app.float.home_list_margin') })

      Divider().strokeWidth(1).color($r('app.color.divider_gray'))

    }
  }
}