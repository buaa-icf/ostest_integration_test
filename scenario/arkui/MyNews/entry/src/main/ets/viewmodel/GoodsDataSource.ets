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

import { getRandomImg, getRandomShortStr } from '../common/utils/RandomResource'

/**
 * Type definition of goods item
 */
export class GoodsItem {
  text: string
  img: Resource
  price: number
  id: string

  constructor(text: string, img: Resource, price: number, id: string) {
    this.text = text
    this.img = img
    this.price = price
    this.id = id
  }
}

/**
 * Goods data source used for lazy data loading
 */
@Observed
export class GoodsDataSource implements IDataSource {
  public goodsList: GoodsItem[] = []
  private listeners: DataChangeListener[] = []

  constructor() {
  }

  /**
   * Load some new goods data
   */
  public loadNewGoodsData(cnt: number = 1) {
    for (let i = 0; i < cnt; ++i) {
      this.goodsList.push(this.genRandGoodsItem())
      // Notify the LazyForEach component that a subcomponent needs to be added
      const idx = this.goodsList.length - 1
      this.listeners.forEach(listener => {
        listener.onDataAdd(idx)
      })
    }
  }

  public totalCount(): number {
    return this.goodsList.length
  }

  public getData(idx: number): GoodsItem {
    return this.goodsList[idx]
  }

  registerDataChangeListener(listener: DataChangeListener) {
    if (this.listeners.indexOf(listener) < 0) {
      this.listeners.push(listener)
    }
  }

  unregisterDataChangeListener(listener: DataChangeListener) {
    const pos = this.listeners.indexOf(listener)
    if (pos >= 0) {
      this.listeners.splice(pos, 1)
    }
  }

  /**
   * Notify the LazyForEach component that all subcomponent needs to be reloaded
   */
  notifyDataReload(): void {
    this.listeners.forEach(listener => {
      listener.onDataReloaded();
    })
  }

  /**
   * Notify the LazyForEach component that a subcomponent needs to be added
   */
  notifyDataAdd(idx: number): void {
    this.listeners.forEach(listener => {
      listener.onDataAdd(idx);
    })
  }

  /**
   * Notify the LazyForEach component that a subcomponent needs to be rebuilt because of data changes
   */
  notifyDataChange(idx: number): void {
    this.listeners.forEach(listener => {
      listener.onDataChange(idx);
    })
  }

  /**
   * Notify the LazyForEach component that a subcomponent needs to be deleted
   */
  notifyDataDelete(idx: number): void {
    this.listeners.forEach(listener => {
      listener.onDataDelete(idx);
    })
  }

  /**
   * Generate a random goods item
   * TODO: Temporary solution, change to request from server
   */
  private genRandGoodsItem(): GoodsItem {
    const text: string = getRandomShortStr()
    const img: Resource = getRandomImg()
    const price: number = Math.random() * 1000
    const id: string = this.goodsList.length.toString()
    return new GoodsItem(text, img, price, id)
  }
}