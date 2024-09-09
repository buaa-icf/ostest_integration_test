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
struct fontAttributePage48 {
  @State start: number = 5
  @State end: number = 5

  build() {
    Column() {
      Text("OpenHarmony是由开放原子开源基金会(OpenAtom Foundation)孵化及运营的开源项目, 目标是面向全场景、全连接、全智能时代、" +
        "基于开源的方式,搭建一个智能终端设备操作系统的框架和平台")
        .fontSize(20)
        .margin({top:50})
        .copyOption(CopyOptions.InApp)
        .selection(this.start, this.end)
    }.width('100%')
  }
}