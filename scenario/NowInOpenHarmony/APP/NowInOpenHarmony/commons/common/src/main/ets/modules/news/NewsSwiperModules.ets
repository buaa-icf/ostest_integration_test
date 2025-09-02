/**
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
 *
 * XBXyftx
 */

/**
 * 首页顶部轮播图数据结构(测试用例并非后端接口数据结构)
 */
export class NewsSwiperModule{
  img:ResourceStr
  name:string

  constructor(img: ResourceStr, name: string) {
    this.img = img
    this.name = name
  }

}