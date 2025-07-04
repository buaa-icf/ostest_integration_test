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
import { describe, beforeAll, beforeEach, afterEach, afterAll, it, expect, Level } from '@ohos/hypium'
import Settings from '../model/Settings'
import windowSnap from '../model/snapShot'
import Logger from '../model/Logger'
import Utils from '../model/Utils'
import { Driver, ON, Component } from '@ohos.UiTest'


export default function ActionEventCommonEventFrameNodeGestureTest() {
  describe('ActionEventCommonEventFrameNodeGestureTest', () => {
    afterEach(async (done: Function) => {
      if (Settings.windowClass == undefined) {
        return;
      }

      Settings.windowClass.destroyWindow((err) => {
        if (err.code) {
          Logger.error('TEST', `Failed to destroy the window. Cause : ${JSON.stringify(err)}`)
          return;
        }
        Logger.info('TEST', `Succeeded in destroy the window.`);
      })
      await Utils.sleep(1000);
      done()
    })

    /*
     * @tc.number  SUB_ACE_ACTION_EVENT_COMMONEVENT_FRAMENODE_GESTURE_002
     * @tc.name    SUB_ACE_ACTION_EVENT_COMMONEVENT_FRAMENODE_GESTURE_002
     * @tc.level   0
     */
    it('SUB_ACE_ACTION_EVENT_COMMONEVENT_FRAMENODE_GESTURE_002', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_ACTION_EVENT_COMMONEVENT_FRAMENODE_GESTURE_002 start.`);
      Settings.createWindow("testability/pages/ActionEventCommonEventFrameNodeGesture/ActionEventCommonEventFrameNodeGesture001");
      await Utils.sleep(1000);
      let driver: Driver = Driver.create();
      let button: Component = await driver.findComponent(ON.id('buttonA'));
      await button.click();
      await Utils.sleep(2000);
      windowSnap.snapShot('ActionEventCommonEventFrameNodeGesture002');
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_ACTION_EVENT_COMMONEVENT_FRAMENODE_GESTURE_002 finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_ACTION_EVENT_COMMONEVENT_FRAMENODE_GESTURE_001
     * @tc.name    SUB_ACE_ACTION_EVENT_COMMONEVENT_FRAMENODE_GESTURE_001
     * @tc.level   0
     */
    it('SUB_ACE_ACTION_EVENT_COMMONEVENT_FRAMENODE_GESTURE_001', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_ACTION_EVENT_COMMONEVENT_FRAMENODE_GESTURE_001 start.`);
      Settings.createWindow("testability/pages/ActionEventCommonEventFrameNodeGesture/ActionEventCommonEventFrameNodeGesture002");
      await Utils.sleep(1000);
      let driver: Driver = Driver.create();
      let button: Component = await driver.findComponent(ON.id('buttonA'));
      await button.doubleClick();
      await Utils.sleep(2000);
      windowSnap.snapShot('ActionEventCommonEventFrameNodeGesture001');
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_ACTION_EVENT_COMMONEVENT_FRAMENODE_GESTURE_001 finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_ACTION_EVENT_COMMONEVENT_FRAMENODE_GESTURE_004
     * @tc.name    SUB_ACE_ACTION_EVENT_COMMONEVENT_FRAMENODE_GESTURE_004
     * @tc.level   0
     */
    it('SUB_ACE_ACTION_EVENT_COMMONEVENT_FRAMENODE_GESTURE_004', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_ACTION_EVENT_COMMONEVENT_FRAMENODE_GESTURE_004 start.`);
      Settings.createWindow("testability/pages/ActionEventCommonEventFrameNodeGesture/ActionEventCommonEventFrameNodeGesture003");
      await Utils.sleep(1000);
      let driver: Driver = Driver.create();
      let button: Component = await driver.findComponent(ON.id('buttonA'));
      await button.click();
      await Utils.sleep(2000);
      windowSnap.snapShot('ActionEventCommonEventFrameNodeGesture004');
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_ACTION_EVENT_COMMONEVENT_FRAMENODE_GESTURE_004 finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_ACTION_EVENT_COMMONEVENT_FRAMENODE_GESTURE_016
     * @tc.name    SUB_ACE_ACTION_EVENT_COMMONEVENT_FRAMENODE_GESTURE_016
     * @tc.level   0
     */
    it('SUB_ACE_ACTION_EVENT_COMMONEVENT_FRAMENODE_GESTURE_016', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_ACTION_EVENT_COMMONEVENT_FRAMENODE_GESTURE_016 start.`);
      Settings.createWindow("testability/pages/ActionEventCommonEventFrameNodeGesture/ActionEventCommonEventFrameNodeGesture005");
      await Utils.sleep(1000);
      let driver: Driver = Driver.create();
      let buttonA: Component = await driver.findComponent(ON.id('buttonA'));
      await buttonA.click();
      await buttonA.longClick();
      await Utils.sleep(2000);
      windowSnap.snapShot('ActionEventCommonEventFrameNodeGesture016');
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_ACTION_EVENT_COMMONEVENT_FRAMENODE_GESTURE_016 finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_ACTION_EVENT_COMMONEVENT_FRAMENODE_GESTURE_012
     * @tc.name    SUB_ACE_ACTION_EVENT_COMMONEVENT_FRAMENODE_GESTURE_012
     * @tc.level   0
     */
    it('SUB_ACE_ACTION_EVENT_COMMONEVENT_FRAMENODE_GESTURE_012', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_ACTION_EVENT_COMMONEVENT_FRAMENODE_GESTURE_012 start.`);
      Settings.createWindow("testability/pages/ActionEventCommonEventFrameNodeGesture/ActionEventCommonEventFrameNodeGesture006");
      await Utils.sleep(1000);
      let driver: Driver = Driver.create();
      let buttonA: Component = await driver.findComponent(ON.id('buttonA'));
      await buttonA.longClick();
      await Utils.sleep(2000);
      windowSnap.snapShot('ActionEventCommonEventFrameNodeGesture012');
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_ACTION_EVENT_COMMONEVENT_FRAMENODE_GESTURE_012 finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_ACTION_EVENT_COMMONEVENT_FRAMENODE_GESTURE_014
     * @tc.name    SUB_ACE_ACTION_EVENT_COMMONEVENT_FRAMENODE_GESTURE_014
     * @tc.level   0
     */
    it('SUB_ACE_ACTION_EVENT_COMMONEVENT_FRAMENODE_GESTURE_014', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_ACTION_EVENT_COMMONEVENT_FRAMENODE_GESTURE_014 start.`);
      Settings.createWindow("testability/pages/ActionEventCommonEventFrameNodeGesture/ActionEventCommonEventFrameNodeGesture007");
      await Utils.sleep(1000);
      let driver: Driver = Driver.create();
      let buttonA: Component = await driver.findComponent(ON.id('buttonA'));
      await buttonA.longClick();
      await Utils.sleep(2000);
      windowSnap.snapShot('ActionEventCommonEventFrameNodeGesture014');
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_ACTION_EVENT_COMMONEVENT_FRAMENODE_GESTURE_014 finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_ACTION_EVENT_COMMONEVENT_FRAMENODE_GESTURE_011
     * @tc.name    SUB_ACE_ACTION_EVENT_COMMONEVENT_FRAMENODE_GESTURE_011
     * @tc.level   0
     */
    it('SUB_ACE_ACTION_EVENT_COMMONEVENT_FRAMENODE_GESTURE_011', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_ACTION_EVENT_COMMONEVENT_FRAMENODE_GESTURE_011 start.`);
      Settings.createWindow("testability/pages/ActionEventCommonEventFrameNodeGesture/ActionEventCommonEventFrameNodeGesture008");
      await Utils.sleep(1000);
      let driver: Driver = Driver.create();
      let buttonA: Component = await driver.findComponent(ON.id('buttonA'));
      await buttonA.longClick();
      await Utils.sleep(2000);
      windowSnap.snapShot('ActionEventCommonEventFrameNodeGesture011');
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_ACTION_EVENT_COMMONEVENT_FRAMENODE_GESTURE_011 finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_ACTION_EVENT_COMMONEVENT_FRAMENODE_GESTURE_013
     * @tc.name    SUB_ACE_ACTION_EVENT_COMMONEVENT_FRAMENODE_GESTURE_013
     * @tc.level   0
     */
    it('SUB_ACE_ACTION_EVENT_COMMONEVENT_FRAMENODE_GESTURE_013', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_ACTION_EVENT_COMMONEVENT_FRAMENODE_GESTURE_013 start.`);
      Settings.createWindow("testability/pages/ActionEventCommonEventFrameNodeGesture/ActionEventCommonEventFrameNodeGesture009");
      await Utils.sleep(1000);
      let driver: Driver = Driver.create();
      let buttonA: Component = await driver.findComponent(ON.id('buttonA'));
      await buttonA.longClick();
      await Utils.sleep(2000);
      windowSnap.snapShot('ActionEventCommonEventFrameNodeGesture013');
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_ACTION_EVENT_COMMONEVENT_FRAMENODE_GESTURE_013 finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_ACTION_EVENT_COMMONEVENT_FRAMENODE_GESTURE_015
     * @tc.name    SUB_ACE_ACTION_EVENT_COMMONEVENT_FRAMENODE_GESTURE_015
     * @tc.level   0
     */
    it('SUB_ACE_ACTION_EVENT_COMMONEVENT_FRAMENODE_GESTURE_015', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_ACTION_EVENT_COMMONEVENT_FRAMENODE_GESTURE_015 start.`);
      Settings.createWindow("testability/pages/ActionEventCommonEventFrameNodeGesture/ActionEventCommonEventFrameNodeGesture010");
      await Utils.sleep(1000);
      let driver: Driver = Driver.create();
      let buttonA: Component = await driver.findComponent(ON.id('buttonA'));
      await buttonA.click();
      await buttonA.longClick();
      await Utils.sleep(2000);
      windowSnap.snapShot('ActionEventCommonEventFrameNodeGesture015');
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_ACTION_EVENT_COMMONEVENT_FRAMENODE_GESTURE_015 finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_ACTION_EVENT_COMMONEVENT_FRAMENODE_GESTURE_022
     * @tc.name    SUB_ACE_ACTION_EVENT_COMMONEVENT_FRAMENODE_GESTURE_022
     * @tc.level   0
     */
    it('SUB_ACE_ACTION_EVENT_COMMONEVENT_FRAMENODE_GESTURE_022', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_ACTION_EVENT_COMMONEVENT_FRAMENODE_GESTURE_022 start.`);
      Settings.createWindow("testability/pages/ActionEventCommonEventFrameNodeGesture/ActionEventCommonEventFrameNodeGesture011");
      await Utils.sleep(1000);
      let driver: Driver = Driver.create();
      let screen: Component = await driver.findComponent(ON.id('screen'));
      let point = await screen.getBoundsCenter();
      await driver.fling({x: point.x, y: point.y + 100}, {x: point.x, y: point.y - 100}, 10, 600);
      await Utils.sleep(2000);
      windowSnap.snapShot('ActionEventCommonEventFrameNodeGesture022');
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_ACTION_EVENT_COMMONEVENT_FRAMENODE_GESTURE_022 finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_ACTION_EVENT_COMMONEVENT_FRAMENODE_GESTURE_023
     * @tc.name    SUB_ACE_ACTION_EVENT_COMMONEVENT_FRAMENODE_GESTURE_023
     * @tc.level   0
     */
    it('SUB_ACE_ACTION_EVENT_COMMONEVENT_FRAMENODE_GESTURE_023', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_ACTION_EVENT_COMMONEVENT_FRAMENODE_GESTURE_023 start.`);
      Settings.createWindow("testability/pages/ActionEventCommonEventFrameNodeGesture/ActionEventCommonEventFrameNodeGesture012");
      await Utils.sleep(1000);
      let driver: Driver = Driver.create();
      let screen: Component = await driver.findComponent(ON.id('screen'));
      let point = await screen.getBoundsCenter();
      await driver.fling({x: point.x + 100, y: point.y}, {x: point.x - 100, y: point.y}, 10, 600);
      await Utils.sleep(2000);
      windowSnap.snapShot('ActionEventCommonEventFrameNodeGesture023');
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_ACTION_EVENT_COMMONEVENT_FRAMENODE_GESTURE_023 finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_ACTION_EVENT_COMMONEVENT_FRAMENODE_GESTURE_024
     * @tc.name    SUB_ACE_ACTION_EVENT_COMMONEVENT_FRAMENODE_GESTURE_024
     * @tc.level   0
     */
    it('SUB_ACE_ACTION_EVENT_COMMONEVENT_FRAMENODE_GESTURE_024', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_ACTION_EVENT_COMMONEVENT_FRAMENODE_GESTURE_024 start.`);
      Settings.createWindow("testability/pages/ActionEventCommonEventFrameNodeGesture/ActionEventCommonEventFrameNodeGesture013");
      await Utils.sleep(1000);
      let driver: Driver = Driver.create();
      let screen: Component = await driver.findComponent(ON.id('screen'));
      let point = await screen.getBoundsCenter();
      await driver.fling({x: point.x + 100, y: point.y}, {x: point.x - 100, y: point.y}, 10, 600);
      await driver.fling({x: point.x - 100, y: point.y}, {x: point.x + 100, y: point.y}, 10, 600);
      await Utils.sleep(2000);
      windowSnap.snapShot('ActionEventCommonEventFrameNodeGesture024');
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_ACTION_EVENT_COMMONEVENT_FRAMENODE_GESTURE_024 finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_ACTION_EVENT_COMMONEVENT_FRAMENODE_GESTURE_025
     * @tc.name    SUB_ACE_ACTION_EVENT_COMMONEVENT_FRAMENODE_GESTURE_025
     * @tc.level   0
     */
    it('SUB_ACE_ACTION_EVENT_COMMONEVENT_FRAMENODE_GESTURE_025', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_ACTION_EVENT_COMMONEVENT_FRAMENODE_GESTURE_025 start.`);
      Settings.createWindow("testability/pages/ActionEventCommonEventFrameNodeGesture/ActionEventCommonEventFrameNodeGesture014");
      await Utils.sleep(1000);
      let driver: Driver = Driver.create();
      let screen: Component = await driver.findComponent(ON.id('screen'));
      let point = await screen.getBoundsCenter();
      await driver.fling({x: point.x, y: point.y}, {x: point.x - 100, y: point.y + 100}, 10, 600);
      await Utils.sleep(2000);
      windowSnap.snapShot('ActionEventCommonEventFrameNodeGesture025');
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_ACTION_EVENT_COMMONEVENT_FRAMENODE_GESTURE_025 finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_ACTION_EVENT_COMMONEVENT_FRAMENODE_GESTURE_031
     * @tc.name    SUB_ACE_ACTION_EVENT_COMMONEVENT_FRAMENODE_GESTURE_031
     * @tc.level   0
     */
    it('SUB_ACE_ACTION_EVENT_COMMONEVENT_FRAMENODE_GESTURE_031', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_ACTION_EVENT_COMMONEVENT_FRAMENODE_GESTURE_031 start.`);
      Settings.createWindow("testability/pages/ActionEventCommonEventFrameNodeGesture/ActionEventCommonEventFrameNodeGesture015");
      await Utils.sleep(1000);
      let driver: Driver = Driver.create();
      let screen: Component = await driver.findComponent(ON.id('screen'));
      let point = await screen.getBoundsCenter();
      await driver.fling({x: point.x, y: point.y}, {x: point.x - 100, y: point.y + 100}, 10, 600);
      await Utils.sleep(2000);
      windowSnap.snapShot('ActionEventCommonEventFrameNodeGesture031');
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_ACTION_EVENT_COMMONEVENT_FRAMENODE_GESTURE_031 finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_ACTION_EVENT_COMMONEVENT_FRAMENODE_GESTURE_033
     * @tc.name    SUB_ACE_ACTION_EVENT_COMMONEVENT_FRAMENODE_GESTURE_033
     * @tc.level   0
     */
    it('SUB_ACE_ACTION_EVENT_COMMONEVENT_FRAMENODE_GESTURE_033', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_ACTION_EVENT_COMMONEVENT_FRAMENODE_GESTURE_033 start.`);
      Settings.createWindow("testability/pages/ActionEventCommonEventFrameNodeGesture/ActionEventCommonEventFrameNodeGesture016");
      await Utils.sleep(1000);
      let driver: Driver = Driver.create();
      let screen: Component = await driver.findComponent(ON.id('screen'));
      let point = await screen.getBoundsCenter();
      await driver.fling({x: point.x, y: point.y}, {x: point.x - 100, y: point.y + 100}, 10, 600);
      await Utils.sleep(2000);
      windowSnap.snapShot('ActionEventCommonEventFrameNodeGesture033');
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_ACTION_EVENT_COMMONEVENT_FRAMENODE_GESTURE_033 finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_ACTION_EVENT_COMMONEVENT_FRAMENODE_GESTURE_032
     * @tc.name    SUB_ACE_ACTION_EVENT_COMMONEVENT_FRAMENODE_GESTURE_032
     * @tc.level   0
     */
    it('SUB_ACE_ACTION_EVENT_COMMONEVENT_FRAMENODE_GESTURE_032', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_ACTION_EVENT_COMMONEVENT_FRAMENODE_GESTURE_032 start.`);
      Settings.createWindow("testability/pages/ActionEventCommonEventFrameNodeGesture/ActionEventCommonEventFrameNodeGesture017");
      await Utils.sleep(1000);
      let driver: Driver = Driver.create();
      let screen: Component = await driver.findComponent(ON.id('screen'));
      let point = await screen.getBoundsCenter();
      await driver.fling({x: point.x, y: point.y}, {x: point.x - 100, y: point.y}, 10, 600);
      await Utils.sleep(2000);
      windowSnap.snapShot('ActionEventCommonEventFrameNodeGesture032');
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_ACTION_EVENT_COMMONEVENT_FRAMENODE_GESTURE_032 finish.`);
      done();
    });
  })
}
