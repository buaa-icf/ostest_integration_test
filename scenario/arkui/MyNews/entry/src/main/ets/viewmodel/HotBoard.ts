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
 * 热榜话题的类型定义
 */
export class HotBoardItem {
  title: string
  hotValue: number
  label?: '热门事件' | '新事件上榜' | '解读' | '辟谣'

  constructor(title: string, hotValue: number, label?: '热门事件' | '新事件上榜' | '解读' | '辟谣') {
    this.title = title
    this.hotValue = hotValue
    this.label = label
  }
}

export class HotBoardClass {
  itemList: HotBoardItem[]

  constructor(itemList: HotBoardItem[]) {
    this.setItemList(itemList)
  }

  setItemList(itemList: HotBoardItem[]) {
    this.itemList = itemList
  }

  /* 将话题列表按热度排序 */
  sortItemList() {
    let sortedItemList: HotBoardItem[] = this.itemList.sort((a, b) => {
      return a.hotValue - b.hotValue
    })
    return sortedItemList
  }
}
