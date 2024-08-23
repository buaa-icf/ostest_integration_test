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
import {UiComponent, UiDriver, Component, Driver, UiWindow, ON, BY, MatchPattern, DisplayRotation, ResizeDirection, WindowMode, PointerMatrix} from '@ohos.UiTest';
export default function UITestCase() {
  describe('UITestCase', () => {
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
            * @tc.number  TestCase_0881e5105f134cca8e15983912f15f20
            * @tc.name    TestCase_0881e5105f134cca8e15983912f15f20
            * @tc.desc    MyColumnSplitModifier
     */
    it('TestCase_0881e5105f134cca8e15983912f15f20', 0, async (done: Function) => {
      Logger.info('TEST', `TestCase_0881e5105f134cca8e15983912f15f20 start.`);
      Settings.createWindow("testability/pages/UITestCase/UITestCase001")
      await Utils.sleep(1000)
      let driver:Driver=Driver.create()
      let button:Component =await driver.findComponent(ON.id('tectcase001'))
      await button.click()
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `TestCase_0881e5105f134cca8e15983912f15f20 finish.`);
      done()
    })

    /*
          * @tc.number  TestCase_10693b5cd42e4d069ee1e690ef038146
          * @tc.name    TestCase_10693b5cd42e4d069ee1e690ef038146
          * @tc.desc    set fontFeature为ss02
   */
    it('TestCase_10693b5cd42e4d069ee1e690ef038146', 0, async (done: Function) => {
      Logger.info('TEST', `TestCase_10693b5cd42e4d069ee1e690ef038146 start.`);
      Settings.createWindow("testability/pages/UITestCase/UITestCase002")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `TestCase_10693b5cd42e4d069ee1e690ef038146 finish.`);
      done()
    })

    /*
          * @tc.number  TestCase_1f5f04727d4347bcade56ec84b7ba266
          * @tc.name    TestCase_1f5f04727d4347bcade56ec84b7ba266
          * @tc.desc    MyRowModifier set FlexAlign.End、FlexAlign.Start
   */
    it('TestCase_1f5f04727d4347bcade56ec84b7ba266', 0, async (done: Function) => {
      Logger.info('TEST', `TestCase_1f5f04727d4347bcade56ec84b7ba266 start.`);
      Settings.createWindow("testability/pages/UITestCase/UITestCase003")
      await Utils.sleep(1000)
      let driver:Driver=Driver.create()
      let button:Component =await driver.findComponent(ON.id('tectcase003'))
      await button.click()
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `TestCase_1f5f04727d4347bcade56ec84b7ba266 finish.`);
      done()
    })

    /*
             * @tc.number  TestCase_2187d4e32ada4fab8fbbd438088a5ce7
             * @tc.name    TestCase_2187d4e32ada4fab8fbbd438088a5ce7
             * @tc.desc    MyRowSplitModifier resizeable=true
      */
    it('TestCase_2187d4e32ada4fab8fbbd438088a5ce7', 0, async (done: Function) => {
      Logger.info('TEST', `TestCase_2187d4e32ada4fab8fbbd438088a5ce7 start.`);
      Settings.createWindow("testability/pages/UITestCase/UITestCase004")
      await Utils.sleep(1000)
      let driver:Driver=Driver.create()
      let button:Component =await driver.findComponent(ON.id('tectcase004'))
     await button.click();
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `TestCase_2187d4e32ada4fab8fbbd438088a5ce7 finish.`);
      done()
    })

    /*
           * @tc.number  TestCase_25e9c6aa299b43528a021a64eb4da55d
           * @tc.name    TestCase_25e9c6aa299b43528a021a64eb4da55d
           * @tc.desc    MyBlankModifier color=yello
    */
    it('TestCase_25e9c6aa299b43528a021a64eb4da55d', 0, async (done: Function) => {
      Logger.info('TEST', `TestCase_25e9c6aa299b43528a021a64eb4da55d start.`);
      Settings.createWindow("testability/pages/UITestCase/UITestCase005")
      await Utils.sleep(1000)
      let driver:Driver=Driver.create()
      let button:Component =await driver.findComponent(ON.id('tectcase005'))
      await button.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(10000)
      Logger.info('TEST', `TestCase_25e9c6aa299b43528a021a64eb4da55d finish.`);
      done()
    })

    /*
         * @tc.number  TestCase_2faade527e91452281dec1a21dab4f7d
         * @tc.name    TestCase_2faade527e91452281dec1a21dab4f7d
         * @tc.desc    MyColumnModifier set alignItems
  */
    it('TestCase_2faade527e91452281dec1a21dab4f7d', 0, async (done: Function) => {
      Logger.info('TEST', `TestCase_2faade527e91452281dec1a21dab4f7d start.`);
      Settings.createWindow("testability/pages/UITestCase/UITestCase006")
      await Utils.sleep(1000)
      let driver:Driver=Driver.create()
      let button:Component =await driver.findComponent(ON.id('tectcase006'))
      await button.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(10000)
      Logger.info('TEST', `TestCase_2faade527e91452281dec1a21dab4f7d finish.`);
      done()
    })

    /*
      * @tc.number  TestCase_33a56f39a4df45c097221ee19237eb5b
      * @tc.name    TestCase_33a56f39a4df45c097221ee19237eb5b
      * @tc.desc    MyRowModifier set alignItems
*/
    it('TestCase_33a56f39a4df45c097221ee19237eb5b', 0, async (done: Function) => {
      Logger.info('TEST', `TestCase_33a56f39a4df45c097221ee19237eb5b start.`);
      Settings.createWindow("testability/pages/UITestCase/UITestCase007")
      await Utils.sleep(1000)
      let driver:Driver=Driver.create()
      let button:Component =await driver.findComponent(ON.id('tectcase007'))
      await button.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(10000)
      Logger.info('TEST', `TestCase_33a56f39a4df45c097221ee19237eb5b finish.`);
      done()
    })

    /*
     * @tc.number  TestCase_58db935309314858b8b5ddd99b9e2bc8
     * @tc.name    TestCase_58db935309314858b8b5ddd99b9e2bc8
     * @tc.desc    MyDividerModifier set linecap
*/
    it('TestCase_58db935309314858b8b5ddd99b9e2bc8', 0, async (done: Function) => {
      Logger.info('TEST', `TestCase_58db935309314858b8b5ddd99b9e2bc8 start.`);
      Settings.createWindow("testability/pages/UITestCase/UITestCase008")
      await Utils.sleep(1000)
      let driver:Driver=Driver.create()
      let button:Component =await driver.findComponent(ON.id('tectcase008'))
      await button.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(10000)
      Logger.info('TEST', `TestCase_58db935309314858b8b5ddd99b9e2bc8 finish.`);
      done()
    })

    /*
   * @tc.number  TestCase_6049ebfd5fd1409f95e3c59424c4e9c7
   * @tc.name    TestCase_6049ebfd5fd1409f95e3c59424c4e9c7
   * @tc.desc    MyRowModifier set two FlexAlign.End、FlexAlign.Start
*/
    it('TestCase_6049ebfd5fd1409f95e3c59424c4e9c7', 0, async (done: Function) => {
      Logger.info('TEST', `TestCase_6049ebfd5fd1409f95e3c59424c4e9c7 start.`);
      Settings.createWindow("testability/pages/UITestCase/UITestCase009")
      await Utils.sleep(1000)
      let driver:Driver=Driver.create()
      let button:Component =await driver.findComponent(ON.id('tectcase009'))
      await button.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(10000)
      Logger.info('TEST', `TestCase_6049ebfd5fd1409f95e3c59424c4e9c7 finish.`);
      done()
    })

    /*
       * @tc.number  TestCase_612fad460834401e96f0d3b68f67dc8f
       * @tc.name    TestCase_612fad460834401e96f0d3b68f67dc8f
       * @tc.desc    MyColumnModifier set tow column FlexAlign.End、FlexAlign.Start
    */
    it('TestCase_612fad460834401e96f0d3b68f67dc8f', 0, async (done: Function) => {
      Logger.info('TEST', `TestCase_612fad460834401e96f0d3b68f67dc8f start.`);
      Settings.createWindow("testability/pages/UITestCase/UITestCase010")
      await Utils.sleep(1000)
      let driver:Driver=Driver.create()
      let button:Component =await driver.findComponent(ON.id('tectcase010'))
      await button.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(10000)
      Logger.info('TEST', `TestCase_612fad460834401e96f0d3b68f67dc8f finish.`);
      done()
    })

    /*
 * @tc.number  TestCase_67a3cfa6dbc149658b9b5438a428d160
 * @tc.name    TestCase_67a3cfa6dbc149658b9b5438a428d160
 * @tc.desc    MyBlankModifier set color=yello
*/
    it('TestCase_67a3cfa6dbc149658b9b5438a428d160', 0, async (done: Function) => {
      Logger.info('TEST', `TestCase_67a3cfa6dbc149658b9b5438a428d160 start.`);
      Settings.createWindow("testability/pages/UITestCase/UITestCase011")
      await Utils.sleep(1000)
      let driver:Driver=Driver.create()
      let button:Component =await driver.findComponent(ON.id('tectcase011'))
      await button.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(10000)
      Logger.info('TEST', `TestCase_67a3cfa6dbc149658b9b5438a428d160 finish.`);
      done()
    })

    /*
* @tc.number  TestCase_718b02bf461e482cb5c999d48ad43b4f
* @tc.name    TestCase_718b02bf461e482cb5c999d48ad43b4f
* @tc.desc    do not support change
*/
    it('TestCase_718b02bf461e482cb5c999d48ad43b4f', 0, async (done: Function) => {
      Logger.info('TEST', `TestCase_718b02bf461e482cb5c999d48ad43b4f start.`);
      Settings.createWindow("testability/pages/UITestCase/UITestCase012")
      await Utils.sleep(1000)
      let driver:Driver=Driver.create()
      let button:Component =await driver.findComponent(ON.id('tectcase012'))
      await button.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(10000)
      Logger.info('TEST', `TestCase_718b02bf461e482cb5c999d48ad43b4f finish.`);
      done()
    })



    /*
* @tc.number  TestCase_752f0513159849948d499299cf89c4f6
* @tc.name    TestCase_752f0513159849948d499299cf89c4f6
* @tc.desc    MyDividerModifier set linecap=round
*/
    it('TestCase_752f0513159849948d499299cf89c4f6', 0, async (done: Function) => {
      Logger.info('TEST', `TestCase_752f0513159849948d499299cf89c4f6 start.`);
      Settings.createWindow("testability/pages/UITestCase/UITestCase014")
      await Utils.sleep(1000)
      let driver:Driver=Driver.create()
      let button:Component =await driver.findComponent(ON.id('tectcase014'))
      await button.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(10000)
      Logger.info('TEST', `TestCase_752f0513159849948d499299cf89c4f6 finish.`);
      done()
    })

    /*
* @tc.number  TestCase_abaae3a5f0414a07899d04f2ac328e96
* @tc.name    TestCase_abaae3a5f0414a07899d04f2ac328e96
* @tc.desc    MyColumnSplitModifier set resizeable=true
*/
    it('TestCase_abaae3a5f0414a07899d04f2ac328e96', 0, async (done: Function) => {
      Logger.info('TEST', `TestCase_abaae3a5f0414a07899d04f2ac328e96 start.`);
      Settings.createWindow("testability/pages/UITestCase/UITestCase020")
      await Utils.sleep(1000)
      let driver:Driver=Driver.create()
      let button:Component =await driver.findComponent(ON.id('tectcase020'))
      await button.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(10000)
      Logger.info('TEST', `TestCase_abaae3a5f0414a07899d04f2ac328e96 finish.`);
      done()
    })

    /*
* @tc.number  TestCase_b3f799fc946f4ac1af92d75e894eb560
* @tc.name    TestCase_b3f799fc946f4ac1af92d75e894eb560
* @tc.desc    MyColumnModifier set two FlexAlign.End、FlexAlign.Start
*/
    it('TestCase_b3f799fc946f4ac1af92d75e894eb560', 0, async (done: Function) => {
      Logger.info('TEST', `TestCase_b3f799fc946f4ac1af92d75e894eb560 start.`);
      Settings.createWindow("testability/pages/UITestCase/UITestCase021")
      await Utils.sleep(1000)
      let driver:Driver=Driver.create()
      let button:Component =await driver.findComponent(ON.id('tectcase021'))
      await button.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(10000)
      Logger.info('TEST', `TestCase_b3f799fc946f4ac1af92d75e894eb560 finish.`);
      done()
    })

    /*
* @tc.number  TestCase_b9d7edec63254feabba03b0940effa8e
* @tc.name    TestCase_b9d7edec63254feabba03b0940effa8e
* @tc.desc    not supported for color1 and strokeWidth1
*/
    it('TestCase_b9d7edec63254feabba03b0940effa8e', 0, async (done: Function) => {
      Logger.info('TEST', `TestCase_b9d7edec63254feabba03b0940effa8e start.`);
      Settings.createWindow("testability/pages/UITestCase/UITestCase022")
      await Utils.sleep(1000)
      let driver:Driver=Driver.create()
      let button:Component =await driver.findComponent(ON.id('tectcase022'))
      await button.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(10000)
      Logger.info('TEST', `TestCase_b9d7edec63254feabba03b0940effa8e finish.`);
      done()
    })

    /*
* @tc.number  TestCase_bda7a084304b4eef8cf317da5eb03071
* @tc.name    TestCase_bda7a084304b4eef8cf317da5eb03071
* @tc.desc    change to pink
*/
    it('TestCase_bda7a084304b4eef8cf317da5eb03071', 0, async (done: Function) => {
      Logger.info('TEST', `TestCase_bda7a084304b4eef8cf317da5eb03071 start.`);
      Settings.createWindow("testability/pages/UITestCase/UITestCase024")
      await Utils.sleep(1000)
      let driver:Driver=Driver.create()
      let button:Component =await driver.findComponent(ON.id('tectcase024'))
      await button.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(10000)
      Logger.info('TEST', `TestCase_bda7a084304b4eef8cf317da5eb03071 finish.`);
      done()
    })

    /*
* @tc.number  TestCase_d4d5fc2a28af4e0dbfae435b5c87c9d5
* @tc.name    TestCase_d4d5fc2a28af4e0dbfae435b5c87c9d5
* @tc.desc    MyColumnSplitModifier set divider
*/
    it('TestCase_d4d5fc2a28af4e0dbfae435b5c87c9d5', 0, async (done: Function) => {
      Logger.info('TEST', `TestCase_d4d5fc2a28af4e0dbfae435b5c87c9d5 start.`);
      Settings.createWindow("testability/pages/UITestCase/UITestCase025")
      await Utils.sleep(1000)
      let driver:Driver=Driver.create()
      let button:Component =await driver.findComponent(ON.id('tectcase025'))
      await button.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(10000)
      Logger.info('TEST', `TestCase_d4d5fc2a28af4e0dbfae435b5c87c9d5 finish.`);
      done()
    })

    /*
* @tc.number  TestCase_e7004bb275504047ba383ec9db34fbb2
* @tc.name    TestCase_e7004bb275504047ba383ec9db34fbb2
* @tc.desc    MyBlankModifier change to 0xBBFFFF
*/
    it('TestCase_e7004bb275504047ba383ec9db34fbb2', 0, async (done: Function) => {
      Logger.info('TEST', `TestCase_e7004bb275504047ba383ec9db34fbb2 start.`);
      Settings.createWindow("testability/pages/UITestCase/UITestCase030")
      await Utils.sleep(1000)
      let driver:Driver=Driver.create()
      let button:Component =await driver.findComponent(ON.id('tectcase030'))
      await button.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(10000)
      Logger.info('TEST', `TestCase_e7004bb275504047ba383ec9db34fbb2 finish.`);
      done()
    })

    /*
* @tc.number  TestCase_f67a815b3a6a480fa937b6d7138ca220
* @tc.name    TestCase_f67a815b3a6a480fa937b6d7138ca220
* @tc.desc    two blank change to pink
*/
    it('TestCase_f67a815b3a6a480fa937b6d7138ca220', 0, async (done: Function) => {
      Logger.info('TEST', `TestCase_f67a815b3a6a480fa937b6d7138ca220 start.`);
      Settings.createWindow("testability/pages/UITestCase/UITestCase034")
      await Utils.sleep(1000)
      let driver:Driver=Driver.create()
      let button:Component =await driver.findComponent(ON.id('tectcase034'))
      await button.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(10000)
      Logger.info('TEST', `TestCase_f67a815b3a6a480fa937b6d7138ca220 finish.`);
      done()
    })

    /*
* @tc.number  TestCase_f8bf8ecff77e4b5e85c4f7ad059885af
* @tc.name    TestCase_f8bf8ecff77e4b5e85c4f7ad059885af
* @tc.desc    resizeable1
*/
    it('TestCase_f8bf8ecff77e4b5e85c4f7ad059885af', 0, async (done: Function) => {
      Logger.info('TEST', `TestCase_f8bf8ecff77e4b5e85c4f7ad059885af start.`);
      Settings.createWindow("testability/pages/UITestCase/UITestCase035")
      await Utils.sleep(1000)
      let driver:Driver=Driver.create()
      let button:Component =await driver.findComponent(ON.id('tectcase035'))
      await button.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(10000)
      Logger.info('TEST', `TestCase_f8bf8ecff77e4b5e85c4f7ad059885af finish.`);
      done()
    })
  })
}
