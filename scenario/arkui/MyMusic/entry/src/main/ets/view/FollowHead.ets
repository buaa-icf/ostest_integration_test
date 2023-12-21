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
import curves from '@ohos.curves'
import prompt from '@ohos.promptAction';

@Component
export struct FollowHead {
  @State handlePopup1: boolean = false
  @State handlePopup2: boolean = false

  build() {
    Row() {
      Image($r('app.media.ic_public_drawer'))
        .width($r('app.float.home_homeCell_size'))
        .height($r('app.float.home_homeCell_size'))
        .onClick(() => {
          this.handlePopup1 = !this.handlePopup1
        })
        .bindPopup(this.handlePopup1, {
          message: '这是个人菜单.',
        })
      Text('动态')
        .margin({ left: '4vp' })
        .fontSize('20fp')

      Row() {
        Image($r('app.media.ic_public_add_norm_filled'))
          .width($r('app.float.home_homeCell_size'))
          .height($r('app.float.home_homeCell_size'))
      }
    }
    .padding({ left: $r('app.float.mainPage_padding'), right: $r('app.float.mainPage_padding') })
    .height($r('app.float.head_height'))
    .justifyContent(FlexAlign.SpaceBetween)
    .width('100%')
  }
}