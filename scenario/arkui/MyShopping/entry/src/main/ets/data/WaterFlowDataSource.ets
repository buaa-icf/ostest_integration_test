/*
 * Copyright (c) 2023-2024 Shenzhen Kaihong Digital Industry Development Co., Ltd.
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

export class DataInfo {
  type!:string
  src!:string[]
}

// 实现IDataSource接口的对象，用于瀑布流组件加载数据
export class WaterFlowDataSource implements IDataSource {
  private listeners: DataChangeListener[] = []

  // 获取索引对应的数据
  public getData(index: number): DataInfo {
    if (index === 0) {
      return { type: "video", src: ["H264_AAC.mp4"] }
    } else if (index === 10) {
      return { type: "swiper", src: ["autoimage0.jpg", "autoimage1.jpg"] }
    } else  {
      return { type: "img", src: ["autoimage" + index + ".jpg"] }
    }
  }

  // 获取数据总数
  public totalCount(): number {
      return 100
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
}