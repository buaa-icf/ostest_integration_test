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

import { afterEach, describe, expect, it } from '@ohos/hypium'
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

export default function UIComponentPopupBoxSpecificationsPopup() {

  describe('UIComponentPopupBoxSpecificationsPopup', () => {


    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_POPUP_0010
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_POPUP_0010
     * @tc.desc      Verify the Menu component and test whether the modifier configuration is consistent with the original configuration when parameter index=1
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_POPUP_0010', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_POPUP_0010 start.`);
      Settings.createWindow("testability/pages/UIComponentPopupBoxSpecificationsPopup/UIComponentPopupBoxSpecificationsPopup001");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let ButtonCom = await driver.findComponent(ON.id("UIComponentPopupBoxSpecificationsPopup0010"));
      let pointButtonCenter = await ButtonCom.getBoundsCenter();
      await driver.click(pointButtonCenter.x, pointButtonCenter.y);
      await Utils.sleep(5000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_POPUP_0010 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_POPUP_0020
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_POPUP_0020
     * @tc.desc      Verify the Menu component and test whether the modifier configuration is consistent with the original configuration when parameter index=2
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_POPUP_0020', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_POPUP_0020 start.`);
      Settings.createWindow("testability/pages/UIComponentPopupBoxSpecificationsPopup/UIComponentPopupBoxSpecificationsPopup002");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let ButtonCom = await driver.findComponent(ON.id("UIComponentPopupBoxSpecificationsPopup0020"));
      let pointButtonCenter = await ButtonCom.getBoundsCenter();
      await driver.click(pointButtonCenter.x, pointButtonCenter.y);
      await Utils.sleep(5000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_POPUP_0020 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_POPUP_0030
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_POPUP_0030
     * @tc.desc      Verify the Menu component and test whether the modifier configuration is consistent with the original configuration when parameter index=3
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_POPUP_0030', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_POPUP_0030 start.`);
      Settings.createWindow("testability/pages/UIComponentPopupBoxSpecificationsPopup/UIComponentPopupBoxSpecificationsPopup003");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let ButtonCom = await driver.findComponent(ON.id("UIComponentPopupBoxSpecificationsPopup0030"));
      let pointButtonCenter = await ButtonCom.getBoundsCenter();
      await driver.click(pointButtonCenter.x, pointButtonCenter.y);
      await Utils.sleep(5000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_POPUP_0030 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_POPUP_0040
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_POPUP_0040
     * @tc.desc      Verify the MenuItem component and test whether the modifier configuration is consistent with the original configuration when parameter index=1
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_POPUP_0040', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_POPUP_0040 start.`);
      Settings.createWindow("testability/pages/UIComponentPopupBoxSpecificationsPopup/UIComponentPopupBoxSpecificationsPopup004");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let ButtonCom = await driver.findComponent(ON.id("UIComponentPopupBoxSpecificationsPopup0040"));
      let pointButtonCenter = await ButtonCom.getBoundsCenter();
      await driver.click(pointButtonCenter.x, pointButtonCenter.y);
      await Utils.sleep(5000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_POPUP_0040 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_POPUP_0050
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_POPUP_0050
     * @tc.desc      Verify the MenuItem component and test whether the modifier configuration is consistent with the original configuration when parameter index=2
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_POPUP_0050', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_POPUP_0050 start.`);
      Settings.createWindow("testability/pages/UIComponentPopupBoxSpecificationsPopup/UIComponentPopupBoxSpecificationsPopup005");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let ButtonCom = await driver.findComponent(ON.id("UIComponentPopupBoxSpecificationsPopup0050"));
      let pointButtonCenter = await ButtonCom.getBoundsCenter();
      await driver.click(pointButtonCenter.x, pointButtonCenter.y);
      await Utils.sleep(5000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_POPUP_0050 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_POPUP_0060
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_POPUP_0060
     * @tc.desc      Verify the MenuItem component and test whether the modifier configuration is consistent with the original configuration when parameter index=3
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_POPUP_0060', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_POPUP_0060 start.`);
      Settings.createWindow("testability/pages/UIComponentPopupBoxSpecificationsPopup/UIComponentPopupBoxSpecificationsPopup006");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let ButtonCom = await driver.findComponent(ON.id("UIComponentPopupBoxSpecificationsPopup0060"));
      let pointButtonCenter = await ButtonCom.getBoundsCenter();
      await driver.click(pointButtonCenter.x, pointButtonCenter.y);
      await Utils.sleep(5000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_POPUP_0060 finish.`);
      done();
    })
  })
}
