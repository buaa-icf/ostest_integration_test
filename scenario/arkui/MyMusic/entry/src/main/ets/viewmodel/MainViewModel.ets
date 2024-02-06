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
import SquareTriItemData from './SquareTriItemData';
import AudioItem from '../manager/AudioItem';
import VideoRecommendItemData from './VideoRecommendItemData';
import SettingItemData from './SettingItemData';
import FollowerItemData from './FollowerItemData';
import ListHistoryItemData from './ListHistoryItemData';
import Logger from '../common/utils/Logger';
import TriTitleItemData from './TriTitleItemData';
import systemDateTime from '@ohos.systemDateTime';
import HashMap from '@ohos.util.HashMap'; // 导入HashMap模块
import LrcLine from './LrcLine';

/**
 * Binds data to components and provides interfaces.
 */
export class MainViewModel {
  private lrcs: HashMap<string, string> = new HashMap();

  private setLrcs() {
    this.lrcs.set('十一种孤独', '[ti:十一种孤独]\n[ar:宿羽阳]\n[al:宿羽阳]\n[by:]\n[offset:0]\n[00:00.46]十一种孤独 - 宿羽阳\n[00:00.78]词：陶小陶\n[00:00.96]曲：宿羽阳\n[00:01.14]编曲：谭侃侃\n[00:01.89]\n[00:30.75]最孤独是读评论区未署名情书\n[00:34.85]\n[00:37.27]像不小心掀开了时光的典故\n[00:41.47]\n[00:44.37]第十是睁开眼就已黄昏迟暮\n[00:48.21]\n[00:51.10]寒星三两落在远远处\n[00:55.48]\n[00:57.95]第九是海蓝时见鲸 林深时见鹿\n[01:01.92]\n[01:04.66]却不见你 在梦醒之处\n[01:08.94]\n[01:11.47]第八是回家的路途绕了几次远路\n[01:16.10]\n[01:18.06]像电台的老情歌循环着音符\n[01:22.34]\n[01:24.84]愿你风尘仆仆 深情不被辜负\n[01:29.32]\n[01:31.41]虽回不到过去 也回不到当初\n[01:36.60]\n[01:38.46]愿你半生漂浮此生能有归宿\n[01:42.99]\n[01:45.20]愿你风雨落幕能有人免你孤苦\n[01:50.38]\n[02:05.91]第七是看一场一群人的演出\n[02:10.02]\n[02:12.61]荧光满眼却看不清楚\n[02:16.74]\n[02:19.44]第六是一个人吃饭 一个人写书\n[02:23.47]\n[02:26.19]一个人拼岁月拼图\n[02:30.43]\n[02:33.03]第五是骑单车过陌生的马路\n[02:37.04]\n[02:39.49]在拥挤的人海中踌躇\n[02:43.57]\n[02:46.52]第四是给空白的纸上画上五线谱\n[02:51.28]\n[02:53.24]每一行都好像是世界的遗嘱\n[02:57.49]\n[02:59.96]愿你风尘仆仆 深情不被辜负\n[03:04.62]\n[03:06.69]虽回不到过去 也回不到当初\n[03:11.60]\n[03:13.38]愿你半生漂浮此生能有归宿\n[03:18.10]\n[03:20.19]愿你风雨落幕能有人免你孤苦\n[03:25.11]\n[03:27.10]愿你风尘仆仆 深情不被辜负\n[03:32.01]\n[03:33.82]虽回不到过去 也回不到当初\n[03:38.70]\n[03:40.52]愿你半生漂浮此生能有归宿\n[03:45.84]\n[03:47.32]愿你风雨落幕能有人免你孤独\n[03:51.97]\n[03:54.58]第三是假装很成熟 假装很忙碌\n[03:58.60]\n[04:01.25]假装擅长一个人独处\n[04:05.28]\n[04:07.94]第二是穿过万家灯火无数\n[04:12.10]\n[04:14.85]却无一人等我在归途\n[04:18.96]\n[04:21.74]第一是收到远方一纸家书\n[04:25.65]\n[04:28.18]说照顾自己 累了别忍着不哭')
    this.lrcs.set('日落大道', '[00:00.000] 作词 : 梁博\n[00:01.000] 作曲 : 梁博\n[00:15.72]总是梦见云层之上飞过子午线\n[00:23.13]分不清是黑夜还是白天\n[00:30.77]带着装不下的期待匆匆的赶来\n[00:37.08]我再想一遍\n[00:40.76]想一遍\n[00:44.63]我们寻找着在这条路的中间\n[00:48.31]我们迷失着在这条路的两端\n[00:52.06]每当黄昏阳光把所有都渲染\n[00:55.78]你看那金黄多耀眼\n[00:59.58]我们奔跑着在这条路的中间\n[01:03.27]我们哭泣着在这条路的两端\n[01:07.06]每当黄昏阳光把所有都渲染\n[01:10.81]我看到夜的黑暗\n[01:15.75]晚风吹过金色沙滩海边的晚宴\n[01:23.16]那种味道现在还不习惯\n[01:30.55]拉斯维加斯往返路上我看见\n[01:37.11]这里无人烟\n[01:40.84]无人烟\n[01:44.58]我们寻找着在这条路的中间\n[01:48.30]我们迷失着在这条路的两端\n[01:52.04]每当黄昏阳光把所有都渲染\n[01:55.81]你看那金黄多耀眼\n[01:59.56]我们奔跑着在这条路的中间\n[02:03.26]我们哭泣着在这条路的两端\n[02:06.97]每当黄昏阳光把所有都渲染\n[02:10.73]我看到夜的黑暗\n[02:45.27]奔跑着在这条路的中间\n[02:52.49]哭泣着在这条路的两端\n[02:59.63]每当黄昏阳光把所有都渲染\n[03:07.14]我看到夜的黑暗')
    this.lrcs.set('先走的人', '[00:00.00] 作词 : MONA LAVI/胡海泉\n[00:00.83] 作曲 : MONA LAVI\n[00:01.66] 编曲 : 徐林\n[00:02.49] 制作人 : 胡海泉/徐林\n[00:03.33]Kiss her like you mean it\n[00:04.83]Kiss her like you mean it\n[00:08.17]Show her how to love\n[00:10.86]Show her how to love\n[00:14.25]Kiss her like you mean it\n[00:15.57]Kiss her like you mean it\n[00:18.85]Show her how to love\n[00:21.50]Show her how to love\n[00:24.79]深深浅浅时时惦念月月年年\n[00:29.21]还是会爱着他 忘不了他\n[00:35.32]近近远远丝丝牵连 忘了时间\n[00:39.83]还一直爱着他 会想念他\n[00:45.81]若近 若远 天边\n[00:56.65]一生 一世 不变\n[01:06.70]风声呼\n[01:09.37]吹乱烟云雾\n[01:12.23]任我沉与浮\n[01:14.78]得失不在乎\n[01:17.31]放声哭\n[01:20.22]回荡在山谷\n[01:22.77]泪洒入黑土\n[01:25.27]让新芽得祝福\n[01:39.01]若近 若远 天边\n[01:49.65]一生 一世 不变\n[02:00.04]风声呼\n[02:02.69]吹乱烟云雾\n[02:05.52]任我沉与浮\n[02:08.08]得失不在乎\n[02:10.62]放声哭\n[02:13.54]回荡在山谷\n[02:16.10]泪洒入黑土\n[02:18.58]让新芽得祝福\n[02:22.20]Kiss her like you mean it\n[02:23.77]Kiss her like you mean it\n[02:26.71]Show her how to love\n[02:29.33]Show her how to love\n[02:32.65]Kiss her like you mean it\n[02:34.16]Kiss her like you mean it\n[02:37.49]Show her how to love\n[02:40.44]Show her how to love\n[02:45.33]风声呼\n[02:48.06]吹乱烟云雾\n[02:50.85]任我沉与浮\n[02:53.46]得失不在乎\n[02:56.25]放声哭\n[02:58.62]回荡在山谷\n[03:01.52]泪洒入黑土\n[03:03.97]让新芽得祝福\n[03:07.31]深深浅浅时时惦念月月年年\n[03:11.96]还是会爱着他 忘不了他\n[03:17.93]近近远远丝丝牵连 忘了时间\n[03:22.58]还一直爱着他 会想念他\n[03:23.36] 混音工程师 : 王路遥\n[03:24.15] 母带工程师 : 王路遥\n[03:24.93] 和声 : MONA LAVI\n[03:25.72] 吉他 : 徐林\n[03:26.50] 录音师 : 丁晨泽\n[03:27.29] 录音助理 : 冯衍荣\n[03:28.07] 混音助理 : rey\n[03:28.86] 人声录音室 : ２４９６ Top Music Studio３\n[03:29.64] 乐器录音棚 : ２４９６ Top Music Studio１\n[03:30.43] 混音/母带工作室 : ２４９６ Top Music Studio２\n[03:31.21] OP : 巨匠文化\n[03:32.00] SP : 百纳娱乐')
    this.lrcs.set('凄美地', '[ti:凄美地]\n[ar:郭顶]\n[al:凄美地]\n[by:]\n[offset:0]\n[00:00.39]凄美地 - 郭顶\n[00:01.33]词：郭顶\n[00:01.87]曲：郭顶\n[00:02.84]\n[00:03.44]曾经我是不安河水\n[00:06.06]\n[00:07.51]穿过森林误入你心\n[00:10.22]没计划扎营 搁下了是非\n[00:13.73]\n[00:14.24]一去不回\n[00:15.31]\n[00:18.97]如今我是造梦的人吶\n[00:21.53]\n[00:22.57]怅然若失流连忘返啊\n[00:25.24]\n[00:25.95]等潮汐来临 我就能记起\n[00:29.52]你的样子\n[00:30.74]\n[00:32.50]我没看过\n[00:36.56]\n[00:37.84]平坦山丘\n[00:40.43]\n[00:41.34]怎么触摸\n[00:44.30]\n[00:45.16]开花沼泽\n[00:48.23]\n[00:48.93]嘿 等我找到你\n[00:52.93]\n[00:54.52]试探你眼睛\n[00:56.74]\n[00:58.34]心无旁骛地 相拥\n[01:02.53]\n[01:03.26]那是我 仅有的温柔也是我爱你的原因\n[01:12.08]\n[01:12.97]在这凄美地\n[01:14.61]\n[01:31.75]曾经这里是无人之地\n[01:34.77]\n[01:35.49]为何没留下有效地址\n[01:38.73]肆意的消息 迷失在十月\n[01:42.49]没有音讯\n[01:43.80]\n[01:46.86]如今这里是风和日丽\n[01:49.90]\n[01:50.80]等你再回来雨过迁徙\n[01:54.14]看夜幕将近 我又能记起\n[01:58.09]你的样子\n[01:59.44]\n[02:02.08]我还记得\n[02:04.75]\n[02:05.64]平坦山丘\n[02:08.71]\n[02:09.54]如今身在\n[02:12.38]\n[02:13.37]开花沼泽\n[02:16.32]\n[02:17.12]嘿 等我找到你\n[02:21.07]\n[02:22.75]试探你眼睛\n[02:24.96]\n[02:26.62]心无旁骛地 相拥\n[02:30.62]\n[02:31.49]那是我 仅有的温柔也是我爱你的原因\n[02:40.00]\n[02:41.29]在这凄美地\n[02:42.53]\n[02:45.36]在这之前\n[02:46.32]\n[02:47.07]别说再见\n[02:47.96]\n[02:49.15]我已再经不起离别\n[02:51.59]\n[02:52.66]在这之前\n[02:53.67]\n[02:54.66]别说再见\n[02:55.71]\n[02:56.75]我已经开始了想念\n[02:59.25]\n[03:00.28]在这之前\n[03:01.22]\n[03:02.19]别说再见\n[03:03.24]\n[03:04.29]请帮我停住这时间\n[03:06.88]\n[03:07.71]就这样 别安慰\n[03:12.50]\n[03:14.89]嘿 等我找到你\n[03:18.41]\n[03:20.45]望住你眼睛\n[03:22.53]\n[03:24.21]心无旁骛地 相拥\n[03:28.30]\n[03:29.17]那是我 仅有的温柔也是我爱你的原因\n[03:37.51]\n[03:38.75]如此不可及\n[03:40.03]\n[03:42.62]如此不思议\n[03:43.82]\n[03:46.36]让我坠落\n[03:47.50]在这凄美地')
    this.lrcs.set('小船摇', "[00:00.000] 作词 : Rachael.z\n[00:01.000] 作曲 : Rachael.z\n[00:02.000] 编曲 : HYPER MUSIC/theoptimist.prod\n[00:08.830]混音/母带：HYPER MUSIC\n[00:12.851]制作人：HYPER MUSIC\n[00:17.202]我忘了我们开始\n[00:19.216]也不敢想结尾\n[00:21.202]记忆站在你那边\n[00:22.985]拉着我往后退\n[00:25.195]你越来越喜欢说从前\n[00:28.580]那些你记得 但我忘了的事\n[00:33.329]长大的路线\n[00:34.847]总是离家越来越远\n[00:37.480]我较着劲\n[00:38.898]说着我都好的谎言\n[00:41.729]guess I'm not a good story-teller（也许我不擅长讲故事）\n[00:44.913]怎么我笑着 可是你哭了\n[00:49.562]一辆往前开的列车 不停下\n[00:53.630]生活总充满着抉择 很复杂\n[00:57.762]我会成为你的骄傲吗 妈妈\n[01:01.398]你相信我比我还多\n[01:06.164]漂亮的话总是显得太肉麻\n[01:10.178]我们都不习惯直白的表达\n[01:13.846]多少次我在失眠的夜晚\n[01:17.878]想起你唱过的歌\n[01:21.979]小船摇\n[01:30.029]海浪涛\n[01:38.262]如果你看见我白色的帆\n[01:45.795]告诉她 请你\n[01:49.446]告诉她\n[01:53.127]我要回家\n[01:57.529]我要回家啦\n[02:01.577]虽然我还在海的另一边\n[02:06.096]但是绕一圈会到达\n[02:09.627]我要回家\n[02:13.760]我要回家啦\n[02:17.829]帮你染黑新冒出的白发\n[02:22.411]听你讲没说完的话\n[02:27.577]朋友笑我已经二十四五岁\n[02:31.644]有时回家还有十二点门禁卡\n[02:35.395]可外面世界 多少人要求你快长大\n[02:39.410]还有人把你当个孩子保护 不好吗\n[02:43.678]恍然发觉你已经五十四五岁\n[02:47.795]退休了还担心我的钱会不够花\n[02:51.577]请别担心我 我的翅膀已经足够大\n[02:55.610]让我拥抱你\n[02:57.144]就像你一直做的那样\n[02:59.526]小船摇\n[03:07.645]海浪涛\n[03:15.860]如果你看见我白色的帆\n[03:23.344]告诉她 请你\n[03:26.927]告诉她\n[03:30.760]我要回家\n[03:36.160]和声：Rachael.z\n[03:40.242]封面：Rachael.z")
  }

  constructor() {
    this.setLrcs();
  }

  getLrc(name: string): LrcLine[] {
    let lrcData: LrcLine[] = [];
    let lrc = this.lrcs.get(name);
    if (lrc !== null && lrc !== undefined) {
      let lines = lrc.split('\n');
      // Create an array to store the LRC data
      for (let line of lines) {
        // Check if the line is a valid LRC line
        if (line.includes('[')) {
          // Split the line into the time and text components
          let content = line.split(']');
          // Add the time and text to the LRC data array
          if (content.length > 1 && content[1].trim() !== '') {
            lrcData.push(new LrcLine(content[0], content[1]));
          }
        }
      }
    }
    // Return the LRC data array
    return lrcData;
  }

  private audios: AudioItem[] = [
    new AudioItem('小船摇', $r('app.media.top'), '雷丘Racheal', 61, true),
    new AudioItem('先走的人', $r('app.media.brand'), '胡海泉', 123),
    new AudioItem('星光与潮汐', $r('app.media.found'), '张德彝陵', 312),
    new AudioItem('唯一', $r('app.media.quareblue8'), '告五人', 161, true),
    new AudioItem('日落大道', $r('app.media.quarered7'), '梁博', 223),
    new AudioItem('Gravity', $r('app.media.quaregreen5'), 'Klaas', 112),
    new AudioItem('凄美地', $r('app.media.top'), '郭顶', 121, true),
    new AudioItem('十一种孤独', $r('app.media.brand'), '宿宇阳', 281),
    new AudioItem('The Sprinter', $r('app.media.found'), '中川砂仁', 212),
    new AudioItem('匆匆那年', $r('app.media.quareblue8'), '叶锐文', 161),
    new AudioItem('Time Travel', $r('app.media.quarered7'), '岸部真明', 123),
    new AudioItem('Rylynn', $r('app.media.quaregreen5'), 'Andy McKee', 212)
  ]
  private triItems: TriItemData[] = [
    new TriItemData('弱水三千', $r('app.media.top'), '满目山河', this.generateList(1), '南京古风榜第11名'),
    new TriItemData('挪威天才', $r('app.media.new'), '赤月', this.generateList(2), ''),
    new TriItemData('节奏控系列', $r('app.media.brand'), '扣扣', this.generateList(3), '最最最最最最'),
    new TriItemData('某年某月某天', $r('app.media.top'), '池子', this.generateList(4), '最近常听'),
    new TriItemData('浮夸', $r('app.media.new'), '周深', this.generateList(5), ''),
    new TriItemData('Where Did U Go', $r('app.media.brand'), '许巍', this.generateList(6), '最最最最最最'),
    new TriItemData('忘了你忘了我', $r('app.media.top'), '万能青年旅店', this.generateList(7), '最近常听'),
    new TriItemData('一生何求 ', $r('app.media.new'), '摇滚', this.generateList(8), '超过76%人播放'),
    new TriItemData('LastDance', $r('app.media.brand'), '伍佰', this.generateList(9), ''),
    new TriItemData('海底', $r('app.media.top'), '民谣', this.generateList(10), '最近常听'),
    new TriItemData('我不是你的宋东野 ', $r('app.media.new'), '催眠神曲', this.generateList(11), '超过76%人播放'),
    new TriItemData('遥不可及的你', $r('app.media.brand'), 'ACG', this.generateList(12), '最最最最最最'),
  ]
  private secondGridDatas: MidItemData[] = [
    new MidItemData('民谣 | 简单的喜欢最长远', $r('app.media.quaregreen2'), '1024万',
      this.generateList(12), '最近常听'),
    new MidItemData('挪威天才 AW Faded！ 神曲完美了上亿人的愿望', $r('app.media.yellow6'), '24万',
      this.generateList(11), ''),
    new MidItemData('节奏控系列【抖腿-ing】', $r('app.media.brand'), '147万',
      this.generateList(10), ''),
    new MidItemData('下班回家时超适合放松的歌单', $r('app.media.quarered5'), '424万',
      this.generateList(9), '收藏过万'),
    new MidItemData('ACG爱好者', $r('app.media.quarepink8'), '2475万',
      this.generateList(8), '同频率'),
    new MidItemData('超能电磁炮', $r('app.media.quareblue3'), '432万',
      this.generateList(7), '神曲合集'),
    new MidItemData('西海之声 Radio SayHi！', $r('app.media.top'), '1024万',
      this.generateList(6), ''),
    new MidItemData('蕊希电台', $r('app.media.new'), '24万',
      this.generateList(5), ''),
    new MidItemData('十大童年经典中文儿歌', $r('app.media.brand'), '67万',
      this.generateList(4), ''),
    new MidItemData('广播剧《我就是想贿赂你》', $r('app.media.found'), '975万',
      this.generateList(3), ''),
    new MidItemData('倾城天下|热播影视剧原著', $r('app.media.brand'), '27万',
      this.generateList(2), ''),
    new MidItemData('一首歌一个故事', $r('app.media.found'), '1亿',
      this.generateList(1), '')
  ];

  formatTime(time: number): string {
    let min = Math.floor(time / 60).toString();
    let sec = (time % 60).toString()
    if (sec.length === 1) {
      sec = '0' + sec;
    }
    if (min.length === 1) {
      min = '0' + min;
    }
    return min + ':' + sec;
  }

  generateList(num: number): AudioItem[] {
    if (num > this.audios.length) {
      num = this.audios.length;
    }
    let shuffled = this.audios.sort(() => Math.random() - 0.5);
    //let shuffled2 = this.audios.sort((a:AudioItem,b:AudioItem) => a.time - b.time);
    //for (let index = 0; index < shuffled.length; index++) {
    //  Logger.error('sort',shuffled[index].title);
    //}
    return shuffled.slice(0, num);
  }

  generateTriItems(num: number): TriItemData[] {
    if (num > this.triItems.length) {
      num = this.triItems.length;
    }
    let shuffled = this.triItems.sort(() => Math.random() - 0.5);
    return shuffled.slice(0, num);
  }

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
      new ItemData('每日推荐', $r('app.media.love'), '', this.generateList(3)),
      new ItemData('私人漫游', $r('app.media.record'), '', this.generateList(4)),
      new ItemData('歌单', $r('app.media.message'), '', this.generateList(5)),
      new ItemData('排行榜', $r('app.media.shopping'), '', this.generateList(6)),
      new ItemData('有声书', $r('app.media.target'), '', this.generateList(7)),
      new ItemData('数字专辑', $r('app.media.circle'), '', this.generateList(8)),
      new ItemData('直播', $r('app.media.favorite'), '', this.generateList(9)),
      new ItemData('关注新歌', $r('app.media.recycle'), '', this.generateList(13))
    ];
    return firstGridData;
  }


  /**
   * Get data of the second grid.
   *
   * @return {Array<PageResource>} secondGridData.
   */
  getSecondGridData(): Array<MidItemData> {
    let shuffled = this.secondGridDatas.sort(() => Math.random() - 0.5);
    return shuffled;
  }

  async getRandomThiTitleData(): Promise<TriTitleItemData> {
    let title = ''
    let time: number = await systemDateTime.getCurrentTime();
    title = new Date().toLocaleString()
    return new TriTitleItemData(title, this.getThirdGridData())
  }

  getThirdGridData(): Array<TriItemData[]> {
    let thirdGridDatas = Array<TriItemData[]>();
    let items = this.generateTriItems(12);
    let thirdGridData1: TriItemData[] = items.slice(0, 3);
    let thirdGridData2: TriItemData[] = items.slice(3, 6);
    let thirdGridData3: TriItemData[] = items.slice(6, 9);
    let thirdGridData4: TriItemData[] = items.slice(9, 12);
    thirdGridDatas.push(thirdGridData1);
    thirdGridDatas.push(thirdGridData2);
    thirdGridDatas.push(thirdGridData3);
    thirdGridDatas.push(thirdGridData4);
    return thirdGridDatas;
  }

  getSquareThirdGridData(): Array<SquareTriItemData[]> {
    let thirdGridDatas = Array<SquareTriItemData[]>();
    let thirdGridData1: SquareTriItemData[] = [
      new SquareTriItemData('有关圣诞的仪式感🎄', '热'),
      new SquareTriItemData('🔥村庄年度生活观察', '新'),
      new SquareTriItemData('海外艺人新年彩蛋待领取', '热'),
      new SquareTriItemData('考研加油！', '新'),
      new SquareTriItemData('泰勒电影乐迷团专场🎦', '热'),
    ];
    let thirdGridData2: SquareTriItemData[] = [
      new SquareTriItemData('法老官宣', '新'),
      new SquareTriItemData('圣诞emo歌', '新'),
      new SquareTriItemData('适合寒冷冬夜听的歌', '新'),
      new SquareTriItemData('爱人？仇人！', '新'),
      new SquareTriItemData('我知道我爱你', '新'),
    ];
    let thirdGridData3: SquareTriItemData[] = [
      new SquareTriItemData('甘肃地震愿平安', ''),
      new SquareTriItemData('被这句歌词击穿♥了 ', ''),
      new SquareTriItemData('电影《三大队》', ''),
      new SquareTriItemData('无法自拔不能代替那种爱', '新'),
      new SquareTriItemData('人生像过山车', '新'),
    ];
    thirdGridDatas.push(thirdGridData1);
    thirdGridDatas.push(thirdGridData2);
    thirdGridDatas.push(thirdGridData3);
    return thirdGridDatas;
  }

  getBookTriData1(): Array<BookTriItemData[]> {
    let thirdGridDatas = Array<BookTriItemData[]>();
    let thirdGridData1: BookTriItemData[] = [
      new BookTriItemData('科技：为了上大学，上交可控核聚变', $r('app.media.top'), '推动长三角一体化发展取得新的重大突破', '1', '9.9分', '2290万', this.generateList(13), '脑洞二次元'),
      new BookTriItemData('无敌从满级属性开始 | 爆笑', $r('app.media.new'), '冬季呼吸道疾病防治九问九答', '2', '9.8分', '2230万', this.generateList(23), '现代言情'),
      new BookTriItemData('别在门口放脚垫了，真脏！', $r('app.media.brand'), '和我在上海过科技感满满的一天', '3', '9.7分', '2190万', this.generateList(33), '成长励志'),
    ];
    let thirdGridData2: BookTriItemData[] = [
      new BookTriItemData('家里再有钱，电视机旁尽量不要放这几样东西', $r('app.media.top'), '95后硕士小伙开包子店：日均三千元', '4', '9.7分', '1893万', this.generateList(3), '成长励志'),
      new BookTriItemData('全国哪的羊肉最好吃？经过评比，这6个地方比较出名', $r('app.media.new'), '印度成“美国人的缅北”？全球90%诈骗电话从印度打出', '5', '9.6分', '1790万', this.generateList(3), '现代言情'),
      new BookTriItemData('你在哪一刻体验到了真正的贫富差距？', $r('app.media.brand'), '在三国中谁才是第一猛将？吕布也仅排第三', '6', '9.6分', '1690万', this.generateList(3), '畅销书'),
    ];
    let thirdGridData3: BookTriItemData[] = [
      new BookTriItemData('古代深夜为什么要打更，不会打扰到人睡觉吗？', $r('app.media.top'), '关羽被杀后，诸葛亮冷冷地说了11个字', '7', '9.4分', '1292万', this.generateList(3), '经典文学'),
      new BookTriItemData('大清灭亡后，溥仪的7个妹妹都嫁给了谁？ ', $r('app.media.new'), '大奸臣杀了杨广，又睡了杨广的皇后', '8', '9.3分', '1120万', this.generateList(3), '儿童故事'),
      new BookTriItemData('10年后重温《康熙王朝》，才懂容妃获罪', $r('app.media.brand'), '溥任：奶奶是慈禧，溥仪是他哥', '9', '9.1分', '1040万', this.generateList(3), '现代言情'),
    ];
    let thirdGridData4: BookTriItemData[] = [
      new BookTriItemData('司马懿一眼识破空城计，为何选择退兵？', $r('app.media.top'), '李隆基称帝后，为何立马除掉上官婉儿？', '10', '9.1分', '990万', this.generateList(3), '武侠仙侠'),
      new BookTriItemData('贾元春为何在孕中被赐死，她犯了啥忌讳，惹得皇帝非杀她不可呢？ ', $r('app.media.new'), '明朝十六位皇帝一览表', '11', '9.0分', '760万', this.generateList(3), '经典文学'),
      new BookTriItemData('六十年代比你想象中还要艰苦，但你绝对不敢想象', $r('app.media.brand'), '刘备不愧为一代枭雄，一生不重用赵云', '12', '9.0分', '230万', this.generateList(3), '儿童故事'),
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
      new BookTriItemData('广播剧《你最好是》', $r('app.media.top'), '撩系直男x钓系美女，你确定你是直男？', '1', '9.9分', '2290万', this.generateList(3), '青春校园'),
      new BookTriItemData('[你听起来很好睡]广播剧', $r('app.media.new'), '冬季呼吸道疾病防治九问九答', '2', '9.8分', '2230万', this.generateList(3), '真甜剧场'),
      new BookTriItemData('【广播剧】这个Alpha为何那样', $r('app.media.brand'), '别人穿越都难，为何我穿越怎么', '3', '9.7分', '2190万', this.generateList(3), '狗血虐恋'),
    ];
    let thirdGridData2: BookTriItemData[] = [
      new BookTriItemData('【广播剧】家里再有钱，电视机旁尽量不要放这几样东西', $r('app.media.top'), '95后硕士小伙开包子店：日均三千元', '4', '9.7分', '1893万', this.generateList(3), '成长励志'),
      new BookTriItemData('【广播剧】全国哪的羊肉最好吃？经过评比，这6个地方比较出名', $r('app.media.new'), '印度成“美国人的缅北”？全球90%诈骗电话从印度打出', '5', '9.6分', '1790万', this.generateList(3), '现代言情'),
      new BookTriItemData('【广播剧】你在哪一刻体验到了真正的贫富差距？', $r('app.media.brand'), '在三国中谁才是第一猛将？吕布也仅排第三', '6', '9.6分', '1690万', this.generateList(3), '畅销书'),
    ];
    let thirdGridData3: BookTriItemData[] = [
      new BookTriItemData('【广播剧】古代深夜为什么要打更，不会打扰到人睡觉吗？', $r('app.media.top'), '关羽被杀后，诸葛亮冷冷地说了11个字', '7', '9.4分', '1292万', this.generateList(3), '经典文学'),
      new BookTriItemData('【广播剧】大清灭亡后，溥仪的7个妹妹都嫁给了谁？ ', $r('app.media.new'), '大奸臣杀了杨广，又睡了杨广的皇后', '8', '9.3分', '1120万', this.generateList(3), '儿童故事'),
      new BookTriItemData('【广播剧】10年后重温《康熙王朝》，才懂容妃获罪', $r('app.media.brand'), '溥任：奶奶是慈禧，溥仪是他哥', '9', '9.1分', '1040万', this.generateList(3), '现代言情'),
    ];
    let thirdGridData4: BookTriItemData[] = [
      new BookTriItemData('【广播剧】司马懿一眼识破空城计，为何选择退兵？', $r('app.media.top'), '李隆基称帝后，为何立马除掉上官婉儿？', '10', '9.1分', '990万', this.generateList(3), '武侠仙侠'),
      new BookTriItemData('【广播剧】贾元春为何在孕中被赐死，她犯了啥忌讳，惹得皇帝非杀她不可呢？ ', $r('app.media.new'), '明朝十六位皇帝一览表', '11', '9.0分', '760万', this.generateList(3), '经典文学'),
      new BookTriItemData('【广播剧】六十年代比你想象中还要艰苦，但你绝对不敢想象', $r('app.media.brand'), '刘备不愧为一代枭雄，一生不重用赵云', '12', '9.0分', '230万', this.generateList(3), '儿童故事'),
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
      new ItemData('排行榜', $r('app.media.top'), '', this.generateList(3)),
      new ItemData('全部分类', $r('app.media.new'), '', this.generateList(3)),
      new ItemData('男生小说', $r('app.media.brand'), '', this.generateList(3)),
      new ItemData('女生小说', $r('app.media.found'), '', this.generateList(3)),
      new ItemData('言情', $r('app.media.brand'), '', this.generateList(3)),
      new ItemData('免费', $r('app.media.new'), '', this.generateList(3)),
      new ItemData('纯爱', $r('app.media.top'), '', this.generateList(3)),
      new ItemData('全年龄', $r('app.media.found'), '', this.generateList(3))
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
    return new ItemData('听书VIP新课特惠 首月仅6元', $r('app.media.top'), '', this.generateList(3))
  }

  getPodCastSecond2(): Array<ItemData> {
    let firstGridData: ItemData[] = [
      new ItemData('三体速读-艾谁谁FM', $r('app.media.top'), '', this.generateList(3)),
      new ItemData('大明武夫 | 穿越历史', $r('app.media.new'), '', this.generateList(3)),
      new ItemData('科技：为了上大学', $r('app.media.brand'), '', this.generateList(3)),
      new ItemData('大凯故事会：奇闻怪谈', $r('app.media.found'), '', this.generateList(3)),
      new ItemData('大凯故事会：奇闻怪谈', $r('app.media.brand'), '', this.generateList(3)),
    ];
    return firstGridData;
  }

  /**
   * Get data of the second grid.
   *
   * @return {Array<PageResource>} secondGridData.
   */
  getPodCastGridData(): Array<MidItemData> {
    return this.getSecondGridData().slice(0, 6);
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
      new MineActivityItemData('这一年在村里，原来i人有这么美好的回忆。刚好自己喜欢看书和去旅行，下一年，求身体健康~',
        [$r('app.media.quareblue1'), $r('app.media.quarered2'), $r('app.media.quarepink3'), $r('app.media.yellow4')],
        new MineListItemData('橘生淮南yhy', $r('app.media.brand'), '8月23日', Visibility.Visible, Visibility.Visible),
        6, 36, 1139, ['#2023村庄年度观察'], new MineListItemData('2023村庄年度生活观察', $r('app.media.fig5'), '一起回归过去的2023年', Visibility.None, Visibility.None)),
      new MineActivityItemData('歌曲能倒带，那我们呢', [$r('app.media.found'), $r('app.media.quarered8'), $r('app.media.brand1')],
        new MineListItemData('Ar1a_5', $r('app.media.brand'), '2021年9月22日', Visibility.None, Visibility.None),
        0, 20, 405, ['#晒晒我的村民证件', '#集合啦村民们'], new MineListItemData('白兰鸽巡游记', $r('app.media.fig31'), '丢火车', Visibility.None, Visibility.None)),
    ];
    return listData;
  }

  getMineActivityItemData1(): Array<MineActivityItemData> {
    let listData: MineActivityItemData[] = [
      new MineActivityItemData('OpenhHarmony 回归本源设计，从浩瀚宇宙中抽象出动态语言，模拟真实世界中的物理动力学，将万有引力融入到动效设计中。\n引入轻拟物美学风格，以真实生活中的质感，为用户带来全新交互体验。\n跨设备的超级终端一拖即连，万能卡片轻轻一滑即可获取所需信息，带来全场景智慧生活新体验', [],
        new MineListItemData('阿荣_J5', $r('app.media.brand'), '2021年9月22日', Visibility.None, Visibility.None),
        0, 360, 1220, [], new MineListItemData('太聪明 Beat', $r('app.media.fig41'), 'Zy', Visibility.None, Visibility.None)),
      new MineActivityItemData('也是有证的村民了', [$r('app.media.found')],
        new MineListItemData('闲潭春半', $r('app.media.brand'), '2021年9月22日', Visibility.None, Visibility.None),
        0, 0, 0, ['#晒晒我的村民证件', '#集合啦村民们'])
    ];
    return listData;
  }

  getFollowActivityItemData(): Array<MineActivityItemData> {
    let listData: MineActivityItemData[] = [
      new MineActivityItemData('九宫格：知道你们很着急，年末惊喜来袭~\n2023云音乐年度听歌报告正式上线啦！\n一键开启你的年度听过报告，回归你的2023！',
        [$r('app.media.quarered0'), $r('app.media.quaregreen0'), $r('app.media.quarepink0'), $r('app.media.quareblue0'), $r('app.media.quaregreen0'),
          $r('app.media.quarered0'), $r('app.media.quaregreen0'), $r('app.media.quarepink0'), $r('app.media.quareblue0')],
        new MineListItemData('云音乐VIP', $r('app.media.brand'), '昨天12：03', Visibility.Visible, Visibility.Visible),
        11, 667, 1996, ['#2023年度听歌报告']),
      new MineActivityItemData('四幅图：年末惊喜来袭~\n2023云音乐年度听歌报告正式上线啦！\n一键开启你的年度听过报告，回归你的2023！',
        [$r('app.media.quarered1'), $r('app.media.quaregreen2'), $r('app.media.quarepink3'), $r('app.media.quareblue4')],
        new MineListItemData('云音乐VIP', $r('app.media.brand'), '昨天12：03', Visibility.Visible, Visibility.Visible),
        11, 667, 1996, ['#2023年度听歌报告']),
      new MineActivityItemData('五幅图：知道你们很着急，年末惊喜来袭~\n2023云音乐年度听歌报告正式上线啦！\n一键开启你的年度听过报告，回归你的2023！',
        [$r('app.media.quarered1'), $r('app.media.quaregreen2'), $r('app.media.quarepink3'), $r('app.media.quareblue4'), $r('app.media.quaregreen5')],
        new MineListItemData('云音乐VIP', $r('app.media.brand'), '昨天12：03', Visibility.Visible, Visibility.Visible),
        11, 667, 1996, ['#2023年度听歌报告']),
      new MineActivityItemData('一幅图', [$r('app.media.found')],
        new MineListItemData('闲潭春半', $r('app.media.brand'), '2021年9月22日', Visibility.None, Visibility.None),
        0, 0, 0, ['#晒晒我的村民证件', '#集合啦村民们']),
      new MineActivityItemData('两幅图', [$r('app.media.quaregreen2'), $r('app.media.quarepink3')],
        new MineListItemData('闲潭春半', $r('app.media.brand'), '2021年9月22日', Visibility.None, Visibility.None),
        0, 0, 0, ['#晒晒我的村民证件', '#集合啦村民们'])
    ]
    ;
    return listData;
  }

  getRecommendActivityItemData(): Array<MineActivityItemData> {
    let listData: MineActivityItemData[] = [
      new MineActivityItemData('七幅图：四年好短啊~',
        [$r('app.media.brand1'), $r('app.media.brand1'), $r('app.media.fig31'), $r('app.media.fig41'), $r('app.media.fig1'), $r('app.media.fig2'), $r('app.media.fig3')],
        new MineListItemData('闲潭春半', $r('app.media.brand'), '8月23日', Visibility.Visible, Visibility.Visible),
        0, 1, 1, ['#心语推歌墙'], new MineListItemData('想着你', $r('app.media.fig31'), '郭顶', Visibility.None, Visibility.None)),
      new MineActivityItemData('六幅图：也是有证的村民了',
        [$r('app.media.quarepink3'), $r('app.media.yellow1'), $r('app.media.yellow2'), $r('app.media.yellow3'), $r('app.media.quarepink3'), $r('app.media.yellow4')],
        new MineListItemData('闲潭春半', $r('app.media.brand'), '2021年9月22日', Visibility.None, Visibility.None),
        0, 0, 0, ['#晒晒我的村民证件', '#集合啦村民们']),
      new MineActivityItemData('三幅图：也是有证的村民了',
        [$r('app.media.yellow4'), $r('app.media.quarepink3'), $r('app.media.yellow4')],
        new MineListItemData('闲潭春半', $r('app.media.brand'), '2021年9月22日', Visibility.None, Visibility.None),
        0, 0, 0, ['#晒晒我的村民证件', '#集合啦村民们']),
      new MineActivityItemData('八幅图：也是有证的村民了',
        [$r('app.media.yellow0'), $r('app.media.quarepink3'), $r('app.media.yellow2'), $r('app.media.yellow3'), $r('app.media.yellow4'),
          $r('app.media.quarepink3'), $r('app.media.yellow4'), $r('app.media.yellow4')],
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
    return this.getSecondGridData().slice(0, 6);
  }

  getSettingListData1(): Array<SettingItemData> {
    let listData: SettingItemData[] = [
      new SettingItemData('消息中心', $r("app.media.news"), '', undefined),
      new SettingItemData('贝壳中心', $r("app.media.data"), '', undefined),
      new SettingItemData('创作者中心', $r("app.media.menu"), '', undefined)
    ];
    return listData;
  }

  getSettingListData2(): Array<SettingItemData> {
    let listData: SettingItemData[] = [
      new SettingItemData('趣味', $r("app.media.news"), '点击查看今日运势', undefined),
      new SettingItemData('有票', $r("app.media.data"), '', undefined),
      new SettingItemData('商城', $r("app.media.menu"), '', undefined),
      new SettingItemData('歌房', $r("app.media.menu"), '', undefined),
      new SettingItemData('音乐收藏家庭', $r("app.media.menu"), '与音乐人共享收益', undefined),
      new SettingItemData('视频彩铃', $r("app.media.menu"), 'pick你的音乐彩铃', undefined)
    ];
    return listData;
  }

  getSettingListData3(): Array<SettingItemData> {
    let listData: SettingItemData[] = [
      new SettingItemData('设置', $r("app.media.news"), '', undefined),
      new SettingItemData('深色模式', $r("app.media.data"), '', $r('app.media.home_normal')),
      new SettingItemData('定时关闭', $r("app.media.menu"), '', undefined),
      new SettingItemData('个性装扮', $r("app.media.menu"), '', undefined),
      new SettingItemData('边听边存', $r("app.media.menu"), '未开启', undefined),
      new SettingItemData('青少年模式', $r("app.media.menu"), '未开启', undefined)
    ];
    return listData;
  }

  getVideoRecommendItemData(): Array<VideoRecommendItemData> {
    let listData: VideoRecommendItemData[] = [
      new VideoRecommendItemData('Kaihong街舞工作室', $r("app.media.quarered6"), $rawfile('video1.mp4'), $r("app.media.found"), 'Goo老师编舞——****INAP****', '43'),
      new VideoRecommendItemData('风中流转', $r("app.media.quareblue5"), $rawfile('video2.mp4'), $r("app.media.found"), '【明星】Interview（2023舞台）', '143'),
      new VideoRecommendItemData('兔子亚洲', $r("app.media.quarepink1"), $rawfile('test1.mp4'), $r("app.media.found"), '很乱的走线，谁来整理一下？我愿平凡地陪伴子麦芽糖身边', '1243'),
      new VideoRecommendItemData('麦芽糖', $r("app.media.yellow2"), $rawfile('test2.mp4'), $r("app.media.found"), '麦芽糖的键盘很差', '4323'),
      new VideoRecommendItemData('小a的宝藏', $r("app.media.fig21"), $rawfile('video1.mp4'), $r("app.media.found"), '千篇一律的绿化毫无趣味', '6573'),
    ];
    return listData;
  }

  getFollowers(): Array<FollowerItemData> {
    let listData: FollowerItemData[] = [
      new FollowerItemData('get_a_life', $r("app.media.found"), ''),
      new FollowerItemData('初玖宅柒', $r("app.media.fig3"), ''),
      new FollowerItemData('金陵靓仔', $r("app.media.fig4"), ''),
      new FollowerItemData('吹口哨的青蛙', $r("app.media.about"), ''),
      new FollowerItemData('sunny', $r("app.media.fig2"), ''),
      new FollowerItemData('我是周董', $r("app.media.privacy"), ''),
      new FollowerItemData('更惊奇', $r("app.media.fig1"), '')
    ];
    return listData;
  }

  getListHistoryData(): Array<ListHistoryItemData> {
    let list: ListHistoryItemData[] = [
      new ListHistoryItemData('歌单：时空之力', $r('app.media.top'), '', this.generateList(4)),
      new ListHistoryItemData('每日推荐', $r('app.media.new'), '', this.generateList(3)),
      new ListHistoryItemData('私人漫游', $r('app.media.brand'), '', this.generateList(6)),
      new ListHistoryItemData('歌单：2021-10', $r('app.media.found'), '', this.generateList(8)),
      new ListHistoryItemData('每日推荐', $r('app.media.brand'), '', this.generateList(31))
    ];
    return list;
  }
}

export default new MainViewModel();