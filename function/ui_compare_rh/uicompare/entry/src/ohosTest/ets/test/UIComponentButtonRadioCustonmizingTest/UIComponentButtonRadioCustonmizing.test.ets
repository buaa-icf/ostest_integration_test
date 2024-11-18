/*
 * Copyright (C) 2024 Huawei Device Co., Ltd.
 * Licensed under the Apache License, Version 2.0 (the 'License')
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an 'AS IS' BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

import { afterEach, describe, it } from '@ohos/hypium'
import Settings from '../model/Settings'
import windowSnap from '../model/snapShot'
import Logger from '../model/Logger'
import Utils from '../model/Utils'
import { Driver, ON } from '@ohos.UiTest'
import { KeyCode } from '@kit.InputKit'
import { BusinessError, screenLock } from '@kit.BasicServicesKit'

/*
 * Settings.createWindow(config.url)：
 *  创建窗口，更改窗口基本配置，更改方式详见model/Settings createWindow方法
 *
 * windowSnap.snapShot(globalThis.context)：
 *  窗口截屏&图片文件保存，存储在设备端
 *  存储文件固定，单挑用例执行后覆盖，用于自动化UI对比
 *  支持调试更改文件名为时间戳格式，更改model/snapShot createAndGetFile方法 注释L35，放开L32，L33
 *
 * Logger日志使用方法：
 *  import Logger form './model/Logger'
 *  Logger.info(TAG,`config = ${config}, err = ${JSON.stringify(exception)}`)
 * */

export default function UIComponentButtonRadioCustonmizing() {

  describe('UIComponentButtonRadioCustonmizing', () => {


    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_BUTTON_RADIO_CUSTONMIZING_003
     * @tc.name      SUB_ACE_UI_COMPONENT_BUTTON_RADIO_CUSTONMIZING_003
     * @tc.desc      Custom buildRadio, in Raido value passed in the string "Radio", enable set to false; value is empty, and the radio component is not clickable
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_RADIO_CUSTONMIZING_003', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_RADIO_CUSTONMIZING_003 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonRadioCustonmizing/UIComponentButtonRadioCustonmizing003");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let ButtonCom = await driver.findComponent(ON.id("UIComponentButtonRadioCustonmizing0033"));
      let pointButtonCenter = await ButtonCom.getBoundsCenter();
      await driver.click(pointButtonCenter.x, pointButtonCenter.y);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_RADIO_CUSTONMIZING_003 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_BUTTON_RADIO_CUSTONMIZING_008
     * @tc.name      SUB_ACE_UI_COMPONENT_BUTTON_RADIO_CUSTONMIZING_008
     * @tc.desc      Custom buildRadio, set triggerChange to nul
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_RADIO_CUSTONMIZING_008', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_RADIO_CUSTONMIZING_008 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonRadioCustonmizing/UIComponentButtonRadioCustonmizing008");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let ButtonCom = await driver.findComponent(ON.id("UIComponentButtonRadioCustonmizing0082"));
      let pointButtonCenter = await ButtonCom.getBoundsCenter();
      await driver.click(pointButtonCenter.x, pointButtonCenter.y);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_RADIO_CUSTONMIZING_008 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_BUTTON_RADIO_CUSTONMIZING_002
     * @tc.name      SUB_ACE_UI_COMPONENT_BUTTON_RADIO_CUSTONMIZING_002
     * @tc.desc      Custom buildRadio, in Radio value is passed to the string "",checked:false,value is displayed as empty, radio is not selected
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_RADIO_CUSTONMIZING_002', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_RADIO_CUSTONMIZING_002 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonRadioCustonmizing/UIComponentButtonRadioCustonmizing002");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let ButtonCom = await driver.findComponent(ON.id("UIComponentButtonRadioCustonmizing0022"));
      let pointButtonCenter = await ButtonCom.getBoundsCenter();
      await driver.click(pointButtonCenter.x, pointButtonCenter.y);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_RADIO_CUSTONMIZING_002 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_BUTTON_RADIO_CUSTONMIZING_006
     * @tc.name      SUB_ACE_UI_COMPONENT_BUTTON_RADIO_CUSTONMIZING_006
     * @tc.desc      To customize buildRadio, use triggerChange to select the status change
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_RADIO_CUSTONMIZING_006', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_RADIO_CUSTONMIZING_006 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonRadioCustonmizing/UIComponentButtonRadioCustonmizing006");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let ButtonCom = await driver.findComponent(ON.id("UIComponentButtonRadioCustonmizing0066"));
      let pointButtonCenter = await ButtonCom.getBoundsCenter();
      await driver.click(pointButtonCenter.x, pointButtonCenter.y);
      await Utils.sleep(3000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_RADIO_CUSTONMIZING_006 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_BUTTON_RADIO_CUSTONMIZING_009
     * @tc.name      SUB_ACE_UI_COMPONENT_BUTTON_RADIO_CUSTONMIZING_009
     * @tc.desc      Custom buildRadio, triggerChange is set to undefined
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_RADIO_CUSTONMIZING_009', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_RADIO_CUSTONMIZING_009 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonRadioCustonmizing/UIComponentButtonRadioCustonmizing009");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let ButtonCom = await driver.findComponent(ON.id("UIComponentButtonRadioCustonmizing0092"));
      let pointButtonCenter = await ButtonCom.getBoundsCenter();
      await driver.click(pointButtonCenter.x, pointButtonCenter.y);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_RADIO_CUSTONMIZING_009 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_BUTTON_RADIO_CUSTONMIZING_001
     * @tc.name      SUB_ACE_UI_COMPONENT_BUTTON_RADIO_CUSTONMIZING_001
     * @tc.desc      Custom buildRadio,value passed the string "Radio1", checked: true, value can be displayed normally, radio is clicked state
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_RADIO_CUSTONMIZING_001', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_RADIO_CUSTONMIZING_001 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonRadioCustonmizing/UIComponentButtonRadioCustonmizing001");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let ButtonCom = await driver.findComponent(ON.id("UIComponentButtonRadioCustonmizing0010"));
      let pointButtonCenter = await ButtonCom.getBoundsCenter();
      await driver.click(pointButtonCenter.x, pointButtonCenter.y);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_RADIO_CUSTONMIZING_001 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_BUTTON_RADIO_CUSTONMIZING_007
     * @tc.name      SUB_ACE_UI_COMPONENT_BUTTON_RADIO_CUSTONMIZING_007
     * @tc.desc      Custom buildRadio, using triggerChange, set onchange events to radio, triggerChange can trigger onchange
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_RADIO_CUSTONMIZING_007', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_RADIO_CUSTONMIZING_007 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonRadioCustonmizing/UIComponentButtonRadioCustonmizing007");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let buttonCom = await driver.findComponent(ON.id("UIComponentButtonRadioCustonmizing00761"));
      let circleCom = await driver.findComponent(ON.id("UIComponentButtonRadioCustonmizing00760"));
      let pointButtonCenter = await buttonCom.getBoundsCenter();
      await driver.click(pointButtonCenter.x, pointButtonCenter.y);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      await circleCom.click();
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_RADIO_CUSTONMIZING_007 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_BUTTON_RADIO_CUSTONMIZING_005
     * @tc.name      SUB_ACE_UI_COMPONENT_BUTTON_RADIO_CUSTONMIZING_005
     * @tc.desc      Custom buildRadio, value is passed undefined in Radio,checked: undefined value is displayed as empty, radio component is not selected medium
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_RADIO_CUSTONMIZING_005', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_RADIO_CUSTONMIZING_005 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonRadioCustonmizing/UIComponentButtonRadioCustonmizing005");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let buttonCom = await driver.findComponent(ON.id("UIComponentButtonRadioCustonmizing0055"));
      let pointButtonCenter = await buttonCom.getBoundsCenter();
      await driver.click(pointButtonCenter.x, pointButtonCenter.y);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_RADIO_CUSTONMIZING_005 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_BUTTON_RADIO_CUSTONMIZING_004
     * @tc.name      SUB_ACE_UI_COMPONENT_BUTTON_RADIO_CUSTONMIZING_004
     * @tc.desc      Custom buildRadio,Radio value passed to null checked:null; value is empty and the radio component is unchecked
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_RADIO_CUSTONMIZING_004', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_RADIO_CUSTONMIZING_004 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonRadioCustonmizing/UIComponentButtonRadioCustonmizing004");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let buttonCom = await driver.findComponent(ON.id("UIComponentButtonRadioCustonmizing0044"));
      let pointButtonCenter = await buttonCom.getBoundsCenter();
      await driver.click(pointButtonCenter.x, pointButtonCenter.y);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_RADIO_CUSTONMIZING_004 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_BUTTON_RADIO_CUSTONMIZING_012
     * @tc.name      SUB_ACE_UI_COMPONENT_BUTTON_RADIO_CUSTONMIZING_012
     * @tc.desc      Custom buildRadio, not set
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_RADIO_CUSTONMIZING_012', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_RADIO_CUSTONMIZING_012 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonRadioCustonmizing/UIComponentButtonRadioCustonmizing012");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let buttonCom = await driver.findComponent(ON.id("UIComponentButtonRadioCustonmizing0120"));
      let pointButtonCenter = await buttonCom.getBoundsCenter();
      await driver.click(pointButtonCenter.x, pointButtonCenter.y);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_RADIO_CUSTONMIZING_012 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_BUTTON_RADIO_CUSTONMIZING_010
     * @tc.name      SUB_ACE_UI_COMPONENT_BUTTON_RADIO_CUSTONMIZING_010
     * @tc.desc      Custom buildRadio, contentModifier set to undefined
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_RADIO_CUSTONMIZING_010', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_RADIO_CUSTONMIZING_010 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonRadioCustonmizing/UIComponentButtonRadioCustonmizing010");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let buttonCom = await driver.findComponent(ON.id("UIComponentButtonRadioCustonmizing0100"));
      let pointButtonCenter = await buttonCom.getBoundsCenter();
      await driver.click(pointButtonCenter.x, pointButtonCenter.y);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_RADIO_CUSTONMIZING_010 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_BUTTON_RADIO_CUSTONMIZING_011
     * @tc.name      SUB_ACE_UI_COMPONENT_BUTTON_RADIO_CUSTONMIZING_011
     * @tc.desc      Custom buildRadio, contentModifier set to null
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_RADIO_CUSTONMIZING_011', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_RADIO_CUSTONMIZING_011 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonRadioCustonmizing/UIComponentButtonRadioCustonmizing011");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let buttonCom = await driver.findComponent(ON.id("UIComponentButtonRadioCustonmizing0110"));
      let pointButtonCenter = await buttonCom.getBoundsCenter();
      await driver.click(pointButtonCenter.x, pointButtonCenter.y);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_RADIO_CUSTONMIZING_011 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_BUTTON_RADIO_CUSTONMIZING_017
     * @tc.name      SUB_ACE_UI_COMPONENT_BUTTON_RADIO_CUSTONMIZING_017
     * @tc.desc      Call contentModifer twice for the last setting to take effect
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_RADIO_CUSTONMIZING_017', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_RADIO_CUSTONMIZING_017 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonRadioCustonmizing/UIComponentButtonRadioCustonmizing017");
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_RADIO_CUSTONMIZING_017 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_BUTTON_RADIO_CUSTONMIZING_016
     * @tc.name      SUB_ACE_UI_COMPONENT_BUTTON_RADIO_CUSTONMIZING_016
     * @tc.desc      Custom buildRadio, verify that the Radio component switches the program to the table and back after the program starts, and the program continues as normal
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_RADIO_CUSTONMIZING_016', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_RADIO_CUSTONMIZING_016 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonRadioCustonmizing/UIComponentButtonRadioCustonmizing016");
      let driver: Driver = Driver.create();
      await Utils.sleep(5000);
      let currentWindow = await Settings.windowClass;
      if (currentWindow) {
        await currentWindow.hide();
        await driver.triggerKey(KeyCode.KEYCODE_HOME);
        await Utils.sleep(2000);
        await currentWindow.showWindow();
      }
      await Utils.sleep(3000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_RADIO_CUSTONMIZING_016 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_BUTTON_RADIO_CUSTONMIZING_016
     * @tc.name      SUB_ACE_UI_COMPONENT_BUTTON_RADIO_CUSTONMIZING_016
     * @tc.desc      Custom buildRadio to verify how the Radio component looks when the screen is lit up after the breath screen
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_RADIO_CUSTONMIZING_013', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_RADIO_CUSTONMIZING_013 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonRadioCustonmizing/UIComponentButtonRadioCustonmizing013");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      await Utils.sleep(1000);
      await screenLock.lock((err: BusinessError, data: Boolean) => {
        if (err) {
          console.error(`Failed to lock the screen, Code: ${err.code}, message: ${err.message}`);
          return;
        }
        console.info(`Succeeded in locking the screen. result: ${data}`);
      });
      await Utils.sleep(2000);
      await screenLock.unlock((err: BusinessError) => {
        if (err) {
          console.error(`Failed to unlock the screen, Code: ${err.code}, message: ${err.message}`);
          return;
        }
        console.info(`Succeeded unlocking the screen.`);
      });
      await driver.drag(100, 900, 100, 1, 1000);
      await Utils.sleep(3000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_RADIO_CUSTONMIZING_013 finish.`);
      done();
    })
  })
}
