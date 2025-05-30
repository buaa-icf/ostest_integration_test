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
import { uiAppearance } from '@kit.ArkUI';
import { BusinessError } from '@kit.BasicServicesKit';

export default function UIComponentMediaCounterLargeFontTest() {
  describe('UIComponentMediaCounterLargeFontTest', () => {
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
     * @tc.number  SUB_ACE_UI_COMPONENT_MEDIA_COUNTER_LARGE_FONT_0010
     * @tc.name    SUB_ACE_UI_COMPONENT_MEDIA_COUNTER_LARGE_FONT_0010
     * @tc.desc    Ecological Group 1
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_MEDIA_COUNTER_LARGE_FONT_0010', Level.LEVEL0, async (done: Function) => {
      const caseName: string = 'SUB_ACE_UI_COMPONENT_MEDIA_COUNTER_LARGE_FONT_0010';
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow("testability/pages/UIComponentMediaCounterLargeFont/UIComponentMediaCounterLargeFont001");
      await Utils.sleep(1000);
      let driver: Driver = Driver.create();
      let button1: Component = await driver.findComponent(ON.id('click'));
      await button1.click();
      windowSnap.snapShot('UIComponentListAndGridListFocus0010_1');
      await Utils.sleep(1000);
      let button2: Component = await driver.findComponent(ON.id('click'));
      await button2.click();
      windowSnap.snapShot('UIComponentListAndGridListFocus0010_2');
      await Utils.sleep(1000);
      let button3: Component = await driver.findComponent(ON.id('click'));
      await button3.click();
      windowSnap.snapShot('UIComponentListAndGridListFocus0010_3');
      await Utils.sleep(1000);
      let button4: Component = await driver.findComponent(ON.id('click'));
      await button4.click();
      windowSnap.snapShot('UIComponentListAndGridListFocus0010_4');
      await Utils.sleep(1000);
      let button5: Component = await driver.findComponent(ON.id('click'));
      await button5.click();
      windowSnap.snapShot('UIComponentListAndGridListFocus0010_5');
      await Utils.sleep(1000);
      let button6: Component = await driver.findComponent(ON.id('click'));
      await button6.click();
      windowSnap.snapShot('UIComponentListAndGridListFocus0010_6');
      try {
        uiAppearance.setFontScale(1).then(() => {
          console.info(`${caseName} Set fontScale1 successfully.`);
        }).catch((error:Error) => {
          console.error(`${caseName} Set fontScale failed, message is ${error.message}` );
        });
      } catch (error) {
        let message = (error as BusinessError).message;
        console.error(`${caseName} Set fontScale failed, messages: ${message}`);
      }
      await Utils.sleep(1000);
      Logger.info('TEST', `${caseName} finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_MEDIA_COUNTER_LARGE_FONT_0018
     * @tc.name    SUB_ACE_UI_COMPONENT_MEDIA_COUNTER_LARGE_FONT_0018
     * @tc.desc    Ecological Group 1
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_MEDIA_COUNTER_LARGE_FONT_0018', Level.LEVEL0, async (done: Function) => {
      const caseName: string = 'SUB_ACE_UI_COMPONENT_MEDIA_COUNTER_LARGE_FONT_0018';
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow("testability/pages/UIComponentMediaCounterLargeFont/UIComponentMediaCounterLargeFont002");
      await Utils.sleep(1000);
      let driver: Driver = Driver.create();
      let button1: Component = await driver.findComponent(ON.id('click'));
      await button1.click();
      windowSnap.snapShot('UIComponentListAndGridListFocus0018_1');
      await Utils.sleep(1000);
      let button2: Component = await driver.findComponent(ON.id('click'));
      await button2.click();
      windowSnap.snapShot('UIComponentListAndGridListFocus0018_2');
      await Utils.sleep(1000);
      let button3: Component = await driver.findComponent(ON.id('click'));
      await button3.click();
      windowSnap.snapShot('UIComponentListAndGridListFocus0018_3');
      await Utils.sleep(1000);
      let button4: Component = await driver.findComponent(ON.id('click'));
      await button4.click();
      windowSnap.snapShot('UIComponentListAndGridListFocus0018_4');
      await Utils.sleep(1000);
      let button5: Component = await driver.findComponent(ON.id('click'));
      await button5.click();
      windowSnap.snapShot('UIComponentListAndGridListFocus0018_5');
      await Utils.sleep(1000);
      let button6: Component = await driver.findComponent(ON.id('click'));
      await button6.click();
      windowSnap.snapShot('UIComponentListAndGridListFocus0018_6');
      try {
        uiAppearance.setFontScale(1).then(() => {
          console.info(`${caseName} Set fontScale1 successfully.`);
        }).catch((error:Error) => {
          console.error(`${caseName} Set fontScale failed, message is ${error.message}` );
        });
      } catch (error) {
        let message = (error as BusinessError).message;
        console.error(`${caseName} Set fontScale failed, messages: ${message}`);
      }
      await Utils.sleep(1000);
      Logger.info('TEST', `${caseName} finish.`);
      done();
    });
  })
}
