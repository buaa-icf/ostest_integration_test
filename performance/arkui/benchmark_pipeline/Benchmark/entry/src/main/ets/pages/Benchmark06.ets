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
struct Benchmark06 {
  @State flag: boolean = false
  numList: number[] = []

  aboutToAppear() {
    for (let index = 0; index < 100; index++) {
      this.numList.push(index);
    }

    setTimeout(() => {
      animateTo({duration: 1500}, () => {
        this.flag = true
      })
    }, 500)
  }

  build() {
    Column() {
      if (this.flag) {
        ForEach(this.numList, (number: number, index: number) => {
          Image($r('app.media.startIcon')).width(88).height(88)
            .transition({type: TransitionType.Insert, scale: {x: 0.3, y: 0.3}, rotate: {x: 0, y: 0, z: 1, angle: 360}})
        }, (num: number) => num.toString())
      }
    }
  }
}