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

export default function UIImportComponentContentTest() {
  describe('UIImportComponentContentTest', () => {
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
     * @tc.number  SUB_ACE_UI_IMPORT_COMPONENTCONTENT_0040
     * @tc.name    SUB_ACE_UI_IMPORT_COMPONENTCONTENT_0040
     * @tc.desc    Basic Framework Group
     * @tc.level   0
     */
    it('SUB_ACE_UI_IMPORT_COMPONENTCONTENT_0040', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_IMPORT_COMPONENTCONTENT_0040 start.`);
      Settings.createWindow("testability/pages/UIImportComponentContent/UIImportComponentContent001");
      await Utils.sleep(1000);
      let driver: Driver = Driver.create();
      let button1: Component = await driver.findComponent(ON.id('click'));
      await button1.click();
      await Utils.sleep(2000);
      windowSnap.snapShot('UIImportComponentContent0010_1');
      let button2: Component = await driver.findComponent(ON.id('click'));
      await button2.click();
      await Utils.sleep(2000);
      windowSnap.snapShot('UIImportComponentContent0010_2');
      let button3: Component = await driver.findComponent(ON.id('click'));
      await button3.click();
      await Utils.sleep(2000);
      windowSnap.snapShot('UIImportComponentContent0010_3');
      Logger.info('TEST', `SUB_ACE_UI_IMPORT_COMPONENTCONTENT_0040 finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_IMPORT_COMPONENTCONTENT_0020
     * @tc.name    SUB_ACE_UI_IMPORT_COMPONENTCONTENT_0020
     * @tc.desc    Basic Framework Group
     * @tc.level   0
     */
    it('SUB_ACE_UI_IMPORT_COMPONENTCONTENT_0020', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_IMPORT_COMPONENTCONTENT_0020 start.`);
      Settings.createWindow("testability/pages/UIImportComponentContent/UIImportComponentContent002");
      await Utils.sleep(1000);
      let driver: Driver = Driver.create();
      let button1: Component = await driver.findComponent(ON.id('click'));
      await button1.click();
      await Utils.sleep(2000);
      windowSnap.snapShot('UIImportComponentContent0020_1');
      let button2: Component = await driver.findComponent(ON.id('click'));
      await button2.click();
      await Utils.sleep(2000);
      windowSnap.snapShot('UIImportComponentContent0020_2');
      let button3: Component = await driver.findComponent(ON.id('click'));
      await button3.click();
      await Utils.sleep(2000);
      windowSnap.snapShot('UIImportComponentContent0020_3');
      Logger.info('TEST', `SUB_ACE_UI_IMPORT_COMPONENTCONTENT_0020 finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_IMPORT_COMPONENTCONTENT_0030
     * @tc.name    SUB_ACE_UI_IMPORT_COMPONENTCONTENT_0030
     * @tc.desc    Basic Framework Group
     * @tc.level   0
     */
    it('SUB_ACE_UI_IMPORT_COMPONENTCONTENT_0030', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_IMPORT_COMPONENTCONTENT_0030 start.`);
      Settings.createWindow("testability/pages/UIImportComponentContent/UIImportComponentContent003");
      await Utils.sleep(1000);
      let driver: Driver = Driver.create();
      let button1: Component = await driver.findComponent(ON.id('click'));
      await button1.click();
      await Utils.sleep(2000);
      windowSnap.snapShot('UIImportComponentContent0030_1');
      let button2: Component = await driver.findComponent(ON.id('click'));
      await button2.click();
      await Utils.sleep(2000);
      windowSnap.snapShot('UIImportComponentContent0030_2');
      let button3: Component = await driver.findComponent(ON.id('click'));
      await button3.click();
      await Utils.sleep(2000);
      windowSnap.snapShot('UIImportComponentContent0030_3');
      Logger.info('TEST', `SUB_ACE_UI_IMPORT_COMPONENTCONTENT_0030 finish.`);
      done();
    });
  })
}
