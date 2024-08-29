/*
 * Copyright (c) 2024 Shenzhen Kaihong Digital Industry Development Co., Ltd.
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
struct UIComponentLayoutColumnLayout008 {

  build() {
    Column({space:30}) {

      Column(){
      }
      .width(300)
      .height(30)
      .backgroundColor(Color.Orange)
      .flexBasis(-5)

      Column(){
      }
      .width(300)
      .height(30)
      .backgroundColor(Color.Yellow)

      Column(){
      }
      .width(300)
      .height(30)
      .backgroundColor(Color.Gray)

    }
    .width('350')
    .height('200')
    .border({
      width:{left:3,right:3,top:3,bottom:3}

    })

  }
}