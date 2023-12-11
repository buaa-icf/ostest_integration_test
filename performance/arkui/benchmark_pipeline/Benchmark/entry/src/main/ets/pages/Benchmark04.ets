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
struct BenchmarkComponent04 {
  @BuilderParam buildInder: () => void

  build() {
    Column() {
      this.buildInder()
    }.width('100%').height('100%')
  }
}

@Entry
@Component
struct Benchmark04 {
  @Builder
  createColumn(loop: number) {
    if (loop <= 100) {
      BenchmarkComponent04() {
        this.createColumn(loop + 1)
      }
    } else if (loop == 101) {
      Button('This is a button')
        .onClick(() => {
          console.log('click the button')
        })
        .id('only_btn')
    }
  }

  build() {
    Column() {
      this.createColumn(1)
    }
  }
}