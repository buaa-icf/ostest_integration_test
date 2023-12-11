/*
 * Copyright (c) 2023 Huawei Device Co., Ltd.
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

@Entry
@Component
struct Benchmark052 {
  numList: number[] = []

  aboutToAppear() {
    for (let index = 0; index < 100; index++) {
      this.numList.push(index);
    }
  }

  build() {
    Column() {
      ForEach(this.numList, (number: number) => {
        Image($r('app.media.startIcon')).width(88).height(88)
      }, (num: number) => num.toString())
    }
  }

  pageTransition() {
    PageTransitionEnter({ duration: 1000 }).slide(SlideEffect.Left) // 跳转到此页面时的转场动画
    PageTransitionExit({type: RouteType.None, duration: 0}) // 此页面消失不需要动画
  }
}