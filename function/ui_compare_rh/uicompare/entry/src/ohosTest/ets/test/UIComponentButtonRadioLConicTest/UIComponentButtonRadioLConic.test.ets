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
import { BusinessError, screenLock } from '@kit.BasicServicesKit'
import { KeyCode } from '@kit.InputKit'

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

export default function UIComponentButtonRadioLConic() {

  describe('UIComponentButtonRadioLConic', () => {


    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_BUTTON_RADIO_LCONIC_013
     * @tc.name      SUB_ACE_UI_COMPONENT_BUTTON_RADIO_LCONIC_013
     * @tc.desc      set radioStyle.checkedBackgroundColor
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_RADIO_LCONIC_013', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_RADIO_LCONIC_013 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonRadioLConic/UIComponentButtonRadioLConic013");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let ButtonCom = await driver.findComponent(ON.id("UIComponentButtonRadioLConic0130"));
      let pointButtonCenter = await ButtonCom.getBoundsCenter();
      await driver.click(pointButtonCenter.x, pointButtonCenter.y);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_RADIO_LCONIC_013 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_BUTTON_RADIO_LCONIC_025
     * @tc.name      SUB_ACE_UI_COMPONENT_BUTTON_RADIO_LCONIC_025
     * @tc.desc      set indicatorType: RadioIndicatorType.TICK, indicatorBuilder: null in Breath screen and light screen
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_RADIO_LCONIC_025', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_RADIO_LCONIC_025 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonRadioLConic/UIComponentButtonRadioLConic025");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let ButtonCom = await driver.findComponent(ON.id("UIComponentButtonRadioLConic0250"));
      let pointButtonCenter = await ButtonCom.getBoundsCenter();
      await driver.click(pointButtonCenter.x, pointButtonCenter.y);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_RADIO_LCONIC_025 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_BUTTON_RADIO_LCONIC_020
     * @tc.name      SUB_ACE_UI_COMPONENT_BUTTON_RADIO_LCONIC_020
     * @tc.desc      indicatorBuilder is set to image, indicatorColor is set to Pink, Radio is set to 50vp,image is passed 20vp image
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_RADIO_LCONIC_020', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_RADIO_LCONIC_020 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonRadioLConic/UIComponentButtonRadioLConic020");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let ButtonCom = await driver.findComponent(ON.id("UIComponentButtonRadioLConic0200"));
      let pointButtonCenter = await ButtonCom.getBoundsCenter();
      await driver.click(pointButtonCenter.x, pointButtonCenter.y);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_RADIO_LCONIC_020 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_BUTTON_RADIO_LCONIC_022
     * @tc.name      SUB_ACE_UI_COMPONENT_BUTTON_RADIO_LCONIC_022
     * @tc.desc      Radio indicatorType is passed in TICK, builder is passed in image
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_RADIO_LCONIC_022', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_RADIO_LCONIC_022 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonRadioLConic/UIComponentButtonRadioLConic022");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let RadioCom = await driver.findComponent(ON.id("UIComponentButtonRadioLConic0220"));
      let pointRadioCenter = await RadioCom.getBoundsCenter();
      await driver.click(pointRadioCenter.x, pointRadioCenter.y);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_RADIO_LCONIC_022 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_BUTTON_RADIO_LCONIC_008
     * @tc.name      SUB_ACE_UI_COMPONENT_BUTTON_RADIO_LCONIC_008
     * @tc.desc      indicatorBuilder is set to image,Radio does not set the size, image is 100
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_RADIO_LCONIC_008', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_RADIO_LCONIC_008 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonRadioLConic/UIComponentButtonRadioLConic008");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let RadioCom = await driver.findComponent(ON.id("UIComponentButtonRadioLConic0080"));
      let pointRadioCenter = await RadioCom.getBoundsCenter();
      await driver.click(pointRadioCenter.x, pointRadioCenter.y);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_RADIO_LCONIC_008 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_BUTTON_RADIO_LCONIC_024
     * @tc.name      SUB_ACE_UI_COMPONENT_BUTTON_RADIO_LCONIC_024
     * @tc.desc      indicatorBuilder is set to undefined,Radio selected style is checkmark style
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_RADIO_LCONIC_024', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_RADIO_LCONIC_024 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonRadioLConic/UIComponentButtonRadioLConic024");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let RadioCom = await driver.findComponent(ON.id("UIComponentButtonRadioLConic0240"));
      let pointRadioCenter = await RadioCom.getBoundsCenter();
      await driver.click(pointRadioCenter.x, pointRadioCenter.y);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_RADIO_LCONIC_024 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_BUTTON_RADIO_LCONIC_019
     * @tc.name      SUB_ACE_UI_COMPONENT_BUTTON_RADIO_LCONIC_019
     * @tc.desc      indicatorBuilder value is set to image,indicatorColor is set to Pink,Radio is set to 50,image is passed 100vp image
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_RADIO_LCONIC_019', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_RADIO_LCONIC_019 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonRadioLConic/UIComponentButtonRadioLConic019");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let RadioCom = await driver.findComponent(ON.id("UIComponentButtonRadioLConic0190"));
      let pointRadioCenter = await RadioCom.getBoundsCenter();
      await driver.click(pointRadioCenter.x, pointRadioCenter.y);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_RADIO_LCONIC_019 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_BUTTON_RADIO_LCONIC_009
     * @tc.name      SUB_ACE_UI_COMPONENT_BUTTON_RADIO_LCONIC_009
     * @tc.desc      indicatorBuilder value is set to image,Radio does not set the size, image is set to 10
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_RADIO_LCONIC_009', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_RADIO_LCONIC_009 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonRadioLConic/UIComponentButtonRadioLConic009");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let RadioCom = await driver.findComponent(ON.id("UIComponentButtonRadioLConic0090"));
      let pointRadioCenter = await RadioCom.getBoundsCenter();
      await driver.click(pointRadioCenter.x, pointRadioCenter.y);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_RADIO_LCONIC_009 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_BUTTON_RADIO_LCONIC_030
     * @tc.name      SUB_ACE_UI_COMPONENT_BUTTON_RADIO_LCONIC_030
     * @tc.desc      indicatorBuilder is set to image, Radio is set to 50,image is set to 100 and clip is set to true
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_RADIO_LCONIC_030', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_RADIO_LCONIC_030 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonRadioLConic/UIComponentButtonRadioLConic030");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let RadioCom = await driver.findComponent(ON.id("UIComponentButtonRadioLConic0300"));
      let pointRadioCenter = await RadioCom.getBoundsCenter();
      await driver.click(pointRadioCenter.x, pointRadioCenter.y);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_RADIO_LCONIC_030 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_BUTTON_RADIO_LCONIC_031
     * @tc.name      SUB_ACE_UI_COMPONENT_BUTTON_RADIO_LCONIC_031
     * @tc.desc      indicatorBuilder value is set to image, image is set according to the percentage, passing 20% of the image
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_RADIO_LCONIC_031', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_RADIO_LCONIC_031 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonRadioLConic/UIComponentButtonRadioLConic031");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let RadioCom = await driver.findComponent(ON.id("UIComponentButtonRadioLConic0310"));
      let pointRadioCenter = await RadioCom.getBoundsCenter();
      await driver.click(pointRadioCenter.x, pointRadioCenter.y);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_RADIO_LCONIC_031 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_BUTTON_RADIO_LCONIC_028
     * @tc.name      SUB_ACE_UI_COMPONENT_BUTTON_RADIO_LCONIC_028
     * @tc.desc      indicatorBuilder is set to button1, bind the click event, click the button, button becomes selected
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_RADIO_LCONIC_028', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_RADIO_LCONIC_028 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonRadioLConic/UIComponentButtonRadioLConic028");
      await Utils.sleep(2000);
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
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_RADIO_LCONIC_028 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_BUTTON_RADIO_LCONIC_027
     * @tc.name      SUB_ACE_UI_COMPONENT_BUTTON_RADIO_LCONIC_027
     * @tc.desc      set TICK、DOT style and Image Component in screen lock(unlock)
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_RADIO_LCONIC_027', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_RADIO_LCONIC_027 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonRadioLConic/UIComponentButtonRadioLConic027");
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
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_RADIO_LCONIC_027 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_BUTTON_RADIO_LCONIC_004
     * @tc.name      SUB_ACE_UI_COMPONENT_BUTTON_RADIO_LCONIC_004
     * @tc.desc      indicatorBuilder is set to image,Radio does not set the size, image is 100
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_RADIO_LCONIC_004', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_RADIO_LCONIC_004 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonRadioLConic/UIComponentButtonRadioLConic004");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let RadioCom = await driver.findComponent(ON.id("UIComponentButtonRadioLConic0040"));
      let RadioCom1 = await driver.findComponent(ON.id("UIComponentButtonRadioLConic0041"));
      let pointRadioCenter = await RadioCom.getBoundsCenter();
      let pointRadioCenter1 = await RadioCom1.getBoundsCenter();
      await driver.click(pointRadioCenter.x, pointRadioCenter.y);
      await Utils.sleep(1000);
      await driver.click(pointRadioCenter1.x, pointRadioCenter1.y);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_RADIO_LCONIC_004 finish.`);
      done();
    })
  })
}
