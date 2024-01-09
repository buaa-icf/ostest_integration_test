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
import Logger from '../common/utils/Logger'
import VideoMVItemData from '../viewmodel/VideoMVItemData'

export default class VideoMVDataSource implements IDataSource {
  private dataArray: VideoMVItemData[] = []
  private listeners: DataChangeListener[] = []
  private nameBase:string[]=['忘星辰','今后我与自己流浪','喜欢曾经的你','emo']

  constructor() {
    for (let i = 0; i < 100; i++) {
      this.dataArray.push(new VideoMVItemData(this.getRandomName(), this.getRandomResource(), this.getRandomResource(), '凤凰传奇', '526', i))
    }
  }

  getRandomName():string{
    let ret:number = Math.floor(Math.random() * 4);
    let name: string = this.nameBase[ret];
    for (let index = 0; index < ret+1; index++) {
      name = name + this.nameBase[index];
    }
    return name;
  }
  getRandomResource(): Resource {
    let ret = Math.floor(Math.random() * 9);
    let ret2 = Math.floor(Math.random() * 4);
    let name: string = 'yellow';
    switch (ret2) {
      case 0:
        name = 'quareblue';
        break;
      case 1:
        name = 'quarered';
        break;
      case 2:
        name = 'quaregreen';
        break;
      default:
        name = 'quarepink';
        break;
    }
    let resource: string = name + ret.toString()+'.png';
    return $rawfile(resource)
  }

  // 获取索引对应的数据
  public getData(index: number): VideoMVItemData {
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

  // 增加数据
  public add1stItem(): void {
    this.dataArray.splice(0, 0, new VideoMVItemData('忘星辰' + this.dataArray.length.toString(), $r('app.media.yellow1'), $r('app.media.quareblue1'), '凤凰传奇', '526', this.dataArray.length))
    this.notifyDataAdd(0)
  }

  // 在数据尾部增加一个元素
  public addLastItem(): void {
    this.dataArray.splice(this.dataArray.length, 0, new VideoMVItemData('忘星辰' + this.dataArray.length.toString(), $r('app.media.yellow1'), $r('app.media.quareblue1'), '凤凰传奇', '526', this.dataArray.length))
    this.notifyDataAdd(this.dataArray.length - 1)
  }

  // 在指定索引位置增加一个元素
  public addItem(index: number): void {
    this.dataArray.splice(index, 0, new VideoMVItemData('忘星辰' + this.dataArray.length.toString(), $r('app.media.yellow1'), $r('app.media.quareblue1'), '凤凰传奇', '526', this.dataArray.length))
    this.notifyDataAdd(index)
  }

  // 删除第一个元素
  public delete1stItem(): void {
    this.dataArray.splice(0, 1)
    this.notifyDataDelete(0)
  }

  // 删除第二个元素
  public delete2ndItem(): void {
    this.dataArray.splice(1, 1)
    this.notifyDataDelete(1)
  }

  // 删除最后一个元素
  public deleteLastItem(): void {
    this.dataArray.splice(-1, 1)
    this.notifyDataDelete(this.dataArray.length)
  }

  // 重新加载数据
  public reload(): void {
    this.dataArray.splice(1, 1)
    this.dataArray.splice(3, 2)
    this.notifyDataReload()
  }
}