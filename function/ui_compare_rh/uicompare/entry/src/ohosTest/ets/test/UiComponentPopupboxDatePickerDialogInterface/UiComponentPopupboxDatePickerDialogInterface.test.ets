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

/*
 * UiComponentPopupboxDatePickerDialogInterface
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

export default function UiComponentPopupboxDatePickerDialogInterface() {

  describe('UiComponentPopupboxDatePickerDialogInterface', () => {


    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0010
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0010
     * @tc.desc      Call getUIContext()-showDatePickerDialog()-start-Date("1888-1-1").
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0010', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0010 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupboxDatePickerDialogInterface/" +
        "UiComponentPopupboxDatePickerDialogInterface0010")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let datePickerButton = await driver.findComponent(ON.id('UiComponentPopupboxDatePickerDialogInterface0010_001'));
      await datePickerButton.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0010 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0020
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0020
     * @tc.desc      Call getUIContext()-showDatePickerDialog()-start-Date("-1970-1-1").
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0020', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0020 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupboxDatePickerDialogInterface/" +
        "UiComponentPopupboxDatePickerDialogInterface0020")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let datePickerButton = await driver.findComponent(ON.id('UiComponentPopupboxDatePickerDialogInterface0020_001'));
      await datePickerButton.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0020 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0030
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0030
     * @tc.desc      Call getUIContext()-showDatePickerDialog()-start-Date("1970-13-1").
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0030', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0030 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupboxDatePickerDialogInterface/" +
        "UiComponentPopupboxDatePickerDialogInterface0030")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let datePickerButton = await driver.findComponent(ON.id('UiComponentPopupboxDatePickerDialogInterface0030_001'));
      await datePickerButton.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0030 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0040
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0040
     * @tc.desc      Call getUIContext()-showDatePickerDialog()-start-Date("1970-1-32").
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0040', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0040 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupboxDatePickerDialogInterface/" +
        "UiComponentPopupboxDatePickerDialogInterface0040")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let datePickerButton = await driver.findComponent(ON.id('UiComponentPopupboxDatePickerDialogInterface0040_001'));
      await datePickerButton.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0040 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0050
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0050
     * @tc.desc      Call getUIContext()-showDatePickerDialog()-start-Date("1970-1-1").
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0050', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0050 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupboxDatePickerDialogInterface/" +
        "UiComponentPopupboxDatePickerDialogInterface0050")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let datePickerButton = await driver.findComponent(ON.id('UiComponentPopupboxDatePickerDialogInterface0050_001'));
      await datePickerButton.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0050 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0060
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0060
     * @tc.desc      Call getUIContext()-showDatePickerDialog()-start-Date("2023-5-16").
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0060', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0060 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupboxDatePickerDialogInterface/" +
        "UiComponentPopupboxDatePickerDialogInterface0060")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let datePickerButton = await driver.findComponent(ON.id('UiComponentPopupboxDatePickerDialogInterface0060_001'));
      await datePickerButton.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0060 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0070
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0070
     * @tc.desc      Call getUIContext()-showDatePickerDialog()-end-Date("2111-1-1").
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0070', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0070 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupboxDatePickerDialogInterface/" +
        "UiComponentPopupboxDatePickerDialogInterface0070")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let datePickerButton = await driver.findComponent(ON.id('UiComponentPopupboxDatePickerDialogInterface0070_001'));
      await datePickerButton.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0070 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0080
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0080
     * @tc.desc      Call getUIContext()-showDatePickerDialog()-end-Date("-2100-1-1").
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0080', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0080 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupboxDatePickerDialogInterface/" +
        "UiComponentPopupboxDatePickerDialogInterface0080")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let datePickerButton = await driver.findComponent(ON.id('UiComponentPopupboxDatePickerDialogInterface0080_001'));
      await datePickerButton.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0080 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0090
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0090
     * @tc.desc      Call getUIContext()-showDatePickerDialog()-end-Date("2100-13-1").
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0090', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0090 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupboxDatePickerDialogInterface/" +
        "UiComponentPopupboxDatePickerDialogInterface0090")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let datePickerButton = await driver.findComponent(ON.id('UiComponentPopupboxDatePickerDialogInterface0090_001'));
      await datePickerButton.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0090 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0100
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0100
     * @tc.desc      Call getUIContext()-showDatePickerDialog()-end-Date("2100-1-32").
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0100', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0100 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupboxDatePickerDialogInterface/" +
        "UiComponentPopupboxDatePickerDialogInterface0100")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let datePickerButton = await driver.findComponent(ON.id('UiComponentPopupboxDatePickerDialogInterface0100_001'));
      await datePickerButton.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0100 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0110
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0110
     * @tc.desc      Call getUIContext()-showDatePickerDialog()-end-Date("2100-12-31").
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0110', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0110 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupboxDatePickerDialogInterface/" +
        "UiComponentPopupboxDatePickerDialogInterface0110")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let datePickerButton = await driver.findComponent(ON.id('UiComponentPopupboxDatePickerDialogInterface0110_001'));
      await datePickerButton.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0110 finish.`);
      done()
    })


    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0120
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0120
     * @tc.desc      Call getUIContext()-showDatePickerDialog()-end-Date < start-Date.
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0120', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0120 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupboxDatePickerDialogInterface/" +
        "UiComponentPopupboxDatePickerDialogInterface0120")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let datePickerButton = await driver.findComponent(ON.id('UiComponentPopupboxDatePickerDialogInterface0120_001'));
      await datePickerButton.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0120 finish.`);
      done()
    })


    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0130
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0130
     * @tc.desc      Call getUIContext()-showDatePickerDialog()-select-Date("2023-5-18").
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0130', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0130 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupboxDatePickerDialogInterface/" +
        "UiComponentPopupboxDatePickerDialogInterface0130")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let datePickerButton = await driver.findComponent(ON.id('UiComponentPopupboxDatePickerDialogInterface0130_001'));
      await datePickerButton.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0130 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0140
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0140
     * @tc.desc      Call getUIContext()-showDatePickerDialog()-select-not in the time range.
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0140', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0140 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupboxDatePickerDialogInterface/" +
        "UiComponentPopupboxDatePickerDialogInterface0140")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let datePickerButton = await driver.findComponent(ON.id('UiComponentPopupboxDatePickerDialogInterface0140_001'));
      await datePickerButton.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0140 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0150
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0150
     * @tc.desc      Call getUIContext()-showDatePickerDialog()-lunar-true.
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0150', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0150 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupboxDatePickerDialogInterface/" +
        "UiComponentPopupboxDatePickerDialogInterface0150")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let datePickerButton = await driver.findComponent(ON.id('UiComponentPopupboxDatePickerDialogInterface0150_001'));
      await datePickerButton.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0150 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0160
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0160
     * @tc.desc      Call getUIContext()-showDatePickerDialog()-lunar-false.
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0160', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0160 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupboxDatePickerDialogInterface/" +
        "UiComponentPopupboxDatePickerDialogInterface0160")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let datePickerButton = await driver.findComponent(ON.id('UiComponentPopupboxDatePickerDialogInterface0160_001'));
      await datePickerButton.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0160 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0170
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0170
     * @tc.desc      Call getUIContext()-showDatePickerDialog()-showtime-true.
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0170', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0170 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupboxDatePickerDialogInterface/" +
        "UiComponentPopupboxDatePickerDialogInterface0170")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let datePickerButton = await driver.findComponent(ON.id('UiComponentPopupboxDatePickerDialogInterface0170_001'));
      await datePickerButton.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0170 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0180
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0180
     * @tc.desc      Call getUIContext()-showDatePickerDialog()-showtime-false.
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0180', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0180 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupboxDatePickerDialogInterface/" +
        "UiComponentPopupboxDatePickerDialogInterface0180")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let datePickerButton = await driver.findComponent(ON.id('UiComponentPopupboxDatePickerDialogInterface0180_001'));
      await datePickerButton.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0180 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0190
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0190
     * @tc.desc      Call getUIContext()-showDatePickerDialog()-useMilitaryTime-true.
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0190', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0190 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupboxDatePickerDialogInterface/" +
        "UiComponentPopupboxDatePickerDialogInterface0190")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let datePickerButton = await driver.findComponent(ON.id('UiComponentPopupboxDatePickerDialogInterface0190_001'));
      await datePickerButton.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0190 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0200
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0200
     * @tc.desc      Call getUIContext()-showDatePickerDialog()-useMilitaryTime-false.
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0200', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0200 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupboxDatePickerDialogInterface/" +
        "UiComponentPopupboxDatePickerDialogInterface0200")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let datePickerButton = await driver.findComponent(ON.id('UiComponentPopupboxDatePickerDialogInterface0200_001'));
      await datePickerButton.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0200 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0210
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0210
     * @tc.desc      Call getUIContext()-showDatePickerDialog()-disappearTextStyle-PickerTextStyle-color-Color.Blue.
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0210', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0210 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupboxDatePickerDialogInterface/" +
        "UiComponentPopupboxDatePickerDialogInterface0210")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let datePickerButton = await driver.findComponent(ON.id('UiComponentPopupboxDatePickerDialogInterface0210_001'));
      await datePickerButton.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0210 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0220
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0220
     * @tc.desc      Call getUIContext()-showDatePickerDialog()-disappearTextStyle-PickerTextStyle-color-0x0000ff.
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0220', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0220 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupboxDatePickerDialogInterface/" +
        "UiComponentPopupboxDatePickerDialogInterface0220")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let datePickerButton = await driver.findComponent(ON.id('UiComponentPopupboxDatePickerDialogInterface0220_001'));
      await datePickerButton.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0220 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0230
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0230
     * @tc.desc      Call getUIContext()-showDatePickerDialog()-disappearTextStyle-PickerTextStyle-color-"rgb(255,0,0)".
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0230', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0230 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupboxDatePickerDialogInterface/" +
        "UiComponentPopupboxDatePickerDialogInterface0230")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let datePickerButton = await driver.findComponent(ON.id('UiComponentPopupboxDatePickerDialogInterface0230_001'));
      await datePickerButton.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0230 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0240
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0240
     * @tc.desc      Call getUIContext()-showDatePickerDialog()-disappearTextStyle-PickerTextStyle-color-$r(app.color.blue).
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0240', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0240 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupboxDatePickerDialogInterface/" +
        "UiComponentPopupboxDatePickerDialogInterface0240")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let datePickerButton = await driver.findComponent(ON.id('UiComponentPopupboxDatePickerDialogInterface0240_001'));
      await datePickerButton.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0240 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0250
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0250
     * @tc.desc      Call getUIContext()-showDatePickerDialog()-disappearTextStyle-PickerTextStyle-font-size-"10px".
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0250', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0250 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupboxDatePickerDialogInterface/" +
        "UiComponentPopupboxDatePickerDialogInterface0250")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let datePickerButton = await driver.findComponent(ON.id('UiComponentPopupboxDatePickerDialogInterface0250_001'));
      await datePickerButton.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0250 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0260
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0260
     * @tc.desc      Call getUIContext()-showDatePickerDialog()-disappearTextStyle-PickerTextStyle-font-size-10.
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0260', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0260 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupboxDatePickerDialogInterface/" +
        "UiComponentPopupboxDatePickerDialogInterface0260")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let datePickerButton = await driver.findComponent(ON.id('UiComponentPopupboxDatePickerDialogInterface0260_001'));
      await datePickerButton.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0260 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0270
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0270
     * @tc.desc      Call getUIContext()-showDatePickerDialog()-disappearTextStyle-PickerTextStyle-font-size-Resource.
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0270', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0270 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupboxDatePickerDialogInterface/" +
        "UiComponentPopupboxDatePickerDialogInterface0270")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let datePickerButton = await driver.findComponent(ON.id('UiComponentPopupboxDatePickerDialogInterface0270_001'));
      await datePickerButton.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0270 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0280
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0280
     * @tc.desc      Call getUIContext()-showDatePickerDialog()-disappearTextStyle-PickerTextStyle-font-weight-FontWeight-Lighter.
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0280', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0280 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupboxDatePickerDialogInterface/" +
        "UiComponentPopupboxDatePickerDialogInterface0280")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let datePickerButton = await driver.findComponent(ON.id('UiComponentPopupboxDatePickerDialogInterface0280_001'));
      await datePickerButton.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0280 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0290
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0290
     * @tc.desc      Call getUIContext()-showDatePickerDialog()-disappearTextStyle-PickerTextStyle-font-weight-FontWeight-Normal.
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0290', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0290 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupboxDatePickerDialogInterface/" +
        "UiComponentPopupboxDatePickerDialogInterface0290")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let datePickerButton = await driver.findComponent(ON.id('UiComponentPopupboxDatePickerDialogInterface0290_001'));
      await datePickerButton.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0290 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0300
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0300
     * @tc.desc      Call getUIContext()-showDatePickerDialog()-disappearTextStyle-PickerTextStyle-font-weight-FontWeight-Regular.
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0300', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0300 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupboxDatePickerDialogInterface/" +
        "UiComponentPopupboxDatePickerDialogInterface0300")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let datePickerButton = await driver.findComponent(ON.id('UiComponentPopupboxDatePickerDialogInterface0300_001'));
      await datePickerButton.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0300 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0310
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0310
     * @tc.desc      Call getUIContext()-showDatePickerDialog()-disappearTextStyle-PickerTextStyle-font-weight-FontWeight-Medium.
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0310', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0310 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupboxDatePickerDialogInterface/" +
        "UiComponentPopupboxDatePickerDialogInterface0310")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let datePickerButton = await driver.findComponent(ON.id('UiComponentPopupboxDatePickerDialogInterface0310_001'));
      await datePickerButton.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0310 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0320
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0320
     * @tc.desc      Call getUIContext()-showDatePickerDialog()-disappearTextStyle-PickerTextStyle-font-weight-FontWeight-Bold.
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0320', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0320 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupboxDatePickerDialogInterface/" +
        "UiComponentPopupboxDatePickerDialogInterface0320")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let datePickerButton = await driver.findComponent(ON.id('UiComponentPopupboxDatePickerDialogInterface0320_001'));
      await datePickerButton.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0320 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0330
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0330
     * @tc.desc      Call getUIContext()-showDatePickerDialog()-disappearTextStyle-PickerTextStyle-font-weight-FontWeight-Bolder.
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0330', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0330 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupboxDatePickerDialogInterface/" +
        "UiComponentPopupboxDatePickerDialogInterface0330")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let datePickerButton = await driver.findComponent(ON.id('UiComponentPopupboxDatePickerDialogInterface0330_001'));
      await datePickerButton.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0330 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0340
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0340
     * @tc.desc      Call getUIContext()-showDatePickerDialog()-disappearTextStyle-PickerTextStyle-font-weight-number-400.
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0340', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0340 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupboxDatePickerDialogInterface/" +
        "UiComponentPopupboxDatePickerDialogInterface0340")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let datePickerButton = await driver.findComponent(ON.id('UiComponentPopupboxDatePickerDialogInterface0340_001'));
      await datePickerButton.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0340 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0350
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0350
     * @tc.desc      Call getUIContext()-showDatePickerDialog()-disappearTextStyle-PickerTextStyle-font-weight-number-500.
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0350', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0350 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupboxDatePickerDialogInterface/" +
        "UiComponentPopupboxDatePickerDialogInterface0350")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let datePickerButton = await driver.findComponent(ON.id('UiComponentPopupboxDatePickerDialogInterface0350_001'));
      await datePickerButton.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0350 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0360
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0360
     * @tc.desc      Call getUIContext()-showDatePickerDialog()-disappearTextStyle-PickerTextStyle-font-weight-string-"500".
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0360', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0360 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupboxDatePickerDialogInterface/" +
        "UiComponentPopupboxDatePickerDialogInterface0360")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let datePickerButton = await driver.findComponent(ON.id('UiComponentPopupboxDatePickerDialogInterface0360_001'));
      await datePickerButton.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0360 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0370
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0370
     * @tc.desc      Call getUIContext()-showDatePickerDialog()-disappearTextStyle-PickerTextStyle-font-family-string.
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0370', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0370 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupboxDatePickerDialogInterface/" +
        "UiComponentPopupboxDatePickerDialogInterface0370")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let datePickerButton = await driver.findComponent(ON.id('UiComponentPopupboxDatePickerDialogInterface0370_001'));
      await datePickerButton.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0370 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0380
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0380
     * @tc.desc      Call getUIContext()-showDatePickerDialog()-disappearTextStyle-PickerTextStyle-font-family-Resource.
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0380', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0380 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupboxDatePickerDialogInterface/" +
        "UiComponentPopupboxDatePickerDialogInterface0380")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let datePickerButton = await driver.findComponent(ON.id('UiComponentPopupboxDatePickerDialogInterface0380_001'));
      await datePickerButton.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0380 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0390
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0390
     * @tc.desc      Call getUIContext()-showDatePickerDialog()-disappearTextStyle-PickerTextStyle-font-style-Normal.
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0390', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0390 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupboxDatePickerDialogInterface/" +
        "UiComponentPopupboxDatePickerDialogInterface0390")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let datePickerButton = await driver.findComponent(ON.id('UiComponentPopupboxDatePickerDialogInterface0390_001'));
      await datePickerButton.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0390 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0400
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0400
     * @tc.desc      Call getUIContext()-showDatePickerDialog()-disappearTextStyle-PickerTextStyle-font-style-Italic.
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0400', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0400 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupboxDatePickerDialogInterface/" +
        "UiComponentPopupboxDatePickerDialogInterface0400")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let datePickerButton = await driver.findComponent(ON.id('UiComponentPopupboxDatePickerDialogInterface0400_001'));
      await datePickerButton.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0400 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0410
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0410
     * @tc.desc      Call getUIContext()-showDatePickerDialog()-textStyle-PickerTextStyle-color-Color.Blue.
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0410', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0410 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupboxDatePickerDialogInterface/" +
        "UiComponentPopupboxDatePickerDialogInterface0410")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let datePickerButton = await driver.findComponent(ON.id('UiComponentPopupboxDatePickerDialogInterface0410_001'));
      await datePickerButton.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0410 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0420
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0420
     * @tc.desc      Call getUIContext()-showDatePickerDialog()-textStyle-PickerTextStyle-color-0x0000ff.
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0420', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0420 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupboxDatePickerDialogInterface/" +
        "UiComponentPopupboxDatePickerDialogInterface0420")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let datePickerButton = await driver.findComponent(ON.id('UiComponentPopupboxDatePickerDialogInterface0420_001'));
      await datePickerButton.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0420 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0430
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0430
     * @tc.desc      Call getUIContext()-showDatePickerDialog()-textStyle-PickerTextStyle-color-"rgb(255,0,0)".
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0430', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0430 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupboxDatePickerDialogInterface/" +
        "UiComponentPopupboxDatePickerDialogInterface0430")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let datePickerButton = await driver.findComponent(ON.id('UiComponentPopupboxDatePickerDialogInterface0430_001'));
      await datePickerButton.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0430 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0440
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0440
     * @tc.desc      Call getUIContext()-showDatePickerDialog()-textStyle-PickerTextStyle-color-$r(app.color blue).
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0440', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0440 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupboxDatePickerDialogInterface/" +
        "UiComponentPopupboxDatePickerDialogInterface0440")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let datePickerButton = await driver.findComponent(ON.id('UiComponentPopupboxDatePickerDialogInterface0440_001'));
      await datePickerButton.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0440 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0450
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0450
     * @tc.desc      Call getUIContext()-showDatePickerDialog()-textStyle-PickerTextStyle-font-size-"10px".
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0450', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0450 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupboxDatePickerDialogInterface/" +
        "UiComponentPopupboxDatePickerDialogInterface0450")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let datePickerButton = await driver.findComponent(ON.id('UiComponentPopupboxDatePickerDialogInterface0450_001'));
      await datePickerButton.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0450 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0460
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0460
     * @tc.desc      Call getUIContext()-showDatePickerDialog()-textStyle-PickerTextStyle-font-size-10.
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0460', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0460 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupboxDatePickerDialogInterface/" +
        "UiComponentPopupboxDatePickerDialogInterface0460")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let datePickerButton = await driver.findComponent(ON.id('UiComponentPopupboxDatePickerDialogInterface0460_001'));
      await datePickerButton.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0460 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0470
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0470
     * @tc.desc      Call getUIContext()-showDatePickerDialog()-textStyle-PickerTextStyle-font-size-Resource.
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0470', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0470 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupboxDatePickerDialogInterface/" +
        "UiComponentPopupboxDatePickerDialogInterface0470")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let datePickerButton = await driver.findComponent(ON.id('UiComponentPopupboxDatePickerDialogInterface0470_001'));
      await datePickerButton.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0470 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0480
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0480
     * @tc.desc      Call getUIContext()-showDatePickerDialog()-textStyle-PickerTextStyle-font-weight-FontWeight-Lighter.
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0480', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0480 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupboxDatePickerDialogInterface/" +
        "UiComponentPopupboxDatePickerDialogInterface0480")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let datePickerButton = await driver.findComponent(ON.id('UiComponentPopupboxDatePickerDialogInterface0480_001'));
      await datePickerButton.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0480 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0490
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0490
     * @tc.desc      Call getUIContext()-showDatePickerDialog()-textStyle-PickerTextStyle-font-weight-FontWeight-Normal.
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0490', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0490 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupboxDatePickerDialogInterface/" +
        "UiComponentPopupboxDatePickerDialogInterface0490")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let datePickerButton = await driver.findComponent(ON.id('UiComponentPopupboxDatePickerDialogInterface0490_001'));
      await datePickerButton.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0490 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0500
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0500
     * @tc.desc      Call getUIContext()-showDatePickerDialog()-textStyle-PickerTextStyle-font-weight-FontWeight-Regular.
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0500', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0500 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupboxDatePickerDialogInterface/" +
        "UiComponentPopupboxDatePickerDialogInterface0500")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let datePickerButton = await driver.findComponent(ON.id('UiComponentPopupboxDatePickerDialogInterface0500_001'));
      await datePickerButton.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0500 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0510
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0510
     * @tc.desc      Call getUIContext()-showDatePickerDialog()-textStyle-PickerTextStyle-font-weight-FontWeight-Medium.
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0510', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0510 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupboxDatePickerDialogInterface/" +
        "UiComponentPopupboxDatePickerDialogInterface0510")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let datePickerButton = await driver.findComponent(ON.id('UiComponentPopupboxDatePickerDialogInterface0510_001'));
      await datePickerButton.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0510 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0520
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0520
     * @tc.desc      Call getUIContext()-showDatePickerDialog()-textStyle-PickerTextStyle-font-weight-FontWeight-Bold.
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0520', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0520 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupboxDatePickerDialogInterface/" +
        "UiComponentPopupboxDatePickerDialogInterface0520")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let datePickerButton = await driver.findComponent(ON.id('UiComponentPopupboxDatePickerDialogInterface0520_001'));
      await datePickerButton.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0520 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0530
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0530
     * @tc.desc      Call getUIContext()-showDatePickerDialog()-textStyle-PickerTextStyle-font-weight-FontWeight-Bolder.
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0530', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0530 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupboxDatePickerDialogInterface/" +
        "UiComponentPopupboxDatePickerDialogInterface0530")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let datePickerButton = await driver.findComponent(ON.id('UiComponentPopupboxDatePickerDialogInterface0530_001'));
      await datePickerButton.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0530 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0540
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0540
     * @tc.desc      Call getUIContext()-showDatePickerDialog()-textStyle-PickerTextStyle-font-weight-number-400.
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0540', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0540 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupboxDatePickerDialogInterface/" +
        "UiComponentPopupboxDatePickerDialogInterface0540")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let datePickerButton = await driver.findComponent(ON.id('UiComponentPopupboxDatePickerDialogInterface0540_001'));
      await datePickerButton.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0540 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0550
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0550
     * @tc.desc      Call getUIContext()-showDatePickerDialog()-textStyle-PickerTextStyle-font-weight-number-500.
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0550', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0550 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupboxDatePickerDialogInterface/" +
        "UiComponentPopupboxDatePickerDialogInterface0550")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let datePickerButton = await driver.findComponent(ON.id('UiComponentPopupboxDatePickerDialogInterface0550_001'));
      await datePickerButton.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0550 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0560
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0560
     * @tc.desc      Call getUIContext()-showDatePickerDialog()-textStyle-PickerTextStyle-font-weight-string-"500".
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0560', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0560 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupboxDatePickerDialogInterface/" +
        "UiComponentPopupboxDatePickerDialogInterface0560")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let datePickerButton = await driver.findComponent(ON.id('UiComponentPopupboxDatePickerDialogInterface0560_001'));
      await datePickerButton.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0560 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0570
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0570
     * @tc.desc      Call getUIContext()-showDatePickerDialog()-textStyle-PickerTextStyle-font-family-string.
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0570', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0570 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupboxDatePickerDialogInterface/" +
        "UiComponentPopupboxDatePickerDialogInterface0570")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let datePickerButton = await driver.findComponent(ON.id('UiComponentPopupboxDatePickerDialogInterface0570_001'));
      await datePickerButton.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0570 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0580
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0580
     * @tc.desc      Call getUIContext()-showDatePickerDialog()-textStyle-PickerTextStyle-font-family-Resource.
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0580', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0580 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupboxDatePickerDialogInterface/" +
        "UiComponentPopupboxDatePickerDialogInterface0580")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let datePickerButton = await driver.findComponent(ON.id('UiComponentPopupboxDatePickerDialogInterface0580_001'));
      await datePickerButton.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0580 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0590
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0590
     * @tc.desc      Call getUIContext()-showDatePickerDialog()-textStyle-PickerTextStyle-font-style-Normal.
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0590', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0590 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupboxDatePickerDialogInterface/" +
        "UiComponentPopupboxDatePickerDialogInterface0590")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let datePickerButton = await driver.findComponent(ON.id('UiComponentPopupboxDatePickerDialogInterface0590_001'));
      await datePickerButton.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0590 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0600
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0600
     * @tc.desc      Call getUIContext()-showDatePickerDialog()-textStyle-PickerTextStyle-font-style-Italic.
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0600', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0600 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupboxDatePickerDialogInterface/" +
        "UiComponentPopupboxDatePickerDialogInterface0600")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let datePickerButton = await driver.findComponent(ON.id('UiComponentPopupboxDatePickerDialogInterface0600_001'));
      await datePickerButton.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0600 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0610
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0610
     * @tc.desc      Call getUIContext()-showDatePickerDialog()-selectedTextStyle-PickerTextStyle-font-size-"10px".
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0610', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0610 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupboxDatePickerDialogInterface/" +
        "UiComponentPopupboxDatePickerDialogInterface0610")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let datePickerButton = await driver.findComponent(ON.id('UiComponentPopupboxDatePickerDialogInterface0610_001'));
      await datePickerButton.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0610 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0620
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0620
     * @tc.desc      Call getUIContext()-showDatePickerDialog()-selectedTextStyle-PickerTextStyle-font-size-10.
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0620', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0620 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupboxDatePickerDialogInterface/" +
        "UiComponentPopupboxDatePickerDialogInterface0620")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let datePickerButton = await driver.findComponent(ON.id('UiComponentPopupboxDatePickerDialogInterface0620_001'));
      await datePickerButton.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0620 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0630
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0630
     * @tc.desc      Call getUIContext()-showDatePickerDialog()-selectedTextStyle-PickerTextStyle-font-size-Resource.
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0630', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0630 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupboxDatePickerDialogInterface/" +
        "UiComponentPopupboxDatePickerDialogInterface0630")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let datePickerButton = await driver.findComponent(ON.id('UiComponentPopupboxDatePickerDialogInterface0630_001'));
      await datePickerButton.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0630 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0640
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0640
     * @tc.desc      Call getUIContext()-showDatePickerDialog()-selectedTextStyle-PickerTextStyle-font-weight-FontWeight-Lighter.
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0640', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0640 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupboxDatePickerDialogInterface/" +
        "UiComponentPopupboxDatePickerDialogInterface0640")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let datePickerButton = await driver.findComponent(ON.id('UiComponentPopupboxDatePickerDialogInterface0640_001'));
      await datePickerButton.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0640 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0650
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0650
     * @tc.desc      Call getUIContext()-showDatePickerDialog()-selectedTextStyle-PickerTextStyle-font-weight-FontWeight-Normal.
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0650', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0650 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupboxDatePickerDialogInterface/" +
        "UiComponentPopupboxDatePickerDialogInterface0650")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let datePickerButton = await driver.findComponent(ON.id('UiComponentPopupboxDatePickerDialogInterface0650_001'));
      await datePickerButton.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0650 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0660
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0660
     * @tc.desc      Call getUIContext()-showDatePickerDialog()-selectedTextStyle-PickerTextStyle-font-weight-FontWeight-Regular.
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0660', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0660 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupboxDatePickerDialogInterface/" +
        "UiComponentPopupboxDatePickerDialogInterface0660")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let datePickerButton = await driver.findComponent(ON.id('UiComponentPopupboxDatePickerDialogInterface0660_001'));
      await datePickerButton.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0660 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0670
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0670
     * @tc.desc      Call getUIContext()-showDatePickerDialog()-selectedTextStyle-PickerTextStyle-font-weight-FontWeight-Medium.
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0670', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0670 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupboxDatePickerDialogInterface/" +
        "UiComponentPopupboxDatePickerDialogInterface0670")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let datePickerButton = await driver.findComponent(ON.id('UiComponentPopupboxDatePickerDialogInterface0670_001'));
      await datePickerButton.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0670 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0680
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0680
     * @tc.desc      Call getUIContext()-showDatePickerDialog()-selectedTextStyle-PickerTextStyle-font-weight-FontWeight-Bold.
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0680', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0680 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupboxDatePickerDialogInterface/" +
        "UiComponentPopupboxDatePickerDialogInterface0680")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let datePickerButton = await driver.findComponent(ON.id('UiComponentPopupboxDatePickerDialogInterface0680_001'));
      await datePickerButton.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0680 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0690
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0690
     * @tc.desc      Call getUIContext()-showDatePickerDialog()-selectedTextStyle-PickerTextStyle-font-weight-FontWeight-Bolder.
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0690', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0690 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupboxDatePickerDialogInterface/" +
        "UiComponentPopupboxDatePickerDialogInterface0690")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let datePickerButton = await driver.findComponent(ON.id('UiComponentPopupboxDatePickerDialogInterface0690_001'));
      await datePickerButton.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0690 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0700
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0700
     * @tc.desc      Call getUIContext()-showDatePickerDialog()-selectedTextStyle-PickerTextStyle-font-weight-number-400.
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0700', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0700 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupboxDatePickerDialogInterface/" +
        "UiComponentPopupboxDatePickerDialogInterface0700")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let datePickerButton = await driver.findComponent(ON.id('UiComponentPopupboxDatePickerDialogInterface0700_001'));
      await datePickerButton.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0700 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0710
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0710
     * @tc.desc      Call getUIContext()-showDatePickerDialog()-selectedTextStyle-PickerTextStyle-font-weight-number-500.
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0710', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0710 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupboxDatePickerDialogInterface/" +
        "UiComponentPopupboxDatePickerDialogInterface0710")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let datePickerButton = await driver.findComponent(ON.id('UiComponentPopupboxDatePickerDialogInterface0710_001'));
      await datePickerButton.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0710 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0720
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0720
     * @tc.desc      Call getUIContext()-showDatePickerDialog()-selectedTextStyle-PickerTextStyle-font-weight-string-"500".
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0720', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0720 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupboxDatePickerDialogInterface/" +
        "UiComponentPopupboxDatePickerDialogInterface0720")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let datePickerButton = await driver.findComponent(ON.id('UiComponentPopupboxDatePickerDialogInterface0720_001'));
      await datePickerButton.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0720 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0730
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0730
     * @tc.desc      Call getUIContext()-showDatePickerDialog()-selectedTextStyle-PickerTextStyle-font-family-string.
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0730', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0730 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupboxDatePickerDialogInterface/" +
        "UiComponentPopupboxDatePickerDialogInterface0730")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let datePickerButton = await driver.findComponent(ON.id('UiComponentPopupboxDatePickerDialogInterface0730_001'));
      await datePickerButton.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0730 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0740
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0740
     * @tc.desc      Call getUIContext()-showDatePickerDialog()-selectedTextStyle-PickerTextStyle-font-family-Resource.
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0740', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0740 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupboxDatePickerDialogInterface/" +
        "UiComponentPopupboxDatePickerDialogInterface0740")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let datePickerButton = await driver.findComponent(ON.id('UiComponentPopupboxDatePickerDialogInterface0740_001'));
      await datePickerButton.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0740 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0750
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0750
     * @tc.desc      Call getUIContext()-showDatePickerDialog()-selectedTextStyle-PickerTextStyle-font-style-Normal.
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0750', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0750 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupboxDatePickerDialogInterface/" +
        "UiComponentPopupboxDatePickerDialogInterface0750")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let datePickerButton = await driver.findComponent(ON.id('UiComponentPopupboxDatePickerDialogInterface0750_001'));
      await datePickerButton.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0750 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0760
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0760
     * @tc.desc      Call getUIContext()-showDatePickerDialog()-selectedTextStyle-PickerTextStyle-font-style-Italic.
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0760', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0760 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupboxDatePickerDialogInterface/" +
        "UiComponentPopupboxDatePickerDialogInterface0760")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let datePickerButton = await driver.findComponent(ON.id('UiComponentPopupboxDatePickerDialogInterface0760_001'));
      await datePickerButton.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0760 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0770
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0770
     * @tc.desc      Call getUIContext()-showDatePickerDialog()-onAccept.
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0770', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0770 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupboxDatePickerDialogInterface/" +
        "UiComponentPopupboxDatePickerDialogInterface0770")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let datePickerButton = await driver.findComponent(ON.id('UiComponentPopupboxDatePickerDialogInterface0770_001'));
      await datePickerButton.click();
      await Utils.sleep(1000)
      await driver.triggerKey(KeyCode.KEYCODE_ENTER);
      await Utils.sleep(1000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0770 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0780
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0780
     * @tc.desc      Call getUIContext()-showDatePickerDialog()-onCancel.
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0780', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0780 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupboxDatePickerDialogInterface/" +
        "UiComponentPopupboxDatePickerDialogInterface0780")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let datePickerButton = await driver.findComponent(ON.id('UiComponentPopupboxDatePickerDialogInterface0780_001'));
      await datePickerButton.click();
      await Utils.sleep(1000)
      await driver.triggerKey(KeyCode.KEYCODE_ENTER);
      await Utils.sleep(1000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0780 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0790
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0790
     * @tc.desc      Call getUIContext()-showDatePickerDialog()-Continuous invocation.
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0790', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0790 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupboxDatePickerDialogInterface/" +
        "UiComponentPopupboxDatePickerDialogInterface0790")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let datePickerButton = await driver.findComponent(ON.id('UiComponentPopupboxDatePickerDialogInterface0790_001'));
      await datePickerButton.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0790 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0830
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0830
     * @tc.desc      Regular call DatePickerDialog-disappearTextStyle-PickerTextStyle-font-size-"10px".
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0830', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0830 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupboxDatePickerDialogInterface/" +
        "UiComponentPopupboxDatePickerDialogInterface0830")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let datePickerButton = await driver.findComponent(ON.id('UiComponentPopupboxDatePickerDialogInterface0830_001'));
      await datePickerButton.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0830 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0840
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0840
     * @tc.desc      Regular call DatePickerDialog-disappearTextStyle-PickerTextStyle-font-size-10.
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0840', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0840 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupboxDatePickerDialogInterface/" +
        "UiComponentPopupboxDatePickerDialogInterface0840")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let datePickerButton = await driver.findComponent(ON.id('UiComponentPopupboxDatePickerDialogInterface0840_001'));
      await datePickerButton.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0840 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0850
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0850
     * @tc.desc      Regular call DatePickerDialog-disappearTextStyle-PickerTextStyle-font-size-Resource.
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0850', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0850 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupboxDatePickerDialogInterface/" +
        "UiComponentPopupboxDatePickerDialogInterface0850")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let datePickerButton = await driver.findComponent(ON.id('UiComponentPopupboxDatePickerDialogInterface0850_001'));
      await datePickerButton.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0850 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0880
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0880
     * @tc.desc      Regular call DatePickerDialog-textStyle-PickerTextStyle-font-size-"10px".
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0880', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0880 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupboxDatePickerDialogInterface/" +
        "UiComponentPopupboxDatePickerDialogInterface0880")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let datePickerButton = await driver.findComponent(ON.id('UiComponentPopupboxDatePickerDialogInterface0880_001'));
      await datePickerButton.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0880 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0890
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0890
     * @tc.desc      Regular call DatePickerDialog-textStyle-PickerTextStyle-font-size-10.
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0890', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0890 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupboxDatePickerDialogInterface/" +
        "UiComponentPopupboxDatePickerDialogInterface0890")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let datePickerButton = await driver.findComponent(ON.id('UiComponentPopupboxDatePickerDialogInterface0890_001'));
      await datePickerButton.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0890 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0900
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0900
     * @tc.desc      Regular call DatePickerDialog-textStyle-PickerTextStyle-font-size-Resource.
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0900', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0900 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupboxDatePickerDialogInterface/" +
        "UiComponentPopupboxDatePickerDialogInterface0900")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let datePickerButton = await driver.findComponent(ON.id('UiComponentPopupboxDatePickerDialogInterface0900_001'));
      await datePickerButton.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0900 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0910
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0910
     * @tc.desc      Regular call DatePickerDialog-textStyle-PickerTextStyle-font-weight-FontWeight-Lighter.
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0910', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0910 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupboxDatePickerDialogInterface/" +
        "UiComponentPopupboxDatePickerDialogInterface0910")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let datePickerButton = await driver.findComponent(ON.id('UiComponentPopupboxDatePickerDialogInterface0910_001'));
      await datePickerButton.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0910 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0920
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0920
     * @tc.desc      Regular call DatePickerDialog-textStyle-PickerTextStyle-font-weight-FontWeight-Normal.
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0920', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0920 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupboxDatePickerDialogInterface/" +
        "UiComponentPopupboxDatePickerDialogInterface0920")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let datePickerButton = await driver.findComponent(ON.id('UiComponentPopupboxDatePickerDialogInterface0920_001'));
      await datePickerButton.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0920 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0930
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0930
     * @tc.desc      Regular call DatePickerDialog-textStyle-PickerTextStyle-font-weight-FontWeight-Regular.
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0930', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0930 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupboxDatePickerDialogInterface/" +
        "UiComponentPopupboxDatePickerDialogInterface0930")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let datePickerButton = await driver.findComponent(ON.id('UiComponentPopupboxDatePickerDialogInterface0930_001'));
      await datePickerButton.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0930 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0940
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0940
     * @tc.desc      Regular call DatePickerDialog-textStyle-PickerTextStyle-font-weight-FontWeight-Medium.
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0940', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0940 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupboxDatePickerDialogInterface/" +
        "UiComponentPopupboxDatePickerDialogInterface0940")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let datePickerButton = await driver.findComponent(ON.id('UiComponentPopupboxDatePickerDialogInterface0940_001'));
      await datePickerButton.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0940 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0950
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0950
     * @tc.desc      Regular call DatePickerDialog-textStyle-PickerTextStyle-font-weight-FontWeight-Bold.
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0950', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0950 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupboxDatePickerDialogInterface/" +
        "UiComponentPopupboxDatePickerDialogInterface0950")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let datePickerButton = await driver.findComponent(ON.id('UiComponentPopupboxDatePickerDialogInterface0950_001'));
      await datePickerButton.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0950 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0960
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0960
     * @tc.desc      Regular call DatePickerDialog-textStyle-PickerTextStyle-font-weight-FontWeight-Bolder.
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0960', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0960 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupboxDatePickerDialogInterface/" +
        "UiComponentPopupboxDatePickerDialogInterface0960")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let datePickerButton = await driver.findComponent(ON.id('UiComponentPopupboxDatePickerDialogInterface0960_001'));
      await datePickerButton.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_0960 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_1000
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_1000
     * @tc.desc      Regular call DatePickerDialog-textStyle-PickerTextStyle-font-family-string.
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_1000', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_1000 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupboxDatePickerDialogInterface/" +
        "UiComponentPopupboxDatePickerDialogInterface1000")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let datePickerButton = await driver.findComponent(ON.id('UiComponentPopupboxDatePickerDialogInterface1000_001'));
      await datePickerButton.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_1000 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_1010
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_1010
     * @tc.desc      Regular call DatePickerDialog-textStyle-PickerTextStyle-font-family-Resource.
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_1010', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_1010 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupboxDatePickerDialogInterface/" +
        "UiComponentPopupboxDatePickerDialogInterface1010")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let datePickerButton = await driver.findComponent(ON.id('UiComponentPopupboxDatePickerDialogInterface1010_001'));
      await datePickerButton.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_1010 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_1020
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_1020
     * @tc.desc      Regular call DatePickerDialog-textStyle-PickerTextStyle-font-style-Normal.
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_1020', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_1020 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupboxDatePickerDialogInterface/" +
        "UiComponentPopupboxDatePickerDialogInterface1020")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let datePickerButton = await driver.findComponent(ON.id('UiComponentPopupboxDatePickerDialogInterface1020_001'));
      await datePickerButton.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_1020 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_1030
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_1030
     * @tc.desc      Regular call DatePickerDialog-textStyle-PickerTextStyle-font-style-Italic.
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_1030', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_1030 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupboxDatePickerDialogInterface/" +
        "UiComponentPopupboxDatePickerDialogInterface1030")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let datePickerButton = await driver.findComponent(ON.id('UiComponentPopupboxDatePickerDialogInterface1030_001'));
      await datePickerButton.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_1030 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_1070
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_1070
     * @tc.desc      Regular call DatePickerDialog-selectedTextStyle-PickerTextStyle-font-size-"10px".
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_1070', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_1070 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupboxDatePickerDialogInterface/" +
        "UiComponentPopupboxDatePickerDialogInterface1070")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let datePickerButton = await driver.findComponent(ON.id('UiComponentPopupboxDatePickerDialogInterface1070_001'));
      await datePickerButton.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_1070 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_1080
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_1080
     * @tc.desc      Regular call DatePickerDialog-selectedTextStyle-PickerTextStyle-font-size-10.
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_1080', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_1080 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupboxDatePickerDialogInterface/" +
        "UiComponentPopupboxDatePickerDialogInterface1080")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let datePickerButton = await driver.findComponent(ON.id('UiComponentPopupboxDatePickerDialogInterface1080_001'));
      await datePickerButton.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_1080 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_1090
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_1090
     * @tc.desc      Regular call DatePickerDialog-selectedTextStyle-PickerTextStyle-font-size-Resource.
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_1090', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_1090 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupboxDatePickerDialogInterface/" +
        "UiComponentPopupboxDatePickerDialogInterface1090")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let datePickerButton = await driver.findComponent(ON.id('UiComponentPopupboxDatePickerDialogInterface1090_001'));
      await datePickerButton.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_1090 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_1170
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_1170
     * @tc.desc      Regular call DatePickerDialog-onAccept.
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_1170', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_1170 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupboxDatePickerDialogInterface/" +
        "UiComponentPopupboxDatePickerDialogInterface1170")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let datePickerButton = await driver.findComponent(ON.id('UiComponentPopupboxDatePickerDialogInterface1170_001'));
      await datePickerButton.click();
      await Utils.sleep(1000)
      await driver.triggerKey(KeyCode.KEYCODE_ENTER);
      await Utils.sleep(1000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_1170 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_1180
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_1180
     * @tc.desc      Regular call DatePickerDialog-onCancel.
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_1180', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_1180 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupboxDatePickerDialogInterface/" +
        "UiComponentPopupboxDatePickerDialogInterface1180")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let datePickerButton = await driver.findComponent(ON.id('UiComponentPopupboxDatePickerDialogInterface1180_001'));
      await datePickerButton.click();
      await Utils.sleep(1000)
      await driver.triggerKey(KeyCode.KEYCODE_ENTER);
      await Utils.sleep(1000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_1180 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_1450
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_1450
     * @tc.desc      Regular call DatePickerDialog-start Date(normal)-end Date(normal)-onAccept.
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_1450', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_1450 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupboxDatePickerDialogInterface/" +
        "UiComponentPopupboxDatePickerDialogInterface1450")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let datePickerButton = await driver.findComponent(ON.id('UiComponentPopupboxDatePickerDialogInterface1450_001'));
      await datePickerButton.click();
      await Utils.sleep(1000)
      await driver.triggerKey(KeyCode.KEYCODE_ENTER);
      await Utils.sleep(1000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_1450 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_1460
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_1460
     * @tc.desc      Regular call DatePickerDialog-start Date(normal)-end Date(normal)-onCancel.
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_1460', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_1460 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupboxDatePickerDialogInterface/" +
        "UiComponentPopupboxDatePickerDialogInterface1460")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let datePickerButton = await driver.findComponent(ON.id('UiComponentPopupboxDatePickerDialogInterface1460_001'));
      await datePickerButton.click();
      await Utils.sleep(1000)
      await driver.triggerKey(KeyCode.KEYCODE_ENTER);
      await Utils.sleep(1000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_1460 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_1470
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_1470
     * @tc.desc      Regular call DatePickerDialog-start Date(normal)-end Date(normal)-onChange.
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_1470', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_1470 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupboxDatePickerDialogInterface/" +
        "UiComponentPopupboxDatePickerDialogInterface1470")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let datePickerButton = await driver.findComponent(ON.id('UiComponentPopupboxDatePickerDialogInterface1470_001'));
      await datePickerButton.click();
      await Utils.sleep(1000);
      await driver.fling({x: 300, y: 700}, {x: 300, y: 200}, 5, 600);
      await Utils.sleep(2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_INTERFACE_1470 finish.`);
      done()
    })
  })
}
