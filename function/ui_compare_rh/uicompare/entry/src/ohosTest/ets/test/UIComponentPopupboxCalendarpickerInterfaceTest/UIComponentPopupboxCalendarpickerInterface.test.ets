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

export default function UIComponentPopupboxCalendarpickerInterface() {

  describe('UIComponentPopupboxCalendarpickerInterface', () => {

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_CALENDARPICKER_INTERFACE_0070
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_CALENDARPICKER_INTERFACE_0070
     * @tc.desc      CalendarPicker:switch month
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_CALENDARPICKER_INTERFACE_0070', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_CALENDARPICKER_INTERFACE_0070 start.`);
      Settings.createWindow("testability/pages/UIComponentPopupboxCalendarpickerInterface/UIComponentPopupboxCalendarpickerInterface0070")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let calPicker = await driver.findComponent(ON.id('calendarpickerInterface0070'));
      await Utils.sleep(500);
      await calPicker.doubleClick();
      await Utils.sleep(500);
      await driver.triggerKey(2012);
      await Utils.sleep(500);
      await driver.triggerKey(2012);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_CALENDARPICKER_INTERFACE_0070 finish.`);
      done();
    })
    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_CALENDARPICKER_INTERFACE_0080
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_CALENDARPICKER_INTERFACE_0080
     * @tc.desc      CalendarPicker:switch month
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_CALENDARPICKER_INTERFACE_0080', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_CALENDARPICKER_INTERFACE_0080 start.`);
      Settings.createWindow("testability/pages/UIComponentPopupboxCalendarpickerInterface/UIComponentPopupboxCalendarpickerInterface0070")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let calPicker = await driver.findComponent(ON.id('calendarpickerInterface0070'));
      let point =await calPicker.getBounds();
      await Utils.sleep(500);
      await calPicker.doubleClick();
      await Utils.sleep(500);
      await driver.triggerKey(2012);
      await Utils.sleep(500);
      await driver.triggerKey(2012);
      await Utils.sleep(500);
      await driver.mouseClick({x:point.right-100,y:point.top+20},MouseButton.MOUSE_BUTTON_LEFT);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_CALENDARPICKER_INTERFACE_0080 finish.`);
      done();
    })
    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_CALENDARPICKER_INTERFACE_0060
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_CALENDARPICKER_INTERFACE_0060
     * @tc.desc      CalendarPicker:switch date
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_CALENDARPICKER_INTERFACE_0060', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_CALENDARPICKER_INTERFACE_0060 start.`);
      Settings.createWindow("testability/pages/UIComponentPopupboxCalendarpickerInterface/UIComponentPopupboxCalendarpickerInterface0070")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let calPicker = await driver.findComponent(ON.id('calendarpickerInterface0070'));
      await Utils.sleep(500);
      let point = await calPicker.getBounds();
      await driver.mouseDoubleClick({x:point.right-20,y:point.top+5},MouseButton.MOUSE_BUTTON_LEFT);
      await Utils.sleep(500);
      await driver.mouseClick({x:point.right-100,y:point.top+20},MouseButton.MOUSE_BUTTON_LEFT);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_CALENDARPICKER_INTERFACE_0060 finish.`);
      done();
    })
    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_CALENDARPICKER_INTERFACE_0250
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_CALENDARPICKER_INTERFACE_0250
     * @tc.desc      CalendarPicker:switch date
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_CALENDARPICKER_INTERFACE_0250', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_CALENDARPICKER_INTERFACE_0250 start.`);
      Settings.createWindow("testability/pages/UIComponentPopupboxCalendarpickerInterface/UIComponentPopupboxCalendarpickerInterface0250")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let calPicker = await driver.findComponent(ON.id('calendarpickerInterface0250'));
      await Utils.sleep(500);
      let point = await calPicker.getBounds();
      await driver.mouseClick({x:point.right-20,y:point.top+5},MouseButton.MOUSE_BUTTON_LEFT);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_CALENDARPICKER_INTERFACE_0250 finish.`);
      done();
    })
    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_CALENDARPICKER_INTERFACE_0300
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_CALENDARPICKER_INTERFACE_0300
     * @tc.desc      CalendarPicker:switch date&month
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_CALENDARPICKER_INTERFACE_0300', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_CALENDARPICKER_INTERFACE_0300 start.`);
      Settings.createWindow("testability/pages/UIComponentPopupboxCalendarpickerInterface/UIComponentPopupboxCalendarpickerInterface0070")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let calPicker = await driver.findComponent(ON.id('calendarpickerInterface0070'));
      await Utils.sleep(500);
      let point = await calPicker.getBounds();
      await driver.mouseDoubleClick({x:point.right-20,y:point.top+5},MouseButton.MOUSE_BUTTON_LEFT);
      await Utils.sleep(500);
      await calPicker.doubleClick();
      await Utils.sleep(500);
      await driver.mouseDoubleClick({x:point.right-20,y:point.top+5},MouseButton.MOUSE_BUTTON_LEFT);
      await Utils.sleep(500);
      await driver.mouseClick({x:point.right-100,y:point.top+20},MouseButton.MOUSE_BUTTON_LEFT);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_CALENDARPICKER_INTERFACE_0300 finish.`);
      done();
    })
    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_CALENDARPICKER_INTERFACE_0040
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_CALENDARPICKER_INTERFACE_0040
     * @tc.desc      CalendarPicker:switch year
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_CALENDARPICKER_INTERFACE_0040', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_CALENDARPICKER_INTERFACE_0040 start.`);
      Settings.createWindow("testability/pages/UIComponentPopupboxCalendarpickerInterface/UIComponentPopupboxCalendarpickerInterface0070")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let calPicker = await driver.findComponent(ON.id('calendarpickerInterface0070'));
      await Utils.sleep(500);
      let point = await calPicker.getBounds();
      await driver.mouseDoubleClick({x:point.left+20,y:point.top+20},MouseButton.MOUSE_BUTTON_LEFT);
      await Utils.sleep(500);
      await driver.mouseDoubleClick({x:point.right-20,y:point.top+5},MouseButton.MOUSE_BUTTON_LEFT);
      await Utils.sleep(500);
      await driver.mouseClick({x:point.right-100,y:point.top+20},MouseButton.MOUSE_BUTTON_LEFT);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_CALENDARPICKER_INTERFACE_0040 finish.`);
      done();
    })
    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_CALENDARPICKER_INTERFACE_0050
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_CALENDARPICKER_INTERFACE_0050
     * @tc.desc      CalendarPicker:switch date
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_CALENDARPICKER_INTERFACE_0050', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_CALENDARPICKER_INTERFACE_0050 start.`);
      Settings.createWindow("testability/pages/UIComponentPopupboxCalendarpickerInterface/UIComponentPopupboxCalendarpickerInterface0070")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let calPicker = await driver.findComponent(ON.id('calendarpickerInterface0070'));
      await Utils.sleep(500);
      let point = await calPicker.getBounds();
      await driver.mouseDoubleClick({x:point.right-20,y:point.top+5},MouseButton.MOUSE_BUTTON_LEFT);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_CALENDARPICKER_INTERFACE_0050 finish.`);
      done();
    })
    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_CALENDARPICKER_INTERFACE_0030
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_CALENDARPICKER_INTERFACE_0030
     * @tc.desc      CalendarPicker:switch year
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_CALENDARPICKER_INTERFACE_0030', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_CALENDARPICKER_INTERFACE_0030 start.`);
      Settings.createWindow("testability/pages/UIComponentPopupboxCalendarpickerInterface/UIComponentPopupboxCalendarpickerInterface0070")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let calPicker = await driver.findComponent(ON.id('calendarpickerInterface0070'));
      await Utils.sleep(500);
      let point = await calPicker.getBounds();
      await driver.mouseDoubleClick({x:point.left+20,y:point.top+20},MouseButton.MOUSE_BUTTON_LEFT);
      await Utils.sleep(500);
      await driver.mouseDoubleClick({x:point.right-20,y:point.top+5},MouseButton.MOUSE_BUTTON_LEFT);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_CALENDARPICKER_INTERFACE_0030 finish.`);
      done();
    })
    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_CALENDARPICKER_INTERFACE_0020
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_CALENDARPICKER_INTERFACE_0020
     * @tc.desc      CalendarPicker:switch all
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_CALENDARPICKER_INTERFACE_0020', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_CALENDARPICKER_INTERFACE_0030 start.`);
      Settings.createWindow("testability/pages/UIComponentPopupboxCalendarpickerInterface/UIComponentPopupboxCalendarpickerInterface0070")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let calPicker = await driver.findComponent(ON.id('calendarpickerInterface0070'));
      await Utils.sleep(500);
      let point = await calPicker.getBounds();
      for (let index = 0; index < 4; index++) {
        await Utils.sleep(300);
        await driver.mouseDoubleClick({x:point.right-20,y:point.top+5},MouseButton.MOUSE_BUTTON_LEFT);
        await Utils.sleep(300);
        await calPicker.doubleClick();
        await Utils.sleep(300);
        await driver.mouseDoubleClick({x:point.right-20,y:point.bottom-5},MouseButton.MOUSE_BUTTON_LEFT);
        await Utils.sleep(300);
        await driver.mouseDoubleClick({x:point.left+20,y:point.top+20},MouseButton.MOUSE_BUTTON_LEFT);
        await Utils.sleep(300);
        await driver.mouseDoubleClick({x:point.right-20,y:point.top+5},MouseButton.MOUSE_BUTTON_LEFT);
      }
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_CALENDARPICKER_INTERFACE_0020 finish.`);
      done();
    })
    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_CALENDARPICKER_INTERFACE_0320
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_CALENDARPICKER_INTERFACE_0320
     * @tc.desc      CalendarPicker:onChange callback
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_CALENDARPICKER_INTERFACE_0320', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_CALENDARPICKER_INTERFACE_0320 start.`);
      Settings.createWindow("testability/pages/UIComponentPopupboxCalendarpickerInterface/UIComponentPopupboxCalendarpickerInterface0250")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let calPicker = await driver.findComponent(ON.id('calendarpickerInterface0250'));
      await Utils.sleep(500);
      let point = await calPicker.getBounds();
      await driver.mouseClick({x:point.right-20,y:point.bottom-5},MouseButton.MOUSE_BUTTON_LEFT);
      await Utils.sleep(500);
      await calPicker.doubleClick();
      await Utils.sleep(500);
      await driver.triggerKey(2013);
      await Utils.sleep(500);
      await calPicker.click();
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_CALENDARPICKER_INTERFACE_0320 finish.`);
      done();
    })
    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_CALENDARPICKER_INTERFACE_0290
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_CALENDARPICKER_INTERFACE_0290
     * @tc.desc      CalendarPicker:switch all
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_CALENDARPICKER_INTERFACE_0290', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_CALENDARPICKER_INTERFACE_0290 start.`);
      Settings.createWindow("testability/pages/UIComponentPopupboxCalendarpickerInterface/UIComponentPopupboxCalendarpickerInterface0070")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let calPicker = await driver.findComponent(ON.id('calendarpickerInterface0070'));
      await Utils.sleep(500);
      let point = await calPicker.getBounds();
      await Utils.sleep(300);
      await driver.mouseDoubleClick({x:point.right-20,y:point.top+5},MouseButton.MOUSE_BUTTON_LEFT);
      await Utils.sleep(300);
      await calPicker.doubleClick();
      await Utils.sleep(300);
      await driver.triggerKey(2013);
      await Utils.sleep(300);
      await driver.mouseDoubleClick({x:point.left+20,y:point.top+20},MouseButton.MOUSE_BUTTON_LEFT);
      await Utils.sleep(300);
      await driver.mouseDoubleClick({x:point.right-20,y:point.top+5},MouseButton.MOUSE_BUTTON_LEFT);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_CALENDARPICKER_INTERFACE_0290 finish.`);
      done();
    })
    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_CALENDARPICKER_INTERFACE_0310
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_CALENDARPICKER_INTERFACE_0310
     * @tc.desc      CalendarPicker:set Illegal Date
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_CALENDARPICKER_INTERFACE_0310', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_CALENDARPICKER_INTERFACE_0310 start.`);
      Settings.createWindow("testability/pages/UIComponentPopupboxCalendarpickerInterface/UIComponentPopupboxCalendarpickerInterface0310")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let calPicker = await driver.findComponent(ON.id('calendarpickerInterface0310'));
      await Utils.sleep(500);
      await calPicker.inputText('1999-13-32');
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_CALENDARPICKER_INTERFACE_0310 finish.`);
      done();
    })
    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_CALENDARPICKER_INTERFACE_0330
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_CALENDARPICKER_INTERFACE_0330
     * @tc.desc      CalendarPicker:System Date
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_CALENDARPICKER_INTERFACE_0330', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_CALENDARPICKER_INTERFACE_0330 start.`);
      Settings.createWindow("testability/pages/UIComponentPopupboxCalendarpickerInterface/UIComponentPopupboxCalendarpickerInterface0330")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let calPicker = await driver.findComponent(ON.id('calendarpickerInterface0330'));
      let btn = await driver.findComponent(ON.id('calendarpickerInterface0330_btn'));
      await Utils.sleep(500);
      await btn.click();
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_CALENDARPICKER_INTERFACE_0330 finish.`);
      done();
    })
    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_CALENDARPICKER_INTERFACE_0010
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_CALENDARPICKER_INTERFACE_0010
     * @tc.desc      CalendarPicker:switch all
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_CALENDARPICKER_INTERFACE_0010', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_CALENDARPICKER_INTERFACE_0010 start.`);
      Settings.createWindow("testability/pages/UIComponentPopupboxCalendarpickerInterface/UIComponentPopupboxCalendarpickerInterface0070")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let calPicker = await driver.findComponent(ON.id('calendarpickerInterface0070'));
      await Utils.sleep(500);
      let point = await calPicker.getBounds();
      await driver.mouseDoubleClick({x:point.right-20,y:point.top+5},MouseButton.MOUSE_BUTTON_LEFT);
      await Utils.sleep(300);
      await calPicker.doubleClick();
      await Utils.sleep(300);
      await driver.triggerKey(2013);
      await Utils.sleep(300);
      await driver.mouseDoubleClick({x:point.left+20,y:point.top+20},MouseButton.MOUSE_BUTTON_LEFT);
      await Utils.sleep(300);
      await driver.mouseDoubleClick({x:point.right-20,y:point.top+5},MouseButton.MOUSE_BUTTON_LEFT);
      await Utils.sleep(300);
      await calPicker.click();
      await Utils.sleep(300);
      await calPicker.click();
      for (let index = 0; index < 12; index++) {
        await Utils.sleep(300);
        await driver.triggerKey(2013);
        await Utils.sleep(300);
        await calPicker.click();
      }
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_CALENDARPICKER_INTERFACE_0010 finish.`);
      done();
    })
  })
}