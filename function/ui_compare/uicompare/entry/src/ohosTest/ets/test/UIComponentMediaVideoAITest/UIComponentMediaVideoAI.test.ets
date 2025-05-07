/**
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

import { hilog } from '@kit.PerformanceAnalysisKit';
import { describe, beforeAll, beforeEach, afterEach, afterAll, it, expect } from '@ohos/hypium';
import { BusinessError, commonEventManager } from '@kit.BasicServicesKit';
import { KeyCode } from '@kit.InputKit';
import screenLock from '@ohos.screenLock';
import { window } from '@kit.ArkUI';
import wifiManager from '@ohos.wifiManager';
import { Driver, ON ,Component, UiWindow } from '@kit.TestKit';
import Settings from '../model/Settings';
import windowSnap from '../model/snapShot';
import Logger from '../model/Logger';
import Utils from '../model/Utils';


let TAG = 'RunTimeTest';

function sleep(ms: number) {
  return new Promise<string>(resolve => setTimeout(resolve, ms));
}

export default function UIComponentMediaVideoAI() {
  describe('UIComponentMediaVideoAI', () => {
    beforeAll(() => {

    })
    beforeEach(() => {

    })

    afterEach(async (done: Function) => {
      if (Settings.windowClass == undefined) {
        return
      }
      Settings.windowClass.destroyWindow((err) => {
        if (err.code) {
          Logger.error(`[${TAG}]`, `Failed to destroy the window. Cause : ${JSON.stringify(err)}`)
          return;
        }
        Logger.info(`[${TAG}]`, `Succeeded in destroy the window.`);
      })
      await Utils.sleep(1000);
      done()
    })

    afterAll(() => {

    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_AI_0150
     * @tc.name    SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_AI_0150
     * @tc.desc    Set enableAnalyzer(true) for the video component
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_AI_0150', 0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_AI_0150';
      let pageName = 'UIComponentMediaVideoAI015';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentMediaVideoAI/' + pageName);
      await Utils.sleep(1000);
      let driver: Driver = Driver.create();
      let startButton: Component = await driver.findComponent(ON.id(pageName + '_003'));
      let pauseButton: Component = await driver.findComponent(ON.id(pageName + '_004'));
      let video: Component = await driver.findComponent(ON.id(pageName + '_005'));
      await startButton.click();
      let videoCenter = await video.getBoundsCenter();
      Logger.info(`[${TAG}]`, `videoCenter: X = ${videoCenter.x}, Y = ${videoCenter.y}`);
      await Utils.sleep(8000);
      await pauseButton.click();
      await driver.mouseMoveTo({x: videoCenter.x, y: videoCenter.y});
      await driver.longClick(videoCenter.x, videoCenter.y);
      await Utils.sleep(1000);
      await windowSnap.snapShot(pageName + '_01');
      await driver.mouseMoveTo({x: videoCenter.x, y: videoCenter.y + 180});
      await driver.longClick(videoCenter.x, videoCenter.y + 180);
      await Utils.sleep(1000);
      await windowSnap.snapShot(pageName + '_02');
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_AI_0160
     * @tc.name    SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_AI_0160
     * @tc.desc    Set enableAnalyzer(false) for the video component
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_AI_0160', 0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_AI_0160';
      let pageName = 'UIComponentMediaVideoAI016';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentMediaVideoAI/' + pageName);
      await Utils.sleep(1000);
      let driver: Driver = Driver.create();
      let startButton: Component = await driver.findComponent(ON.id(pageName + '_003'));
      let pauseButton: Component = await driver.findComponent(ON.id(pageName + '_004'));
      let video: Component = await driver.findComponent(ON.id(pageName + '_005'));
      await startButton.click();
      let videoCenter = await video.getBoundsCenter();
      Logger.info(`[${TAG}]`, `videoCenter: X = ${videoCenter.x}, Y = ${videoCenter.y}`);
      await Utils.sleep(8000);
      await pauseButton.click();
      await driver.mouseMoveTo({x: videoCenter.x, y: videoCenter.y});
      await driver.longClick(videoCenter.x, videoCenter.y);
      await Utils.sleep(1000);
      await windowSnap.snapShot(pageName + '_01');
      await driver.mouseMoveTo({x: videoCenter.x, y: videoCenter.y + 180});
      await driver.longClick(videoCenter.x, videoCenter.y + 180);
      await Utils.sleep(1000);
      await windowSnap.snapShot(pageName + '_02');
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_AI_0170
     * @tc.name    SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_AI_0170
     * @tc.desc    Set enableAnalyzer(undefined) for the video component
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_AI_0170', 0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_AI_0170';
      let pageName = 'UIComponentMediaVideoAI017';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentMediaVideoAI/' + pageName);
      await Utils.sleep(1000);
      let driver: Driver = Driver.create();
      let startButton: Component = await driver.findComponent(ON.id(pageName + '_003'));
      let pauseButton: Component = await driver.findComponent(ON.id(pageName + '_004'));
      let video: Component = await driver.findComponent(ON.id(pageName + '_005'));
      await startButton.click();
      let videoCenter = await video.getBoundsCenter();
      Logger.info(`[${TAG}]`, `videoCenter: X = ${videoCenter.x}, Y = ${videoCenter.y}`);
      await Utils.sleep(8000);
      await pauseButton.click();
      await driver.mouseMoveTo({x: videoCenter.x, y: videoCenter.y});
      await driver.longClick(videoCenter.x, videoCenter.y);
      await Utils.sleep(1000);
      await windowSnap.snapShot(pageName + '_01');
      await driver.mouseMoveTo({x: videoCenter.x, y: videoCenter.y + 180});
      await driver.longClick(videoCenter.x, videoCenter.y + 180);
      await Utils.sleep(1000);
      await windowSnap.snapShot(pageName + '_02');
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_AI_0180
     * @tc.name    SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_AI_0180
     * @tc.desc    Set enableAnalyzer(null) for the video component
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_AI_0180', 0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_AI_0180';
      let pageName = 'UIComponentMediaVideoAI018';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentMediaVideoAI/' + pageName);
      await Utils.sleep(1000);
      let driver: Driver = Driver.create();
      let startButton: Component = await driver.findComponent(ON.id(pageName + '_003'));
      let pauseButton: Component = await driver.findComponent(ON.id(pageName + '_004'));
      let video: Component = await driver.findComponent(ON.id(pageName + '_005'));
      await startButton.click();
      let videoCenter = await video.getBoundsCenter();
      Logger.info(`[${TAG}]`, `videoCenter: X = ${videoCenter.x}, Y = ${videoCenter.y}`);
      await Utils.sleep(8000);
      await pauseButton.click();
      await driver.mouseMoveTo({x: videoCenter.x, y: videoCenter.y});
      await driver.longClick(videoCenter.x, videoCenter.y);
      await Utils.sleep(1000);
      await windowSnap.snapShot(pageName + '_01');
      await driver.mouseMoveTo({x: videoCenter.x, y: videoCenter.y + 180});
      await driver.longClick(videoCenter.x, videoCenter.y + 180);
      await Utils.sleep(1000);
      await windowSnap.snapShot(pageName + '_02');
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_AI_0190
     * @tc.name    SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_AI_0190
     * @tc.desc    Set enableAnalyzer(false) for the video component
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_AI_0190', 0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_AI_0190';
      let pageName = 'UIComponentMediaVideoAI019';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentMediaVideoAI/' + pageName);
      await Utils.sleep(1000);
      let driver: Driver = Driver.create();
      let startButton: Component = await driver.findComponent(ON.id(pageName + '_003'));
      let pauseButton: Component = await driver.findComponent(ON.id(pageName + '_004'));
      let video: Component = await driver.findComponent(ON.id(pageName + '_005'));
      await startButton.click();
      let videoCenter = await video.getBoundsCenter();
      Logger.info(`[${TAG}]`, `videoCenter: X = ${videoCenter.x}, Y = ${videoCenter.y}`);
      await Utils.sleep(8000);
      await pauseButton.click();
      await driver.mouseMoveTo({x: videoCenter.x, y: videoCenter.y});
      await driver.longClick(videoCenter.x, videoCenter.y);
      await Utils.sleep(1000);
      await windowSnap.snapShot(pageName + '_01');
      await driver.mouseMoveTo({x: videoCenter.x, y: videoCenter.y + 180});
      await driver.longClick(videoCenter.x, videoCenter.y + 180);
      await Utils.sleep(1000);
      await windowSnap.snapShot(pageName + '_02');

      let indexAddButton: Component = await driver.findComponent(ON.id(pageName + '_001'));
      let indexSubButton: Component = await driver.findComponent(ON.id(pageName + '_002'));
      await indexAddButton.click();
      await driver.mouseMoveTo({x: videoCenter.x, y: videoCenter.y});
      await driver.longClick(videoCenter.x, videoCenter.y);
      await Utils.sleep(1000);
      await windowSnap.snapShot(pageName + '_03');
      await driver.mouseMoveTo({x: videoCenter.x, y: videoCenter.y + 180});
      await driver.longClick(videoCenter.x, videoCenter.y + 180);
      await Utils.sleep(1000);
      await windowSnap.snapShot(pageName + '_04');

      await indexSubButton.click();
      await startButton.click();
      await Utils.sleep(2000);
      await pauseButton.click();
      await driver.mouseMoveTo({x: videoCenter.x, y: videoCenter.y});
      await driver.longClick(videoCenter.x, videoCenter.y);
      await Utils.sleep(1000);
      await windowSnap.snapShot(pageName + '_05');
      await driver.mouseMoveTo({x: videoCenter.x, y: videoCenter.y + 180});
      await driver.longClick(videoCenter.x, videoCenter.y + 180);
      await Utils.sleep(1000);
      await windowSnap.snapShot(pageName + '_06');

      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_AI_0200
     * @tc.name    SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_AI_0200
     * @tc.desc    The video component's ImageAnalyzerConfig only supports the 'text' type
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_AI_0200', 0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_AI_0200';
      let pageName = 'UIComponentMediaVideoAI020';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentMediaVideoAI/' + pageName);
      await Utils.sleep(1000);
      let driver: Driver = Driver.create();
      let startButton: Component = await driver.findComponent(ON.id(pageName + '_003'));
      let pauseButton: Component = await driver.findComponent(ON.id(pageName + '_004'));
      let video: Component = await driver.findComponent(ON.id(pageName + '_005'));
      await startButton.click();
      let videoCenter = await video.getBoundsCenter();
      Logger.info(`[${TAG}]`, `videoCenter: X = ${videoCenter.x}, Y = ${videoCenter.y}`);
      await Utils.sleep(8000);
      await pauseButton.click();
      await driver.mouseMoveTo({x: videoCenter.x, y: videoCenter.y});
      await driver.longClick(videoCenter.x, videoCenter.y);
      await Utils.sleep(1000);
      await windowSnap.snapShot(pageName + '_01');
      await driver.mouseMoveTo({x: videoCenter.x, y: videoCenter.y + 180});
      await driver.longClick(videoCenter.x, videoCenter.y + 180);
      await Utils.sleep(1000);
      await windowSnap.snapShot(pageName + '_02');
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_AI_0210
     * @tc.name    SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_AI_0210
     * @tc.desc    The video component's ImageAnalyzerConfig only supports the 'subject' type
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_AI_0210', 0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_AI_0210';
      let pageName = 'UIComponentMediaVideoAI021';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentMediaVideoAI/' + pageName);
      await Utils.sleep(1000);
      let driver: Driver = Driver.create();
      let startButton: Component = await driver.findComponent(ON.id(pageName + '_003'));
      let pauseButton: Component = await driver.findComponent(ON.id(pageName + '_004'));
      let video: Component = await driver.findComponent(ON.id(pageName + '_005'));
      await startButton.click();
      let videoCenter = await video.getBoundsCenter();
      Logger.info(`[${TAG}]`, `videoCenter: X = ${videoCenter.x}, Y = ${videoCenter.y}`);
      await Utils.sleep(8000);
      await pauseButton.click();
      await driver.mouseMoveTo({x: videoCenter.x, y: videoCenter.y});
      await driver.longClick(videoCenter.x, videoCenter.y);
      await Utils.sleep(1000);
      await windowSnap.snapShot(pageName + '_01');
      await driver.mouseMoveTo({x: videoCenter.x, y: videoCenter.y + 180});
      await driver.longClick(videoCenter.x, videoCenter.y + 180);
      await Utils.sleep(1000);
      await windowSnap.snapShot(pageName + '_02');
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_AI_0220
     * @tc.name    SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_AI_0220
     * @tc.desc    Manually configured: video component's ImageAnalyzerConfig = 333
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_AI_0220', 0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_AI_0220';
      let pageName = 'UIComponentMediaVideoAI022';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentMediaVideoAI/' + pageName);
      await Utils.sleep(1000);
      let driver: Driver = Driver.create();
      let startButton: Component = await driver.findComponent(ON.id(pageName + '_003'));
      let pauseButton: Component = await driver.findComponent(ON.id(pageName + '_004'));
      let video: Component = await driver.findComponent(ON.id(pageName + '_005'));
      await startButton.click();
      let videoCenter = await video.getBoundsCenter();
      Logger.info(`[${TAG}]`, `videoCenter: X = ${videoCenter.x}, Y = ${videoCenter.y}`);
      await Utils.sleep(8000);
      await pauseButton.click();
      await driver.mouseMoveTo({x: videoCenter.x, y: videoCenter.y});
      await driver.longClick(videoCenter.x, videoCenter.y);
      await Utils.sleep(1000);
      await windowSnap.snapShot(pageName + '_01');
      await driver.mouseMoveTo({x: videoCenter.x, y: videoCenter.y + 180});
      await driver.longClick(videoCenter.x, videoCenter.y + 180);
      await Utils.sleep(1000);
      await windowSnap.snapShot(pageName + '_02');
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_AI_0230
     * @tc.name    SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_AI_0230
     * @tc.desc    Manually configured: video component's ImageAnalyzerConfig as undefined
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_AI_0230', 0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_AI_0230';
      let pageName = 'UIComponentMediaVideoAI023';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentMediaVideoAI/' + pageName);
      await Utils.sleep(1000);
      let driver: Driver = Driver.create();
      let startButton: Component = await driver.findComponent(ON.id(pageName + '_003'));
      let pauseButton: Component = await driver.findComponent(ON.id(pageName + '_004'));
      let video: Component = await driver.findComponent(ON.id(pageName + '_005'));
      await startButton.click();
      let videoCenter = await video.getBoundsCenter();
      Logger.info(`[${TAG}]`, `videoCenter: X = ${videoCenter.x}, Y = ${videoCenter.y}`);
      await Utils.sleep(8000);
      await pauseButton.click();
      await driver.mouseMoveTo({x: videoCenter.x, y: videoCenter.y});
      await driver.longClick(videoCenter.x, videoCenter.y);
      await Utils.sleep(1000);
      await windowSnap.snapShot(pageName + '_01');
      await driver.mouseMoveTo({x: videoCenter.x, y: videoCenter.y + 180});
      await driver.longClick(videoCenter.x, videoCenter.y + 180);
      await Utils.sleep(1000);
      await windowSnap.snapShot(pageName + '_02');
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_AI_0240
     * @tc.name    SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_AI_0240
     * @tc.desc    Manually configured: video component's ImageAnalyzerConfig as null
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_AI_0240', 0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_AI_0240';
      let pageName = 'UIComponentMediaVideoAI024';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentMediaVideoAI/' + pageName);
      await Utils.sleep(1000);
      let driver: Driver = Driver.create();
      let startButton: Component = await driver.findComponent(ON.id(pageName + '_003'));
      let pauseButton: Component = await driver.findComponent(ON.id(pageName + '_004'));
      let video: Component = await driver.findComponent(ON.id(pageName + '_005'));
      await startButton.click();
      let videoCenter = await video.getBoundsCenter();
      Logger.info(`[${TAG}]`, `videoCenter: X = ${videoCenter.x}, Y = ${videoCenter.y}`);
      await Utils.sleep(8000);
      await pauseButton.click();
      await driver.mouseMoveTo({x: videoCenter.x, y: videoCenter.y});
      await driver.longClick(videoCenter.x, videoCenter.y);
      await Utils.sleep(1000);
      await windowSnap.snapShot(pageName + '_01');
      await driver.mouseMoveTo({x: videoCenter.x, y: videoCenter.y + 180});
      await driver.longClick(videoCenter.x, videoCenter.y + 180);
      await Utils.sleep(1000);
      await windowSnap.snapShot(pageName + '_02');
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_AI_0250
     * @tc.name    SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_AI_0250
     * @tc.desc    Manually configured: video component's ImageAnalyzerConfig as null
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_AI_0250', 0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_AI_0250';
      let pageName = 'UIComponentMediaVideoAI025';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentMediaVideoAI/' + pageName);
      await Utils.sleep(1000);
      let driver: Driver = Driver.create();
      let startButton: Component = await driver.findComponent(ON.id(pageName + '_003'));
      let pauseButton: Component = await driver.findComponent(ON.id(pageName + '_004'));
      let video: Component = await driver.findComponent(ON.id(pageName + '_005'));
      await startButton.click();
      let videoCenter = await video.getBoundsCenter();
      Logger.info(`[${TAG}]`, `videoCenter: X = ${videoCenter.x}, Y = ${videoCenter.y}`);
      await Utils.sleep(8000);
      await pauseButton.click();
      await driver.mouseMoveTo({x: videoCenter.x, y: videoCenter.y});
      await driver.longClick(videoCenter.x, videoCenter.y);
      await Utils.sleep(1000);
      await windowSnap.snapShot(pageName + '_01');
      await driver.mouseMoveTo({x: videoCenter.x, y: videoCenter.y + 180});
      await driver.longClick(videoCenter.x, videoCenter.y + 180);
      await Utils.sleep(1000);
      await windowSnap.snapShot(pageName + '_02');
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_AI_0270
     * @tc.name    SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_AI_0270
     * @tc.desc    While the video component is paused, drag the progress bar to the middle position. After releasing, play the video and immediately pause it again
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_AI_0270', 0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_AI_0270';
      let pageName = 'UIComponentMediaVideoAI027';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentMediaVideoAI/' + pageName);
      await Utils.sleep(1000);
      let driver: Driver = Driver.create();
      let startButton: Component = await driver.findComponent(ON.id(pageName + '_003'));
      let pauseButton: Component = await driver.findComponent(ON.id(pageName + '_004'));
      let video: Component = await driver.findComponent(ON.id(pageName + '_005'));
      let dragButton: Component = await driver.findComponent(ON.id(pageName + '_006'));
      await startButton.click();
      let videoCenter = await video.getBoundsCenter();
      Logger.info(`[${TAG}]`, `videoCenter: X = ${videoCenter.x}, Y = ${videoCenter.y}`);
      await Utils.sleep(8000);
      await pauseButton.click();
      await driver.mouseMoveTo({x: videoCenter.x, y: videoCenter.y});
      await driver.longClick(videoCenter.x, videoCenter.y);
      await Utils.sleep(1000);
      await windowSnap.snapShot(pageName + '_01');
      await driver.mouseMoveTo({x: videoCenter.x, y: videoCenter.y + 180});
      await driver.longClick(videoCenter.x, videoCenter.y + 180);
      await Utils.sleep(1000);
      await windowSnap.snapShot(pageName + '_02');
      await dragButton.click();
      await Utils.sleep(1000);
      await startButton.click();
      await Utils.sleep(200);
      await pauseButton.click();
      await driver.mouseMoveTo({x: videoCenter.x, y: videoCenter.y});
      await driver.longClick(videoCenter.x, videoCenter.y);
      await Utils.sleep(1000);
      await windowSnap.snapShot(pageName + '_03');
      await driver.mouseMoveTo({x: videoCenter.x, y: videoCenter.y + 180});
      await driver.longClick(videoCenter.x, videoCenter.y + 180);
      await Utils.sleep(1000);
      await windowSnap.snapShot(pageName + '_04');
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_AI_0280
     * @tc.name    SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_AI_0280
     * @tc.desc    While the video component is in idle state (not playing), drag the progress bar to the mid-point. After releasing, verify that playback starts automatically and then immediately pauses again
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_AI_0280', 0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_AI_0280';
      let pageName = 'UIComponentMediaVideoAI027';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentMediaVideoAI/' + pageName);
      await Utils.sleep(1000);
      let driver: Driver = Driver.create();
      let startButton: Component = await driver.findComponent(ON.id(pageName + '_003'));
      let pauseButton: Component = await driver.findComponent(ON.id(pageName + '_004'));
      let video: Component = await driver.findComponent(ON.id(pageName + '_005'));
      let dragButton: Component = await driver.findComponent(ON.id(pageName + '_006'));
      let videoCenter = await video.getBoundsCenter();
      Logger.info(`[${TAG}]`, `videoCenter: X = ${videoCenter.x}, Y = ${videoCenter.y}`);
      await dragButton.click();
      await Utils.sleep(1000);
      await startButton.click();
      await Utils.sleep(200);
      await pauseButton.click();
      await driver.mouseMoveTo({x: videoCenter.x, y: videoCenter.y});
      await driver.longClick(videoCenter.x, videoCenter.y);
      await Utils.sleep(1000);
      await windowSnap.snapShot(pageName + '_01');
      await driver.mouseMoveTo({x: videoCenter.x, y: videoCenter.y + 180});
      await driver.longClick(videoCenter.x, videoCenter.y + 180);
      await Utils.sleep(1000);
      await windowSnap.snapShot(pageName + '_02');
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_AI_0290
     * @tc.name    SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_AI_0290
     * @tc.desc    Play the video until it stops naturally, with AI recognition not available during playback
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_AI_0290', 0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_AI_0290';
      let pageName = 'UIComponentMediaVideoAI029';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentMediaVideoAI/' + pageName);
      await Utils.sleep(1000);
      let driver: Driver = Driver.create();
      let startButton: Component = await driver.findComponent(ON.id(pageName + '_003'));
      let pauseButton: Component = await driver.findComponent(ON.id(pageName + '_004'));
      let video: Component = await driver.findComponent(ON.id(pageName + '_005'));
      let changeSrcButton: Component = await driver.findComponent(ON.id(pageName + '_006'));
      let videoCenter = await video.getBoundsCenter();
      Logger.info(`[${TAG}]`, `videoCenter: X = ${videoCenter.x}, Y = ${videoCenter.y}`);
      await changeSrcButton.click();
      await Utils.sleep(1000);
      await startButton.click();
      let commonEventSubscribeInfo: commonEventManager.CommonEventSubscribeInfo = {
        events: ["videoFinish"]
      };
      let subscriber : commonEventManager.CommonEventSubscriber;
      await commonEventManager.createSubscriber(commonEventSubscribeInfo)
        .then((commonEventSubscriber: commonEventManager.CommonEventSubscriber) => {
          subscriber = commonEventSubscriber;
          Logger.info(`[${TAG}]`, `createSubscriber succeed.`);
          commonEventManager.subscribe(subscriber,async (err: BusinessError, commonEventData: commonEventManager.CommonEventPublishData) => {
            Logger.info(`[${TAG}]`, `subscribe callback. Gained commonEventData: ${JSON.stringify(commonEventData)}`);
            await driver.mouseMoveTo({x: videoCenter.x, y: videoCenter.y});
            await driver.longClick(videoCenter.x, videoCenter.y);
            await Utils.sleep(1000);
            await windowSnap.snapShot(pageName + '_01');
            await driver.mouseMoveTo({x: videoCenter.x, y: videoCenter.y + 180});
            await driver.longClick(videoCenter.x, videoCenter.y + 180);
            await Utils.sleep(1000);
            await windowSnap.snapShot(pageName + '_02');
            commonEventManager.unsubscribe(commonEventSubscriber, (err, data) => {
              hilog.info(0x0000, TAG, "[%{public}s] unsubscribe callback. err: %{public}s, data: %{public}s", TAG, JSON.stringify(err), JSON.stringify(data));
              done();
            });
          })
        })
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_AI_0300
     * @tc.name    SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_AI_0300
     * @tc.desc    After pausing the video, dynamically change objectFit to Contain, Cover, Auto, Fill, ScaleDown, and None, then observe the AI recognition results for each mode
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_AI_0300', 0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_AI_0300';
      let pageName = 'UIComponentMediaVideoAI030';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentMediaVideoAI/' + pageName);
      await Utils.sleep(1000);
      let driver: Driver = Driver.create();
      let startButton: Component = await driver.findComponent(ON.id(pageName + '_003'));
      let pauseButton: Component = await driver.findComponent(ON.id(pageName + '_004'));
      let video: Component = await driver.findComponent(ON.id(pageName + '_005'));
      let containButton: Component = await driver.findComponent(ON.id(pageName + '_006'));
      let coverButton: Component = await driver.findComponent(ON.id(pageName + '_007'));
      let autoButton: Component = await driver.findComponent(ON.id(pageName + '_008'));
      let fillButton: Component = await driver.findComponent(ON.id(pageName + '_009'));
      let scaleDownButton: Component = await driver.findComponent(ON.id(pageName + '_010'));
      let noneButton: Component = await driver.findComponent(ON.id(pageName + '_011'));
      let videoCenter = await video.getBoundsCenter();
      Logger.info(`[${TAG}]`, `videoCenter: X = ${videoCenter.x}, Y = ${videoCenter.y}`);
      await startButton.click();
      await Utils.sleep(8000);
      await pauseButton.click();
      await driver.mouseMoveTo({x: videoCenter.x, y: videoCenter.y});
      await driver.longClick(videoCenter.x, videoCenter.y);
      await Utils.sleep(1000);
      await windowSnap.snapShot(pageName + '_01');
      await driver.mouseMoveTo({x: videoCenter.x, y: videoCenter.y + 180});
      await driver.longClick(videoCenter.x, videoCenter.y + 180);
      await Utils.sleep(1000);
      await windowSnap.snapShot(pageName + '_02');
      await containButton.click();
      await Utils.sleep(500);
      await windowSnap.snapShot(pageName + '_03');
      await coverButton.click();
      await Utils.sleep(500);
      await windowSnap.snapShot(pageName + '_04');
      await autoButton.click();
      await Utils.sleep(500);
      await windowSnap.snapShot(pageName + '_05');
      await fillButton.click();
      await Utils.sleep(500);
      await windowSnap.snapShot(pageName + '_06');
      await scaleDownButton.click();
      await Utils.sleep(500);
      await windowSnap.snapShot(pageName + '_07');
      await noneButton.click();
      await Utils.sleep(500);
      await windowSnap.snapShot(pageName + '_08');
      await coverButton.click();
      await Utils.sleep(500);
      await startButton.click();
      await Utils.sleep(1000);
      await pauseButton.click();
      await driver.mouseMoveTo({x: videoCenter.x, y: videoCenter.y});
      await driver.longClick(videoCenter.x, videoCenter.y);
      await Utils.sleep(1000);
      await windowSnap.snapShot(pageName + '_09');
      await driver.mouseMoveTo({x: videoCenter.x, y: videoCenter.y + 180});
      await driver.longClick(videoCenter.x, videoCenter.y + 180);
      await Utils.sleep(1000);
      await windowSnap.snapShot(pageName + '_10');
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_AI_0310
     * @tc.name    SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_AI_0310
     * @tc.desc    AI recognition functions normally when the video is paused in full-screen mode
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_AI_0310', 0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_AI_0310';
      let pageName = 'UIComponentMediaVideoAI031';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentMediaVideoAI/' + pageName);
      await Utils.sleep(1000);
      let driver: Driver = Driver.create();
      let startButton: Component = await driver.findComponent(ON.id(pageName + '_003'));
      let pauseButton: Component = await driver.findComponent(ON.id(pageName + '_004'));
      let video: Component = await driver.findComponent(ON.id(pageName + '_005'));
      let fullScreenButton: Component = await driver.findComponent(ON.id(pageName + '_006'));
      let videoCenter = await video.getBoundsCenter();
      Logger.info(`[${TAG}]`, `videoCenter: X = ${videoCenter.x}, Y = ${videoCenter.y}`);
      await startButton.click();
      await Utils.sleep(8000);
      await pauseButton.click();
      await fullScreenButton.click();
      await Utils.sleep(500);
      await driver.mouseMoveTo({x: videoCenter.x, y: videoCenter.y});
      await driver.longClick(videoCenter.x, videoCenter.y);
      await Utils.sleep(1000);
      await windowSnap.snapShot(pageName + '_01');
      await driver.mouseMoveTo({x: videoCenter.x, y: videoCenter.y + 300});
      await driver.longClick(videoCenter.x, videoCenter.y + 300);
      await Utils.sleep(1000);
      await windowSnap.snapShot(pageName + '_02');
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_AI_0320
     * @tc.name    SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_AI_0320
     * @tc.desc    Repeatedly switch between full-screen and windowed modes to verify proper overlay destruction and consistent AI recognition performance
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_AI_0320', 0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_AI_0320';
      let pageName = 'UIComponentMediaVideoAI032';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentMediaVideoAI/' + pageName);
      await Utils.sleep(1000);
      let driver: Driver = Driver.create();
      let startButton: Component = await driver.findComponent(ON.id(pageName + '_003'));
      let pauseButton: Component = await driver.findComponent(ON.id(pageName + '_004'));
      let video: Component = await driver.findComponent(ON.id(pageName + '_005'));
      let SlowSwitchFullScreenButton: Component = await driver.findComponent(ON.id(pageName + '_006'));
      let switchFullScreenButton: Component = await driver.findComponent(ON.id(pageName + '_007'));
      let videoCenter = await video.getBoundsCenter();
      Logger.info(`[${TAG}]`, `videoCenter: X = ${videoCenter.x}, Y = ${videoCenter.y}`);
      await startButton.click();
      await Utils.sleep(8000);
      await pauseButton.click();
      await SlowSwitchFullScreenButton.click();
      await Utils.sleep(500);
      await driver.mouseMoveTo({x: videoCenter.x, y: videoCenter.y});
      await driver.longClick(videoCenter.x, videoCenter.y);
      await Utils.sleep(1000);
      await windowSnap.snapShot(pageName + '_01');
      await driver.mouseMoveTo({x: videoCenter.x, y: videoCenter.y + 300});
      await driver.longClick(videoCenter.x, videoCenter.y + 300);
      await Utils.sleep(1000);
      await windowSnap.snapShot(pageName + '_02');
      await Utils.sleep(3000);
      await switchFullScreenButton.click();
      await Utils.sleep(1500);
      await driver.mouseMoveTo({x: videoCenter.x, y: videoCenter.y});
      await driver.longClick(videoCenter.x, videoCenter.y);
      await Utils.sleep(1000);
      await windowSnap.snapShot(pageName + '_09');
      await driver.mouseMoveTo({x: videoCenter.x, y: videoCenter.y + 180});
      await driver.longClick(videoCenter.x, videoCenter.y + 180);
      await Utils.sleep(1000);
      await windowSnap.snapShot(pageName + '_10');
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

  })
}