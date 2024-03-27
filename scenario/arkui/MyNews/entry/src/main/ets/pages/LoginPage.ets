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

import LoginArea from '../view/Login/LoginArea'
import TopBtns from '../view/Login/TopBtns'
import BottomBtns from '../view/Login/BottomBtns'

@Entry
@Component
struct LoginPage {
  build() {
    Column() {
      Column({ space: 50 }) {
        /* Top buttons: back, settings */
        TopBtns()

        /* Login area: inputs, login button, agreement checkbox */
        LoginArea()
      }

      /* Bottom buttons: other login methods, problem solving*/
      BottomBtns()
    }
    .height('100%')
    .padding({ top: 20, bottom: 20, left: 10, right: 10 })
    .justifyContent(FlexAlign.SpaceBetween)
  }

  pageTransition() {
    PageTransitionEnter({ type: RouteType.None, duration: 200 })
      .slide(SlideEffect.Bottom)
    PageTransitionExit({ type: RouteType.None, duration: 200 })
      .slide(SlideEffect.Bottom)
  }
}