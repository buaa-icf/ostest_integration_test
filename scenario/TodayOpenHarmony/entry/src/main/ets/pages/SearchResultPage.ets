/*
 * Copyright (c) 2025 Shenzhen Kaihong Digital Industry Development Co., Ltd.
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

import { SearchResultItem, RouteParams } from '../model/SearchModel';
import { searchData } from '../common/constants/SearchData';
import router from '@ohos.router';

@Entry
@Component
struct SearchResultPage {
  @State keyword: string = ''
  @State loading: boolean = true
  @State listData: SearchResultItem[] = []// 使用类型接口替代对象字面量

  // 新增点击处理方法
  private handleItemClick(item: SearchResultItem) {
    router.pushUrl({
      url: 'pages/HomePage',
      params: {
        // 通过路由参数定位推荐模块
        initialTab: 'recommend',  // 新增定位参数
        targetId: item.id,
        __PARAM__: JSON.stringify({
          from: 'search',
          recommendId: item.id  // 添加推荐标识
        })
      }
    })
  }

  // 生命周期-页面初始化
  aboutToAppear() {
    const params = router.getParams() as RouteParams
    this.keyword = decodeURIComponent(params.keyword)
    this.loadData()
  }

  private loadData() {
    this.loading = true
    setTimeout(() => {
      const normalizedKeyword = this.keyword.trim().toLowerCase()

      this.listData = Object.keys(searchData)
        .filter(key =>
        key.includes(normalizedKeyword) || // 关键词包含输入内容
        normalizedKeyword.includes(key)    // 或输入内容包含关键词
        )
        .flatMap(matchedKey => searchData[matchedKey])
      this.loading = false
    }, 500)
  }

  build() {
    Column() {
      // 顶部导航
      Row() {
        Image($r('app.media.back'))
          .width(24)
          .height(24)
          .onClick(() => router.back())

        Text('搜索结果')
          .fontSize(20)
          .fontColor('#333')
          .margin({ left: 12 })
      }
      .padding(12)

      // 搜索词显示
      Text(`"${this.keyword}"`)
        .fontSize(16)
        .fontColor('#666')
        .margin({ bottom: 20 })

      // 结果列表
      List() {
        if (this.loading) {
          ListItem() {
            Text('加载中...')
              .fontSize(16)
              .fontColor('#333')
              .textAlign(TextAlign.Center)
          }
        } else if (this.listData.length === 0) {
          ListItem() {
            Text('暂无相关结果')
              .fontSize(16)
              .fontColor('#333')
              .textAlign(TextAlign.Center)
          }
        } else {
          ForEach(this.listData,(item:SearchResultItem )=> {
            ListItem() {
              Row() {
                Image($r('app.media.doc'))
                  .width(40)
                  .height(40)
                  .margin({ right: 10 })

                Column() {
                  Text(item.title).fontSize(18)
                  Text(item.desc).fontColor('#666').maxLines(1)
                }
              }
              .onClick(() => {
                // 添加点击态动画
                animateTo({ duration: 100 }, () => {
                  this.handleItemClick(item)
                })
              })
              // 添加动态透明度过渡
              .opacity(this.listData.find(i => i.id === item.id)?.clicked ? 0.5 : 1)
              .transition(TransitionEffect.OPACITY.animation({ duration: 200 }))
              .padding(12)
              .width('100%')
              // 添加点击态效果
              .stateStyles({
                pressed: {
                  opacity: 0.8
                }
              })
            }
          },   (item: SearchResultItem) => item.id.toString()
          )
        }
      }
      .layoutWeight(1)
    }
    .backgroundColor(Color.White)
    .height('100%')
    // 添加页面转场效果
    .transition(
      TransitionEffect.OPACITY.animation({ duration: 100 }) // 直接调用属性
    )
  }
}