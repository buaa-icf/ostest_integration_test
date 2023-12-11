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

@Component
struct BenchmarkComponent10 {
  title: string = ''

  build() {
    Button(this.title)
  }
}


@Entry
@Component
struct Benchmark10 {
  numArray: number[] = []

  aboutToAppear() {
    for (let index = 0; index < 100; index++) {
      this.numArray.push(index);
    }
  }

  build() {
    Scroll() {
      Column() {
        ForEach(this.numArray, (number: number, index: number) => {
          BenchmarkComponent10({ title: `Button-${number + 1}` })
            .onVisibleAreaChange([0.0, 1.0], (isVisible: boolean, currentRatio: number) => {
              console.log(`isVisible=${isVisible}, currentRatio=${currentRatio}`)
            })
        }, (num: number) => num.toString())
      }
    }
    .width('100%').height('100%')
    .id('scroll_benchmark10')
  }
}