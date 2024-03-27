/*
 * Copyright (c) 2023 Southeast University.
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

/**
 * Trending topics
 */
@Component
export default struct TrendingTopics {
  @Prop trendingTopicList: string[]

  build() {
    Row() {
      Text(this.trendingTopicList[0])
        .width('45%')
        .fontSize(14)
        .textOverflow({ overflow: TextOverflow.Ellipsis })
        .maxLines(1)

      Divider()
        .width('10%')
        .height(14)
        .vertical(true)
        .color($r('app.color.light_border'))
        .strokeWidth(1)

      Text(this.trendingTopicList[1])
        .width('45%')
        .fontSize(14)
        .textOverflow({ overflow: TextOverflow.Ellipsis })
        .maxLines(1)
    }.width('100%')
  }
}