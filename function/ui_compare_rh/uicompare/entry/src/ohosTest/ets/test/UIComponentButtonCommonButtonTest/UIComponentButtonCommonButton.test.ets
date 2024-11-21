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

/*
 * UIComponentButtonCommonButton
 *
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

export default function UIComponentButtonCommonButton() {

  describe('UIComponentButtonCommonButton', () => {

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_COMMON_BUTTON_0330
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_COMMON_BUTTON_0330
     * @tc.desc   : Verify the Radio component and test whether the modifier configuration is the same as the original configuration when parameter index=1
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_COMMON_BUTTON_0330', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_COMMON_BUTTON_0330 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonCommonButton/UIComponentButtonCommonButton033");
      await Utils.sleep(3000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_COMMON_BUTTON_0330 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_COMMON_BUTTON_0340
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_COMMON_BUTTON_0340
     * @tc.desc   : Verify the Radio component and test whether the modifier configuration is the same as the original configuration when parameter index=2
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_COMMON_BUTTON_0340', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_COMMON_BUTTON_0340 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonCommonButton/UIComponentButtonCommonButton034");
      await Utils.sleep(3000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_COMMON_BUTTON_0340 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_COMMON_BUTTON_0350
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_COMMON_BUTTON_0350
     * @tc.desc   : Verify the Radio component and test whether the modifier configuration is the same as the original configuration when parameter index=3
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_COMMON_BUTTON_0350', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_COMMON_BUTTON_0350 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonCommonButton/UIComponentButtonCommonButton035");
      await Utils.sleep(3000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_COMMON_BUTTON_0350 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_COMMON_BUTTON_0360
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_COMMON_BUTTON_0360
     * @tc.desc   : Verify the Radio component and test whether the modifier configuration is the same as the original configuration when parameter index=4
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_COMMON_BUTTON_0360', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_COMMON_BUTTON_0360 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonCommonButton/UIComponentButtonCommonButton036");
      await Utils.sleep(3000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_COMMON_BUTTON_0360 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_COMMON_BUTTON_0370
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_COMMON_BUTTON_0370
     * @tc.desc   : Verify the Rating component and test whether the modifier configuration is the same as the original configuration when parameter index=1
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_COMMON_BUTTON_0370', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_COMMON_BUTTON_0370 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonCommonButton/UIComponentButtonCommonButton037");
      await Utils.sleep(3000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_COMMON_BUTTON_0370 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_COMMON_BUTTON_0380
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_COMMON_BUTTON_0380
     * @tc.desc   : Verify the Rating component and test whether the modifier configuration is the same as the original configuration when parameter index=2
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_COMMON_BUTTON_0380', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_COMMON_BUTTON_0380 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonCommonButton/UIComponentButtonCommonButton038");
      await Utils.sleep(3000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_COMMON_BUTTON_0380 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_COMMON_BUTTON_0390
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_COMMON_BUTTON_0390
     * @tc.desc   : Verify the Rating component and test whether the modifier configuration is the same as the original configuration when parameter index=3
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_COMMON_BUTTON_0390', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_COMMON_BUTTON_0390 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonCommonButton/UIComponentButtonCommonButton039");
      await Utils.sleep(3000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_COMMON_BUTTON_0390 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_COMMON_BUTTON_0400_1
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_COMMON_BUTTON_0400_1
     * @tc.desc   : Verify the Rating component and test whether the modifier configuration is the same as the original configuration when parameter index=1
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_COMMON_BUTTON_0400_1', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_COMMON_BUTTON_0400_1 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonCommonButton/UIComponentButtonCommonButton040");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let ButtonCom = await driver.findComponent(ON.id("UIComponentButtonCommonButton0400"));
      let pointButtonCenter = await ButtonCom.getBoundsCenter();
      await driver.click(pointButtonCenter.x, pointButtonCenter.y);
      await Utils.sleep(3000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_COMMON_BUTTON_0400_1 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_COMMON_BUTTON_0400_2
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_COMMON_BUTTON_0400_2
     * @tc.desc   : Verify the Rating component and test whether the modifier configuration is the same as the original configuration when parameter index=1
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_COMMON_BUTTON_0400_2', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_COMMON_BUTTON_0400_2 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonCommonButton/UIComponentButtonCommonButton040");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let ButtonCom = await driver.findComponent(ON.id("UIComponentButtonCommonButton0401"));
      let pointButtonCenter = await ButtonCom.getBoundsCenter();
      await driver.click(pointButtonCenter.x, pointButtonCenter.y);
      await Utils.sleep(3000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_COMMON_BUTTON_0400_2 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_COMMON_BUTTON_0410_1
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_COMMON_BUTTON_0410_1
     * @tc.desc   : Verify the Rating component and test whether the modifier configuration is the same as the original configuration when parameter index=2
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_COMMON_BUTTON_0410_1', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_COMMON_BUTTON_0410_1 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonCommonButton/UIComponentButtonCommonButton041");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let ButtonCom = await driver.findComponent(ON.id("UIComponentButtonCommonButton0410"));
      let pointButtonCenter = await ButtonCom.getBoundsCenter();
      await driver.click(pointButtonCenter.x, pointButtonCenter.y);
      await Utils.sleep(3000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_COMMON_BUTTON_0410_1 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_COMMON_BUTTON_0410_2
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_COMMON_BUTTON_0410_2
     * @tc.desc   : Verify the Rating component and test whether the modifier configuration is the same as the original configuration when parameter index=2
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_COMMON_BUTTON_0410_2', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_COMMON_BUTTON_0410_2 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonCommonButton/UIComponentButtonCommonButton041");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let ButtonCom = await driver.findComponent(ON.id("UIComponentButtonCommonButton0411"));
      let pointButtonCenter = await ButtonCom.getBoundsCenter();
      await driver.click(pointButtonCenter.x, pointButtonCenter.y);
      await Utils.sleep(3000);
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_COMMON_BUTTON_0410_2 finish.`);
      done()
    })
  })
}
