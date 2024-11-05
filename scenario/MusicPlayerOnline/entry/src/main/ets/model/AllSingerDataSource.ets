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
import PlayListData from "./PlayListData";

export default class AllSingerDataSource implements IDataSource {
  private dataArray: PlayListData[] = []
  private listeners: DataChangeListener[] = []

  constructor() {
  }

  // 获取索引对应的数据
  public getData(index: number): PlayListData {
    return this.dataArray[index]
  }

  // 通知控制器数据重新加载
  notifyDataReload(): void {
    this.listeners.forEach(listener => {
      listener.onDataReloaded()
    })
  }

  // 通知控制器数据增加
  notifyDataAdd(index: number): void {
    this.listeners.forEach(listener => {
      listener.onDataAdd(index)
    })
  }

  // 通知控制器数据变化
  notifyDataChange(index: number): void {
    this.listeners.forEach(listener => {
      listener.onDataChange(index)
    })
  }

  // 通知控制器数据删除
  notifyDataDelete(index: number): void {
    this.listeners.forEach(listener => {
      listener.onDataDelete(index)
    })
  }

  // 通知控制器数据位置变化
  notifyDataMove(from: number, to: number): void {
    this.listeners.forEach(listener => {
      listener.onDataMove(from, to)
    })
  }

  // 获取数据总数
  public totalCount(): number {
    return this.dataArray.length
  }

  // 注册改变数据的控制器
  registerDataChangeListener(listener: DataChangeListener): void {
    if (this.listeners.indexOf(listener) < 0) {
      this.listeners.push(listener)
    }
  }

  // 注销改变数据的控制器
  unregisterDataChangeListener(listener: DataChangeListener): void {
    const pos = this.listeners.indexOf(listener)
    if (pos >= 0) {
      this.listeners.splice(pos, 1)
    }
  }

  // 增加前面数据
  public add1stItem(item: PlayListData): void {
    this.dataArray.splice(0, 0, item)
    this.notifyDataAdd(0)
  }

  // 在数据尾部增加一个元素
  public addLastItem(item: PlayListData): void {
    this.dataArray.splice(this.dataArray.length, 0, item)
    this.notifyDataAdd(this.dataArray.length - 1)
  }

  // 在指定索引位置增加一个元素
  public addItem(index: number, item: PlayListData): void {
    this.dataArray.splice(index, 0, item)
    this.notifyDataAdd(index)
  }

  // 增加一组数据
  public addItems(alist:PlayListData[]): void {
    this.dataArray = this.dataArray.concat(alist)
    this.notifyDataReload()
  }

  // 替换数据
  public setData(data: PlayListData[]): void {
    this.dataArray = data.slice()
    this.notifyDataReload();
  }

  // 删除所有元素
  public clear(): void {
    this.dataArray = []
    this.notifyDataReload();
  }

  // 删除第一个元素
  public delete1stItem(): void {
    this.dataArray.splice(0, 1)
    this.notifyDataDelete(0)
  }

  // 删除最后一个元素
  public deleteLastItem(): void {
    this.dataArray.splice(-1, 1)
    this.notifyDataDelete(this.dataArray.length)
  }
}