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

export default function UIComponentButtonSelectAttribute() {

  describe('UIComponentButtonSelectAttribute', () => {


    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ATTRIBUTE_0320_1
     * @tc.name      SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ATTRIBUTE_0320_1
     * @tc.desc      By default, the selected item is the first
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ATTRIBUTE_0320_1', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ATTRIBUTE_0320_1 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonSelectAttribute/UIComponentButtonSelectAttribute032");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let ButtonCom = await driver.findComponent(ON.id("UIComponentButtonSelectAttribute0320"));
      let pointButtonCenter = await ButtonCom.getBoundsCenter();
      await driver.click(pointButtonCenter.x, pointButtonCenter.y);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ATTRIBUTE_0320_1 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ATTRIBUTE_0320_2
     * @tc.name      SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ATTRIBUTE_0320_2
     * @tc.desc      Click the mask layer to exit, and the content of the drop-down button will not change
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ATTRIBUTE_0320_2', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ATTRIBUTE_0320_2 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonSelectAttribute/UIComponentButtonSelectAttribute032");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let ButtonCom = await driver.findComponent(ON.id("UIComponentButtonSelectAttribute0320"));
      let pointButtonCenter = await ButtonCom.getBoundsCenter();
      await driver.click(pointButtonCenter.x, pointButtonCenter.y);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ATTRIBUTE_0320_2 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ATTRIBUTE_0340_1
     * @tc.name      SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ATTRIBUTE_0340_1
     * @tc.desc      By default, the selected item is the first
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ATTRIBUTE_0340_1', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ATTRIBUTE_0340_1 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonSelectAttribute/UIComponentButtonSelectAttribute034");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let ButtonCom = await driver.findComponent(ON.id("UIComponentButtonSelectAttribute0340"));
      let pointButtonCenter = await ButtonCom.getBoundsCenter();
      await driver.click(pointButtonCenter.x, pointButtonCenter.y);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ATTRIBUTE_0340_1 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ATTRIBUTE_0340_2
     * @tc.name      SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ATTRIBUTE_0340_2
     * @tc.desc      Click the mask layer to exit, and the content of the drop-down button will not change
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ATTRIBUTE_0340_2', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ATTRIBUTE_0340_2 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonSelectAttribute/UIComponentButtonSelectAttribute034");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let ButtonCom = await driver.findComponent(ON.id("UIComponentButtonSelectAttribute0340"));
      let pointButtonCenter = await ButtonCom.getBoundsCenter();
      await driver.click(pointButtonCenter.x, pointButtonCenter.y);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ATTRIBUTE_0340_2 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ATTRIBUTE_0310_1
     * @tc.name      SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ATTRIBUTE_0310_1
     * @tc.desc      By default, the selected item is the first
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ATTRIBUTE_0310_1', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ATTRIBUTE_0310_1 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonSelectAttribute/UIComponentButtonSelectAttribute031");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let ButtonCom = await driver.findComponent(ON.id("UIComponentButtonSelectAttribute0310"));
      let pointButtonCenter = await ButtonCom.getBoundsCenter();
      await driver.click(pointButtonCenter.x, pointButtonCenter.y);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ATTRIBUTE_0310_1 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ATTRIBUTE_0310_2
     * @tc.name      SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ATTRIBUTE_0310_2
     * @tc.desc      Click the mask layer to exit, and the content of the drop-down button will not change
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ATTRIBUTE_0310_2', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ATTRIBUTE_0310_2 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonSelectAttribute/UIComponentButtonSelectAttribute031");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let ButtonCom = await driver.findComponent(ON.id("UIComponentButtonSelectAttribute0310"));
      let pointButtonCenter = await ButtonCom.getBoundsCenter();
      await driver.click(pointButtonCenter.x, pointButtonCenter.y);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ATTRIBUTE_0310_2 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ATTRIBUTE_0330_1
     * @tc.name      SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ATTRIBUTE_0330_1
     * @tc.desc      By default, the selected item is the first
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ATTRIBUTE_0330_1', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ATTRIBUTE_0330_1 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonSelectAttribute/UIComponentButtonSelectAttribute033");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let ButtonCom = await driver.findComponent(ON.id("UIComponentButtonSelectAttribute0330"));
      let pointButtonCenter = await ButtonCom.getBoundsCenter();
      await driver.click(pointButtonCenter.x, pointButtonCenter.y);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ATTRIBUTE_0330_1 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ATTRIBUTE_0330_2
     * @tc.name      SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ATTRIBUTE_0330_2
     * @tc.desc      Click the mask layer to exit, and the content of the drop-down button will not change
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ATTRIBUTE_0330_2', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ATTRIBUTE_0330_2 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonSelectAttribute/UIComponentButtonSelectAttribute033");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let ButtonCom = await driver.findComponent(ON.id("UIComponentButtonSelectAttribute0330"));
      let pointButtonCenter = await ButtonCom.getBoundsCenter();
      await driver.click(pointButtonCenter.x, pointButtonCenter.y);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ATTRIBUTE_0330_2 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ATTRIBUTE_0350_1
     * @tc.name      SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ATTRIBUTE_0350_1
     * @tc.desc      By default, the selected item is the first
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ATTRIBUTE_0350_1', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ATTRIBUTE_0350_1 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonSelectAttribute/UIComponentButtonSelectAttribute035");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let ButtonCom = await driver.findComponent(ON.id("UIComponentButtonSelectAttribute0350"));
      let pointButtonCenter = await ButtonCom.getBoundsCenter();
      await driver.click(pointButtonCenter.x, pointButtonCenter.y);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ATTRIBUTE_0350_1 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ATTRIBUTE_0350_2
     * @tc.name      SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ATTRIBUTE_0350_2
     * @tc.desc      Click the mask layer to exit, and the content of the drop-down button will not change
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ATTRIBUTE_0350_2', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ATTRIBUTE_0350_2 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonSelectAttribute/UIComponentButtonSelectAttribute035");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let ButtonCom = await driver.findComponent(ON.id("UIComponentButtonSelectAttribute0350"));
      let pointButtonCenter = await ButtonCom.getBoundsCenter();
      await driver.click(pointButtonCenter.x, pointButtonCenter.y);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ATTRIBUTE_0350_2 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ATTRIBUTE_0040
     * @tc.name      SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ATTRIBUTE_0040
     * @tc.desc      The attribute font-size is set to number
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ATTRIBUTE_0040', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ATTRIBUTE_0040 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonSelectAttribute/UIComponentButtonSelectAttribute004");
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ATTRIBUTE_0040 finish.`);
      done();
    })
  })
}
