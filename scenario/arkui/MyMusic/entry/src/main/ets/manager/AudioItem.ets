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
export default class AudioItem {
  /**
   * Text of list item.
   */
  title: string;
  /**
   * Image of list item.
   */
  img: Resource;
  /**
   * Other resource of list item.
   */
  time: number;
  artist: string

  constructor(title: string, img: Resource, artist: string, time: number) {
    this.title = title;
    this.img = img;
    this.time = time;
    this.artist = artist;
  }
}