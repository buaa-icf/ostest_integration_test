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

export default function UIComponentButtonStyle() {

  describe('UIComponentButtonStyle', () => {


    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_BUTTON_STYLE_0540
     * @tc.name      SUB_ACE_UI_COMPONENT_BUTTON_STYLE_0540
     * @tc.desc      set Rating.starStyle
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_STYLE_0540', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_STYLE_0540 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonStyle/UIComponentButtonStyle054");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let ButtonCom = await driver.findComponent(ON.id("UIComponentButtonStyle0540"));
      let pointButtonCenter = await ButtonCom.getBoundsCenter();
      await driver.click(pointButtonCenter.x, pointButtonCenter.y);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_STYLE_0540 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_BUTTON_STYLE_0530
     * @tc.name      SUB_ACE_UI_COMPONENT_BUTTON_STYLE_0530
     * @tc.desc      set Rating.stepSize
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_STYLE_0530', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_STYLE_0530 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonStyle/UIComponentButtonStyle053");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let ButtonCom = await driver.findComponent(ON.id("UIComponentButtonStyle0530"));
      let pointButtonCenter = await ButtonCom.getBoundsCenter();
      await driver.click(pointButtonCenter.x, pointButtonCenter.y);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_STYLE_0530 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_BUTTON_STYLE_0510
     * @tc.name      SUB_ACE_UI_COMPONENT_BUTTON_STYLE_0510
     * @tc.desc      set Rating.Rating
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_STYLE_0510', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_STYLE_0510 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonStyle/UIComponentButtonStyle051");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let ButtonCom = await driver.findComponent(ON.id("UIComponentButtonStyle0510"));
      let pointButtonCenter = await ButtonCom.getBoundsCenter();
      await driver.click(pointButtonCenter.x, pointButtonCenter.y);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_STYLE_0510 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_BUTTON_STYLE_0520
     * @tc.name      SUB_ACE_UI_COMPONENT_BUTTON_STYLE_0520
     * @tc.desc      set Rating.stars
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_STYLE_0520', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_STYLE_0520 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonStyle/UIComponentButtonStyle052");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let ButtonCom = await driver.findComponent(ON.id("UIComponentButtonStyle0520"));
      let pointButtonCenter = await ButtonCom.getBoundsCenter();
      await driver.click(pointButtonCenter.x, pointButtonCenter.y);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_STYLE_0520 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_BUTTON_STYLE_0570
     * @tc.name      SUB_ACE_UI_COMPONENT_BUTTON_STYLE_0570
     * @tc.desc      set Radio.checked
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_STYLE_0570', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_STYLE_0570 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonStyle/UIComponentButtonStyle057");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let ButtonCom = await driver.findComponent(ON.id("UIComponentButtonStyle0570"));
      let pointButtonCenter = await ButtonCom.getBoundsCenter();
      await driver.click(pointButtonCenter.x, pointButtonCenter.y);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_STYLE_0570 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_BUTTON_STYLE_0550
     * @tc.name      SUB_ACE_UI_COMPONENT_BUTTON_STYLE_0550
     * @tc.desc      radioStyle style modifies properties
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_STYLE_0550', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_STYLE_0550 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonStyle/UIComponentButtonStyle055");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let ButtonCom = await driver.findComponent(ON.id("UIComponentButtonStyle0550"));
      let pointButtonCenter = await ButtonCom.getBoundsCenter();
      await driver.click(pointButtonCenter.x, pointButtonCenter.y);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_STYLE_0550 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_BUTTON_STYLE_0560
     * @tc.name      SUB_ACE_UI_COMPONENT_BUTTON_STYLE_0560
     * @tc.desc      radio style modifies properties
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_STYLE_0560', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_STYLE_0560 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonStyle/UIComponentButtonStyle056");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let ButtonCom = await driver.findComponent(ON.id("UIComponentButtonStyle0560"));
      let pointButtonCenter = await ButtonCom.getBoundsCenter();
      await driver.click(pointButtonCenter.x, pointButtonCenter.y);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_STYLE_0560 finish.`);
      done();
    })
  })
}
