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
export default struct ListHead {
  /**
   * Image of list item.
   */
  private imgRefresh: Visibility = Visibility.None;
  /**
   * Text of list item.
   */
  private title: string = '';
  /**
   * Text of list item.
   */
  private subTitle: string = '';
  /**
   * Image of list item.
   */
  private imgArrow: Visibility = Visibility.None;
  /**
   * Other resource of list item.
   */
  private imgMore: Visibility = Visibility.None;
  /**
   * Other resource of list item.
   */
  private isPlayer: Visibility = Visibility.None;

  build() {
    Row() {
      Image($r('app.media.ic_public_refresh'))
        .objectFit(ImageFit.Contain)
        .width($r('app.float.home_list_head_size'))
        .height($r('app.float.home_list_head_size'))
        .visibility(this.imgRefresh)
        .margin($r('app.float.head_name_margin'))
      Text(this.title)
        .fontSize('20fp')
        .fontWeight(FontWeight.Medium)
      Image($r('app.media.ic_public_arrow_right'))
        .objectFit(ImageFit.Contain)
        .width($r('app.float.home_homeCell_size'))
        .height($r('app.float.home_homeCell_size'))
        .visibility(this.imgArrow)
      Row() {
        Image($r('app.media.ic_public_play'))
          .objectFit(ImageFit.Contain)
          .width($r('app.float.home_list_head_size'))
          .height($r('app.float.home_list_head_size'))
        Text('播放')
          .fontSize($r('app.float.little_text_size'))
          .fontWeight(FontWeight.Medium)
      }
      .margin($r('app.float.head_name_margin'))
      .padding($r('app.float.head_name_margin'))
      .backgroundColor($r('app.color.divider_gray'))
      .borderRadius($r('app.float.setting_list_borderRadius'))
      .visibility(this.isPlayer)

      Blank()
      Image($r('app.media.ic_public_more_list'))
        .objectFit(ImageFit.Contain)
        .width($r('app.float.home_homeCell_size'))
        .height($r('app.float.home_homeCell_size'))
        .visibility(this.imgMore)
      Text(this.subTitle)
        .fontSize($r('app.float.small_text_size'))
        .fontColor('#67779c')
    }
    .height($r('app.float.head_height'))
    .justifyContent(FlexAlign.SpaceBetween)
    .width('100%')
  }
}