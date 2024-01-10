/*
 * Copyright (c) 2023 Shenzhen Kaihong Digital Industry Development Co., Ltd.
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *  http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
import Logger from '../common/utils/Logger';
import emitter from '@ohos.events.emitter';
import AudioItem from './AudioItem';

export default class PlayerManager {
  private tag: string = 'PlayerManager';
  private state: number = -1;
  // 播放状态，未初始化-1，停止0，播放1，暂停2
  private currentTime: number = 0;
  private item: AudioItem = new AudioItem('', $r('app.media.ic_gallery_frame_overlay_soundphoto'), '', 0);
  private list: AudioItem[] = [];
  private listPosition: number = 0;
  private intervalID: number = -1;
  private innerEvent: emitter.InnerEvent = {
    eventId: 1,
    priority: emitter.EventPriority.HIGH
  };
  private innerEvent2: emitter.InnerEvent = {
    eventId: 2,
    priority: emitter.EventPriority.HIGH
  };
  /**
   * 初始化
   */
  playList(list: AudioItem[], pos: number): void {
    this.stop();
    if (list.length <= 0) {
      Logger.error(this.tag, 'PlayList:' + 'list length <= 0');
      return;
    }
    if (list.length > pos) {
      this.listPosition = pos;
    } else {
      Logger.error(this.tag, 'PlayList:' + 'Position over length');
      return;
    }
    this.list = list;
    this.currentTime = 0;
    this.item = list[this.listPosition];
    this.state = 0;
    this.play();
  }

  getCurrentPlayList(): AudioItem[] {
    return this.list;
  }

  /**
   * 播放
   */
  play(): void {
    if (this.state === -1 || this.state === 1) {
      Logger.error(this.tag, 'Play:' + 'state error');
      return;
    }
    this.state = 1
    this.list[this.listPosition].isPlaying = true
    let eventData: emitter.EventData = {
      data: {
        "state": this.state,
      }
    };
    emitter.emit(this.innerEvent2, eventData);
    this.intervalID = setInterval(() => {
      if (this.currentTime > this.item.time) {
        this.next();
      } else {
        Logger.info(this.tag, 'Play:' + this.item.title + ':' + this.currentTime.toString());
        let eventData: emitter.EventData = {
          data: {
            "state": this.state,
            "currentTime": this.currentTime
          }
        };
        emitter.emit(this.innerEvent, eventData);
        this.currentTime = this.currentTime + 1;
      }
    }, 1000);
    Logger.info(this.tag, 'Start interval id:' + this.intervalID.toString());
  }

  /**
   * 播放
   */
  playItem(item: AudioItem): void {
    this.stop();
    Logger.info(this.tag, 'Play finish:' + this.listPosition.toString());
    let index = this.list.indexOf(item)
    if (-1 === index) {
      this.listPosition = 0;
    } else {
      this.listPosition = index;
    }
    Logger.info(this.tag, 'Play :' + this.listPosition.toString());
    this.item = this.list[this.listPosition]
    this.play();
  }

  /**
   * 暂停
   */
  pause(): void {
    if (this.state === -1) {
      Logger.error(this.tag, 'Play:' + 'state error');
      return;
    }
    this.state = 2;
    if (this.intervalID !== -1) {
      Logger.info(this.tag, 'Pause release interval id:' + this.intervalID.toString());
      clearInterval(this.intervalID)
    }
    Logger.info(this.tag, 'Pause:' + this.item.title);
    let eventData: emitter.EventData = {
      data: {
        "state": this.state,
        "currentTime": this.currentTime
      }
    };
    emitter.emit(this.innerEvent, eventData);
  }

  /**
   * 停止
   */
  stop(): void {
    if (this.state === -1) {
      Logger.error(this.tag, 'Play:' + 'state error');
      return;
    }
    if (this.intervalID !== -1) {
      Logger.info(this.tag, 'Stop release interval id:' + this.intervalID.toString());
      clearInterval(this.intervalID)
    }
    this.state = 0;
    this.currentTime = 0;
    Logger.info(this.tag, 'Stop:' + this.item.title);
    this.list[this.listPosition].isPlaying = false
    let eventData: emitter.EventData = {
      data: {
        "state": this.state,
        "currentTime": this.currentTime
      }
    };
    emitter.emit(this.innerEvent, eventData);
  }

  /**
   * 下一首
   */
  next(): void {
    if (this.state === -1) {
      return;
    }
    this.stop();
    Logger.info(this.tag, 'Play finish:' + this.listPosition.toString());
    if (this.listPosition + 1 === this.list.length) {
      this.listPosition = 0;
    } else {
      this.listPosition = this.listPosition + 1;
    }
    Logger.info(this.tag, 'Play next:' + this.listPosition.toString());
    this.item = this.list[this.listPosition]
    this.play();
  }

  //上一首
  previous() {

  }

  //播放顺序
  setPlayMode() {

  }

  getItem(): AudioItem {
    return this.item;
  }
}
