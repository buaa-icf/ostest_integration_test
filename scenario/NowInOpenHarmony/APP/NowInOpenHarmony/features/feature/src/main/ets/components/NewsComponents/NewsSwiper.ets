/**
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
 *
 * XBXyftx
 */

import { NewsSwiperModule } from 'common'
import { promptAction } from '@kit.ArkUI'

/**
 * 首页上方轮播图组件
 */
@ComponentV2
export struct NewsSwiper {
  @Param swiperList: NewsSwiperModule [] = [
    new NewsSwiperModule('https://images.openharmony.cn/%E9%A6%96%E9%A1%B5/banner/20240411/4.1releas%E6%89%8B%E6%9C%BA.jpg',
      '开源生态大会'),
    new NewsSwiperModule('https://images.openharmony.cn/%E6%B4%BB%E5%8A%A8/%E5%88%9B%E6%96%B0%E8%B5%9B2023/20230831/%E4%B8%89%E6%96%B9%E5%BA%93%E7%A7%BB%E5%8A%A8%E7%AB%AF.png',
      '开源生态大会'),
    new NewsSwiperModule('https://images.openharmony.cn/%E6%B4%BB%E5%8A%A8/%E6%98%8E%E6%98%9F%E5%BC%80%E5%8F%91%E6%9D%BF20250728/%E9%A6%96%E9%A1%B5banner657-433.jpg',
      '开源生态大会')
  ]

  build() {
    Column() {
      Swiper(){
        ForEach(this.swiperList,(item:NewsSwiperModule)=>{
          Image(item.img)
            .width('100%')
            .objectFit(ImageFit.Fill)
            .onClick(()=>{
              promptAction.showToast({message:'跳转原页面功能待开发'})
            })
            .borderRadius(20)
            .aspectRatio(2.2)
        })
      }
      .width('95%')
      .curve(Curve.EaseInOut)
      .loop(true)
      .autoPlay(true)
      .interval(2000)
    }
    .alignItems(HorizontalAlign.Center)
    // .margin({left:5,right:5})
    .borderRadius(20)
    .width('100%')

  }
}