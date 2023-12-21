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

import ItemData from './ItemData';
import MidItemData from './MidItemData';
import TriItemData from './TriItemData';
import BookTriItemData from './BookTriItemData';
import RadioItemData from './RadioItemData';
import PodCastBigItemData from './PodCastBigItemData';
import SelectFirstItemData from './SelectFirstItemData';
import MineListItemData from './MineListItemData';
import MineActivityItemData from './MineActivityItemData';


/**
 * Binds data to components and provides interfaces.
 */
export class MainViewModel {
  /**
   * Get swiper image data.
   *
   * @return {Array<Resource>} swiperImages.
   */
  getSwiperImages(): Array<Resource> {
    let swiperImages: Resource[] = [
      $r('app.media.fig1'),
      $r('app.media.fig2'),
      $r('app.media.fig3'),
      $r('app.media.fig4')
    ];
    return swiperImages;
  }

  /**
   * Get data of the first grid.
   *
   * @return {Array<PageResource>} firstGridData.
   */
  getFirstGridData(): Array<ItemData> {
    let firstGridData: ItemData[] = [
      new ItemData('每日推荐', $r('app.media.love'), '',),
      new ItemData('私人漫游', $r('app.media.record'), '',),
      new ItemData('歌单', $r('app.media.message'), '',),
      new ItemData('排行榜', $r('app.media.shopping'), '',),
      new ItemData('有声书', $r('app.media.target'), '',),
      new ItemData('数字专辑', $r('app.media.circle'), '',),
      new ItemData('直播', $r('app.media.favorite'), '',),
      new ItemData('关注新歌', $r('app.media.recycle'), '',)
    ];
    return firstGridData;
  }


  /**
   * Get data of the second grid.
   *
   * @return {Array<PageResource>} secondGridData.
   */
  getSecondGridData(): Array<MidItemData> {
    let secondGridData: MidItemData[] = [
      new MidItemData('民谣 | 简单的喜欢最长远', $r('app.media.top'), '1024万', '最近常听'),
      new MidItemData('挪威天才 AW Faded！ 神曲完美了上亿人的愿望', $r('app.media.new'), '24万', ''),
      new MidItemData('节奏控系列【抖腿-ing】', $r('app.media.brand'), '47万', ''),
      new MidItemData('下班回家时超适合放松的歌单', $r('app.media.found'), '475万', '收藏过万'),
      new MidItemData('555超适合放松的歌单', $r('app.media.found'), '475万', '收藏过万'),
      new MidItemData('666回家时超适合放松的歌单', $r('app.media.found'), '475万', '收藏过万')
    ];
    return secondGridData;
  }

  getThirdGridData(): Array<TriItemData[]> {
    let thirdGridDatas = Array<TriItemData[]>();
    let thirdGridData1: TriItemData[] = [
      new TriItemData('弱水三千', $r('app.media.top'), '满目山河', '南京古风榜第11名'),
      new TriItemData('挪威天才', $r('app.media.new'), '赤月', ''),
      new TriItemData('节奏控系列', $r('app.media.brand'), '扣扣', '最最最最最最'),
    ];
    let thirdGridData2: TriItemData[] = [
      new TriItemData('2222 | 1111', $r('app.media.top'), '池子', '最近常听'),
      new TriItemData('2222 | 2222', $r('app.media.new'), '周深', ''),
      new TriItemData('3333 | 3333', $r('app.media.brand'), '许巍', '最最最最最最'),
    ];
    let thirdGridData3: TriItemData[] = [
      new TriItemData('3333 | 1111', $r('app.media.top'), '万能青年旅店', '最近常听'),
      new TriItemData('3333 | 2222 ', $r('app.media.new'), '摇滚', '超过76%人播放'),
      new TriItemData('3333 | 4444', $r('app.media.brand'), '指弹', ''),
    ];
    let thirdGridData4: TriItemData[] = [
      new TriItemData('4444 | 1111', $r('app.media.top'), '民谣', '最近常听'),
      new TriItemData('4444 | 2222 ', $r('app.media.new'), '催眠神曲', '超过76%人播放'),
      new TriItemData('4444 | 3333', $r('app.media.brand'), 'ACG', '最最最最最最'),
    ];
    thirdGridDatas.push(thirdGridData1);
    thirdGridDatas.push(thirdGridData2);
    thirdGridDatas.push(thirdGridData3);
    thirdGridDatas.push(thirdGridData4);
    return thirdGridDatas;
  }

  getBookTriData1(): Array<BookTriItemData[]> {
    let thirdGridDatas = Array<BookTriItemData[]>();
    let thirdGridData1: BookTriItemData[] = [
      new BookTriItemData('科技：为了上大学，上交可控核聚变', $r('app.media.top'), '推动长三角一体化发展取得新的重大突破', '1', '9.9分', '2290万', '脑洞二次元'),
      new BookTriItemData('无敌从满级属性开始 | 爆笑', $r('app.media.new'), '冬季呼吸道疾病防治九问九答', '2', '9.8分', '2230万', '现代言情'),
      new BookTriItemData('别在门口放脚垫了，真脏！', $r('app.media.brand'), '和我在上海过科技感满满的一天', '3', '9.7分', '2190万', '成长励志'),
    ];
    let thirdGridData2: BookTriItemData[] = [
      new BookTriItemData('家里再有钱，电视机旁尽量不要放这几样东西', $r('app.media.top'), '95后硕士小伙开包子店：日均三千元', '4', '9.7分', '1893万', '成长励志'),
      new BookTriItemData('全国哪的羊肉最好吃？经过评比，这6个地方比较出名', $r('app.media.new'), '印度成“美国人的缅北”？全球90%诈骗电话从印度打出', '5', '9.6分', '1790万', '现代言情'),
      new BookTriItemData('你在哪一刻体验到了真正的贫富差距？', $r('app.media.brand'), '在三国中谁才是第一猛将？吕布也仅排第三', '6', '9.6分', '1690万', '畅销书'),
    ];
    let thirdGridData3: BookTriItemData[] = [
      new BookTriItemData('古代深夜为什么要打更，不会打扰到人睡觉吗？', $r('app.media.top'), '关羽被杀后，诸葛亮冷冷地说了11个字', '7', '9.4分', '1292万', '经典文学'),
      new BookTriItemData('大清灭亡后，溥仪的7个妹妹都嫁给了谁？ ', $r('app.media.new'), '大奸臣杀了杨广，又睡了杨广的皇后', '8', '9.3分', '1120万', '儿童故事'),
      new BookTriItemData('10年后重温《康熙王朝》，才懂容妃获罪', $r('app.media.brand'), '溥任：奶奶是慈禧，溥仪是他哥', '9', '9.1分', '1040万', '现代言情'),
    ];
    let thirdGridData4: BookTriItemData[] = [
      new BookTriItemData('司马懿一眼识破空城计，为何选择退兵？', $r('app.media.top'), '李隆基称帝后，为何立马除掉上官婉儿？', '10', '9.1分', '990万', '武侠仙侠'),
      new BookTriItemData('贾元春为何在孕中被赐死，她犯了啥忌讳，惹得皇帝非杀她不可呢？ ', $r('app.media.new'), '明朝十六位皇帝一览表', '11', '9.0分', '760万', '经典文学'),
      new BookTriItemData('六十年代比你想象中还要艰苦，但你绝对不敢想象', $r('app.media.brand'), '刘备不愧为一代枭雄，一生不重用赵云', '12', '9.0分', '230万', '儿童故事'),
    ];
    thirdGridDatas.push(thirdGridData1);
    thirdGridDatas.push(thirdGridData2);
    thirdGridDatas.push(thirdGridData3);
    thirdGridDatas.push(thirdGridData4);
    return thirdGridDatas;
  }

  getBookTriData2(): Array<BookTriItemData[]> {
    let thirdGridDatas = Array<BookTriItemData[]>();
    let thirdGridData1: BookTriItemData[] = [
      new BookTriItemData('广播剧《你最好是》', $r('app.media.top'), '撩系直男x钓系美女，你确定你是直男？', '1', '9.9分', '2290万', '青春校园'),
      new BookTriItemData('[你听起来很好睡]广播剧', $r('app.media.new'), '冬季呼吸道疾病防治九问九答', '2', '9.8分', '2230万', '真甜剧场'),
      new BookTriItemData('【广播剧】这个Alpha为何那样', $r('app.media.brand'), '别人穿越都难，为何我穿越怎么', '3', '9.7分', '2190万', '狗血虐恋'),
    ];
    let thirdGridData2: BookTriItemData[] = [
      new BookTriItemData('【广播剧】家里再有钱，电视机旁尽量不要放这几样东西', $r('app.media.top'), '95后硕士小伙开包子店：日均三千元', '4', '9.7分', '1893万', '成长励志'),
      new BookTriItemData('【广播剧】全国哪的羊肉最好吃？经过评比，这6个地方比较出名', $r('app.media.new'), '印度成“美国人的缅北”？全球90%诈骗电话从印度打出', '5', '9.6分', '1790万', '现代言情'),
      new BookTriItemData('【广播剧】你在哪一刻体验到了真正的贫富差距？', $r('app.media.brand'), '在三国中谁才是第一猛将？吕布也仅排第三', '6', '9.6分', '1690万', '畅销书'),
    ];
    let thirdGridData3: BookTriItemData[] = [
      new BookTriItemData('【广播剧】古代深夜为什么要打更，不会打扰到人睡觉吗？', $r('app.media.top'), '关羽被杀后，诸葛亮冷冷地说了11个字', '7', '9.4分', '1292万', '经典文学'),
      new BookTriItemData('【广播剧】大清灭亡后，溥仪的7个妹妹都嫁给了谁？ ', $r('app.media.new'), '大奸臣杀了杨广，又睡了杨广的皇后', '8', '9.3分', '1120万', '儿童故事'),
      new BookTriItemData('【广播剧】10年后重温《康熙王朝》，才懂容妃获罪', $r('app.media.brand'), '溥任：奶奶是慈禧，溥仪是他哥', '9', '9.1分', '1040万', '现代言情'),
    ];
    let thirdGridData4: BookTriItemData[] = [
      new BookTriItemData('【广播剧】司马懿一眼识破空城计，为何选择退兵？', $r('app.media.top'), '李隆基称帝后，为何立马除掉上官婉儿？', '10', '9.1分', '990万', '武侠仙侠'),
      new BookTriItemData('【广播剧】贾元春为何在孕中被赐死，她犯了啥忌讳，惹得皇帝非杀她不可呢？ ', $r('app.media.new'), '明朝十六位皇帝一览表', '11', '9.0分', '760万', '经典文学'),
      new BookTriItemData('【广播剧】六十年代比你想象中还要艰苦，但你绝对不敢想象', $r('app.media.brand'), '刘备不愧为一代枭雄，一生不重用赵云', '12', '9.0分', '230万', '儿童故事'),
    ];
    thirdGridDatas.push(thirdGridData1);
    thirdGridDatas.push(thirdGridData2);
    thirdGridDatas.push(thirdGridData3);
    thirdGridDatas.push(thirdGridData4);
    return thirdGridDatas;
  }

  getPodCastFirst(): Array<string> {
    return ['我的播客', '全部分类', '排行榜', '宝藏播客', '助眠解压', '广播电台']
  }

  getPodCastThird(): Array<string> {
    return ['纯爱', '言情', '全年龄', '免费']
  }

  getPodCastSecond(): Array<ItemData> {
    let firstGridData: ItemData[] = [
      new ItemData('排行榜', $r('app.media.top'), '',),
      new ItemData('全部分类', $r('app.media.new'), '',),
      new ItemData('男生小说', $r('app.media.brand'), '',),
      new ItemData('女生小说', $r('app.media.found'), '',),
      new ItemData('言情', $r('app.media.brand'), '',),
      new ItemData('免费', $r('app.media.new'), '',),
      new ItemData('纯爱', $r('app.media.top'), '',),
      new ItemData('全年龄', $r('app.media.found'), '',)
    ];
    return firstGridData;
  }

  getSelectFirst(): Array<SelectFirstItemData> {
    let firstGridData: SelectFirstItemData[] = [
      new SelectFirstItemData('心动热线 >', $r('app.media.love'), '给陌生人的电话', 'ff4545'),
      new SelectFirstItemData('玩家团 >', $r('app.media.record'), '交朋友，抢红包', 'ec530d'),
      new SelectFirstItemData('音乐人来了 >', $r('app.media.message'), '好音乐在线直播', '19c4c1'),
      new SelectFirstItemData('热歌点唱 >', $r('app.media.shopping'), '8.5万人气', '114add'),
      new SelectFirstItemData('情感解惑 >', $r('app.media.target'), '8562人气', '2f31ff'),
      new SelectFirstItemData('进击Z世代 >', $r('app.media.circle'), '8.9万人气', '4fb4e3'),
      new SelectFirstItemData('一起当星探 >', $r('app.media.favorite'), '9.2万人气', 'eea602')
    ];
    return firstGridData;
  }

  getSelectSecond(): string[][] {
    let firstGridData: string[][] = [['飘摇', '任意'], ['我曾遇到一束光', '笑眼鱼'], ['同桌的你', '嘉木']];
    return firstGridData;
  }

  getPodCastSecondVip(): ItemData {
    return new ItemData('听书VIP新课特惠 首月仅6元', $r('app.media.top'), '',)
  }

  getPodCastSecond2(): Array<ItemData> {
    let firstGridData: ItemData[] = [
      new ItemData('三体速读-艾谁谁FM', $r('app.media.top'), '',),
      new ItemData('大明武夫 | 穿越历史', $r('app.media.new'), '',),
      new ItemData('科技：为了上大学', $r('app.media.brand'), '',),
      new ItemData('大凯故事会：奇闻怪谈', $r('app.media.found'), '',),
      new ItemData('大凯故事会：奇闻怪谈', $r('app.media.brand'), '',),
    ];
    return firstGridData;
  }

  /**
   * Get data of the second grid.
   *
   * @return {Array<PageResource>} secondGridData.
   */
  getPodCastGridData(): Array<MidItemData> {
    let aGridData: MidItemData[] = [
      new MidItemData('民谣 | 简单的喜欢最长远', $r('app.media.top'), '1024万', '最近常听'),
      new MidItemData('挪威天才 AW Faded！ 神曲完美了上亿人的愿望', $r('app.media.new'), '24万', ''),
      new MidItemData('节奏控系列【抖腿-ing】', $r('app.media.brand'), '47万', ''),
      new MidItemData('下班回家时超适合放松的歌单', $r('app.media.found'), '475万', '收藏过万'),
      new MidItemData('节奏控系列【抖腿-ing】11', $r('app.media.brand'), '47万', ''),
      new MidItemData('下班回家时超适合放松的歌单11', $r('app.media.found'), '475万', '收藏过万')
    ];
    return aGridData;
  }

  getRadio1Data(): Array<RadioItemData> {
    let radioDatas: RadioItemData[] = [
      new RadioItemData('新闻咨询：弱水三千 更胜却人间无数', $r('app.media.top'), '满目山河', '南京古风榜第11名'),
      new RadioItemData('新闻咨询：挪威天才', $r('app.media.new'), '赤月', ''),
      new RadioItemData('新闻咨询：节奏控系列', $r('app.media.brand'), '扣扣', '最最最最最最'),
    ];

    return radioDatas;
  }

  getRadio2Data(): Array<RadioItemData> {
    let radioDatas: RadioItemData[] = [
      new RadioItemData('英语美文：弱水三千', $r('app.media.top'), '满目山河', '南京古风榜第11名'),
      new RadioItemData('英语美文：挪威天才', $r('app.media.new'), '赤月', ''),
      new RadioItemData('英语美文：节奏控系列', $r('app.media.brand'), '扣扣', '最最最最最最'),
      new RadioItemData('英语美文：下班回家', $r('app.media.brand'), '赤月', 'NO.1'),
    ];

    return radioDatas;
  }

  getRadio3Data(): Array<RadioItemData> {
    let radioDatas: RadioItemData[] = [
      new RadioItemData('情感赫兹:弱水三千', $r('app.media.top'), '满目山河', '南京古风榜第11名'),
      new RadioItemData('情感赫兹:挪威天才', $r('app.media.new'), '赤月', ''),
      new RadioItemData('情感赫兹:节奏控系列', $r('app.media.brand'), '扣扣', '最最最最最最'),
    ];

    return radioDatas;
  }

  getRadio4Data(): Array<RadioItemData> {
    let radioDatas: RadioItemData[] = [
      new RadioItemData('真实故事:弱水三千', $r('app.media.top'), '满目山河', '南京古风榜第11名'),
      new RadioItemData('真实故事:挪威天才', $r('app.media.new'), '赤月', ''),
      new RadioItemData('真实故事:节奏控系列', $r('app.media.brand'), '扣扣', '最最最最最最'),
    ];

    return radioDatas;
  }

  getRadio5Data(): Array<RadioItemData> {
    let radioDatas: RadioItemData[] = [
      new RadioItemData('音乐推荐 弱水三千', $r('app.media.top'), '满目山河', '南京古风榜第11名'),
      new RadioItemData('音乐推荐 挪威天才', $r('app.media.new'), '赤月', ''),
      new RadioItemData('音乐推荐 节奏控系列', $r('app.media.brand'), '扣扣', '最最最最最最'),
    ];

    return radioDatas;
  }

  getRadio6Data(): Array<RadioItemData> {
    let radioDatas: RadioItemData[] = [
      new RadioItemData('搞笑段子 弱水三千', $r('app.media.top'), '满目山河', '南京古风榜第11名'),
      new RadioItemData('搞笑段子 挪威天才', $r('app.media.new'), '赤月', ''),
      new RadioItemData('搞笑段子 节奏控系列', $r('app.media.brand'), '扣扣', '最最最最最最'),
    ];

    return radioDatas;
  }

  getRadio7Data(): Array<RadioItemData> {
    let radioDatas: RadioItemData[] = [
      new RadioItemData('66666 弱水三千', $r('app.media.top'), '满目山河', '南京古风榜第11名'),
      new RadioItemData('66666 挪威天才', $r('app.media.new'), '赤月', ''),
      new RadioItemData('66666 节奏控系列', $r('app.media.brand'), '扣扣', '最最最最最最'),
    ];

    return radioDatas;
  }

  getRadio8Data(): Array<RadioItemData> {
    let radioDatas: RadioItemData[] = [
      new RadioItemData('热门翻唱:弱水三千', $r('app.media.top'), '满目山河', '南京古风榜第11名'),
      new RadioItemData('热门翻唱:挪威天才', $r('app.media.new'), '赤月', ''),
      new RadioItemData('热门翻唱:节奏控系列', $r('app.media.brand'), '扣扣', '最最最最最最'),
    ];

    return radioDatas;
  }

  getBookTriBigData(): Array<PodCastBigItemData> {
    let aGridData: PodCastBigItemData[] = [
      new PodCastBigItemData('你最好是', $r('app.media.fig31'), '撩系直男x钓系美女，你确定你是直男？', '9.7分', '独家', 'NO.1.广播剧榜', '纯爱广播剧'),
      new PodCastBigItemData('你听起来很好睡', $r('app.media.fig41'), '撩系直男x钓系美女，你确定你是直男？', '9.6分', '独家', 'NO.2.广播剧榜', '纯爱广播剧'),
      new PodCastBigItemData('你最好是', $r('app.media.fig5'), '撩系直男x钓系美女，你确定你是直男？', '9.5分', '独家', 'NO.3.广播剧榜', '纯爱广播剧'),
      new PodCastBigItemData('你最好是', $r('app.media.fig21'), '撩系直男x钓系美女，你确定你是直男？', '9.4分', '独家', 'NO.4.广播剧榜', '纯爱广播剧'),
      new PodCastBigItemData('你最好是', $r('app.media.fig31'), '撩系直男x钓系美女，你确定你是直男？', '9.3分', '独家', 'NO.5.广播剧榜', '纯爱广播剧'),
      new PodCastBigItemData('你最好是', $r('app.media.fig5'), '撩系直男x钓系美女，你确定你是直男？', '9.2分', '独家', 'NO.6.广播剧榜', '纯爱广播剧')
    ];
    return aGridData;
  }

  getBookListenData(): Array<PodCastBigItemData[]> {
    let thirdGridDatas = Array<PodCastBigItemData[]>();
    let aGridData: PodCastBigItemData[] = [
      new PodCastBigItemData('你最好是', $r('app.media.fig5'), '撩系直男x钓系美女，你确定你是直男？', '1253', '独家', 'NO.1.广播剧榜', '纯爱广播剧'),
      new PodCastBigItemData('你听起来很好睡', $r('app.media.fig21'), '撩系直男x钓系美女，你确定你是直男？', '890', '独家', 'NO.2.广播剧榜', '纯爱广播剧'),
    ];
    let aGridData1: PodCastBigItemData[] = [
      new PodCastBigItemData('你最好是', $r('app.media.fig31'), '撩系直男x钓系美女，你确定你是直男？', '877', '独家', 'NO.3.广播剧榜', '纯爱广播剧'),
      new PodCastBigItemData('你最好是', $r('app.media.fig41'), '撩系直男x钓系美女，你确定你是直男？', '678', '独家', 'NO.4.广播剧榜', '纯爱广播剧'),
    ];
    let aGridData2: PodCastBigItemData[] = [
      new PodCastBigItemData('你最好是', $r('app.media.brand1'), '撩系直男x钓系美女，你确定你是直男？', '54', '独家', 'NO.5.广播剧榜', '纯爱广播剧'),
      new PodCastBigItemData('你最好是', $r('app.media.fig21'), '撩系直男x钓系美女，你确定你是直男？', '122', '独家', 'NO.6.广播剧榜', '纯爱广播剧')
    ];
    let aGridData3: PodCastBigItemData[] = [
      new PodCastBigItemData('你最好是', $r('app.media.fig31'), '撩系直男x钓系美女，你确定你是直男？', '212', '独家', 'NO.1.广播剧榜', '纯爱广播剧'),
      new PodCastBigItemData('你听起来很好睡', $r('app.media.fig41'), '撩系直男x钓系美女，你确定你是直男？', '120', '独家', 'NO.2.广播剧榜', '纯爱广播剧'),
    ];
    thirdGridDatas.push(aGridData);
    thirdGridDatas.push(aGridData1);
    thirdGridDatas.push(aGridData2);
    thirdGridDatas.push(aGridData3);
    return thirdGridDatas;
  }

  /**
   * Get data of the setting list.
   *
   * @return {Array<PageResource>} settingListData.
   */
  getMineListItemData(): Array<MineListItemData> {
    let listData: MineListItemData[] = [
      new MineListItemData('我喜欢的音乐', $r("app.media.fig1"), '0首·179次播放', Visibility.Hidden, Visibility.Visible),
      new MineListItemData('时空之力', $r("app.media.fig2"), '歌单·26首·闲潭春半', Visibility.None, Visibility.None),
      new MineListItemData('2023-1 漫天之尘', $r("app.media.fig3"), '歌单·19首·闲潭春半', Visibility.None, Visibility.None),
      new MineListItemData('2018-3 彷徨之伤', $r("app.media.fig4"), '歌单·42首·闲潭春半', Visibility.None, Visibility.None),
      new MineListItemData('2022-1 飘渺之缘', $r("app.media.fig5"), '歌单·17首·闲潭春半', Visibility.None, Visibility.None),
      new MineListItemData('2021-2 荒芜之路', $r("app.media.fig21"), '歌单·20首·闲潭春半', Visibility.None, Visibility.None),
      new MineListItemData('新建歌单', $r("app.media.ic_public_add"), '', Visibility.None, Visibility.None)
    ];
    return listData;
  }

  getMineActivityItemData(): Array<MineActivityItemData> {
    let listData: MineActivityItemData[] = [
      new MineActivityItemData('四年好短啊~', $r('app.media.fig21'),
        new MineListItemData('闲潭春半', $r('app.media.brand'), '8月23日', Visibility.Visible, Visibility.Visible),
        0, 1, 1, ['#心语推歌墙'], new MineListItemData('想着你', $r('app.media.fig31'), '郭顶', Visibility.None, Visibility.None)),
      new MineActivityItemData('也是有证的村民了', $r('app.media.found'),
        new MineListItemData('闲潭春半', $r('app.media.brand'), '2021年9月22日', Visibility.None, Visibility.None),
        0, 0, 0, ['#晒晒我的村民证件', '#集合啦村民们'])
    ];
    return listData;
  }
  getFollowActivityItemData(): Array<MineActivityItemData> {
    let listData: MineActivityItemData[] = [
      new MineActivityItemData('知道你们很着急，年末惊喜来袭~\n2023云音乐年度听歌报告正式上线啦！\n一键开启你的年度听过报告，回归你的2023！', $r('app.media.fig21'),
        new MineListItemData('云音乐VIP', $r('app.media.brand'), '昨天12：03', Visibility.Visible, Visibility.Visible),
        11, 667, 1996, ['#2023年度听歌报告']),
      new MineActivityItemData('也是有证的村民了', $r('app.media.found'),
        new MineListItemData('闲潭春半', $r('app.media.brand'), '2021年9月22日', Visibility.None, Visibility.None),
        0, 0, 0, ['#晒晒我的村民证件', '#集合啦村民们'])
    ];
    return listData;
  }
  getRecommendActivityItemData(): Array<MineActivityItemData> {
    let listData: MineActivityItemData[] = [
      new MineActivityItemData('四年好短啊~', $r('app.media.fig21'),
        new MineListItemData('闲潭春半', $r('app.media.brand'), '8月23日', Visibility.Visible, Visibility.Visible),
        0, 1, 1, ['#心语推歌墙'], new MineListItemData('想着你', $r('app.media.fig31'), '郭顶', Visibility.None, Visibility.None)),
      new MineActivityItemData('也是有证的村民了', $r('app.media.found'),
        new MineListItemData('闲潭春半', $r('app.media.brand'), '2021年9月22日', Visibility.None, Visibility.None),
        0, 0, 0, ['#晒晒我的村民证件', '#集合啦村民们']),
    new MineActivityItemData('2也是有证的村民了', $r('app.media.found'),
      new MineListItemData('闲潭春半', $r('app.media.brand'), '2021年9月22日', Visibility.None, Visibility.None),
      0, 0, 0, ['#晒晒我的村民证件', '#集合啦村民们']),
    new MineActivityItemData('3也是有证的村民了', $r('app.media.found'),
      new MineListItemData('闲潭春半', $r('app.media.brand'), '2021年9月22日', Visibility.None, Visibility.None),
      0, 0, 0, ['#晒晒我的村民证件', '#集合啦村民们'])
    ];
    return listData;
  }

  getMineListItemDataCreate(): Array<MineListItemData> {
    let listData: MineListItemData[] = [
      new MineListItemData('日推01', $r("app.media.brand1"), '32首·0次播放', Visibility.Visible, Visibility.None),
      new MineListItemData('2023-1 漫天之尘', $r("app.media.fig3"), '歌单·19首·闲潭春半', Visibility.Visible, Visibility.None),
      new MineListItemData('2022-1 飘渺之缘', $r("app.media.fig5"), '歌单·17首·闲潭春半', Visibility.Visible, Visibility.None),
      new MineListItemData('2021-2 荒芜之路', $r("app.media.fig21"), '歌单·20首·闲潭春半', Visibility.Visible, Visibility.None),
      new MineListItemData('2018-3 彷徨之伤', $r("app.media.fig4"), '歌单·42首·闲潭春半', Visibility.Visible, Visibility.None),
      new MineListItemData('时空之力', $r("app.media.fig2"), '歌单·26首·闲潭春半', Visibility.Visible, Visibility.None),
      new MineListItemData('新建歌单', $r("app.media.ic_public_add"), '', Visibility.None, Visibility.None)
    ];
    return listData;
  }

  getMinePodCastListItemData(): Array<MineListItemData> {
    let listData: MineListItemData[] = [
      new MineListItemData('最近更新', $r("app.media.fig1"), '今日更新：上大学1122 嘴角直抽抽的史密斯', Visibility.None, Visibility.None),
      new MineListItemData('大明武夫|穿越历史|热血军事|多人有声剧集', $r("app.media.fig2"), '继续播放：大明武夫 第一集 开始', Visibility.None, Visibility.None),
      new MineListItemData('科技：为了上大学，上交可控核聚变', $r("app.media.fig3"), '继续播放：科技：为了上大学，上交可控核聚变 001 变态的控分', Visibility.None, Visibility.None),
      new MineListItemData('添加播客和有声书', $r("app.media.ic_public_add"), '', Visibility.None, Visibility.None)
    ];
    return listData;
  }

  getMinePodCastBookItemData(): Array<MineListItemData> {
    let listData: MineListItemData[] = [
      new MineListItemData('大明武夫|穿越历史|热血军事|多人有声剧集', $r("app.media.fig2"), '继续播放：大明武夫 第一集 开始', Visibility.None, Visibility.None),
      new MineListItemData('科技：为了上大学，上交可控核聚变', $r("app.media.fig3"), '继续播放：科技：为了上大学，上交可控核聚变 001 变态的控分', Visibility.None, Visibility.None),
      new MineListItemData('添加更多有声书', $r("app.media.ic_public_add"), '', Visibility.None, Visibility.None)
    ];
    return listData;
  }

  getMinePodCastGridData(): Array<MidItemData> {
    let aGridData: MidItemData[] = [
      new MidItemData('西海之声 Radio SayHi！', $r('app.media.top'), '1024万', ''),
      new MidItemData('蕊希电台', $r('app.media.new'), '24万', ''),
      new MidItemData('十大童年经典中文儿歌', $r('app.media.brand'), '47万', ''),
      new MidItemData('广播剧《我就是想贿赂你》', $r('app.media.found'), '475万', ''),
      new MidItemData('倾城天下|热播影视剧原著', $r('app.media.brand'), '47万', ''),
      new MidItemData('一首歌一个故事', $r('app.media.found'), '1亿', '')
    ];
    return aGridData;
  }

  getSettingListData(): Array<ItemData> {
    let listData: ItemData[] = [
      new ItemData('推送通知', $r("app.media.news"), '', $r("app.string.setting_toggle")),
      new ItemData('数据管理', $r("app.media.data"), '',),
      new ItemData('菜单设置', $r("app.media.menu"), '',),
      new ItemData('关于', $r("app.media.about"), '',),
      new ItemData('清除缓存', $r("app.media.storage"), '',),
      new ItemData('隐私协议', $r("app.media.privacy"), '',)
    ];
    return listData;
  }
  getFollowers(): Array<ItemData> {
    let listData: ItemData[] = [
      new ItemData('get_a_life', $r("app.media.found"), '', ),
      new ItemData('初玖宅柒', $r("app.media.fig3"), '',),
      new ItemData('金陵靓仔', $r("app.media.fig4"), '',),
      new ItemData('吹口哨的青蛙', $r("app.media.about"), '',),
      new ItemData('sunny', $r("app.media.fig2"), '',),
      new ItemData('我是周董', $r("app.media.privacy"), '',),
      new ItemData('更惊奇', $r("app.media.fig1"), '',)
    ];
    return listData;
  }

}

export default new MainViewModel();