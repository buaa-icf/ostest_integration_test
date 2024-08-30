/*
 * Copyright (c) 2024 Shenzhen Kaihong Digital Industry Development Co., Ltd.
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
import { describe, beforeAll, beforeEach, afterEach, afterAll, it, expect } from '@ohos/hypium'
import Settings from '../model/Settings'
import windowSnap from '../model/snapShot'
import Logger from '../model/Logger'
import Utils from '../model/Utils'
import {UiComponent, Component, Driver, ON, BY, MouseButton} from '@ohos.UiTest';
export default function UIComponentScrollSwiperInterfaceMix() {
  describe('UIComponentScrollSwiperInterfaceMix', () => {
    afterEach(async (done: Function) => {
      if (Settings.windowClass == undefined) {
        return
      }
      Settings.windowClass.destroyWindow((err) => {
        if (err.code) {
          Logger.error('TEST', `Failed to destroy the window. Cause : ${JSON.stringify(err)}`)
          return;
        }
        Logger.info('TEST', `Succeeded in destroy the window.`);
      })
      await Utils.sleep(1000);
      done()
    })

    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0390
    * @tc.name        SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0390
    * @tc.desc        ADD TextIput, no set selectAll
    */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0390', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0390 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperInterfaceMix/UIComponentScrollSwiperInterfaceMix039")

      let driver = Driver.create();
      let text = await driver.findComponent(ON.id('shurukuang1'));
      await text.click();
      await driver.mouseClick({x:650, y:700}, MouseButton.MOUSE_BUTTON_LEFT, 2072);
      await Utils.sleep(1000)
      await driver.mouseClick({x:500, y:170}, MouseButton.MOUSE_BUTTON_LEFT, 2072);
      await Utils.sleep(1000)
      await driver.triggerKey(2049);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0390 finish.`);
      done()
    })

    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0420
    * @tc.name        SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0420
    * @tc.desc        Add TextIput, set passwordIcon
    */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0420', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0420 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperInterfaceMix/UIComponentScrollSwiperInterfaceMix042")
      await Utils.sleep(1000)
      let driver = Driver.create();
      let text = await driver.findComponent(ON.id('shurukuang1'));
      await driver.triggerKey(2049);
      await Utils.sleep(1000)
      await driver.triggerCombineKeys(2049, 2047);
      await driver.triggerKey(2012);
      await Utils.sleep(1000)
      await driver.triggerKey(2013);
      await Utils.sleep(1000)
      await driver.triggerKey(2014);
      await driver.triggerKey(2015);
      await driver.triggerKey(2050);
      await Utils.sleep(1000)
      await driver.triggerKey(2054);
      await Utils.sleep(1000)
      await driver.triggerCombineKeys(2049, 2047);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0420 finish.`);
      done()
    })

    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0480
    * @tc.name        SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0480
    * @tc.desc        Add TextIput set showUnit
    */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0480', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0480 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperInterfaceMix/UIComponentScrollSwiperInterfaceMix048")
      await Utils.sleep(1000)
      let driver = Driver.create();
      let text = await driver.findComponent(ON.id('shurukuang1'));
      await driver.triggerCombineKeys(2049, 2047);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0480 finish.`);
      done()
    })

    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0490
    * @tc.name        SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0490
    * @tc.desc        Add TextIput set showUnit
    */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0490', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0490 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperInterfaceMix/UIComponentScrollSwiperInterfaceMix049")
      await Utils.sleep(1000)
      let driver = Driver.create();
      let caidan = await driver.findComponent(ON.id('caidankuang1'));
      await caidan.click()
      await Utils.sleep(1000)
      await driver.triggerKey(2014);
      await Utils.sleep(1000)
      await driver.triggerKey(2014);
      await Utils.sleep(1000)
      await driver.triggerKey(2014);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0490 finish.`);
      done()
    })

    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0500
    * @tc.name        SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0500
    * @tc.desc        Add TextIput set showUnit
    */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0500', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0500 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperInterfaceMix/UIComponentScrollSwiperInterfaceMix050")
      await Utils.sleep(1000)
      let driver = Driver.create();
      let text = await driver.findComponent(ON.id('shurukuang1'));
      await driver.triggerKey(2049);
      await driver.triggerKey(2049);
      await driver.triggerKey(2050);
      await driver.triggerKey(2013);
      await driver.triggerKey(2013);
      await Utils.sleep(1000)
      await driver.triggerKey(2012);
      await driver.triggerKey(2012);
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0500 finish.`);
      done()
    })

    /*
  * @tc.number      SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0510
  * @tc.name        SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0510
  * @tc.desc        Add TextIput set showUnit
  */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0510', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0510 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperInterfaceMix/UIComponentScrollSwiperInterfacemix051")
      await Utils.sleep(1000)
      let driver = Driver.create();
      let text = await driver.findComponent(ON.id('shurukuang1'));
      await driver.triggerKey(2049);
      await driver.triggerKey(2049);
      await driver.triggerKey(2050);
      await driver.triggerKey(2013);
      await driver.triggerKey(2013);
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0500 finish.`);
      done()
    })

    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0520
    * @tc.name        SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0520
    * @tc.desc        Add TextIput set showUnit
    */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0520', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0520 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperInterfaceMix/UIComponentScrollSwiperInterfaceMix052")
      await Utils.sleep(5000)
      let driver = Driver.create();
      let text = await driver.findComponent(ON.id('shurukuang1'));
      await driver.triggerKey(2049);
      await driver.triggerKey(2049);
      await driver.triggerKey(2050);
      await driver.triggerKey(2081);
      await driver.triggerKey(2012);
      await driver.triggerKey(2012);
      await driver.triggerKey(2082);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0520 finish.`);
      done()
    })

      /*
      * @tc.number      SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0530
      * @tc.name        SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0530
      * @tc.desc        Add TextIput set showUnit
      */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0530', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0530 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperInterfaceMix/UIComponentScrollSwiperInterfaceMix053")
      let driver = Driver.create();
      let text = await driver.findComponent(ON.id('shurukuang1'));
      await driver.triggerKey(2049);
      await driver.triggerKey(2049);
      await driver.triggerKey(2050);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0530 finish.`);
      done()
    })

    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0540
    * @tc.name        SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0540
    * @tc.desc        Add TextIput set showUnit
    */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0540', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0540 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperInterfaceMix/UIComponentScrollSwiperInterfaceMix054")
      await Utils.sleep(1000)
      let driver = Driver.create();
      let text = await driver.findComponent(ON.id('shurukuang1'));
      await driver.triggerKey(2049);
      await driver.triggerKey(2049);
      await driver.triggerKey(2054);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0540 finish.`);
      done()
    })

      /*
      * @tc.number      SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0550
      * @tc.name        SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0550
      * @tc.desc        Add TextIput set showUnit
      */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0550', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0550 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperInterfaceMix/UIComponentScrollSwiperInterfaceMix055")
      let driver = Driver.create();
      let text = await driver.findComponent(ON.id('shurukuang1'));
      await driver.triggerKey(2049);
      await driver.triggerKey(2049);
      await driver.triggerKey(2054);
      await Utils.sleep(1000)
      await driver.triggerKey(2070);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0550 finish.`);
      done()
    })

    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0560
    * @tc.name        SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0560
    * @tc.desc        Add TextIput set showUnit
    */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0560', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0560 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperInterfaceMix/UIComponentScrollSwiperInterfaceMix056")
      await Utils.sleep(1000)
      await Utils.sleep(1000)
      let driver = Driver.create();
      let text = await driver.findComponent(ON.id('caidan1'));
      let point = await text.getBoundsCenter();
      await text.click();
      await Utils.sleep(1000)
      await driver.triggerKey(2070);
      await driver.mouseClick({x:500, y:170}, MouseButton.MOUSE_BUTTON_LEFT, 2072);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0560 finish.`);
      done()
    })

    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0570
    * @tc.name        SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0570
    * @tc.desc        Add TextIput  no set cancelButton
    */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0570', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0570 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperInterfaceMix/UIComponentScrollSwiperInterfaceMix057")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0570 finish.`);
      done()
    })

    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0360
    * @tc.name        SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0360
    * @tc.desc        Add TextIput set cancelButton = CONSTANT
    */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0580', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0580 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperInterfaceMix/UIComponentScrollSwiperInterfaceMix058")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0580 finish.`);
      done()
    })

    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0590
    * @tc.name        SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0590
    * @tc.desc        Add TextIput set cancelButton = INVISIBLE
    */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0590', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0590 start.`);
      // 打开指定的测试页面
      Settings.createWindow("testability/pages/UIComponentScrollSwiperInterfaceMix/UIComponentScrollSwiperInterfaceMix059")
      // 暂停1秒，确保页面加载完成
      await Utils.sleep(1000)
      // 截取当前窗口的快照
      windowSnap.snapShot()
      // 再次暂停1秒
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0590 finish.`);
      // 标记测试完成
      done()
    })

    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0600
    * @tc.name        SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0600
    * @tc.desc        Add TextIput set cancelButton = INPUT
    */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0600', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0600 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperInterfaceMix/UIComponentScrollSwiperInterfaceMix060")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0600 finish.`);
      done()
    })

    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0610
    * @tc.name        SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0610
    * @tc.desc        Add TextIput set icon = 0
    */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0610', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0610 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperInterfaceMix/UIComponentScrollSwiperInterfaceMix061")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0610 finish.`);
      done()
    })

    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0620
    * @tc.name        SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0620
    * @tc.desc        Add TextIput set icon = 10
    */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0620', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0620 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperInterfaceMix/UIComponentScrollSwiperInterfaceMix062")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0620 finish.`);
      done()
    })

    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0630
    * @tc.name        SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0630
    * @tc.desc        Add TextIput set icon = 0
    */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0630', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0630 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperInterfaceMix/UIComponentScrollSwiperInterfaceMix063")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0630 finish.`);
      done()
    })

    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0640
    * @tc.name        SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0640
    * @tc.desc        Add TextIput set icon = 10vp
    */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0640', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0640 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperInterfaceMix/UIComponentScrollSwiperInterfaceMix064")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0640 finish.`);
      done()
    })

    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0650
    * @tc.name        SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0650
    * @tc.desc        Add TextIput set icon = 10fp
    */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0650', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0650 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperInterfaceMix/UIComponentScrollSwiperInterfaceMix065")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0650 finish.`);
      done()
    })

    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0660
    * @tc.name        SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0660
    * @tc.desc        Add TextIput set icon = 10px
    */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0660', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0660 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperInterfaceMix/UIComponentScrollSwiperInterfaceMix066")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0660 finish.`);
      done()
    })

    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0670
    * @tc.name        SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0670
    * @tc.desc        Add TextIput set icon = 10lpx
    */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0670', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0670 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperInterfaceMix/UIComponentScrollSwiperInterfaceMix067")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0670 finish.`);
      done()
    })

    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0680
    * @tc.name        SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0680
    * @tc.desc        Add TextIput set icon = resource
    */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0680', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0680 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperInterfaceMix/UIComponentScrollSwiperInterfaceMix068")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0680 finish.`);
      done()
    })

    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0690
    * @tc.name        SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0690
    * @tc.desc        Add TextIput set color = blue
    */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0690', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0690 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperInterfaceMix/UIComponentScrollSwiperInterfaceMix069")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0690 finish.`);
      done()
    })

    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0700
    * @tc.name        SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0700
    * @tc.desc        Add TextIput set color = 0xFF0000
    */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0700', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0700 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperInterfaceMix/UIComponentScrollSwiperInterfaceMix070")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0700 finish.`);
      done()
    })

    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0710
    * @tc.name        SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0710
    * @tc.desc        Add TextIput set color = #fc0303
    */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0710', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0710 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperInterfaceMix/UIComponentScrollSwiperInterfaceMix071")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0710 finish.`);
      done()
    })

    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0720
    * @tc.name        SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0720
    * @tc.desc        Add TextIput set color = 0xFF0000
    */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0720', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0720 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperInterfaceMix/UIComponentScrollSwiperInterfaceMix072")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0720 finish.`);
      done()
    })

    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0730
    * @tc.name        SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0730
    * @tc.desc        Add TextIput set cancelButton = rgb(2, 184, 17)
    */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0730', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0730 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperInterfaceMix/UIComponentScrollSwiperInterfaceMix073")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0730 finish.`);
      done()
    })

    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0740
    * @tc.name        SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0740
    * @tc.desc        Add TextIput set cancelButton = $r(app.color.Pink)
    */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0740', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0740 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperInterfaceMix/UIComponentScrollSwiperInterfaceMix074")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0740 finish.`);
      done()
    })

    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0750
    * @tc.name        SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0750
    * @tc.desc        set cancelButton src = String
    */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0750', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0750 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperInterfaceMix/UIComponentScrollSwiperInterfaceMix075")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0750 finish.`);
      done()
    })

    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0760
    * @tc.name        SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0760
    * @tc.desc        set cancelButton src = $rawfile()
    */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0760', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0760 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperInterfaceMix/UIComponentScrollSwiperInterfaceMix076")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0760 finish.`);
      done()
    })

    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0770
    * @tc.name        SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0770
    * @tc.desc        set cancelButton src = $r()
    */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0770', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0770 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperInterfaceMix/UIComponentScrollSwiperInterfaceMix077")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0770 finish.`);
      done()
    })

    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0780
    * @tc.name        SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0780
    * @tc.desc        set TextInput = Normal
    */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0780', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0780 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperInterfaceMix/UIComponentScrollSwiperInterfaceMix078")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0780 finish.`);
      done()
    })

    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0790
    * @tc.name        SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0790
    * @tc.desc        set Password open eye
    */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0790', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0790 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperInterfaceMix/UIComponentScrollSwiperInterfaceMix079")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0790 finish.`);
      done()
    })

    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0800
    * @tc.name        SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0800
    * @tc.desc        set Password open eye
    */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0800', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0800 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperInterfaceMix/UIComponentScrollSwiperInterfaceMix080")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0800 finish.`);
      done()
    })

    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0810
    * @tc.name        SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0810
    * @tc.desc        set NEW_PASSWORD
    */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0810', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0810 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperInterfaceMix/UIComponentScrollSwiperInterfaceMix081")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0810 finish.`);
      done()
    })

    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0820
    * @tc.name        SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0820
    * @tc.desc        set NEW_PASSWORD
    */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0820', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0820 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperInterfaceMix/UIComponentScrollSwiperInterfaceMix082")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0820 finish.`);
      done()
    })

    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0830
    * @tc.name        SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0830
    * @tc.desc        set SCREEN_LOCK_PASSWORD
    */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0830', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0830 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperInterfaceMix/UIComponentScrollSwiperInterfaceMix083")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0830 finish.`);
      done()
    })

    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0840
    * @tc.name        SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0840
    * @tc.desc        set SCREEN_LOCK_PASSWORD
    */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0840', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0840 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperInterfaceMix/UIComponentScrollSwiperInterfaceMix084")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0840 finish.`);
      done()
    })

    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0850
    * @tc.name        SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0850
    * @tc.desc        set NUMBER_PASSWORD
    */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0850', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0850 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperInterfaceMix/UIComponentScrollSwiperInterfaceMix085")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0850 finish.`);
      done()
    })

    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0860
    * @tc.name        SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0860
    * @tc.desc        set NUMBER_PASSWORD
    */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0860', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0860 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperInterfaceMix/UIComponentScrollSwiperInterfaceMix086")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0860 finish.`);
      done()
    })

    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0870
    * @tc.name        SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0870
    * @tc.desc        set TextContentStyle.INLINE
    */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0870', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0870 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperInterfaceMix/UIComponentScrollSwiperInterfaceMix087")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0870 finish.`);
      done()
    })

    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0880
    * @tc.name        SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0880
    * @tc.desc        set padding
    */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0880', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0880 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperInterfaceMix/UIComponentScrollSwiperInterfaceMix088")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0880 finish.`);
      done()
    })

    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0890
    * @tc.name        SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0890
    * @tc.desc        set Normal
    */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0890', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0890 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperInterfaceMix/UIComponentScrollSwiperInterfaceMix089")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0890 finish.`);
      done()
    })

    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0900
    * @tc.name        SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0900
    * @tc.desc        set Password
    */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0900', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0900 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperInterfaceMix/UIComponentScrollSwiperInterfaceMix090")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0900 finish.`);
      done()
    })

    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0910
    * @tc.name        SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0910
    * @tc.desc        set Password
    */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0910', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0910 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperInterfaceMix/UIComponentScrollSwiperInterfaceMix091")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0910 finish.`);
      done()
    })

    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0920
    * @tc.name        SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0920
    * @tc.desc        set Password
    */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0920', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0920 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperInterfaceMix/UIComponentScrollSwiperInterfaceMix092")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0920 finish.`);
      done()
    })

    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0930
    * @tc.name        SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0930
    * @tc.desc        set NEW_PASSWORD
    */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0930', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0930 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperInterfaceMix/UIComponentScrollSwiperInterfaceMix093")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0930 finish.`);
      done()
    })

    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0940
    * @tc.name        SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0940
    * @tc.desc        set NEW_PASSWORD
    */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0940', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0940 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperInterfaceMix/UIComponentScrollSwiperInterfaceMix094")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0940 finish.`);
      done()
    })

    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0950
    * @tc.name        SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0950
    * @tc.desc        set SCREEN_LOCK_PASSWORD
    */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0950', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0950 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperInterfaceMix/UIComponentScrollSwiperInterfaceMix095")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0950 finish.`);
      done()
    })

    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0960
    * @tc.name        SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0960
    * @tc.desc        set SCREEN_LOCK_PASSWORD
    */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0960', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0960 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperInterfaceMix/UIComponentScrollSwiperInterfaceMix096")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0960 finish.`);
      done()
    })

    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0970
    * @tc.name        SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0970
    * @tc.desc        set NUMBER_PASSWORD
    */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0970', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0970 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperInterfaceMix/UIComponentScrollSwiperInterfaceMix097")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0970 finish.`);
      done()
    })

    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0980
    * @tc.name        SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0980
    * @tc.desc        set NUMBER_PASSWORD
    */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0980', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0980 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperInterfaceMix/UIComponentScrollSwiperInterfaceMix098")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0980 finish.`);
      done()
    })

    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0990
    * @tc.name        SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0990
    * @tc.desc        set TextContentStyle.INLINE
    */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0990', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0990 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperInterfaceMix/UIComponentScrollSwiperInterfaceMix099")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_0990 finish.`);
      done()
    })

    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_1000
    * @tc.name        SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_1000
    * @tc.desc        set TextContentStyle.INLINE
    */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_1000', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_1000 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperInterfaceMix/UIComponentScrollSwiperInterfaceMix100")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_1000 finish.`);
      done()
    })

    /*
* @tc.number      SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_1010
* @tc.name        SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_1010
* @tc.desc        set clear
*/
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_1010', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_1010 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperInterfaceMix/UIComponentScrollSwiperInterfaceMix101")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_1010 finish.`);
      done()
    })

    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_1020
    * @tc.name        SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_1020
    * @tc.desc        set menu
    */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_1020', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_1020 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperInterfaceMix/UIComponentScrollSwiperInterfaceMix102")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_1020 finish.`);
      done()
    })

    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_1030
    * @tc.name        SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_1030
    * @tc.desc        no set showCounter
    */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_1030', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_1030 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperInterfaceMix/UIComponentScrollSwiperInterfaceMix103")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_1030 finish.`);
      done()
    })

    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_1040
    * @tc.name        SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_1040
    * @tc.desc        set showCounter =false
    */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_1040', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_1040 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperInterfaceMix/UIComponentScrollSwiperInterfaceMix104")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_1040 finish.`);
      done()
    })

    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_1050
    * @tc.name        SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_1050
    * @tc.desc        set showCounter = true
    */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_1050', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_1050 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperInterfaceMix/UIComponentScrollSwiperInterfaceMix105")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_1050 finish.`);
      done()
    })

    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_1060
    * @tc.name        SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_1060
    * @tc.desc        set showCounter options = 0
    */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_1060', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_1060 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperInterfaceMix/UIComponentScrollSwiperInterfaceMix106")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_1060 finish.`);
      done()
    })

    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_1070
    * @tc.name        SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_1070
    * @tc.desc        set showCounter options = 31
    */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_1070', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_1070 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperInterfaceMix/UIComponentScrollSwiperInterfaceMix107")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_1070 finish.`);
      done()
    })

    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_1080
    * @tc.name        SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_1080
    * @tc.desc        set showCounter options = 50
    */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_1080', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_1080 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperInterfaceMix/UIComponentScrollSwiperInterfaceMix108")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_1080 finish.`);
      done()
    })

    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_1090
    * @tc.name        SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_1090
    * @tc.desc        set showCounter options = 100
    */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_1090', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_1090 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperInterfaceMix/UIComponentScrollSwiperInterfaceMix109")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_1090 finish.`);
      done()
    })

    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_1100
    * @tc.name        SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_1100
    * @tc.desc        set showCounter options = 50
    */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_1100', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_1100 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperInterfaceMix/UIComponentScrollSwiperInterfaceMix110")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_1100 finish.`);
      done()
    })

    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_1110
    * @tc.name        SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_1110
    * @tc.desc        set showCounter options = padding
    */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_1110', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_1110 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperInterfaceMix/UIComponentScrollSwiperInterfaceMix111")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACEMIX_1110 finish.`);
      done()
    })
  })
}