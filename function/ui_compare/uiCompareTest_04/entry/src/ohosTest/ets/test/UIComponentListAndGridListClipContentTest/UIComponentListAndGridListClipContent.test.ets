/*
 * Copyright (c) 2025 Shenzhen Kaihong Digital Industry Development Co., Ltd.
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
import { describe, beforeAll, beforeEach, afterEach, afterAll, it, expect, Level } from '@ohos/hypium'
import Settings from '../model/Settings'
import windowSnap from '../model/snapShot'
import Logger from '../model/Logger'
import Utils from '../model/Utils'
import { Driver, ON, Component } from '@ohos.UiTest'

export default function UIComponentListAndGridListClipContentTest() {
  describe('UIComponentListAndGridListClipContentTest', () => {
    afterEach(async (done: Function) => {
      if (Settings.windowClass == undefined) {
        return;
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
     * @tc.number  SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_CLIPCONTENT_0040
     * @tc.name    SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_CLIPCONTENT_0040
     * @tc.desc    Component 3 groups
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_CLIPCONTENT_0040', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_CLIPCONTENT_0040 start.`);
      Settings.createWindow("testability/pages/UIComponentListAndGridListClipContent/UIComponentListAndGridListClipContent001");
      await Utils.sleep(2000);
      windowSnap.snapShot('UIComponentListAndGridListClipContent0040');
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_CLIPCONTENT_0040 finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_CLIPCONTENT_0050
     * @tc.name    SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_CLIPCONTENT_0050
     * @tc.desc    Component 3 groups
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_CLIPCONTENT_0050', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_CLIPCONTENT_0050 start.`);
      Settings.createWindow("testability/pages/UIComponentListAndGridListClipContent/UIComponentListAndGridListClipContent002");
      await Utils.sleep(2000);
      windowSnap.snapShot('UIComponentListAndGridListClipContent0050');
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_CLIPCONTENT_0050 finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_CLIPCONTENT_0070
     * @tc.name    SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_CLIPCONTENT_0070
     * @tc.desc    Component 3 groups
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_CLIPCONTENT_0070', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_CLIPCONTENT_0070 start.`);
      Settings.createWindow("testability/pages/UIComponentListAndGridListClipContent/UIComponentListAndGridListClipContent003");
      await Utils.sleep(2000);
      windowSnap.snapShot('UIComponentListAndGridListClipContent0070_1');
      let driver: Driver = Driver.create();
      let button1: Component = await driver.findComponent(ON.id('-1'));
      await button1.click();
      await Utils.sleep(1000);
      windowSnap.snapShot('UIComponentListAndGridListClipContent0070_2');
      let button2: Component = await driver.findComponent(ON.id('undefined'));
      await button2.click();
      await Utils.sleep(1000);
      windowSnap.snapShot('UIComponentListAndGridListClipContent0070_3');
      let button3: Component = await driver.findComponent(ON.id('null'));
      await button3.click();
      await Utils.sleep(1000);
      windowSnap.snapShot('UIComponentListAndGridListClipContent0070_3');
      let button4: Component = await driver.findComponent(ON.id('70000'));
      await button4.click();
      await Utils.sleep(1000);
      windowSnap.snapShot('UIComponentListAndGridListClipContent0070_4');
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_CLIPCONTENT_0070 finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_CLIPCONTENT_0020
     * @tc.name    SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_CLIPCONTENT_0020
     * @tc.desc    Component 3 groups
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_CLIPCONTENT_0020', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_CLIPCONTENT_0020 start.`);
      Settings.createWindow("testability/pages/UIComponentListAndGridListClipContent/UIComponentListAndGridListClipContent004");
      await Utils.sleep(2000);
      windowSnap.snapShot('UIComponentListAndGridListClipContent0020');
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_CLIPCONTENT_0020 finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_CLIPCONTENT_0060
     * @tc.name    SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_CLIPCONTENT_0060
     * @tc.desc    Component 3 groups
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_CLIPCONTENT_0060', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_CLIPCONTENT_0060 start.`);
      Settings.createWindow("testability/pages/UIComponentListAndGridListClipContent/UIComponentListAndGridListClipContent005");
      await Utils.sleep(2000);
      windowSnap.snapShot('UIComponentListAndGridListClipContent0060');
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_CLIPCONTENT_0060 finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_CLIPCONTENT_0030
     * @tc.name    SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_CLIPCONTENT_0030
     * @tc.desc    Component 3 groups
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_CLIPCONTENT_0030', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_CLIPCONTENT_0030 start.`);
      Settings.createWindow("testability/pages/UIComponentListAndGridListClipContent/UIComponentListAndGridListClipContent006");
      await Utils.sleep(2000);
      windowSnap.snapShot('UIComponentListAndGridListClipContent0030_1');
      let driver: Driver = Driver.create();
      let button1: Component = await driver.findComponent(ON.id('-1'));
      await button1.click();
      await Utils.sleep(1000);
      windowSnap.snapShot('UIComponentListAndGridListClipContent0030_2');
      let button2: Component = await driver.findComponent(ON.id('undefined'));
      await button2.click();
      await Utils.sleep(1000);
      windowSnap.snapShot('UIComponentListAndGridListClipContent0030_3');
      let button3: Component = await driver.findComponent(ON.id('null'));
      await button3.click();
      await Utils.sleep(1000);
      windowSnap.snapShot('UIComponentListAndGridListClipContent0030_3');
      let button4: Component = await driver.findComponent(ON.id('200%'));
      await button4.click();
      await Utils.sleep(1000);
      windowSnap.snapShot('UIComponentListAndGridListClipContent0030_4');
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_CLIPCONTENT_0030 finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_CLIPCONTENT_0080
     * @tc.name    SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_CLIPCONTENT_0080
     * @tc.desc    Component 3 groups
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_CLIPCONTENT_0080', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_CLIPCONTENT_0080 start.`);
      Settings.createWindow("testability/pages/UIComponentListAndGridListClipContent/UIComponentListAndGridListClipContent007");
      await Utils.sleep(2000);
      windowSnap.snapShot('UIComponentListAndGridListClipContent0080');
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_CLIPCONTENT_0080 finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_CLIPCONTENT_0090
     * @tc.name    SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_CLIPCONTENT_0090
     * @tc.desc    Component 3 groups
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_CLIPCONTENT_0090', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_CLIPCONTENT_0090 start.`);
      Settings.createWindow("testability/pages/UIComponentListAndGridListClipContent/UIComponentListAndGridListClipContent009");
      await Utils.sleep(2000);
      windowSnap.snapShot('UIComponentListAndGridListClipContent0090_1');
      let driver: Driver = Driver.create();
      let button1: Component = await driver.findComponent(ON.id('-1'));
      await button1.click();
      await Utils.sleep(1000);
      windowSnap.snapShot('UIComponentListAndGridListClipContent0090_2');
      let button2: Component = await driver.findComponent(ON.id('undefined'));
      await button2.click();
      await Utils.sleep(1000);
      windowSnap.snapShot('UIComponentListAndGridListClipContent0090_3');
      let button3: Component = await driver.findComponent(ON.id('null'));
      await button3.click();
      await Utils.sleep(1000);
      windowSnap.snapShot('UIComponentListAndGridListClipContent0090_3');
      let button4: Component = await driver.findComponent(ON.id('70000'));
      await button4.click();
      await Utils.sleep(1000);
      windowSnap.snapShot('UIComponentListAndGridListClipContent0090_4');
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_CLIPCONTENT_0090 finish.`);
      done();
    });
  })
}
