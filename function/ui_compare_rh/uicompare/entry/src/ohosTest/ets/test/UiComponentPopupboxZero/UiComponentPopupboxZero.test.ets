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

/*
 * UiComponentPopupboxZero
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

export default function UiComponentPopupboxZero() {

  describe('UiComponentPopupboxZero', () => {


    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_ZERO_0010
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_ZERO_0010
     * @tc.desc      Set TimePickerDialog is 12-hour with dateTimeOptions as hour: "2-digit", minute: "numeric".
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_ZERO_0010', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_ZERO_0010 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupboxZero/UiComponentPopupboxZero0010")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let timePickerButton = await driver.findComponent(ON.id('UiComponentPopupboxZero0010_001'));
      await timePickerButton.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_ZERO_0010 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_ZERO_0030
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_ZERO_0030
     * @tc.desc      Set TimePickerDialog is 12-hour with dateTimeOptions as hour: "", minute: "".
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_ZERO_0030', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_ZERO_0030 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupboxZero/UiComponentPopupboxZero0030")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let button = await driver.findComponent(ON.id('UiComponentPopupboxZero0030_001'));
      await button.click();
      await Utils.sleep(1000)
      let timePickerButton = await driver.findComponent(ON.id('UiComponentPopupboxZero0030_002'));
      await timePickerButton.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_ZERO_0030 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_ZERO_0040
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_ZERO_0040
     * @tc.desc      Set TimePickerDialog is 12-hour with dateTimeOptions as hour: undefined, minute: undefined.
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_ZERO_0040', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_ZERO_0040 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupboxZero/UiComponentPopupboxZero0040")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let button = await driver.findComponent(ON.id('UiComponentPopupboxZero0040_001'));
      await button.click();
      await Utils.sleep(1000)
      let timePickerButton = await driver.findComponent(ON.id('UiComponentPopupboxZero0040_002'));
      await timePickerButton.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_ZERO_0040 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_ZERO_0050
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_ZERO_0050
     * @tc.desc      Set TimePickerDialog is 12-hour with dateTimeOptions as hour: "numeric", minute: "2-digit".
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_ZERO_0050', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_ZERO_0050 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupboxZero/UiComponentPopupboxZero0050")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let button = await driver.findComponent(ON.id('UiComponentPopupboxZero0050_001'));
      await button.click();
      await Utils.sleep(1000)
      let timePickerButton = await driver.findComponent(ON.id('UiComponentPopupboxZero0050_002'));
      await timePickerButton.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_ZERO_0050 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_ZERO_0060
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_ZERO_0060
     * @tc.desc      Set TimePickerDialog is 12-hour with dateTimeOptions as hour: "hour", minute: "minute".
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_ZERO_0060', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_ZERO_0060 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupboxZero/UiComponentPopupboxZero0060")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let button = await driver.findComponent(ON.id('UiComponentPopupboxZero0060_001'));
      await button.click();
      await Utils.sleep(1000)
      let timePickerButton = await driver.findComponent(ON.id('UiComponentPopupboxZero0060_002'));
      await timePickerButton.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_ZERO_0060 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_ZERO_0070
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_ZERO_0070
     * @tc.desc      Set DatePickerDialog is 12-hour with dateTimeOptions as hour: "2-digit", minute: "numeric".
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_ZERO_0070', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_ZERO_0070 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupboxZero/UiComponentPopupboxZero0070")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let datePickerButton = await driver.findComponent(ON.id('UiComponentPopupboxZero0070_001'));
      await datePickerButton.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_ZERO_0070 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_ZERO_0090
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_ZERO_0090
     * @tc.desc      Set DatePickerDialog is 12-hour with dateTimeOptions as hour: "", minute: "".
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_ZERO_0090', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_ZERO_0090 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupboxZero/UiComponentPopupboxZero0090")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let button = await driver.findComponent(ON.id('UiComponentPopupboxZero0090_001'));
      await button.click();
      await Utils.sleep(1000)
      let datePickerButton = await driver.findComponent(ON.id('UiComponentPopupboxZero0090_002'));
      await datePickerButton.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_ZERO_0090 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_ZERO_0100
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_ZERO_0100
     * @tc.desc      Set DatePickerDialog is 12-hour with dateTimeOptions as hour: undefined, minute: undefined.
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_ZERO_0100', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_ZERO_0100 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupboxZero/UiComponentPopupboxZero0100")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let button = await driver.findComponent(ON.id('UiComponentPopupboxZero0100_001'));
      await button.click();
      await Utils.sleep(1000)
      let datePickerButton = await driver.findComponent(ON.id('UiComponentPopupboxZero0100_002'));
      await datePickerButton.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_ZERO_0100 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_ZERO_0110
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_ZERO_0110
     * @tc.desc      Set DatePickerDialog is 12-hour with dateTimeOptions as hour: "numeric", minute: "2-digit".
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_ZERO_0110', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_ZERO_0110 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupboxZero/UiComponentPopupboxZero0110")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let button = await driver.findComponent(ON.id('UiComponentPopupboxZero0110_001'));
      await button.click();
      await Utils.sleep(1000)
      let datePickerButton = await driver.findComponent(ON.id('UiComponentPopupboxZero0110_002'));
      await datePickerButton.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_ZERO_0110 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_ZERO_0120
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_ZERO_0120
     * @tc.desc      Set DatePickerDialog is 12-hour with dateTimeOptions as hour: "hour", minute: "minute".
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_ZERO_0120', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_ZERO_0120 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupboxZero/UiComponentPopupboxZero0120")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let button = await driver.findComponent(ON.id('UiComponentPopupboxZero0120_001'));
      await button.click();
      await Utils.sleep(1000)
      let datePickerButton = await driver.findComponent(ON.id('UiComponentPopupboxZero0120_002'));
      await datePickerButton.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_ZERO_0120 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_ZERO_0130
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_ZERO_0130
     * @tc.desc      Set TimePickerDialog is 24-hour with dateTimeOptions as hour: "2-digit", minute: "numeric".
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_ZERO_0130', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_ZERO_0130 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupboxZero/UiComponentPopupboxZero0130")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let timePickerButton = await driver.findComponent(ON.id('UiComponentPopupboxZero0130_001'));
      await timePickerButton.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_ZERO_0130 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_ZERO_0150
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_ZERO_0150
     * @tc.desc      Set TimePickerDialog is 24-hour with dateTimeOptions as hour: "", minute: "".
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_ZERO_0150', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_ZERO_0150 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupboxZero/UiComponentPopupboxZero0150")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let button = await driver.findComponent(ON.id('UiComponentPopupboxZero0150_001'));
      await button.click();
      await Utils.sleep(1000)
      let timePickerButton = await driver.findComponent(ON.id('UiComponentPopupboxZero0150_002'));
      await timePickerButton.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_ZERO_0150 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_ZERO_0160
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_ZERO_0160
     * @tc.desc      Set TimePickerDialog is 24-hour with dateTimeOptions as hour: undefined, minute: undefined.
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_ZERO_0160', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_ZERO_0160 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupboxZero/UiComponentPopupboxZero0160")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let button = await driver.findComponent(ON.id('UiComponentPopupboxZero0160_001'));
      await button.click();
      await Utils.sleep(1000)
      let timePickerButton = await driver.findComponent(ON.id('UiComponentPopupboxZero0160_002'));
      await timePickerButton.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_ZERO_0160 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_ZERO_0170
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_ZERO_0170
     * @tc.desc      Set TimePickerDialog is 24-hour with dateTimeOptions as hour: "numeric", minute: "2-digit".
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_ZERO_0170', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_ZERO_0170 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupboxZero/UiComponentPopupboxZero0170")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let button = await driver.findComponent(ON.id('UiComponentPopupboxZero0170_001'));
      await button.click();
      await Utils.sleep(1000)
      let timePickerButton = await driver.findComponent(ON.id('UiComponentPopupboxZero0170_002'));
      await timePickerButton.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_ZERO_0170 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_ZERO_0180
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_ZERO_0180
     * @tc.desc      Set TimePickerDialog is 24-hour with dateTimeOptions as hour: "hour", minute: "minute".
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_ZERO_0180', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_ZERO_0180 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupboxZero/UiComponentPopupboxZero0180")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let button = await driver.findComponent(ON.id('UiComponentPopupboxZero0180_001'));
      await button.click();
      await Utils.sleep(1000)
      let timePickerButton = await driver.findComponent(ON.id('UiComponentPopupboxZero0180_002'));
      await timePickerButton.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_ZERO_0180 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_ZERO_0190
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_ZERO_0190
     * @tc.desc      Set DatePickerDialog is 24-hour with dateTimeOptions as hour: "2-digit", minute: "numeric".
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_ZERO_0190', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_ZERO_0190 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupboxZero/UiComponentPopupboxZero0190")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let datePickerButton = await driver.findComponent(ON.id('UiComponentPopupboxZero0190_001'));
      await datePickerButton.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_ZERO_0190 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_ZERO_0210
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_ZERO_0210
     * @tc.desc      Set DatePickerDialog is 24-hour with dateTimeOptions as hour: "", minute: ""
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_ZERO_0210', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_ZERO_0210 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupboxZero/UiComponentPopupboxZero0210")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let button = await driver.findComponent(ON.id('UiComponentPopupboxZero0210_001'));
      await button.click();
      await Utils.sleep(1000)
      let datePickerButton = await driver.findComponent(ON.id('UiComponentPopupboxZero0210_002'));
      await datePickerButton.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_ZERO_0210 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_ZERO_0220
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_ZERO_0220
     * @tc.desc      Set DatePickerDialog is 24-hour with dateTimeOptions as hour: undefined, minute: undefined.
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_ZERO_0220', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_ZERO_0220 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupboxZero/UiComponentPopupboxZero0220")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let button = await driver.findComponent(ON.id('UiComponentPopupboxZero0220_001'));
      await button.click();
      await Utils.sleep(1000)
      let datePickerButton = await driver.findComponent(ON.id('UiComponentPopupboxZero0220_002'));
      await datePickerButton.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_ZERO_0220 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_ZERO_0230
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_ZERO_0230
     * @tc.desc      Set DatePickerDialog is 24-hour with dateTimeOptions as hour: "numeric", minute: "2-digit".
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_ZERO_0230', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_ZERO_0230 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupboxZero/UiComponentPopupboxZero0230")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let button = await driver.findComponent(ON.id('UiComponentPopupboxZero0230_001'));
      await button.click();
      await Utils.sleep(1000)
      let datePickerButton = await driver.findComponent(ON.id('UiComponentPopupboxZero0230_002'));
      await datePickerButton.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_ZERO_0230 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_ZERO_0240
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_ZERO_0240
     * @tc.desc      Set DatePickerDialog is 24-hour with dateTimeOptions as hour: "hour", minute: "minute".
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_ZERO_0240', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_ZERO_0240 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupboxZero/UiComponentPopupboxZero0240")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let button = await driver.findComponent(ON.id('UiComponentPopupboxZero0240_001'));
      await button.click();
      await Utils.sleep(1000)
      let datePickerButton = await driver.findComponent(ON.id('UiComponentPopupboxZero0240_002'));
      await datePickerButton.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_ZERO_0240 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_ZERO_0250
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_ZERO_0250
     * @tc.desc      Switch lunar calendar affect the leading zero settings of "DatePickerDialog 24-hour"?
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_ZERO_0250', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_ZERO_0250 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupboxZero/UiComponentPopupboxZero0250")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let button = await driver.findComponent(ON.id('UiComponentPopupboxZero0250_001'));
      await button.click();
      await Utils.sleep(1000)
      let datePickerButton = await driver.findComponent(ON.id('UiComponentPopupboxZero0250_002'));
      await datePickerButton.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_ZERO_0250 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_ZERO_0260
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_ZERO_0260
     * @tc.desc      Switch lunar calendar affect the leading zero settings of "DatePickerDialog 12-hour"?
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_ZERO_0260', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_ZERO_0260 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupboxZero/UiComponentPopupboxZero0260")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let button = await driver.findComponent(ON.id('UiComponentPopupboxZero0260_001'));
      await button.click();
      await Utils.sleep(1000)
      let datePickerButton = await driver.findComponent(ON.id('UiComponentPopupboxZero0260_002'));
      await datePickerButton.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_ZERO_0260 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_ZERO_0280
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_ZERO_0280
     * @tc.desc      Verify if other dateTimeOptions parameters affect the leading zero settings of "DatePickerDialog 24-hour".
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_ZERO_0280', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_ZERO_0280 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupboxZero/UiComponentPopupboxZero0280")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let button = await driver.findComponent(ON.id('UiComponentPopupboxZero0280_001'));
      await button.click();
      await Utils.sleep(1000)
      let button1 = await driver.findComponent(ON.id('UiComponentPopupboxZero0280_002'));
      await button1.click();
      await Utils.sleep(1000)
      let datePickerButton = await driver.findComponent(ON.id('UiComponentPopupboxZero0280_003'));
      await datePickerButton.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_ZERO_0280 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_ZERO_0290
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_ZERO_0290
     * @tc.desc      Verify if other dateTimeOptions parameters affect the leading zero settings of "TimePickerDialog 24-hour".
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_ZERO_0290', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_ZERO_0290 start.`);
      Settings.createWindow("testability/pages/UiComponentPopupboxZero/UiComponentPopupboxZero0290")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let button = await driver.findComponent(ON.id('UiComponentPopupboxZero0290_001'));
      await button.click();
      await Utils.sleep(1000)
      let button1 = await driver.findComponent(ON.id('UiComponentPopupboxZero0290_002'));
      await button1.click();
      await Utils.sleep(1000)
      let timePickerButton = await driver.findComponent(ON.id('UiComponentPopupboxZero0290_003'));
      await timePickerButton.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_ZERO_0290 finish.`);
      done()
    })
  })
}
