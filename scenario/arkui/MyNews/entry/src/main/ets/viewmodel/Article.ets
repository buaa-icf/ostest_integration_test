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

export enum NewsType {
  PURE_TEXT,
  WITH_IMG,
  WITH_VIDEO
}

export class News {
  title: string
  // TODO: id: string
  author: string // TODO: author: User (username, id, avatar, ...)
  date: number // UTC timestamp
  type: NewsType
  imgList: Resource[]
  // TODO: corresponding user lists
  likedCnt: number
  cmtCnt: number
  fwdCnt: number

  constructor(
    title: string,
    author: string,
    date: number,
    type: NewsType,
    imgList: Resource[],
    likedCnt: number,
    cmtCnt: number,
    fwdCnt: number
  ) {
    this.title = title
    this.author = author
    this.date = date
    this.type = type
    this.imgList = imgList
    this.likedCnt = likedCnt
    this.cmtCnt = cmtCnt
    this.fwdCnt = fwdCnt
  }
}