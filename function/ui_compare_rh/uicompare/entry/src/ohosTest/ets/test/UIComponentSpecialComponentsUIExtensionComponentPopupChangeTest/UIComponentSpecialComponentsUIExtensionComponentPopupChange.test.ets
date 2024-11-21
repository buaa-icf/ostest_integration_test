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
import Window from '@ohos.window'

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

export default function UIComponentSpecialComponentsUIExtensionComponentPopupChange() {

  describe('UIComponentSpecialComponentsUIExtensionComponentPopupChange', () => {

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_UIEXTENSIONCOMPONENT_POPUPCHANGE_0050
     * @tc.name      SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_UIEXTENSIONCOMPONENT_POPUPCHANGE_0050
     * @tc.desc      Verify input box After continuous text input is interrupted, popup will start changing again when text is entered again
     */
    it('SUB_ACE_UI_COMPONENT_SPECIAL_POPUP_CHANGE_0050', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIAL_POPUP_CHANGE_0050 start.`);
      Settings.createWindow("testability/pages/UIComponentSpecialComponentsUIExtensionComponentPopupChange/UIComponentSpecialComponentsUIExtensionComponentPopupChange005");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let ButtonCom =
        await driver.findComponent(ON.id("UIComponentSpecialComponentsUIExtensionComponentPopupChange0051"));
      let pointButtonCenter = await ButtonCom.getBoundsCenter();
      await driver.click(pointButtonCenter.x, pointButtonCenter.y);
      await Utils.sleep(1000);
      driver.triggerKey(KeyCode.KEYCODE_A);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIAL_POPUP_CHANGE_0050 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_UIEXTENSIONCOMPONENT_POPUPCHANGE_0050_1
     * @tc.name      SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_UIEXTENSIONCOMPONENT_POPUPCHANGE_0050_1
     * @tc.desc      Verify input box After continuous text input is interrupted, popup will start changing again when text is entered again
     */
    it('SUB_ACE_UI_COMPONENT_SPECIAL_POPUP_CHANGE_0050_1', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIAL_POPUP_CHANGE_0050_1 start.`);
      Settings.createWindow("testability/pages/UIComponentSpecialComponentsUIExtensionComponentPopupChange/UIComponentSpecialComponentsUIExtensionComponentPopupChange005");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let ButtonCom =
        await driver.findComponent(ON.id("UIComponentSpecialComponentsUIExtensionComponentPopupChange0051"));
      let pointButtonCenter = await ButtonCom.getBoundsCenter();
      await driver.click(pointButtonCenter.x, pointButtonCenter.y);
      await Utils.sleep(1000);
      driver.triggerKey(KeyCode.KEYCODE_A);
      await Utils.sleep(1000);
      await driver.click(pointButtonCenter.x, pointButtonCenter.y);
      await Utils.sleep(1000);
      driver.triggerKey(KeyCode.KEYCODE_B);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIAL_POPUP_CHANGE_0050_1 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_UIEXTENSIONCOMPONENT_POPUPCHANGE_0060
     * @tc.name      SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_UIEXTENSIONCOMPONENT_POPUPCHANGE_0060
     * @tc.desc      If the incoming parameter of the interface is empty, the popup popup window does not change after the input box content changes
     */
    it('SUB_ACE_UI_COMPONENT_SPECIAL_POPUP_CHANGE_0060', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIAL_POPUP_CHANGE_0060 start.`);
      Settings.createWindow("testability/pages/UIComponentSpecialComponentsUIExtensionComponentPopupChange/UIComponentSpecialComponentsUIExtensionComponentPopupChange006");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let ButtonCom =
        await driver.findComponent(ON.id("UIComponentSpecialComponentsUIExtensionComponentPopupChange0060"));
      let pointButtonCenter = await ButtonCom.getBoundsCenter();
      await driver.click(pointButtonCenter.x, pointButtonCenter.y);
      await Utils.sleep(1000);
      await driver.triggerKey(KeyCode.KEYCODE_A);
      await Utils.sleep(1000);
      await driver.triggerKey(KeyCode.KEYCODE_B);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIAL_POPUP_CHANGE_0060 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_UIEXTENSIONCOMPONENT_POPUPCHANGE_0020
     * @tc.name      SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_UIEXTENSIONCOMPONENT_POPUPCHANGE_0020
     * @tc.desc      Verify that the content of the input box is changed, and the popup position will change
     */
    it('SUB_ACE_UI_COMPONENT_SPECIAL_POPUP_CHANGE_0020', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIAL_POPUP_CHANGE_0020 start.`);
      Settings.createWindow("testability/pages/UIComponentSpecialComponentsUIExtensionComponentPopupChange/UIComponentSpecialComponentsUIExtensionComponentPopupChange002");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let ButtonCom =
        await driver.findComponent(ON.id("UIComponentSpecialComponentsUIExtensionComponentPopupChange0020"));
      let pointButtonCenter = await ButtonCom.getBoundsCenter();
      await driver.click(pointButtonCenter.x, pointButtonCenter.y);
      await Utils.sleep(1000);
      await driver.triggerKey(KeyCode.KEYCODE_A);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      let currentWindow = await Window.getLastWindow(getContext());
      await currentWindow.setPreferredOrientation(1);
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIAL_POPUP_CHANGE_0020 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_UIEXTENSIONCOMPONENT_POPUPCHANGE_0030
     * @tc.name      SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_UIEXTENSIONCOMPONENT_POPUPCHANGE_0030
     * @tc.desc      Verify that the popup size does not change in position when the screen is deflecting
     */
    it('SUB_ACE_UI_COMPONENT_SPECIAL_POPUP_CHANGE_0030', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIAL_POPUP_CHANGE_0030 start.`);
      Settings.createWindow("testability/pages/UIComponentSpecialComponentsUIExtensionComponentPopupChange/UIComponentSpecialComponentsUIExtensionComponentPopupChange003");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let ButtonCom =
        await driver.findComponent(ON.id("UIComponentSpecialComponentsUIExtensionComponentPopupChange0030"));
      let pointButtonCenter = await ButtonCom.getBoundsCenter();
      await driver.click(pointButtonCenter.x, pointButtonCenter.y);
      await Utils.sleep(1000);
      await driver.triggerKey(KeyCode.KEYCODE_A);
      await driver.triggerKey(KeyCode.KEYCODE_B);
      await driver.triggerKey(KeyCode.KEYCODE_C);
      await driver.triggerKey(KeyCode.KEYCODE_D);
      await driver.triggerKey(KeyCode.KEYCODE_E);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIAL_POPUP_CHANGE_0030 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_UIEXTENSIONCOMPONENT_POPUPCHANGE_0010
     * @tc.name      SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_UIEXTENSIONCOMPONENT_POPUPCHANGE_0010
     * @tc.desc      Verify that the popup bit changes when the input field content changes
     */
    it('SUB_ACE_UI_COMPONENT_SPECIAL_POPUP_CHANGE_0010', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIAL_POPUP_CHANGE_0010 start.`);
      Settings.createWindow("testability/pages/UIComponentSpecialComponentsUIExtensionComponentPopupChange/UIComponentSpecialComponentsUIExtensionComponentPopupChange001");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let ButtonCom =
        await driver.findComponent(ON.id("UIComponentSpecialComponentsUIExtensionComponentPopupChange0010"));
      let pointButtonCenter = await ButtonCom.getBoundsCenter();
      await driver.click(pointButtonCenter.x, pointButtonCenter.y);
      await Utils.sleep(2000);
      await driver.triggerKey(KeyCode.KEYCODE_A);
      await driver.triggerKey(KeyCode.KEYCODE_B);
      await driver.triggerKey(KeyCode.KEYCODE_C);
      await driver.triggerKey(KeyCode.KEYCODE_D);
      await driver.triggerKey(KeyCode.KEYCODE_E);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIAL_POPUP_CHANGE_0010 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_UIEXTENSIONCOMPONENT_POPUPCHANGE_0040
     * @tc.name      SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_UIEXTENSIONCOMPONENT_POPUPCHANGE_0040
     * @tc.desc      Verify that the popup size changes in the case of screen avoidance
     */
    it('SUB_ACE_UI_COMPONENT_SPECIAL_POPUP_CHANGE_0040', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIAL_POPUP_CHANGE_0040 start.`);
      Settings.createWindow("testability/pages/UIComponentSpecialComponentsUIExtensionComponentPopupChange/UIComponentSpecialComponentsUIExtensionComponentPopupChange004");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let ButtonCom =
        await driver.findComponent(ON.id("UIComponentSpecialComponentsUIExtensionComponentPopupChange0040"));
      let pointButtonCenter = await ButtonCom.getBoundsCenter();
      await driver.click(pointButtonCenter.x, pointButtonCenter.y);
      await Utils.sleep(2000);
      await driver.triggerKey(KeyCode.KEYCODE_A);
      await driver.triggerKey(KeyCode.KEYCODE_B);
      await driver.triggerKey(KeyCode.KEYCODE_C);
      await driver.triggerKey(KeyCode.KEYCODE_D);
      await driver.triggerKey(KeyCode.KEYCODE_E);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIAL_POPUP_CHANGE_0040 finish.`);
      done();
    })
  })
}
