/**
 * Copyright (c) 2025 Shenzhen Kaihong Digital Industry Development Co., Ltd.
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
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
import { Driver, ON, Component } from '@kit.TestKit';

export default function RouterPushTest() {

  describe('RouterPushTest', () => {
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
      await Settings.changeWindowOrientation('end')
      await Utils.sleep(2000);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0070
     * @tc.name   : Component Focus Animation Effect UX Review
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0070', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0070 start.`);
      Settings.createWindow("testability/pages/router_push/pageA")
      await Utils.sleep(1000)
      let driver:Driver = Driver.create();
      let buttonA: Component = await driver.findComponent(ON.id('PageA_Button1'));
      await buttonA.click();
      windowSnap.snapShot('SUB_ACE_FOCUS_DYNAMIC_EFFECT_017_01')
      await Utils.sleep(50)
      let buttonB: Component = await driver.findComponent(ON.id('PageB_Button1'));
      await buttonB.click();
      windowSnap.snapShot('SUB_ACE_FOCUS_DYNAMIC_EFFECT_017_02')
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_FOCUS_DYNAMIC_EFFECT_017 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0010
     * @tc.name   : Component Focus Animation Effect UX Review
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0010', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0010 start.`);
      Settings.createWindow("testability/pages/router_push/pageA")
      await Utils.sleep(1000)
      let driver:Driver = Driver.create();
      let buttonA: Component = await driver.findComponent(ON.id('PageA_Button1'));
      await buttonA.click();
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0010')
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0010 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0270
     * @tc.name   : Component Focus Animation Effect UX Review
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0270', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0270 start.`);
      Settings.createWindow("testability/pages/router_push/pageA")
      await Utils.sleep(1000)
      let driver:Driver = Driver.create();

      let buttonA: Component = await driver.findComponent(ON.id('PageA_Button1'));
      await buttonA.click();
      await Utils.sleep(500)

      let buttonB1: Component = await driver.findComponent(ON.id('PageB_Button1'));
      await buttonB1.click();
      await Utils.sleep(500)

      let buttonC1: Component = await driver.findComponent(ON.id('PageC_Button1'));
      await buttonC1.click();

      let buttonB2: Component = await driver.findComponent(ON.id('PageB_Button2'));
      await buttonB2.click();

      await Utils.sleep(500)
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0270_01')
      Settings.changeWindowOrientation()
      await Utils.sleep(500)
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0270_02')
      await Settings.changeWindowOrientation('end')
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0270 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0190
     * @tc.name   : Component Focus Animation Effect UX Review
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0190', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0190 start.`);
      Settings.createWindow("testability/pages/router_push/pageA")
      await Utils.sleep(1000)
      let driver:Driver = Driver.create();
      let buttonA: Component = await driver.findComponent(ON.id('PageA_Button2'));
      await buttonA.click();
      await Utils.sleep(500)
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0270_01')
      await Utils.sleep(500)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0270 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0560
     * @tc.name   : Component Focus Animation Effect UX Review
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0560', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0560 start.`);
      Settings.createWindow("testability/pages/router_push/pageA")
      await Utils.sleep(1000)
      let driver:Driver = Driver.create();
      let buttonA: Component = await driver.findComponent(ON.id('PageA_Button1'));
      await buttonA.click();
      await Utils.sleep(500)

      let buttonB1: Component = await driver.findComponent(ON.id('PageB_Button1'));
      await buttonB1.click();
      await Utils.sleep(500)

      let buttonC1: Component = await driver.findComponent(ON.id('PageC_Button1'));
      await buttonC1.click();
      let buttonB2: Component = await driver.findComponent(ON.id('PageB_Button2'));
      await buttonB2.click();
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0560')
      await Utils.sleep(500)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0560 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0200
     * @tc.name   : Component Focus Animation Effect UX Review
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0200', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0200 start.`);
      Settings.createWindow("testability/pages/router_push/pageA")
      await Utils.sleep(1000)
      let driver:Driver = Driver.create();
      let buttonA: Component = await driver.findComponent(ON.id('PageA_Button1'));
      await buttonA.click();
      await Utils.sleep(500)

      let buttonB1: Component = await driver.findComponent(ON.id('PageB_Button2'));
      await buttonB1.click();
      let buttonA1: Component = await driver.findComponent(ON.id('PageA_Button1'));
      await buttonA1.click();
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0200')

      await Utils.sleep(500)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0200 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0290
     * @tc.name   : Component Focus Animation Effect UX Review
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0290', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0290 start.`);
      Settings.createWindow("testability/pages/router_push/pageA")
      await Utils.sleep(1000)
      let driver:Driver = Driver.create();
      let buttonA: Component = await driver.findComponent(ON.id('PageA_Button3'));
      await buttonA.click();
      await Utils.sleep(500)
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0290')
      await Utils.sleep(500)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0290 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0570
     * @tc.name   : Component Focus Animation Effect UX Review
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0570', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0570 start.`);
      Settings.createWindow("testability/pages/router_push/pageA")
      await Utils.sleep(1000)
      let driver:Driver = Driver.create();
      let buttonA: Component = await driver.findComponent(ON.id('PageA_Button4'));
      await buttonA.click();
      await Utils.sleep(500)
      let buttonC: Component = await driver.findComponent(ON.id('PageC_Button2'));
      await buttonC.click();
      await Utils.sleep(500)
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0570')
      await Utils.sleep(500)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0570 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0170
     * @tc.name   : Component Focus Animation Effect UX Review
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0170', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0170 start.`);
      Settings.createWindow("testability/pages/router_push/pageA")
      await Utils.sleep(1000)
      let driver:Driver = Driver.create();
      let buttonA: Component = await driver.findComponent(ON.id('PageA_Button5'));
      await buttonA.click();
      await Utils.sleep(500)
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0170')
      await Utils.sleep(500)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0170 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0740
     * @tc.name   : Component Focus Animation Effect UX Review
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0740', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0740 start.`);
      Settings.createWindow("testability/pages/router_push/pageA")
      await Utils.sleep(1000)
      let driver:Driver = Driver.create();
      let buttonA: Component = await driver.findComponent(ON.id('PageA_Button6'));
      await buttonA.click();
      await Utils.sleep(2000)
      let buttonB: Component = await driver.findComponent(ON.id('PageB_Button3'));
      await buttonB.click();
      await Utils.sleep(500)
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0740')
      await Utils.sleep(500)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0740 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0250
     * @tc.name   : Component Focus Animation Effect UX Review
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0250', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0250 start.`);
      Settings.createWindow("testability/pages/router_push/pageA")
      await Utils.sleep(1000)
      let driver:Driver = Driver.create();
      let buttonA: Component = await driver.findComponent(ON.id('PageA_Button7'));
      await buttonA.click();
      Settings.changeWindowOrientation()
      await Utils.sleep(500)
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0250')
      Settings.changeWindowOrientation('end')
      await Utils.sleep(500)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0250 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0340
     * @tc.name   : Component Focus Animation Effect UX Review
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0340', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0340 start.`);
      Settings.createWindow("testability/pages/router_push/pageA")
      await Utils.sleep(1000)
      let driver:Driver = Driver.create();
      let buttonA: Component = await driver.findComponent(ON.id('PageA_Button9'));
      await buttonA.click();
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0340')
      await Utils.sleep(500)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0340 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0650
     * @tc.name   : Component Focus Animation Effect UX Review
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0650', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0650 start.`);
      Settings.createWindow("testability/pages/router_push/pageA")
      await Utils.sleep(1000)
      let driver:Driver = Driver.create();
      let buttonA: Component = await driver.findComponent(ON.id('PageA_Button8'));
      await buttonA.click();
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0650')
      Settings.changeWindowOrientation('end')
      await Utils.sleep(500)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0650 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0550
     * @tc.name   : Component Focus Animation Effect UX Review
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0550', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0550 start.`);
      Settings.createWindow("testability/pages/router_push/pageA")
      await Utils.sleep(1000)
      let driver:Driver = Driver.create();
      let buttonA: Component = await driver.findComponent(ON.id('PageA_Button1'));
      await buttonA.click();
      let buttonB: Component = await driver.findComponent(ON.id('PageB_Button1'));
      await buttonB.click();
      let buttonC: Component = await driver.findComponent(ON.id('PageC_Button3'));
      await buttonC.click();
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0550')
      await Utils.sleep(500)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0550 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0080
     * @tc.name   : Component Focus Animation Effect UX Review
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0080', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0080 start.`);
      Settings.createWindow("testability/pages/router_push/pageA")
      await Utils.sleep(1000)
      let driver:Driver = Driver.create();
      let buttonA: Component = await driver.findComponent(ON.id('PageA_Button9'));
      await buttonA.click();
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0080')
      await Utils.sleep(500)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROUTER_PUSH_BACK__0080 finish.`);
      done()
    })

  })
}
