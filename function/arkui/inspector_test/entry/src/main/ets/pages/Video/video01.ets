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

import router from '@ohos.router'
@Entry
@Component
struct stepper01 {
  private videoController: VideoController = new VideoController()
  @State curRate: PlaybackSpeed = PlaybackSpeed.Speed_Forward_1_00_X
  @State videoSrc: Resource = $r("app.media.test2")
  @State previewUri: Resource = $r('app.media.foreground')
  @State isAutoPlay: boolean = false
  @State showControls: boolean = false
  @State idOrKeyArray: Array<Array<string>> = [
    ['', ''],
    ['qzq_video_id', ''],
    ['', 'qzq_video_key'],
    ['qzq_video_id', 'qzq_video_key'],
  ];

  build() {
    Column() {
      Text("Video")
        .fontSize(18)
      List({space:30}) {
        ForEach(this.idOrKeyArray, (item: Array<string>) => {
          ListItem(){
          Column() {
            Video({
              src: this.videoSrc,
              previewUri: this.previewUri,
              controller: this.videoController,
              currentProgressRate: this.curRate,
            })
              .width(300)
              .height(210)
              .autoPlay(this.isAutoPlay)
              .muted(false)
              .loop(false)
              .controls(this.showControls)
              .id(item[0])
              .key(item[1])
              .onStart(() => {
                console.info('onStart')
              })
              .onPause(() => {
                console.info('onPause')
              })
              .onFinish(() => {
                console.info('onFinish')
              })
              .onError(() => {
                console.info('onError')
              })
              .onStop(() => {
                console.info('onStop')
              })
              .onPrepared((e?: DurationObject) => {
                if (e != undefined) {
                  console.info('onPrepared is ' + e.duration)
                }
              })
              .onSeeking((e?: TimeObject) => {
                if (e != undefined) {
                  console.info('onSeeking is ' + e.time)
                }
              })
              .onSeeked((e?: TimeObject) => {
                if (e != undefined) {
                  console.info('onSeeked is ' + e.time)
                }
              })
              .onUpdate((e?: TimeObject) => {
                if (e != undefined) {
                  console.info('onUpdate is ' + e.time)
                }
              })
            Row() {
              Button('src').onClick(() => {
                this.videoSrc = $r('app.media.test1')
              }).margin(5)
              Button('previewUri').onClick(() => {
                this.previewUri = $r('app.media.icon')
              }).margin(5)
              Button('controls').onClick(() => {
                this.showControls = !this.showControls
              }).margin(5)
            }

            Row() {
              Button('start').onClick(() => {
                this.videoController.start()
              }).margin(2)
              Button('pause').onClick(() => {
                this.videoController.pause()
              }).margin(2)
              Button('stop').onClick(() => {
                this.videoController.stop()
              }).margin(2)
              Button('reset').onClick(() => {
                this.videoController.reset()
              }).margin(2)
              Button('setTime').onClick(() => {
                this.videoController.setCurrentTime(10, SeekMode.Accurate)
              }).margin(2)
            }
            Row() {
              Button('rate 0.75').onClick(() => {
                this.curRate = PlaybackSpeed.Speed_Forward_0_75_X
              }).margin(5)
              Button('rate 1').onClick(() => {
                this.curRate = PlaybackSpeed.Speed_Forward_1_00_X
              }).margin(5)
              Button('rate 2').onClick(() => {
                this.curRate = PlaybackSpeed.Speed_Forward_2_00_X
              }).margin(5)
            }
          }
        }
        })
      }
    }
  }
}
interface DurationObject {
  duration: number;
}

interface TimeObject {
  time: number;
}