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

import { describe, beforeAll, beforeEach, afterEach, afterAll, it, expect } from '@ohos/hypium'
import Settings from '../model/Settings'
import windowSnap from '../model/snapShot'
import Logger from '../model/Logger'
import Utils from '../model/Utils'
import { Driver, ON } from '@kit.TestKit'
import { KeyCode } from '@kit.InputKit'
import { uiAppearance } from '@kit.ArkUI'
import Window from '@ohos.window'

/*
 * UiComponentPopupboxDatePickerDialogScenarios
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

export default function UiComponentPopupboxDatePickerDialogScenarios() {

  describe('UiComponentPopupboxDatePickerDialogScenarios', () => {

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_SCENARIOS_0010
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_SCENARIOS_0010
     * @tc.desc      Two methods coexist - call TimePickerDialog after getting UIContext.
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_SCENARIOS_0010', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_SCENARIOS_0010 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupboxDatePickerDialogScenarios/" +
        "UiComponentPopupboxDatePickerDialogScenarios0010")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let datePickerButton = await driver.findComponent(ON.id('UiComponentPopupboxDatePickerDialogScenarios0010_001'));
      await datePickerButton.click();
      await Utils.sleep(3000);
      Settings.changeOrientation();
      await Utils.sleep(1000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      let currentWindow = await Window.getLastWindow(getContext());
      await currentWindow.setPreferredOrientation(1);
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_SCENARIOS_0010 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_SCENARIOS_0020
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_SCENARIOS_0020
     * @tc.desc      Two methods coexist - getting UIContext after call TimePickerDialog.
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_SCENARIOS_0020', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_SCENARIOS_0020 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupboxDatePickerDialogScenarios/" +
        "UiComponentPopupboxDatePickerDialogScenarios0020")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let datePickerButton = await driver.findComponent(ON.id('UiComponentPopupboxDatePickerDialogScenarios0020_001'));
      await datePickerButton.click();
      await Utils.sleep(3000);
      Settings.changeOrientation();
      await Utils.sleep(1000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      let currentWindow = await Window.getLastWindow(getContext());
      await currentWindow.setPreferredOrientation(1);
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_SCENARIOS_0020 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_SCENARIOS_0090
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_SCENARIOS_0090
     * @tc.desc      After the date picker popup (sub-window) appears, click 'Confirm' to exit the sub-window.
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_SCENARIOS_0090', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_SCENARIOS_0090 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupboxDatePickerDialogScenarios/" +
        "UiComponentPopupboxDatePickerDialogScenarios0090")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let datePickerButton = await driver.findComponent(ON.id('UiComponentPopupboxDatePickerDialogScenarios0090_001'));
      await datePickerButton.click();
      await Utils.sleep(1000)
      await driver.triggerKey(KeyCode.KEYCODE_ENTER);
      await Utils.sleep(1000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_SCENARIOS_0090 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_SCENARIOS_0110
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_SCENARIOS_0110
     * @tc.desc      Popup displays correctly and functions stably when switching light/dark modes.
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_SCENARIOS_0110', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_SCENARIOS_0110 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupboxDatePickerDialogScenarios/" +
        "UiComponentPopupboxDatePickerDialogScenarios0110")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let dateButton = await driver.findComponent(ON.id('UiComponentPopupboxDatePickerDialogScenarios0110_001'));
      await dateButton.click();
      await Utils.sleep(1000);
      let pushButton = await driver.findComponent(ON.id('UiComponentPopupboxDatePickerDialogScenarios0110_002'));
      await pushButton.click();
      await Utils.sleep(1000);
      let pageShowButton = await driver.findComponent(ON.id('UiComponentPopupboxDatePickerDialogScenarios0110Page_001'));
      await pageShowButton.click();
      await Utils.sleep(1000);
      let datePickerButton = await driver.findComponent(ON.id('UiComponentPopupboxDatePickerDialogScenarios0110Page_002'));
      await datePickerButton.click();
      await Utils.sleep(1000);
      await uiAppearance.setDarkMode(uiAppearance.DarkMode.ALWAYS_DARK, () => {});
      await Utils.sleep(1000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      await uiAppearance.setDarkMode(uiAppearance.DarkMode.ALWAYS_LIGHT, () => {});
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_SCENARIOS_0110 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_SCENARIOS_0110_1
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_SCENARIOS_0110_1
     * @tc.desc      Popup displays correctly and functions stably when switching light/dark modes for many times.
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_SCENARIOS_0110_1', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_SCENARIOS_0110_1 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupboxDatePickerDialogScenarios/" +
        "UiComponentPopupboxDatePickerDialogScenarios0110")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let dateButton = await driver.findComponent(ON.id('UiComponentPopupboxDatePickerDialogScenarios0110_001'));
      await dateButton.click();
      await Utils.sleep(1000);
      let pushButton = await driver.findComponent(ON.id('UiComponentPopupboxDatePickerDialogScenarios0110_002'));
      await pushButton.click();
      await Utils.sleep(1000);
      let pageShowButton = await driver.findComponent(ON.id('UiComponentPopupboxDatePickerDialogScenarios0110Page_001'));
      await pageShowButton.click();
      await Utils.sleep(1000);
      let datePickerButton = await driver.findComponent(ON.id('UiComponentPopupboxDatePickerDialogScenarios0110Page_002'));
      await datePickerButton.click();
      await Utils.sleep(1000);
      for (let i = 0; i < 2; i++) {
        await uiAppearance.setDarkMode(uiAppearance.DarkMode.ALWAYS_DARK, () => {});
        await Utils.sleep(500);
        await uiAppearance.setDarkMode(uiAppearance.DarkMode.ALWAYS_LIGHT, () => {});
        await Utils.sleep(500);
      }
      await Utils.sleep(1000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_SCENARIOS_0110_1 finish.`);
      done()
    })
  })
}
