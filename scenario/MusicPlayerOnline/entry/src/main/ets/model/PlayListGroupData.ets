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
import AudioData from './AudioData';
import PlayListData from './PlayListData';

/**
 * List item data entity.
 */
export default class PlayListGroupData {
  /**
   * Text of list item.
   */
  title: string;
  /**
   * Image of list item.
   */
  lists: PlayListData[] = [];
  /**
   * Other resource of list item.
   */
  type?: string;

  constructor(title: string, lists: PlayListData[], type?: string) {
    this.title = title;
    this.lists = lists;
    this.type = type;
  }
}