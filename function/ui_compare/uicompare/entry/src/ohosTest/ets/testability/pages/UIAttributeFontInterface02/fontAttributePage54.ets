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
struct fontAttributePage54 {
  @State selectText:string = "我希望有个如你一般的人如山间清爽的风如古城温暖的光从清晨到夜晚由山野到书房等待不怕岁月蹉跎不怕路途" +
    "遥远只要最后是你就好グレートブリテンおよび北アイルランド連合王国という言葉は本当に長い言葉성공은 신념의 산물이며, 신념을 가진 " +
    "사람은 기적에 가까운 일을 가능하게 한다"

  build() {
    Column() {
      Text(this.selectText)
        .fontSize(20)
        .margin({top:50})
        .wordBreak(WordBreak.NORMAL)
    }.width('100%')
  }
}