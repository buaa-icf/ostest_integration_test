/*
 * Copyright (c) 2023 Southeast University.
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

import router from '@ohos.router'
import { MainPageParams } from '../../viewmodel/RouterParams'

/**
 * Common invisible button style
 */
@Extend(Button)
function commonBtnStyle(handler?: (event: ClickEvent) => void) {
  .type(ButtonType.Normal)
  .stateEffect(false)
  .backgroundColor(Color.Transparent)
  .onClick(handler)
}

/**
 * Top buttons: back, settings
 */
@Component
export default struct TopBtns {
  build() {
    Row() {
      /* Back button */
      Button() {
        Image($r('app.media.ic_public_arrow_left'))
          .size({ width: 30, height: 30 })
          .fillColor($r('app.color.light_fg'))
      }
      .commonBtnStyle(() => {
        router.back({
          url: 'pages/MainPage',
          params: {
            isLoggedIn: false
          } as MainPageParams
        })
      })

      /* Settings button */
      Button() {
        Image($r('app.media.ic_public_settings'))
          .size({ width: 20, height: 20 })
          .fillColor($r('app.color.light_fg'))
      }
      .commonBtnStyle(() => {
      })
    }
    .width('100%')
    .justifyContent(FlexAlign.SpaceBetween)
  }
}