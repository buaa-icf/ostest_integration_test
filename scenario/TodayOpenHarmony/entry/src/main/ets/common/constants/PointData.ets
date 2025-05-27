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

import{ PointRule,ExchangeOption,LevelRule }from'../../model/PointModel'
// 积分数据类
export class PointsData {
  // 积分获取规则数据
  static pointRules: PointRule[] = [
    { title: '每日签到', points: '+5分', desc: '每天登录应用签到一次' },
    { title: '连续签到', points: '+2分/天', desc: '连续签到额外奖励，最多7天' },
    { title: '内容创作', points: '+5分/篇', desc: '发布原创内容文章或视频' },
    { title: '优质内容', points: '+10分/篇', desc: '内容被官方推荐' },
    { title: '互动评论', points: '+2分/次', desc: '评论他人内容，每日上限10次' },
    { title: '分享应用', points: '+3分/次', desc: '分享内容到社交媒体' },
    { title: '邀请好友', points: '+20分/人', desc: '邀请新用户注册并激活' },
    { title: '完成任务', points: '+5~30分', desc: '完成平台发布的各类任务' },
    { title: '参与活动', points: '+10~50分', desc: '参与官方组织的线上活动' }
  ];

  // 积分兑换选项数据
  static exchangeOptions: ExchangeOption[] = [
    { title: '会员体验卡', points: 100, desc: '3天会员体验' },
    { title: '主题换肤', points: 200, desc: '解锁限定主题' },
    { title: '实物礼品', points: 500, desc: '精美周边商品' },
    { title: '会员月卡', points: 1000, desc: '30天会员特权' }
  ];

  // 等级规则
  static levelRules: LevelRule[] = [
    { level: 'Lv.1 新手', points: '0-99', benefits: '基础功能' },
    { level: 'Lv.2 进阶', points: '100-499', benefits: '解锁更多功能' },
    { level: 'Lv.3 达人', points: '500-999', benefits: '专属标识' },
    { level: 'Lv.4 专家', points: '1000-2999', benefits: '内容优先展示' },
    { level: 'Lv.5 大师', points: '3000+', benefits: 'VIP专属特权' }
  ];

  // 获取当前用户等级
  static getCurrentLevel(currentPoints: number): string {
    if (currentPoints >= 3000) return 'Lv.5 大师';
    if (currentPoints >= 1000) return 'Lv.4 专家';
    if (currentPoints >= 500) return 'Lv.3 达人';
    if (currentPoints >= 100) return 'Lv.2 进阶';
    return 'Lv.1 新手';
  }

  // 获取下一等级所需积分
  static getNextLevelPoints(currentPoints: number): number {
    if (currentPoints >= 3000) return 0; // 已是最高等级
    if (currentPoints >= 1000) return 3000 - currentPoints;
    if (currentPoints >= 500) return 1000 - currentPoints;
    if (currentPoints >= 100) return 500 - currentPoints;
    return 100 - currentPoints;
  }

  // 计算进度百分比
  static getLevelProgress(currentPoints: number): number {
    if (currentPoints >= 3000) return 100;
    if (currentPoints >= 1000) return (currentPoints - 1000) * 100 / 2000;
    if (currentPoints >= 500) return (currentPoints - 500) * 100 / 500;
    if (currentPoints >= 100) return (currentPoints - 100) * 100 / 400;
    return currentPoints * 100 / 100;
  }
}