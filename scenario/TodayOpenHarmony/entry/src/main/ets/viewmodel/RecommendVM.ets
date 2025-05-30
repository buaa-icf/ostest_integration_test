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

import { BannerItem } from '../model/BannerModel';
import { RecommendItem } from '../model/RecommendModel';
import { BannerData } from '../common/constants/BannerData';
import { BaseViewModel } from './ViewModelManager';
import { NewsListData } from '../common/constants/RecommendData';

@Observed
export class RecommendViewModel implements BaseViewModel {
  @Track bannerList: BannerItem[] = [];
  @Track recommendList: RecommendItem[] = [];
  private category: number = 0;

  async onInit(): Promise<void> { // 异步方法
    await Promise.all([
      this.loadBannerData(),
      this.loadRecommendations(0)
    ]);
  }


  async loadBannerData(): Promise<void> {
    this.bannerList = BannerData.map(item => ({
      id: item.id,
      image: item.image,
      link: item.link || '#'
    } as BannerItem ));
  }

  async loadRecommendations(category: number): Promise<void> {

    this.recommendList = NewsListData
      .filter(item => item.type === 'recommend')
      .map(item => ({
        id: item.id,
        type: item.type,
        title: item.title,
        image: item.image,
        types: item.types || [],
        subtitle: item.subtitle,
        timestamp: item.timestamp,
        views: item.views || 0,
        likeCount: item.likeCount || 0,
        isLiked: item.isLiked ?? false,
        link: item.link
      } as RecommendItem ));
  }
}