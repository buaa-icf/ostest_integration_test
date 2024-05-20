/*
 * Copyright (c) 2024 Shenzhen Kaihong Digital Industry Development Co., Ltd.
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

import HashMap from '@ohos.util.HashMap'; // 导入HashMap模块
import LrcLine from '../model/LrcLine';

/**
 * Binds data to components and provides interfaces.
 */
export class CommonUtils {
  private lrcs: HashMap<string, string> = new HashMap();
  private setLrcs() {
    this.lrcs.set('十一种孤独', '[ti:十一种孤独]\n[ar:宿羽阳]\n[al:宿羽阳]\n[by:]\n[offset:0]\n[00:00.46]十一种孤独 - 宿羽阳\n[00:00.78]词：陶小陶\n[00:00.96]曲：宿羽阳\n[00:01.14]编曲：谭侃侃\n[00:01.89]\n[00:30.75]最孤独是读评论区未署名情书\n[00:34.85]\n[00:37.27]像不小心掀开了时光的典故\n[00:41.47]\n[00:44.37]第十是睁开眼就已黄昏迟暮\n[00:48.21]\n[00:51.10]寒星三两落在远远处\n[00:55.48]\n[00:57.95]第九是海蓝时见鲸 林深时见鹿\n[01:01.92]\n[01:04.66]却不见你 在梦醒之处\n[01:08.94]\n[01:11.47]第八是回家的路途绕了几次远路\n[01:16.10]\n[01:18.06]像电台的老情歌循环着音符\n[01:22.34]\n[01:24.84]愿你风尘仆仆 深情不被辜负\n[01:29.32]\n[01:31.41]虽回不到过去 也回不到当初\n[01:36.60]\n[01:38.46]愿你半生漂浮此生能有归宿\n[01:42.99]\n[01:45.20]愿你风雨落幕能有人免你孤苦\n[01:50.38]\n[02:05.91]第七是看一场一群人的演出\n[02:10.02]\n[02:12.61]荧光满眼却看不清楚\n[02:16.74]\n[02:19.44]第六是一个人吃饭 一个人写书\n[02:23.47]\n[02:26.19]一个人拼岁月拼图\n[02:30.43]\n[02:33.03]第五是骑单车过陌生的马路\n[02:37.04]\n[02:39.49]在拥挤的人海中踌躇\n[02:43.57]\n[02:46.52]第四是给空白的纸上画上五线谱\n[02:51.28]\n[02:53.24]每一行都好像是世界的遗嘱\n[02:57.49]\n[02:59.96]愿你风尘仆仆 深情不被辜负\n[03:04.62]\n[03:06.69]虽回不到过去 也回不到当初\n[03:11.60]\n[03:13.38]愿你半生漂浮此生能有归宿\n[03:18.10]\n[03:20.19]愿你风雨落幕能有人免你孤苦\n[03:25.11]\n[03:27.10]愿你风尘仆仆 深情不被辜负\n[03:32.01]\n[03:33.82]虽回不到过去 也回不到当初\n[03:38.70]\n[03:40.52]愿你半生漂浮此生能有归宿\n[03:45.84]\n[03:47.32]愿你风雨落幕能有人免你孤独\n[03:51.97]\n[03:54.58]第三是假装很成熟 假装很忙碌\n[03:58.60]\n[04:01.25]假装擅长一个人独处\n[04:05.28]\n[04:07.94]第二是穿过万家灯火无数\n[04:12.10]\n[04:14.85]却无一人等我在归途\n[04:18.96]\n[04:21.74]第一是收到远方一纸家书\n[04:25.65]\n[04:28.18]说照顾自己 累了别忍着不哭')
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
  formatTime(time: number): string {
    let min = Math.floor(time / 60).toString();
    let sec = Math.floor((time % 60)).toString()
    if (sec.length === 1) {
      sec = '0' + sec;
    }
    if (min.length === 1) {
      min = '0' + min;
    }
    return min + ':' + sec;
  }
}
export default new CommonUtils();