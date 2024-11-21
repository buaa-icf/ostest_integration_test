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
import { Driver, MouseButton, ON } from '@kit.TestKit';

export default function UIComponentPopupboxDatepickerDialogLanguageHabit() {

  describe('UIComponentPopupboxDatepickerDialogLanguageHabit', () => {

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0050
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0050
     * @tc.desc      DatePicker
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0050', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0050 start.`);
      Settings.createWindow("testability/pages/UIComponentPopupboxDatepickerDialogLanguageHabit/UIComponentPopupboxDatepickerDialogLanguageHabit0050")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let datePicker = await driver.findComponent(ON.id('datepickerDialogLanguageHabit0050'));
      let btn = await driver.findComponent(ON.id('datepickerDialogLanguageHabit0050_btn'));
      await Utils.sleep(500);
      Settings.switchLocales();
      await Utils.sleep(1000)
      await btn.click();
      await Utils.sleep(500);
      let point = await datePicker.getBoundsCenter();
      await Utils.sleep(500);
      await driver.mouseScroll({
        x: point.x, y: point.y
      }, true, 2);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0050 finish.`);
      done();
    })
    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0070
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0070
     * @tc.desc      DatePicker
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0070', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0070 start.`);
      Settings.createWindow("testability/pages/UIComponentPopupboxDatepickerDialogLanguageHabit/UIComponentPopupboxDatepickerDialogLanguageHabit0050")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let datePicker = await driver.findComponent(ON.id('datepickerDialogLanguageHabit0050'));
      await Utils.sleep(500);
      let point = await datePicker.getBoundsCenter();
      await Utils.sleep(500);
      await driver.mouseScroll({
        x: point.x, y: point.y
      }, true, 2);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0070 finish.`);
      done();
    })
    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0100
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0100
     * @tc.desc      DatePicker
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0100', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0100 start.`);
      Settings.createWindow("testability/pages/UIComponentPopupboxDatepickerDialogLanguageHabit/UIComponentPopupboxDatepickerDialogLanguageHabit0050")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let btn = await driver.findComponent(ON.id('datepickerDialogLanguageHabit0050_btn'));
      await Utils.sleep(500);
      Settings.switchCusLocales('zh-Hans-CN');
      await Utils.sleep(1000)
      await btn.click();
      await Utils.sleep(1000);
      Settings.switchCusLocales('en-Latn-CN');
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0100 finish.`);
      done();
    })
    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0030
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0030
     * @tc.desc      DatePicker
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0030', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0030 start.`);
      Settings.createWindow("testability/pages/UIComponentPopupboxDatepickerDialogLanguageHabit/UIComponentPopupboxDatepickerDialogLanguageHabit0050")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let datePicker = await driver.findComponent(ON.id('datepickerDialogLanguageHabit0050'));
      let btn = await driver.findComponent(ON.id('datepickerDialogLanguageHabit0050_btn'));
      await Utils.sleep(500);
      Settings.switchCusLocales('zh-Hant-CN');
      await Utils.sleep(1000)
      await btn.click();
      await Utils.sleep(500);
      let point = await datePicker.getBoundsCenter();
      await Utils.sleep(500);
      await driver.mouseScroll({
        x: point.x, y: point.y
      }, true, 2);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0030 finish.`);
      done();
    })
    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0040
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0040
     * @tc.desc      DatePicker
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0040', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0040 start.`);
      Settings.createWindow("testability/pages/UIComponentPopupboxDatepickerDialogLanguageHabit/UIComponentPopupboxDatepickerDialogLanguageHabit0050")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let datePicker = await driver.findComponent(ON.id('datepickerDialogLanguageHabit0050'));
      let btn = await driver.findComponent(ON.id('datepickerDialogLanguageHabit0050_btn'));
      await Utils.sleep(500);
      Settings.switchCusLocales('zh-Hant-CN');
      await Utils.sleep(1000)
      await btn.click();
      await Utils.sleep(500);
      let point = await datePicker.getBoundsCenter();
      await Utils.sleep(500);
      await driver.mouseScroll({
        x: point.x, y: point.y
      }, true, 2);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0040 finish.`);
      done();
    })
    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0090
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0090
     * @tc.desc      DatePicker
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0090', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0090 start.`);
      Settings.createWindow("testability/pages/UIComponentPopupboxDatepickerDialogLanguageHabit/UIComponentPopupboxDatepickerDialogLanguageHabit0050")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let datePicker = await driver.findComponent(ON.id('datepickerDialogLanguageHabit0050'));
      await Utils.sleep(500);
      Settings.switchCusLocales('zh-Hant-CN');
      await Utils.sleep(1000)
      let point = await datePicker.getBoundsCenter();
      await Utils.sleep(500);
      await driver.mouseScroll({
        x: point.x, y: point.y
      }, true, 2);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0090 finish.`);
      done();
    })
    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0110
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0110
     * @tc.desc      DatePicker
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0110', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0110 start.`);
      Settings.createWindow("testability/pages/UIComponentPopupboxDatepickerDialogLanguageHabit/UIComponentPopupboxDatepickerDialogLanguageHabit0050")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let btn = await driver.findComponent(ON.id('datepickerDialogLanguageHabit0050_btn'));
      await Utils.sleep(500);
      Settings.switchCusLocales('zh-Hans-CN');
      await Utils.sleep(1000)
      await btn.click();
      await Utils.sleep(1000);
      Settings.switchCusLocales('zh-Hant-CN');
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0110 finish.`);
      done();
    })
    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0010
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0010
     * @tc.desc      DatePicker
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0010', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0010 start.`);
      Settings.createWindow("testability/pages/UIComponentPopupboxDatepickerDialogLanguageHabit/UIComponentPopupboxDatepickerDialogLanguageHabit0050")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let btn = await driver.findComponent(ON.id('datepickerDialogLanguageHabit0050_btn'));
      let datePicker = await driver.findComponent(ON.id('datepickerDialogLanguageHabit0050'));
      await Utils.sleep(500);
      Settings.switchCusLocales('zh-Hans-CN');
      await Utils.sleep(1000)
      await btn.click();
      await Utils.sleep(500);
      let point = await datePicker.getBoundsCenter();
      await Utils.sleep(500);
      await driver.mouseScroll({
        x: point.x, y: point.y
      }, true, 2);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0010 finish.`);
      done();
    })
    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0150
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0150
     * @tc.desc      DatePicker
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0150', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0150 start.`);
      Settings.createWindow("testability/pages/UIComponentPopupboxDatepickerDialogLanguageHabit/UIComponentPopupboxDatepickerDialogLanguageHabit0050")
      await Utils.sleep(1000)
      Settings.switchCusLocales('zh-Hans-CN');
      await Utils.sleep(1000);
      Settings.switchCusLocales('zh-Hant-CN');
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0150 finish.`);
      done();
    })
    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0080
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0080
     * @tc.desc      DatePicker
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0080', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0080 start.`);
      Settings.createWindow("testability/pages/UIComponentPopupboxDatepickerDialogLanguageHabit/UIComponentPopupboxDatepickerDialogLanguageHabit0050")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let datePicker = await driver.findComponent(ON.id('datepickerDialogLanguageHabit0050'));
      await Utils.sleep(1000);
      Settings.switchCusLocales('zh-Hant-CN');
      await Utils.sleep(500);
      let point = await datePicker.getBoundsCenter();
      await Utils.sleep(500);
      await driver.mouseScroll({
        x: point.x, y: point.y
      }, true, 2);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0080 finish.`);
      done();
    })
    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0140
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0140
     * @tc.desc      DatePicker
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0140', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0140 start.`);
      Settings.createWindow("testability/pages/UIComponentPopupboxDatepickerDialogLanguageHabit/UIComponentPopupboxDatepickerDialogLanguageHabit0050")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let btn = await driver.findComponent(ON.id('datepickerDialogLanguageHabit0050_btn'));
      await Utils.sleep(500);
      Settings.switchCusLocales('zh-Hans-CN');
      await Utils.sleep(1000)
      await btn.click();
      await Utils.sleep(1000);
      Settings.switchCusLocales('ug-CN');
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0140 finish.`);
      done();
    })
    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0060
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0060
     * @tc.desc      DatePicker
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0060', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0060 start.`);
      Settings.createWindow("testability/pages/UIComponentPopupboxDatepickerDialogLanguageHabit/UIComponentPopupboxDatepickerDialogLanguageHabit0050")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let datePicker = await driver.findComponent(ON.id('datepickerDialogLanguageHabit0050'));
      let btn = await driver.findComponent(ON.id('datepickerDialogLanguageHabit0050_btn'));
      await Utils.sleep(1000);
      Settings.switchCusLocales('ug-CN');
      await Utils.sleep(500);
      await btn.click();
      await Utils.sleep(500);
      let point = await datePicker.getBoundsCenter();
      await Utils.sleep(500);
      await driver.mouseScroll({
        x: point.x, y: point.y
      }, true, 2);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0060 finish.`);
      done();
    })
    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0120
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0120
     * @tc.desc      DatePicker
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0120', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0120 start.`);
      Settings.createWindow("testability/pages/UIComponentPopupboxDatepickerDialogLanguageHabit/UIComponentPopupboxDatepickerDialogLanguageHabit0050")
      await Utils.sleep(1000)
      Settings.switchCusLocales('zh-Hans-CN');
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let btn = await driver.findComponent(ON.id('datepickerDialogLanguageHabit0050_btn'));
      await Utils.sleep(500);
      await btn.click();
      await Utils.sleep(1000);
      Settings.switchCusLocales('zh-Hant-CN');
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0120 finish.`);
      done();
    })
    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0130
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0130
     * @tc.desc      DatePicker
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0130', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0130 start.`);
      Settings.createWindow("testability/pages/UIComponentPopupboxDatepickerDialogLanguageHabit/UIComponentPopupboxDatepickerDialogLanguageHabit0050")
      await Utils.sleep(1000)
      Settings.switchCusLocales('zh-Hans-CN');
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let btn = await driver.findComponent(ON.id('datepickerDialogLanguageHabit0050_btn'));
      await Utils.sleep(500);
      await btn.click();
      await Utils.sleep(1000);
      Settings.switchCusLocales('bo-CN');
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0130 finish.`);
      done();
    })
    /*
    * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0210_1
    * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0210_1
    * @tc.desc      DatePicker
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0210_1', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0210_1 start.`);
      Settings.createWindow("testability/pages/UIComponentPopupboxDatepickerDialogLanguageHabit/UIComponentPopupboxDatepickerDialogLanguageHabit0210")
      await Utils.sleep(1000)
      Settings.switchCusLocales('bo-CN');
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let btn = await driver.findComponent(ON.id('datepickerDialogLanguageHabit0210_btn'));
      await Utils.sleep(500);
      await btn.click();
      await Utils.sleep(500);
      let timePicker = await driver.findComponent(ON.type('TimePicker'));
      let datePicker = await driver.findComponent(ON.type('DatePicker'));
      let point1 = await datePicker.getBounds();
      let point2 = await timePicker.getBounds();
      let centerX1 = (point1.left + point1.right) / 2;
      let centerY1 = (point1.top + point1.bottom) / 2;
      let centerX2 = (point2.left + point2.right) / 2;
      let centerY2 = (point2.top + point2.bottom) / 2;
      await Utils.sleep(300);
      await driver.mouseScroll({
        x: centerX1, y: centerY1
      }, true, 3);
      await Utils.sleep(500);
      await driver.mouseScroll({
        x: centerX2 - 80, y: centerY2
      }, true, 3);
      await Utils.sleep(1000);
      // await driver.mouseClick({x:point2.left+150,y:point2.bottom+100},MouseButton.MOUSE_BUTTON_LEFT);
      await driver.click(point2.left + 150, point2.bottom + 100);
      await Utils.sleep(1500);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0210_1 finish.`);
      done();
    })
    /*
    * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0210_2
    * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0210_2
    * @tc.desc      DatePicker
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0210_2', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0210_2 start.`);
      Settings.createWindow("testability/pages/UIComponentPopupboxDatepickerDialogLanguageHabit/UIComponentPopupboxDatepickerDialogLanguageHabit0210")
      await Utils.sleep(1000)
      Settings.switchCusLocales('bo-CN');
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let cb1 = await driver.findComponent(ON.id('datepickerDialogLanguageHabit0210_cb1'));
      let btn = await driver.findComponent(ON.id('datepickerDialogLanguageHabit0210_btn'));
      await Utils.sleep(300);
      await cb1.click();
      await Utils.sleep(300);
      await btn.click();
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0210_2 finish.`);
      done();
    })
    /*
    * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0210_3
    * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0210_3
    * @tc.desc      DatePicker
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0210_3', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0210_3 start.`);
      Settings.createWindow("testability/pages/UIComponentPopupboxDatepickerDialogLanguageHabit/UIComponentPopupboxDatepickerDialogLanguageHabit0210")
      await Utils.sleep(1000)
      Settings.switchCusLocales('bo-CN');
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let cb2 = await driver.findComponent(ON.id('datepickerDialogLanguageHabit0210_cb2'));
      let btn = await driver.findComponent(ON.id('datepickerDialogLanguageHabit0210_btn'));
      await Utils.sleep(500);
      await cb2.click();
      await Utils.sleep(500);
      await btn.click();
      await Utils.sleep(1500);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0210_3 finish.`);
      done();
    })
    /*
    * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0170_1
    * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0170_1
    * @tc.desc      DatePicker
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0170_1', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0170_1 start.`);
      Settings.createWindow("testability/pages/UIComponentPopupboxDatepickerDialogLanguageHabit/UIComponentPopupboxDatepickerDialogLanguageHabit0210")
      await Utils.sleep(1000)
      Settings.switchCusLocales('zh-Hans-CN');
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let btn = await driver.findComponent(ON.id('datepickerDialogLanguageHabit0210_btn'));
      await Utils.sleep(500);
      await btn.click();
      await Utils.sleep(500);
      let timePicker = await driver.findComponent(ON.type('TimePicker'));
      let datePicker = await driver.findComponent(ON.type('DatePicker'));
      let point1 = await datePicker.getBounds();
      let point2 = await timePicker.getBounds();
      let centerX1 = (point1.left + point1.right) / 2;
      let centerY1 = (point1.top + point1.bottom) / 2;
      let centerX2 = (point2.left + point2.right) / 2;
      let centerY2 = (point2.top + point2.bottom) / 2;
      await Utils.sleep(300);
      await driver.mouseScroll({
        x: centerX1, y: centerY1
      }, true, 2);
      await Utils.sleep(500);
      await driver.mouseScroll({
        x: centerX2 - 80, y: centerY2
      }, true, 3);
      await Utils.sleep(1000);
      await driver.click(point2.left + 150, point2.bottom + 100);
      await Utils.sleep(1500);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0170_1 finish.`);
      done();
    })
    /*
    * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0170_2
    * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0170_2
    * @tc.desc      DatePicker
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0170_2', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0210_2 start.`);
      Settings.createWindow("testability/pages/UIComponentPopupboxDatepickerDialogLanguageHabit/UIComponentPopupboxDatepickerDialogLanguageHabit0210")
      await Utils.sleep(1000)
      Settings.switchCusLocales('zh-Hans-CN');
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let cb1 = await driver.findComponent(ON.id('datepickerDialogLanguageHabit0210_cb1'));
      let btn = await driver.findComponent(ON.id('datepickerDialogLanguageHabit0210_btn'));
      await Utils.sleep(300);
      await cb1.click();
      await Utils.sleep(300);
      await btn.click();
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0170_2 finish.`);
      done();
    })
    /*
    * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0170_3
    * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0170_3
    * @tc.desc      DatePicker
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0170_3', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0170_3 start.`);
      Settings.createWindow("testability/pages/UIComponentPopupboxDatepickerDialogLanguageHabit/UIComponentPopupboxDatepickerDialogLanguageHabit0210")
      await Utils.sleep(1000)
      Settings.switchCusLocales('zh-Hans-CN');
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let cb2 = await driver.findComponent(ON.id('datepickerDialogLanguageHabit0210_cb2'));
      let btn = await driver.findComponent(ON.id('datepickerDialogLanguageHabit0210_btn'));
      await Utils.sleep(500);
      await cb2.click();
      await Utils.sleep(500);
      await btn.click();
      await Utils.sleep(1500);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0170_3 finish.`);
      done();
    })
    /*
    * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0190_1
    * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0190_1
    * @tc.desc      DatePicker
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0190_1', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0190_1 start.`);
      Settings.createWindow("testability/pages/UIComponentPopupboxDatepickerDialogLanguageHabit/UIComponentPopupboxDatepickerDialogLanguageHabit0210")
      await Utils.sleep(1000)
      Settings.switchCusLocales('zh-Hant-CN');
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let btn = await driver.findComponent(ON.id('datepickerDialogLanguageHabit0210_btn'));
      await Utils.sleep(500);
      await btn.click();
      await Utils.sleep(500);
      let timePicker = await driver.findComponent(ON.type('TimePicker'));
      let datePicker = await driver.findComponent(ON.type('DatePicker'));
      let point1 = await datePicker.getBounds();
      let point2 = await timePicker.getBounds();
      let centerX1 = (point1.left + point1.right) / 2;
      let centerY1 = (point1.top + point1.bottom) / 2;
      let centerX2 = (point2.left + point2.right) / 2;
      let centerY2 = (point2.top + point2.bottom) / 2;
      await Utils.sleep(300);
      await driver.mouseScroll({
        x: centerX1, y: centerY1
      }, true, 2);
      await Utils.sleep(500);
      await driver.mouseScroll({
        x: centerX2 - 80, y: centerY2
      }, true, 3);
      await Utils.sleep(1000);
      await driver.click(point2.left + 150, point2.bottom + 100);
      await Utils.sleep(1500);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0190_1 finish.`);
      done();
    })
    /*
    * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0190_2
    * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0190_2
    * @tc.desc      DatePicker
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0190_2', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0190_2 start.`);
      Settings.createWindow("testability/pages/UIComponentPopupboxDatepickerDialogLanguageHabit/UIComponentPopupboxDatepickerDialogLanguageHabit0210")
      await Utils.sleep(1000)
      Settings.switchCusLocales('zh-Hant-CN');
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let cb1 = await driver.findComponent(ON.id('datepickerDialogLanguageHabit0210_cb1'));
      let btn = await driver.findComponent(ON.id('datepickerDialogLanguageHabit0210_btn'));
      await Utils.sleep(300);
      await cb1.click();
      await Utils.sleep(300);
      await btn.click();
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0190_2 finish.`);
      done();
    })
    /*
    * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0190_3
    * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0190_3
    * @tc.desc      DatePicker
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0190_3', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0170_3 start.`);
      Settings.createWindow("testability/pages/UIComponentPopupboxDatepickerDialogLanguageHabit/UIComponentPopupboxDatepickerDialogLanguageHabit0210")
      await Utils.sleep(1000)
      Settings.switchCusLocales('zh-Hant-CN');
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let cb2 = await driver.findComponent(ON.id('datepickerDialogLanguageHabit0210_cb2'));
      let btn = await driver.findComponent(ON.id('datepickerDialogLanguageHabit0210_btn'));
      await Utils.sleep(500);
      await cb2.click();
      await Utils.sleep(500);
      await btn.click();
      await Utils.sleep(1500);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0190_3 finish.`);
      done();
    })
    /*
    * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0200_1
    * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0200_1
    * @tc.desc      DatePicker
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0200_1', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0200_1 start.`);
      Settings.createWindow("testability/pages/UIComponentPopupboxDatepickerDialogLanguageHabit/UIComponentPopupboxDatepickerDialogLanguageHabit0210")
      await Utils.sleep(1000);
      Settings.switchCusLocales('zh-Hant-CN');
      await Utils.sleep(1000);
      let driver: Driver = Driver.create();
      let btn = await driver.findComponent(ON.id('datepickerDialogLanguageHabit0210_btn'));
      await Utils.sleep(500);
      await btn.click();
      await Utils.sleep(500);
      let timePicker = await driver.findComponent(ON.type('TimePicker'));
      let datePicker = await driver.findComponent(ON.type('DatePicker'));
      let point1 = await datePicker.getBounds();
      let point2 = await timePicker.getBounds();
      let centerX1 = (point1.left + point1.right) / 2;
      let centerY1 = (point1.top + point1.bottom) / 2;
      let centerX2 = (point2.left + point2.right) / 2;
      let centerY2 = (point2.top + point2.bottom) / 2;
      await Utils.sleep(300);
      await driver.mouseScroll({
        x: centerX1, y: centerY1
      }, true, 2);
      await Utils.sleep(500);
      await driver.mouseScroll({
        x: centerX2 - 80, y: centerY2
      }, true, 3);
      await Utils.sleep(1000);
      await driver.click(point2.left + 150, point2.bottom + 100);
      await Utils.sleep(1500);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0200_1 finish.`);
      done();
    })
    /*
    * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0200_2
    * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0200_2
    * @tc.desc      DatePicker
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0200_2', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0200_2 start.`);
      Settings.createWindow("testability/pages/UIComponentPopupboxDatepickerDialogLanguageHabit/UIComponentPopupboxDatepickerDialogLanguageHabit0210")
      await Utils.sleep(1000);
      Settings.switchCusLocales('zh-Hant-CN');
      await Utils.sleep(1000);
      let driver: Driver = Driver.create();
      let cb1 = await driver.findComponent(ON.id('datepickerDialogLanguageHabit0210_cb1'));
      let btn = await driver.findComponent(ON.id('datepickerDialogLanguageHabit0210_btn'));
      await Utils.sleep(300);
      await cb1.click();
      await Utils.sleep(300);
      await btn.click();
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0200_2 finish.`);
      done();
    })
    /*
    * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0200_3
    * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0200_3
    * @tc.desc      DatePicker
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0200_3', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0200_3 start.`);
      Settings.createWindow("testability/pages/UIComponentPopupboxDatepickerDialogLanguageHabit/UIComponentPopupboxDatepickerDialogLanguageHabit0210")
      await Utils.sleep(1000);
      Settings.switchCusLocales('zh-Hant-CN');
      await Utils.sleep(1000);
      let driver: Driver = Driver.create();
      let cb2 = await driver.findComponent(ON.id('datepickerDialogLanguageHabit0210_cb2'));
      let btn = await driver.findComponent(ON.id('datepickerDialogLanguageHabit0210_btn'));
      await Utils.sleep(500);
      await cb2.click();
      await Utils.sleep(500);
      await btn.click();
      await Utils.sleep(1500);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0200_3 finish.`);
      done();
    })
    /*
    * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0220_1
    * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0220_1
    * @tc.desc      DatePicker
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0220_1', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0220_1 start.`);
      Settings.createWindow("testability/pages/UIComponentPopupboxDatepickerDialogLanguageHabit/UIComponentPopupboxDatepickerDialogLanguageHabit0210")
      await Utils.sleep(1000);
      Settings.switchCusLocales('ug-CN');
      await Utils.sleep(1000);
      let driver: Driver = Driver.create();
      let btn = await driver.findComponent(ON.id('datepickerDialogLanguageHabit0210_btn'));
      await Utils.sleep(500);
      await btn.click();
      await Utils.sleep(500);
      let datePicker = await driver.findComponent(ON.type('DatePicker'));
      let timePicker = await driver.findComponent(ON.type('TimePicker'));
      let point1 = await datePicker.getBounds();
      let point2 = await timePicker.getBounds();
      let centerX1 = (point1.left + point1.right) / 2;
      let centerY1 = (point1.top + point1.bottom) / 2;
      let centerX2 = (point2.left + point2.right) / 2;
      let centerY2 = (point2.top + point2.bottom) / 2;
      await Utils.sleep(300);
      await driver.mouseScroll({
        x: centerX1, y: centerY1
      }, true, 3);
      await Utils.sleep(500);
      await driver.mouseScroll({
        x: centerX2 - 80, y: centerY2
      }, true, 3);
      await Utils.sleep(1000);
      await driver.click(point2.left + 150, point2.bottom + 100);
      await Utils.sleep(1500);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0220_1 finish.`);
      done();
    })
    /*
    * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0220_2
    * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0220_2
    * @tc.desc      DatePicker
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0220_2', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0220_2 start.`);
      Settings.createWindow("testability/pages/UIComponentPopupboxDatepickerDialogLanguageHabit/UIComponentPopupboxDatepickerDialogLanguageHabit0210")
      await Utils.sleep(1000);
      Settings.switchCusLocales('ug-CN');
      await Utils.sleep(1000);
      let driver: Driver = Driver.create();
      let cb1 = await driver.findComponent(ON.id('datepickerDialogLanguageHabit0210_cb1'));
      let btn = await driver.findComponent(ON.id('datepickerDialogLanguageHabit0210_btn'));
      await Utils.sleep(300);
      await cb1.click();
      await Utils.sleep(300);
      await btn.click();
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0220_2 finish.`);
      done();
    })
    /*
    * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0220_3
    * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0220_3
    * @tc.desc      DatePicker
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0220_3', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0220_3 start.`);
      Settings.createWindow("testability/pages/UIComponentPopupboxDatepickerDialogLanguageHabit/UIComponentPopupboxDatepickerDialogLanguageHabit0210")
      await Utils.sleep(1000);
      Settings.switchCusLocales('ug-CN');
      await Utils.sleep(1000);
      let driver: Driver = Driver.create();
      let cb2 = await driver.findComponent(ON.id('datepickerDialogLanguageHabit0210_cb2'));
      let btn = await driver.findComponent(ON.id('datepickerDialogLanguageHabit0210_btn'));
      await Utils.sleep(500);
      await cb2.click();
      await Utils.sleep(500);
      await btn.click();
      await Utils.sleep(1500);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0220_3 finish.`);
      done();
    })
    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0180_1
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0180_1
     * @tc.desc      DatePicker
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0180_1', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0180_1 start.`);
      Settings.createWindow("testability/pages/UIComponentPopupboxDatepickerDialogLanguageHabit/UIComponentPopupboxDatepickerDialogLanguageHabit0210")
      await Utils.sleep(1000);
      Settings.switchCusLocales('en-Latn-CN');
      await Utils.sleep(1000);
      let driver: Driver = Driver.create();
      let btn = await driver.findComponent(ON.id('datepickerDialogLanguageHabit0210_btn'));
      await Utils.sleep(500);
      await btn.click();
      await Utils.sleep(500);
      let datePicker = await driver.findComponent(ON.type('DatePicker'));
      let timePicker = await driver.findComponent(ON.type('TimePicker'));
      let point1 = await datePicker.getBounds();
      let point2 = await timePicker.getBounds();
      let centerX1 = (point1.left + point1.right) / 2;
      let centerY1 = (point1.top + point1.bottom) / 2;
      let centerX2 = (point2.left + point2.right) / 2;
      let centerY2 = (point2.top + point2.bottom) / 2;
      await Utils.sleep(300);
      await driver.click(point1.left, point1.bottom + 30);
      await Utils.sleep(1000);
      await driver.mouseScroll({
        x: centerX1, y: centerY1
      }, true, 3);
      await Utils.sleep(1000);
      await driver.mouseScroll({
        x: centerX2 - 80, y: centerY2
      }, true, 3);
      await Utils.sleep(1000);
      await driver.click(point2.left + 150, point2.bottom + 100);
      await Utils.sleep(1500);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0180_1 finish.`);
      done();
    })
    /*
    * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0180_2
    * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0180_2
    * @tc.desc      DatePicker
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0180_2', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0220_2 start.`);
      Settings.createWindow("testability/pages/UIComponentPopupboxDatepickerDialogLanguageHabit/UIComponentPopupboxDatepickerDialogLanguageHabit0210")
      await Utils.sleep(1000);
      Settings.switchCusLocales('en-Latn-CN');
      await Utils.sleep(1000);
      let driver: Driver = Driver.create();
      let cb1 = await driver.findComponent(ON.id('datepickerDialogLanguageHabit0210_cb1'));
      let btn = await driver.findComponent(ON.id('datepickerDialogLanguageHabit0210_btn'));
      await Utils.sleep(300);
      await cb1.click();
      await Utils.sleep(300);
      await btn.click();
      await Utils.sleep(300);
      let datePicker = await driver.findComponent(ON.type('DatePicker'));
      let point1 = await datePicker.getBounds();
      await Utils.sleep(300);
      await driver.click(point1.left, point1.bottom + 30);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0180_2 finish.`);
      done();
    })
    /*
    * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0180_3
    * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0180_3
    * @tc.desc      DatePicker
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0180_3', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0180_3 start.`);
      Settings.createWindow("testability/pages/UIComponentPopupboxDatepickerDialogLanguageHabit/UIComponentPopupboxDatepickerDialogLanguageHabit0210")
      await Utils.sleep(1000);
      Settings.switchCusLocales('en-Latn-CN');
      await Utils.sleep(1000);
      let driver: Driver = Driver.create();
      let cb2 = await driver.findComponent(ON.id('datepickerDialogLanguageHabit0210_cb2'));
      let btn = await driver.findComponent(ON.id('datepickerDialogLanguageHabit0210_btn'));
      await Utils.sleep(500);
      await cb2.click();
      await Utils.sleep(500);
      await btn.click();
      await Utils.sleep(300);
      let datePicker = await driver.findComponent(ON.type('DatePicker'));
      let point1 = await datePicker.getBounds();
      await Utils.sleep(300);
      await driver.click(point1.left, point1.bottom + 30);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0180_3 finish.`);
      done();
    })
    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0240_1
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0240_1
     * @tc.desc      DatePicker
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0240_1', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0240_1 start.`);
      Settings.createWindow("testability/pages/UIComponentPopupboxDatepickerDialogLanguageHabit/UIComponentPopupboxDatepickerDialogLanguageHabit0210")
      await Utils.sleep(1000);
      Settings.switchCusLocales('zh-Hant-CN');
      await Utils.sleep(1000);
      let driver: Driver = Driver.create();
      let btn = await driver.findComponent(ON.id('datepickerDialogLanguageHabit0210_btn'));
      await Utils.sleep(500);
      await btn.click();
      await Utils.sleep(500);
      let datePicker = await driver.findComponent(ON.type('DatePicker'));
      let timePicker = await driver.findComponent(ON.type('TimePicker'));
      let point1 = await datePicker.getBounds();
      let point2 = await timePicker.getBounds();
      let centerX1 = (point1.left + point1.right) / 2;
      let centerY1 = (point1.top + point1.bottom) / 2;
      let centerX2 = (point2.left + point2.right) / 2;
      let centerY2 = (point2.top + point2.bottom) / 2;
      await Utils.sleep(300);
      await driver.click(point1.left, point1.bottom + 30);
      await Utils.sleep(1000);
      await driver.mouseScroll({
        x: centerX1, y: centerY1
      }, true, 3);
      await Utils.sleep(1000);
      await driver.mouseScroll({
        x: centerX2 - 80, y: centerY2
      }, true, 3);
      await Utils.sleep(1000);
      await driver.click(point2.left + 150, point2.bottom + 100);
      await Utils.sleep(1500);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0240_1 finish.`);
      done();
    })
    /*
    * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0240_2
    * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0240_2
    * @tc.desc      DatePicker
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0240_2', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0240_2 start.`);
      Settings.createWindow("testability/pages/UIComponentPopupboxDatepickerDialogLanguageHabit/UIComponentPopupboxDatepickerDialogLanguageHabit0210")
      await Utils.sleep(1000);
      Settings.switchCusLocales('zh-Hant-CN');
      await Utils.sleep(1000);
      let driver: Driver = Driver.create();
      let cb1 = await driver.findComponent(ON.id('datepickerDialogLanguageHabit0210_cb1'));
      let btn = await driver.findComponent(ON.id('datepickerDialogLanguageHabit0210_btn'));
      await Utils.sleep(300);
      await cb1.click();
      await Utils.sleep(300);
      await btn.click();
      await Utils.sleep(300);
      let datePicker = await driver.findComponent(ON.type('DatePicker'));
      let point1 = await datePicker.getBounds();
      await Utils.sleep(300);
      await driver.click(point1.left, point1.bottom + 30);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0240_2 finish.`);
      done();
    })
    /*
    * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0240_3
    * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0240_3
    * @tc.desc      DatePicker
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0240_3', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0240_3 start.`);
      Settings.createWindow("testability/pages/UIComponentPopupboxDatepickerDialogLanguageHabit/UIComponentPopupboxDatepickerDialogLanguageHabit0210")
      await Utils.sleep(1000);
      Settings.switchCusLocales('zh-Hant-CN');
      await Utils.sleep(1000);
      let driver: Driver = Driver.create();
      let cb2 = await driver.findComponent(ON.id('datepickerDialogLanguageHabit0210_cb2'));
      let btn = await driver.findComponent(ON.id('datepickerDialogLanguageHabit0210_btn'));
      await Utils.sleep(500);
      await cb2.click();
      await Utils.sleep(500);
      await btn.click();
      await Utils.sleep(300);
      let datePicker = await driver.findComponent(ON.type('DatePicker'));
      let point1 = await datePicker.getBounds();
      await Utils.sleep(300);
      await driver.click(point1.left, point1.bottom + 30);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0240_3 finish.`);
      done();
    })
    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0250_1
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0250_1
     * @tc.desc      DatePicker
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0250_1', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0250_1 start.`);
      Settings.createWindow("testability/pages/UIComponentPopupboxDatepickerDialogLanguageHabit/UIComponentPopupboxDatepickerDialogLanguageHabit0210")
      await Utils.sleep(1000);
      Settings.switchCusLocales('zh-Hant-CN');
      await Utils.sleep(1000);
      let driver: Driver = Driver.create();
      let btn = await driver.findComponent(ON.id('datepickerDialogLanguageHabit0210_btn'));
      await Utils.sleep(500);
      await btn.click();
      await Utils.sleep(500);
      let datePicker = await driver.findComponent(ON.type('DatePicker'));
      let timePicker = await driver.findComponent(ON.type('TimePicker'));
      let point1 = await datePicker.getBounds();
      let point2 = await timePicker.getBounds();
      let centerX1 = (point1.left + point1.right) / 2;
      let centerY1 = (point1.top + point1.bottom) / 2;
      let centerX2 = (point2.left + point2.right) / 2;
      let centerY2 = (point2.top + point2.bottom) / 2;
      await Utils.sleep(300);
      await driver.click(point1.left, point1.bottom + 30);
      await Utils.sleep(1000);
      await driver.mouseScroll({
        x: centerX1, y: centerY1
      }, true, 3);
      await Utils.sleep(1000);
      await driver.mouseScroll({
        x: centerX2 - 80, y: centerY2
      }, true, 3);
      await Utils.sleep(1000);
      await driver.click(point2.left + 150, point2.bottom + 100);
      await Utils.sleep(1500);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0250_1 finish.`);
      done();
    })
    /*
    * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0250_2
    * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0250_2
    * @tc.desc      DatePicker
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0250_2', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0250_2 start.`);
      Settings.createWindow("testability/pages/UIComponentPopupboxDatepickerDialogLanguageHabit/UIComponentPopupboxDatepickerDialogLanguageHabit0210")
      await Utils.sleep(1000);
      Settings.switchCusLocales('zh-Hant-CN');
      await Utils.sleep(1000);
      let driver: Driver = Driver.create();
      let cb1 = await driver.findComponent(ON.id('datepickerDialogLanguageHabit0210_cb1'));
      let btn = await driver.findComponent(ON.id('datepickerDialogLanguageHabit0210_btn'));
      await Utils.sleep(300);
      await cb1.click();
      await Utils.sleep(300);
      await btn.click();
      await Utils.sleep(300);
      let datePicker = await driver.findComponent(ON.type('DatePicker'));
      let point1 = await datePicker.getBounds();
      await Utils.sleep(300);
      await driver.click(point1.left, point1.bottom + 30);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0250_2 finish.`);
      done();
    })
    /*
    * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0250_3
    * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0250_3
    * @tc.desc      DatePicker
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0250_3', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0250_3 start.`);
      Settings.createWindow("testability/pages/UIComponentPopupboxDatepickerDialogLanguageHabit/UIComponentPopupboxDatepickerDialogLanguageHabit0210")
      await Utils.sleep(1000);
      Settings.switchCusLocales('zh-Hant-CN');
      await Utils.sleep(1000);
      let driver: Driver = Driver.create();
      let cb2 = await driver.findComponent(ON.id('datepickerDialogLanguageHabit0210_cb2'));
      let btn = await driver.findComponent(ON.id('datepickerDialogLanguageHabit0210_btn'));
      await Utils.sleep(500);
      await cb2.click();
      await Utils.sleep(500);
      await btn.click();
      await Utils.sleep(300);
      let datePicker = await driver.findComponent(ON.type('DatePicker'));
      let point1 = await datePicker.getBounds();
      await Utils.sleep(300);
      await driver.click(point1.left, point1.bottom + 30);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0250_3 finish.`);
      done();
    })
    /*
    * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0260
    * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0260
    * @tc.desc      DatePicker
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0260', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0260 start.`);
      Settings.createWindow("testability/pages/UIComponentPopupboxDatepickerDialogLanguageHabit/UIComponentPopupboxDatepickerDialogLanguageHabit0210")
      await Utils.sleep(1000);
      Settings.switchCusLocales('zh-Hans-CN');
      await Utils.sleep(1000);
      let driver: Driver = Driver.create();
      let btn = await driver.findComponent(ON.id('datepickerDialogLanguageHabit0210_btn'));
      let cb1 = await driver.findComponent(ON.id('datepickerDialogLanguageHabit0210_cb1'));
      await Utils.sleep(500);
      await cb1.click();
      await Utils.sleep(500);
      await btn.click();
      await Utils.sleep(1000);
      Settings.switchCusLocales('en-Latn-CN');
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0260 finish.`);
      done();
    })
    /*
    * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0270
    * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0270
    * @tc.desc      DatePicker
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0270', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0270 start.`);
      Settings.createWindow("testability/pages/UIComponentPopupboxDatepickerDialogLanguageHabit/UIComponentPopupboxDatepickerDialogLanguageHabit0210")
      await Utils.sleep(1000);
      Settings.switchCusLocales('zh-Hans-CN');
      await Utils.sleep(1000);
      let driver: Driver = Driver.create();
      let btn = await driver.findComponent(ON.id('datepickerDialogLanguageHabit0210_btn'));
      let cb1 = await driver.findComponent(ON.id('datepickerDialogLanguageHabit0210_cb1'));
      await Utils.sleep(500);
      await cb1.click();
      await Utils.sleep(500);
      await btn.click();
      await Utils.sleep(1000);
      Settings.switchCusLocales('zh-Hant-CN');
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0270 finish.`);
      done();
    })
    /*
    * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0280
    * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0280
    * @tc.desc      DatePicker
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0280', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0280 start.`);
      Settings.createWindow("testability/pages/UIComponentPopupboxDatepickerDialogLanguageHabit/UIComponentPopupboxDatepickerDialogLanguageHabit0210")
      await Utils.sleep(1000);
      Settings.switchCusLocales('zh-Hans-CN');
      await Utils.sleep(1000);
      let driver: Driver = Driver.create();
      let btn = await driver.findComponent(ON.id('datepickerDialogLanguageHabit0210_btn'));
      let cb1 = await driver.findComponent(ON.id('datepickerDialogLanguageHabit0210_cb1'));
      await Utils.sleep(500);
      await cb1.click();
      await Utils.sleep(500);
      await btn.click();
      await Utils.sleep(1000);
      Settings.switchCusLocales('zh-Hant-CN');
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0280 finish.`);
      done();
    })
    /*
    * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0300
    * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0300
    * @tc.desc      DatePicker
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0300', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0300 start.`);
      Settings.createWindow("testability/pages/UIComponentPopupboxDatepickerDialogLanguageHabit/UIComponentPopupboxDatepickerDialogLanguageHabit0210")
      await Utils.sleep(1000);
      Settings.switchCusLocales('zh-Hans-CN');
      await Utils.sleep(1000);
      let driver: Driver = Driver.create();
      let btn = await driver.findComponent(ON.id('datepickerDialogLanguageHabit0210_btn'));
      let cb1 = await driver.findComponent(ON.id('datepickerDialogLanguageHabit0210_cb1'));
      await Utils.sleep(500);
      await cb1.click();
      await Utils.sleep(500);
      await btn.click();
      await Utils.sleep(1000);
      Settings.switchCusLocales('ug-CN');
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0300 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0230_1
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0230_1
     * @tc.desc      DatePicker
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0230_1', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0230_1 start.`);
      Settings.createWindow("testability/pages/UIComponentPopupboxDatepickerDialogLanguageHabit/UIComponentPopupboxDatepickerDialogLanguageHabit0210")
      await Utils.sleep(1000);
      Settings.switchCusLocales('zh-Hans-CN');
      await Utils.sleep(1000);
      let driver: Driver = Driver.create();
      let btn = await driver.findComponent(ON.id('datepickerDialogLanguageHabit0210_btn'));
      await Utils.sleep(500);
      await btn.click();
      await Utils.sleep(500);
      let datePicker = await driver.findComponent(ON.type('DatePicker'));
      let timePicker = await driver.findComponent(ON.type('TimePicker'));
      let point1 = await datePicker.getBounds();
      let point2 = await timePicker.getBounds();
      let centerX1 = (point1.left + point1.right) / 2;
      let centerY1 = (point1.top + point1.bottom) / 2;
      let centerX2 = (point2.left + point2.right) / 2;
      let centerY2 = (point2.top + point2.bottom) / 2;
      await Utils.sleep(300);
      await driver.click(point1.left, point1.bottom + 30);
      await Utils.sleep(1000);
      await driver.mouseScroll({
        x: centerX1, y: centerY1
      }, true, 3);
      await Utils.sleep(1000);
      await driver.mouseScroll({
        x: centerX2 - 80, y: centerY2
      }, true, 3);
      await Utils.sleep(1000);
      await driver.click(point2.left + 150, point2.bottom + 100);
      await Utils.sleep(1500);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0230_1 finish.`);
      done();
    })
    /*
    * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0230_2
    * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0230_2
    * @tc.desc      DatePicker
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0230_2', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0230_2 start.`);
      Settings.createWindow("testability/pages/UIComponentPopupboxDatepickerDialogLanguageHabit/UIComponentPopupboxDatepickerDialogLanguageHabit0210")
      await Utils.sleep(1000);
      Settings.switchCusLocales('zh-Hant-CN');
      await Utils.sleep(1000);
      let driver: Driver = Driver.create();
      let cb1 = await driver.findComponent(ON.id('datepickerDialogLanguageHabit0210_cb1'));
      let btn = await driver.findComponent(ON.id('datepickerDialogLanguageHabit0210_btn'));
      await Utils.sleep(300);
      await cb1.click();
      await Utils.sleep(300);
      await btn.click();
      await Utils.sleep(300);
      let datePicker = await driver.findComponent(ON.type('DatePicker'));
      let point1 = await datePicker.getBounds();
      await Utils.sleep(300);
      await driver.click(point1.left, point1.bottom + 30);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0230_2 finish.`);
      done();
    })
    /*
    * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0230_3
    * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0230_3
    * @tc.desc      DatePicker
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0230_3', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0230_3 start.`);
      Settings.createWindow("testability/pages/UIComponentPopupboxDatepickerDialogLanguageHabit/UIComponentPopupboxDatepickerDialogLanguageHabit0210")
      await Utils.sleep(1000);
      Settings.switchCusLocales('zh-Hant-CN');
      await Utils.sleep(1000);
      let driver: Driver = Driver.create();
      let cb2 = await driver.findComponent(ON.id('datepickerDialogLanguageHabit0210_cb2'));
      let btn = await driver.findComponent(ON.id('datepickerDialogLanguageHabit0210_btn'));
      await Utils.sleep(500);
      await cb2.click();
      await Utils.sleep(500);
      await btn.click();
      await Utils.sleep(300);
      let datePicker = await driver.findComponent(ON.type('DatePicker'));
      let point1 = await datePicker.getBounds();
      await Utils.sleep(300);
      await driver.click(point1.left, point1.bottom + 30);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0230_3 finish.`);
      done();
    })
    /*
    * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0290
    * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0290
    * @tc.desc      DatePicker
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0290', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0290 start.`);
      Settings.createWindow("testability/pages/UIComponentPopupboxDatepickerDialogLanguageHabit/UIComponentPopupboxDatepickerDialogLanguageHabit0210")
      await Utils.sleep(1000);
      Settings.switchCusLocales('zh-Hans-CN');
      await Utils.sleep(1000);
      let driver: Driver = Driver.create();
      let btn = await driver.findComponent(ON.id('datepickerDialogLanguageHabit0210_btn'));
      let cb1 = await driver.findComponent(ON.id('datepickerDialogLanguageHabit0210_cb1'));
      await Utils.sleep(500);
      await cb1.click();
      await Utils.sleep(500);
      await btn.click();
      await Utils.sleep(1000);
      Settings.switchCusLocales('bo-CN');
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_DATEPICKERDIALOG_LANGUAGEHABIT_0290 finish.`);
      done();
    })
  })
}