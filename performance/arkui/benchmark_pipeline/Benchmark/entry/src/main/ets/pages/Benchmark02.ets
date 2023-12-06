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
struct BenchmarkComponent02 {

  title: string = ''
  clickAction: () => void = Function
  idMark: string = ''

  build() {
    if (this.idMark.length > 0) {
      Button(this.title)
        .onClick(this.clickAction)
        .id(this.idMark)
    } else {
      Button(this.title)
    }
  }
}



@Entry
@Component
struct Benchmark02 {
  numArray: number[] = []

  aboutToAppear() {
    for (let index = 0; index < 100; index++) {
      this.numArray.push(index);
    }
  }

  build() {
    Column() {
      ForEach(this.numArray, (number: number, index: number) => {
        if (index == 0) {
          BenchmarkComponent02({idMark: 'first_btn', title: `Button-${number + 1}`, clickAction: () => {
            console.log('click the first button')
          }})
        } else {
          BenchmarkComponent02({title: `Button-${number + 1}`})
        }
      }, (num: number) => num.toString())
    }
  }
}