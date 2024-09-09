/**
 * Copyright (c) 2024 Shenzhen Kaihong Digital Industry Development Co., Ltd.
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

@Entry
@Component
struct fontAttributePage42 {

  build() {
    Column() {
      Text("我无法挽留，我无法回头，我无法接受，你说你即将离开我")
        .fontSize(20)
        .wordBreak(WordBreak.BREAK_ALL)
        .margin({top:50})
      Text("내가 붙잡을 수 없고, 뒤돌아 볼 수 없고, 받아들일 수 없고, 당신은 곧 나를 떠날 거라고 말씀하셨다")
        .fontSize(20)
        .wordBreak(WordBreak.BREAK_ALL)
        .margin({top:50})
      Text("私は止められない、振り向くこともできない、受け入れることもできない。あなたはもうすぐ私を離れると言いました")
        .fontSize(20)
        .wordBreak(WordBreak.BREAK_ALL)
        .margin({top:50})
      Text("I can't hold on, I can't turn back, I can't accept it. You say you're leaving me soon")
        .fontSize(20)
        .wordBreak(WordBreak.BREAK_ALL)
        .margin({top:50})
    }.width('100%')
  }
}