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
export struct MineHead {
  @State handlePopup1: boolean = false
  @State handlePopup2: boolean = false
  @Consume addVisibility: boolean
  @Consume nameVisibility: boolean

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
      if (this.addVisibility) {
        Row() {
          Image($r('app.media.ic_public_add'))
            .width('20vp')
            .height('20vp')
            .borderRadius('16vp')
          Text('添加状态')
            .margin({ left: '4vp' })
        }
        .alignItems(VerticalAlign.Center)
        .transition(TransitionEffect.OPACITY
          .animation({ curve: curves.springMotion() })
          .combine(TransitionEffect.move(TransitionEdge.TOP)))
        .onClick(() => {
          prompt.showToast({
            message: '添加状态'
          })
        })
      }
      if (this.nameVisibility) {
        Row() {
          Image($r('app.media.brand'))
            .width('28vp')
            .height('28vp')
            .borderRadius('16vp')
          Text('闲潭春半')
            .fontSize('20fp')
            .margin({ left: '4vp' })
        }
        .alignItems(VerticalAlign.Center)
        .transition(TransitionEffect.OPACITY
          .animation({ curve: curves.springMotion() })
          .combine(TransitionEffect.move(TransitionEdge.TOP)))
      }

      Row() {
        Image($r('app.media.search'))
          .width($r('app.float.home_homeCell_size'))
          .height($r('app.float.home_homeCell_size'))
        Image($r('app.media.ic_public_more_list'))
          .margin({ left: '4vp' })
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