/**
 * Copyright (c) 2025 XBXyftx
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
import { DEVICE_TYPES, GET_USER_CONFIG, NewsArticle, UserConfigViewModel } from "common"
import { AppStorageV2 } from "@kit.ArkUI"
import { deviceInfo } from "@kit.BasicServicesKit"


/**
 * 文章内容渲染组件
 * @param article 带渲染文章内容
 * @param baseFontSize 基准字体大小
 */
@ComponentV2
export struct NewsArticleView {
  @Param article: NewsArticle = {
    id: "",
    title: "",
    date: "",
    url: "",
    content: []
  }
  @Param baseFontSize: number = 0
  @Local deviceType: DEVICE_TYPES =
    deviceInfo.deviceType === DEVICE_TYPES.PHONE ? DEVICE_TYPES.PHONE : DEVICE_TYPES.TABLET

  build() {
    Column() {
      Text(this.article.title)
        .alignSelf(ItemAlign.Start)
        .fontSize(this.baseFontSize + this.deviceType === DEVICE_TYPES.PHONE ? 8 : 10)
    }
    .width('100%')
    .height('100%')
  }
}