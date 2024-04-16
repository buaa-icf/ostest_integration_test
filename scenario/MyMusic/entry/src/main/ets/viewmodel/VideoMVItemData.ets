/*
 * Copyright (c) 2023 Shenzhen Kaihong Digital Industry Development Co., Ltd.
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
 * List item data entity.
 */
export default class VideoMVItemData {
  /**
   * Text of list item.
   */
  title: string;
  logo: Resource;
  /**
   * Image of list item.
   */
  img: Resource;
  /**
   * Other resource of list item.
   */
  thumbs: string;
  subTitle: string;
  index: number;

  constructor(title: string, img: Resource, logo: Resource, subTitle: string, thumbs: string, index: number) {
    this.title = title;
    this.img = img;
    this.logo = logo;
    this.thumbs = thumbs;
    this.subTitle = subTitle;
    this.index = index;
  }
}