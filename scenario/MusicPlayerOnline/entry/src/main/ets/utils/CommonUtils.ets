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
import HttpManager from '../manager/HttpManager';
import LrcLine from '../model/LrcLine';
import Logger from './Logger';

/**
 * Binds data to components and provides interfaces.
 */
export class CommonUtils {
  private tag = 'CommonUtils';

  getLrc(lrc: string): LrcLine[] {
    let lrcData: LrcLine[] = [];
    if (lrc !== null && lrc !== undefined && lrc !== '') {
      let lines = lrc.replace(/\\n/g, '\n').split('\n');
      for (let line of lines) {
        if (line.includes('[')) {
          let content = line.split(']');
          if (content.length > 1 && content[1].trim() !== '') {
            let time: number = this.parseLrcTime(content[0] + ']');
            lrcData.push(new LrcLine(time, content[1]));
          }
        }
      }
    }
    return lrcData;
  }

  findLrcIndexByTime(lrcList: LrcLine[], currentTime: number, currentIndex: number): number {
    if (lrcList == null || lrcList == undefined || lrcList.length < 1) {
      return -1;
    }
    //判断是否已经到最后
    if (currentTime >= lrcList[lrcList.length - 1].time || currentIndex + 1 == lrcList.length) {
      return lrcList.length - 1;
    }
    //从当前index往后查找，减少计算量，在支持seek后，需要先重置currentIndex
    for (let i = currentIndex; i < lrcList.length; i++) {
      if (currentTime >= lrcList[i].time && currentTime < lrcList[i+1].time) {
        return i;
      }
    }
    return 0;
  }

  parseLrcTime(timeStr: string): number {
    // 修改正则表达式以匹配两种格式的毫秒部分
    const parts = timeStr.match(/\[(\d{2}):(\d{2})\.(\d{2})(\d{0,1})?\]/);
    if (!parts) {
      Logger.error(this.tag, 'time format error.');
      return 0;
    }
    const minutes = parseInt(parts[1], 10);
    const seconds = parseInt(parts[2], 10);
    let milliseconds = parseInt(parts[3], 10) * 10; // 将两位数字转换为毫秒
    if (parts[4]) {
      milliseconds += parseInt(parts[4], 10); // 如果存在第三个数字，转换为毫秒
    }
    return minutes * 60000 + seconds * 1000 + milliseconds;
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