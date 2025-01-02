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
/**
 * List item data entity.
 */
@Observed
export default class PerformanceTestItemData {
  title: string;
  subTitle: string;
  result: string = '未测试';
  isSelect: boolean = true;

  constructor(title: string, subTitle: string) {
    this.title = title;
    this.subTitle = subTitle;
  }
}