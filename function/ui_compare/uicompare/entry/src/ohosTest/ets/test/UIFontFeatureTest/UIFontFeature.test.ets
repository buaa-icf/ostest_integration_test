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
import { Component, Driver ,ON } from '@ohos.UiTest'

export default function UIFontFeature() {

  describe('TestCase', () => {
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
      await Utils.sleep(100);
      done()
    })

    /*
        * @tc.number  TestCase_0746f8c1bea94e85b7d2f2caa263de08
        * @tc.name    TestCase_0746f8c1bea94e85b7d2f2caa263de08
        * @tc.desc    both text changed
    */
    it('TestCase_0746f8c1bea94e85b7d2f2caa263de08', 0, async (done: Function) => {
      Logger.info('TEST', `TestCase_0746f8c1bea94e85b7d2f2caa263de08 start.`);
      Settings.createWindow("testability/pages/UIFontFeature/UIFontFeature001")
      await Utils.sleep(100)
      let driver : Driver = Driver.create();
      await driver.delayMs(100)
      await Utils.sleep(100)
      let button1:Component = await driver.findComponent(ON.id('change1'));
      await driver.delayMs(100)
      await Utils.sleep(100)
      await button1.click()
      await Utils.sleep(100)
      windowSnap.snapShot()
      await Utils.sleep(100)
      Logger.info('TEST', `TestCase_0746f8c1bea94e85b7d2f2caa263de08 finish.`);
      done()
    })

    /*
        * @tc.number  TestCase_110a5004e14348b391fbe049427b064c
        * @tc.name    TestCase_110a5004e14348b391fbe049427b064c
        * @tc.desc    normal=no feature
    */
    it('TestCase_110a5004e14348b391fbe049427b064c', 0, async (done: Function) => {
      Logger.info('TEST', `TestCase_110a5004e14348b391fbe049427b064c start.`);
      Settings.createWindow("testability/pages/UIFontFeature/UIFontFeature002")
      await Utils.sleep(100)
      windowSnap.snapShot()
      await Utils.sleep(100)
      Logger.info('TEST', `TestCase_110a5004e14348b391fbe049427b064c finish.`);
      done()
    })

    /*
        * @tc.number  TestCase_18e92c27dbe84086b654289959c2f93f
        * @tc.name    TestCase_18e92c27dbe84086b654289959c2f93f
        * @tc.desc    ligatures
    */
    it('TestCase_18e92c27dbe84086b654289959c2f93f', 0, async (done: Function) => {
      Logger.info('TEST', `TestCase_18e92c27dbe84086b654289959c2f93f start.`);
      Settings.createWindow("testability/pages/UIFontFeature/UIFontFeature003")
      await Utils.sleep(100)
      windowSnap.snapShot()
      await Utils.sleep(100)
      Logger.info('TEST', `TestCase_18e92c27dbe84086b654289959c2f93f finish.`);
      done()
    })

    /*
        * @tc.number  TestCase_18e92c27dbe84086b654289959c2f93f_745
        * @tc.name    TestCase_18e92c27dbe84086b654289959c2f93f_745
        * @tc.desc    case
    */
    it('TestCase_18e92c27dbe84086b654289959c2f93f_745', 0, async (done: Function) => {
      Logger.info('TEST', `TestCase_18e92c27dbe84086b654289959c2f93f_745 start.`);
      Settings.createWindow("testability/pages/UIFontFeature/UIFontFeature004")
      await Utils.sleep(100)
      windowSnap.snapShot()
      await Utils.sleep(100)
      Logger.info('TEST', `TestCase_18e92c27dbe84086b654289959c2f93f_745 finish.`);
      done()
    })

    /*
        * @tc.number  TestCase_18e92c27dbe84086b654289959c2f93f_745
        * @tc.name    TestCase_18e92c27dbe84086b654289959c2f93f_745
        * @tc.desc    vert
    */
    it('TestCase_18e92c27dbe84086b654289959c2f93f_770', 0, async (done: Function) => {
      Logger.info('TEST', `TestCase_18e92c27dbe84086b654289959c2f93f_770 start.`);
      Settings.createWindow("testability/pages/UIFontFeature/UIFontFeature005")
      await Utils.sleep(100)
      windowSnap.snapShot()
      await Utils.sleep(100)
      Logger.info('TEST', `TestCase_18e92c27dbe84086b654289959c2f93f_770 finish.`);
      done()
    })

    /*
        * @tc.number  TestCase_1ad7560366224fa09a86a1a2676865d6
        * @tc.name    TestCase_1ad7560366224fa09a86a1a2676865d6
        * @tc.desc    ss07
    */
    it('TestCase_1ad7560366224fa09a86a1a2676865d6', 0, async (done: Function) => {
      Logger.info('TEST', `TestCase_1ad7560366224fa09a86a1a2676865d6 start.`);
      Settings.createWindow("testability/pages/UIFontFeature/UIFontFeature006")
      await Utils.sleep(100)
      windowSnap.snapShot()
      await Utils.sleep(100)
      Logger.info('TEST', `TestCase_1ad7560366224fa09a86a1a2676865d6 finish.`);
      done()
    })

    /*
        * @tc.number  TestCase_1cf2666bda5c4fbb9a473d690e320cf1
        * @tc.name    TestCase_1cf2666bda5c4fbb9a473d690e320cf1
        * @tc.desc    hwid 1 0
    */
    it('TestCase_1cf2666bda5c4fbb9a473d690e320cf1', 0, async (done: Function) => {
      Logger.info('TEST', `TestCase_1cf2666bda5c4fbb9a473d690e320cf1 start.`);
      Settings.createWindow("testability/pages/UIFontFeature/UIFontFeature007")
      await Utils.sleep(100)
      windowSnap.snapShot()
      await Utils.sleep(100)
      Logger.info('TEST', `TestCase_1cf2666bda5c4fbb9a473d690e320cf1 finish.`);
      done()
    })

    /*
        * @tc.number  TestCase_208d5e70daa34a82ba35e6907dfd7d90
        * @tc.name    TestCase_208d5e70daa34a82ba35e6907dfd7d90
        * @tc.desc    hwid on
    */
    it('TestCase_208d5e70daa34a82ba35e6907dfd7d90', 0, async (done: Function) => {
      Logger.info('TEST', `TestCase_208d5e70daa34a82ba35e6907dfd7d90 start.`);
      Settings.createWindow("testability/pages/UIFontFeature/UIFontFeature008")
      await Utils.sleep(100)
      windowSnap.snapShot()
      await Utils.sleep(100)
      Logger.info('TEST', `TestCase_208d5e70daa34a82ba35e6907dfd7d90 finish.`);
      done()
    })

    /*
        * @tc.number  TestCase_2a3b20696ddb4c1aa986efdb2c2f1ba8
        * @tc.name    TestCase_2a3b20696ddb4c1aa986efdb2c2f1ba8
        * @tc.desc    ss08
    */
    it('TestCase_2a3b20696ddb4c1aa986efdb2c2f1ba8', 0, async (done: Function) => {
      Logger.info('TEST', `TestCase_2a3b20696ddb4c1aa986efdb2c2f1ba8 start.`);
      Settings.createWindow("testability/pages/UIFontFeature/UIFontFeature009")
      await Utils.sleep(100)
      windowSnap.snapShot()
      await Utils.sleep(100)
      Logger.info('TEST', `TestCase_2a3b20696ddb4c1aa986efdb2c2f1ba8 finish.`);
      done()
    })

    /*
        * @tc.number  TestCase_61edcc08543345c59bc72a2afa743da7
        * @tc.name    TestCase_61edcc08543345c59bc72a2afa743da7
        * @tc.desc    ss06
    */
    it('TestCase_61edcc08543345c59bc72a2afa743da7', 0, async (done: Function) => {
      Logger.info('TEST', `TestCase_61edcc08543345c59bc72a2afa743da7 start.`);
      Settings.createWindow("testability/pages/UIFontFeature/UIFontFeature010")
      await Utils.sleep(100)
      windowSnap.snapShot()
      await Utils.sleep(100)
      Logger.info('TEST', `TestCase_61edcc08543345c59bc72a2afa743da7 finish.`);
      done()
    })

    /*
        * @tc.number  TestCase_62e38b74f513483fb634745dfd73869d
        * @tc.name    TestCase_62e38b74f513483fb634745dfd73869d
        * @tc.desc    ordn
    */
    it('TestCase_62e38b74f513483fb634745dfd73869d', 0, async (done: Function) => {
      Logger.info('TEST', `TestCase_62e38b74f513483fb634745dfd73869d start.`);
      Settings.createWindow("testability/pages/UIFontFeature/UIFontFeature011")
      await Utils.sleep(100)
      windowSnap.snapShot()
      await Utils.sleep(100)
      Logger.info('TEST', `TestCase_62e38b74f513483fb634745dfd73869d finish.`);
      done()
    })

    /*
        * @tc.number  TestCase_6ccf902c7e5c4d9e9ce59bf55529abc6
        * @tc.name    TestCase_6ccf902c7e5c4d9e9ce59bf55529abc6
        * @tc.desc    tnum
    */
    it('TestCase_6ccf902c7e5c4d9e9ce59bf55529abc6', 0, async (done: Function) => {
      Logger.info('TEST', `TestCase_6ccf902c7e5c4d9e9ce59bf55529abc6 start.`);
      Settings.createWindow("testability/pages/UIFontFeature/UIFontFeature012")
      await Utils.sleep(100)
      windowSnap.snapShot()
      await Utils.sleep(100)
      Logger.info('TEST', `TestCase_6ccf902c7e5c4d9e9ce59bf55529abc6 finish.`);
      done()
    })

    /*
        * @tc.number  TestCase_70b5f595996b480b90cfea69bc28e7a1
        * @tc.name    TestCase_70b5f595996b480b90cfea69bc28e7a1
        * @tc.desc    textinput.style.inline
    */
    it('TestCase_70b5f595996b480b90cfea69bc28e7a1', 0, async (done: Function) => {
      Logger.info('TEST', `TestCase_70b5f595996b480b90cfea69bc28e7a1 start.`);
      Settings.createWindow("testability/pages/UIFontFeature/UIFontFeature013")
      await Utils.sleep(100)
      windowSnap.snapShot()
      await Utils.sleep(100)
      Logger.info('TEST', `TestCase_70b5f595996b480b90cfea69bc28e7a1 finish.`);
      done()
    })

    /*
        * @tc.number  TestCase_7e7732bd8a0d44caa07b3d23b3a4145d
        * @tc.name    TestCase_7e7732bd8a0d44caa07b3d23b3a4145d
        * @tc.desc    ss04
    */
    it('TestCase_7e7732bd8a0d44caa07b3d23b3a4145d', 0, async (done: Function) => {
      Logger.info('TEST', `TestCase_7e7732bd8a0d44caa07b3d23b3a4145d start.`);
      Settings.createWindow("testability/pages/UIFontFeature/UIFontFeature014")
      await Utils.sleep(100)
      windowSnap.snapShot()
      await Utils.sleep(100)
      Logger.info('TEST', `TestCase_7e7732bd8a0d44caa07b3d23b3a4145d finish.`);
      done()
    })

    /*
        * @tc.number  TestCase_84ea6cdf145f441f8d946e39706b3cb6
        * @tc.name    TestCase_84ea6cdf145f441f8d946e39706b3cb6
        * @tc.desc    undefined and null
    */
    it('TestCase_84ea6cdf145f441f8d946e39706b3cb6', 0, async (done: Function) => {
      Logger.info('TEST', `TestCase_84ea6cdf145f441f8d946e39706b3cb6 start.`);
      Settings.createWindow("testability/pages/UIFontFeature/UIFontFeature015")
      await Utils.sleep(100)
      windowSnap.snapShot()
      await Utils.sleep(100)
      Logger.info('TEST', `TestCase_84ea6cdf145f441f8d946e39706b3cb6 finish.`);
      done()
    })

    /*
        * @tc.number  TestCase_84ea6cdf145f441f8d946e39706b3cb6
        * @tc.name    TestCase_84ea6cdf145f441f8d946e39706b3cb6
        * @tc.desc    ss01
    */
    it('TestCase_8bb276ea70364895b7ab605f4b9150c7', 0, async (done: Function) => {
      Logger.info('TEST', `TestCase_8bb276ea70364895b7ab605f4b9150c7 start.`);
      Settings.createWindow("testability/pages/UIFontFeature/UIFontFeature016")
      await Utils.sleep(100)
      windowSnap.snapShot()
      await Utils.sleep(100)
      Logger.info('TEST', `TestCase_8bb276ea70364895b7ab605f4b9150c7 finish.`);
      done()
    })

    /*
        * @tc.number  TestCase_8d4a8e90d50a4f60ba28a2227fd33eaa
        * @tc.name    TestCase_8d4a8e90d50a4f60ba28a2227fd33eaa
        * @tc.desc    sups
    */
    it('TestCase_8d4a8e90d50a4f60ba28a2227fd33eaa', 0, async (done: Function) => {
      Logger.info('TEST', `TestCase_8d4a8e90d50a4f60ba28a2227fd33eaa start.`);
      Settings.createWindow("testability/pages/UIFontFeature/UIFontFeature017")
      await Utils.sleep(100)
      windowSnap.snapShot()
      await Utils.sleep(100)
      Logger.info('TEST', `TestCase_8d4a8e90d50a4f60ba28a2227fd33eaa finish.`);
      done()
    })

    /*
        * @tc.number  TestCase_8d618574b12c47a89b4799d038573754
        * @tc.name    TestCase_8d618574b12c47a89b4799d038573754
        * @tc.desc    fontsize sups
    */
    it('TestCase_8d618574b12c47a89b4799d038573754', 0, async (done: Function) => {
      Logger.info('TEST', `TestCase_8d618574b12c47a89b4799d038573754 start.`);
      Settings.createWindow("testability/pages/UIFontFeature/UIFontFeature018")
      await Utils.sleep(100)
      windowSnap.snapShot()
      await Utils.sleep(100)
      Logger.info('TEST', `TestCase_8d618574b12c47a89b4799d038573754 finish.`);
      done()
    })

    /*
        * @tc.number  TestCase_91b7338b58b14995bdaba8614362b332
        * @tc.name    TestCase_91b7338b58b14995bdaba8614362b332
        * @tc.desc    sinp
    */
    it('TestCase_91b7338b58b14995bdaba8614362b332', 0, async (done: Function) => {
      Logger.info('TEST', `TestCase_91b7338b58b14995bdaba8614362b332 start.`);
      Settings.createWindow("testability/pages/UIFontFeature/UIFontFeature019")
      await Utils.sleep(100)
      windowSnap.snapShot()
      await Utils.sleep(100)
      Logger.info('TEST', `TestCase_91b7338b58b14995bdaba8614362b332 finish.`);
      done()
    })

    /*
        * @tc.number  TestCase_91b7338b58b14995bdaba8614362b332_346
        * @tc.name    TestCase_91b7338b58b14995bdaba8614362b332_346
        * @tc.desc    numr
    */
    it('TestCase_91b7338b58b14995bdaba8614362b332_346', 0, async (done: Function) => {
      Logger.info('TEST', `TestCase_91b7338b58b14995bdaba8614362b332_346 start.`);
      Settings.createWindow("testability/pages/UIFontFeature/UIFontFeature020")
      await Utils.sleep(100)
      windowSnap.snapShot()
      await Utils.sleep(100)
      Logger.info('TEST', `TestCase_91b7338b58b14995bdaba8614362b332_346 finish.`);
      done()
    })

    /*
        * @tc.number  TestCase_98b2d848602047b2b9d25c278a791f6b
        * @tc.name    TestCase_98b2d848602047b2b9d25c278a791f6b
        * @tc.desc    ss01 fwid
    */
    it('TestCase_98b2d848602047b2b9d25c278a791f6b', 0, async (done: Function) => {
      Logger.info('TEST', `TestCase_98b2d848602047b2b9d25c278a791f6b start.`);
      Settings.createWindow("testability/pages/UIFontFeature/UIFontFeature021")
      await Utils.sleep(100)
      windowSnap.snapShot()
      await Utils.sleep(100)
      Logger.info('TEST', `TestCase_98b2d848602047b2b9d25c278a791f6b finish.`);
      done()
    })

    /*
        * @tc.number  TestCase_a984bf9d62ee4780a65856992545bdbb
        * @tc.name    TestCase_a984bf9d62ee4780a65856992545bdbb
        * @tc.desc    "hwid""1""0"
    */
    it('TestCase_a984bf9d62ee4780a65856992545bdbb', 0, async (done: Function) => {
      Logger.info('TEST', `TestCase_a984bf9d62ee4780a65856992545bdbb start.`);
      Settings.createWindow("testability/pages/UIFontFeature/UIFontFeature022")
      await Utils.sleep(100)
      windowSnap.snapShot()
      await Utils.sleep(100)
      Logger.info('TEST', `TestCase_a984bf9d62ee4780a65856992545bdbb finish.`);
      done()
    })

    /*
        * @tc.number  TestCase_a99950e5f66b40c0a77ed875bead3001
        * @tc.name    TestCase_a99950e5f66b40c0a77ed875bead3001
        * @tc.desc    paste
    */
    it('TestCase_a99950e5f66b40c0a77ed875bead3001', 0, async (done: Function) => {
      Logger.info('TEST', `TestCase_a99950e5f66b40c0a77ed875bead3001 start.`);
      Settings.createWindow("testability/pages/UIFontFeature/UIFontFeature023")
      await Utils.sleep(100)
      let driver : Driver = Driver.create();
      await driver.delayMs(100)
      await Utils.sleep(100)
      let copy:Component  = await driver.findComponent(ON.text('复制'));
      await copy.click();
      await Utils.sleep(100)
      windowSnap.snapShot()
      await Utils.sleep(100)
      Logger.info('TEST', `TestCase_a99950e5f66b40c0a77ed875bead3001 finish.`);
      done()
    })

    /*
        * @tc.number  TestCase_affd452e8e26418da5a7223c68ceca1d
        * @tc.name    TestCase_affd452e8e26418da5a7223c68ceca1d
        * @tc.desc    ss03
    */
    it('TestCase_affd452e8e26418da5a7223c68ceca1d', 0, async (done: Function) => {
      Logger.info('TEST', `TestCase_affd452e8e26418da5a7223c68ceca1d start.`);
      Settings.createWindow("testability/pages/UIFontFeature/UIFontFeature024")
      await Utils.sleep(100)
      windowSnap.snapShot()
      await Utils.sleep(100)
      Logger.info('TEST', `TestCase_affd452e8e26418da5a7223c68ceca1d finish.`);
      done()
    })

    /*
        * @tc.number  TestCase_b975f58142b64e36868f884be0cc1a2e
        * @tc.name    TestCase_b975f58142b64e36868f884be0cc1a2e
        * @tc.desc    ss09
    */
    it('TestCase_b975f58142b64e36868f884be0cc1a2e', 0, async (done: Function) => {
      Logger.info('TEST', `TestCase_b975f58142b64e36868f884be0cc1a2e start.`);
      Settings.createWindow("testability/pages/UIFontFeature/UIFontFeature025")
      await Utils.sleep(100)
      windowSnap.snapShot()
      await Utils.sleep(100)
      Logger.info('TEST', `TestCase_b975f58142b64e36868f884be0cc1a2e finish.`);
      done()
    })
    /*
        * @tc.number  TestCase_bbe25e085f1f4fe0892bdd70bccdf07a
        * @tc.name    TestCase_bbe25e085f1f4fe0892bdd70bccdf07a
        * @tc.desc    hwid on off
    */
    it('TestCase_bbe25e085f1f4fe0892bdd70bccdf07a', 0, async (done: Function) => {
      Logger.info('TEST', `TestCase_bbe25e085f1f4fe0892bdd70bccdf07a start.`);
      Settings.createWindow("testability/pages/UIFontFeature/UIFontFeature026")
      await Utils.sleep(100)
      windowSnap.snapShot()
      await Utils.sleep(100)
      Logger.info('TEST', `TestCase_bbe25e085f1f4fe0892bdd70bccdf07a finish.`);
      done()
    })

    /*
        * @tc.number  TestCase_bfae2919c52447659bd78be216a4cbc4
        * @tc.name    TestCase_bfae2919c52447659bd78be216a4cbc4
        * @tc.desc    locl on
    */
    it('TestCase_bfae2919c52447659bd78be216a4cbc4', 0, async (done: Function) => {
      Logger.info('TEST', `TestCase_bfae2919c52447659bd78be216a4cbc4 start.`);
      Settings.createWindow("testability/pages/UIFontFeature/UIFontFeature027")
      await Utils.sleep(100)
      windowSnap.snapShot()
      await Utils.sleep(100)
      Logger.info('TEST', `TestCase_bfae2919c52447659bd78be216a4cbc4 finish.`);
      done()
    })
    /*
        * @tc.number  TestCase_bfae2919c52447659bd78be216a4cbc4
        * @tc.name    TestCase_bfae2919c52447659bd78be216a4cbc4
        * @tc.desc    only hwid
    */
    it('TestCase_c01fa72625e3462185fa5f30d2ddc3ab', 0, async (done: Function) => {
      Logger.info('TEST', `TestCase_c01fa72625e3462185fa5f30d2ddc3ab start.`);
      Settings.createWindow("testability/pages/UIFontFeature/UIFontFeature028")
      await Utils.sleep(100)
      windowSnap.snapShot()
      await Utils.sleep(100)
      Logger.info('TEST', `TestCase_c01fa72625e3462185fa5f30d2ddc3ab finish.`);
      done()
    })
    /*
        * @tc.number  TestCase_c01fa72625e3462185fa5f30d2ddc3ab_513
        * @tc.name    TestCase_c01fa72625e3462185fa5f30d2ddc3ab_513
        * @tc.desc    only fwid
    */
    it('TestCase_c01fa72625e3462185fa5f30d2ddc3ab_513', 0, async (done: Function) => {
      Logger.info('TEST', `TestCase_c01fa72625e3462185fa5f30d2ddc3ab_513 start.`);
      Settings.createWindow("testability/pages/UIFontFeature/UIFontFeature029")
      await Utils.sleep(100)
      windowSnap.snapShot()
      await Utils.sleep(100)
      Logger.info('TEST', `TestCase_c01fa72625e3462185fa5f30d2ddc3ab_513 finish.`);
      done()
    })
    /*
        * @tc.number  TestCase_c3944ed220a74af2aae129d707b51638
        * @tc.name    TestCase_c3944ed220a74af2aae129d707b51638
        * @tc.desc    frac
    */
    it('TestCase_c3944ed220a74af2aae129d707b51638', 0, async (done: Function) => {
      Logger.info('TEST', `TestCase_c3944ed220a74af2aae129d707b51638 start.`);
      Settings.createWindow("testability/pages/UIFontFeature/UIFontFeature030")
      await Utils.sleep(100)
      windowSnap.snapShot()
      await Utils.sleep(100)
      Logger.info('TEST', `TestCase_c3944ed220a74af2aae129d707b51638 finish.`);
      done()
    })
    /*
        * @tc.number  TestCase_d0ea1c02678a4aa7adfb57837592c396
        * @tc.name    TestCase_d0ea1c02678a4aa7adfb57837592c396
        * @tc.desc    pnum
    */
    it('TestCase_d0ea1c02678a4aa7adfb57837592c396', 0, async (done: Function) => {
      Logger.info('TEST', `TestCase_d0ea1c02678a4aa7adfb57837592c396 start.`);
      Settings.createWindow("testability/pages/UIFontFeature/UIFontFeature031")
      await Utils.sleep(100)
      windowSnap.snapShot()
      await Utils.sleep(100)
      Logger.info('TEST', `TestCase_d0ea1c02678a4aa7adfb57837592c396 finish.`);
      done()
    })
    /*
        * @tc.number  TestCase_dde7579fbbc9459798a267997ae0cff7
        * @tc.name    TestCase_dde7579fbbc9459798a267997ae0cff7
        * @tc.desc    hwid 0.1 2 100
    */
    it('TestCase_dde7579fbbc9459798a267997ae0cff7', 0, async (done: Function) => {
      Logger.info('TEST', `TestCase_dde7579fbbc9459798a267997ae0cff7 start.`);
      Settings.createWindow("testability/pages/UIFontFeature/UIFontFeature032")
      await Utils.sleep(100)
      windowSnap.snapShot()
      await Utils.sleep(100)
      Logger.info('TEST', `TestCase_dde7579fbbc9459798a267997ae0cff7 finish.`);
      done()
    })
    /*
        * @tc.number  TestCase_e819a4c2faab4092926606af04a2fe87
        * @tc.name    TestCase_e819a4c2faab4092926606af04a2fe87
        * @tc.desc    ss05
    */
    it('TestCase_e819a4c2faab4092926606af04a2fe87', 0, async (done: Function) => {
      Logger.info('TEST', `TestCase_e819a4c2faab4092926606af04a2fe87 start.`);
      Settings.createWindow("testability/pages/UIFontFeature/UIFontFeature033")
      await Utils.sleep(100)
      windowSnap.snapShot()
      await Utils.sleep(100)
      Logger.info('TEST', `TestCase_e819a4c2faab4092926606af04a2fe87 finish.`);
      done()
    })
    /*
        * @tc.number  TestCase_e258911ff5a0411e9247357a22a2c128
        * @tc.name    TestCase_e258911ff5a0411e9247357a22a2c128
        * @tc.desc    sups subs
    */
    it('TestCase_e258911ff5a0411e9247357a22a2c128', 0, async (done: Function) => {
      Logger.info('TEST', `TestCase_e258911ff5a0411e9247357a22a2c128 start.`);
      Settings.createWindow("testability/pages/UIFontFeature/UIFontFeature034")
      await Utils.sleep(100)
      windowSnap.snapShot()
      await Utils.sleep(100)
      Logger.info('TEST', `TestCase_e258911ff5a0411e9247357a22a2c128 finish.`);
      done()
    })
    /*
        * @tc.number  TestCase_eeb912d7773848319cc46ef49f13b3fe
        * @tc.name    TestCase_eeb912d7773848319cc46ef49f13b3fe
        * @tc.desc    hwid first on then off
    */
    it('TestCase_eeb912d7773848319cc46ef49f13b3fe', 0, async (done: Function) => {
      Logger.info('TEST', `TestCase_eeb912d7773848319cc46ef49f13b3fe start.`);
      Settings.createWindow("testability/pages/UIFontFeature/UIFontFeature035")
      await Utils.sleep(100)
      windowSnap.snapShot()
      await Utils.sleep(100)
      Logger.info('TEST', `TestCase_eeb912d7773848319cc46ef49f13b3fe finish.`);
      done()
    })
    /*
        * @tc.number  TestCase_fcd2f3601c9a4ed9832c93022cd8d6cf
        * @tc.name    TestCase_fcd2f3601c9a4ed9832c93022cd8d6cf
        * @tc.desc    sups subs on result is subs
    */
    it('TestCase_fcd2f3601c9a4ed9832c93022cd8d6cf', 0, async (done: Function) => {
      Logger.info('TEST', `TestCase_fcd2f3601c9a4ed9832c93022cd8d6cf start.`);
      Settings.createWindow("testability/pages/UIFontFeature/UIFontFeature036")
      await Utils.sleep(100)
      windowSnap.snapShot()
      await Utils.sleep(100)
      Logger.info('TEST', `TestCase_fcd2f3601c9a4ed9832c93022cd8d6cf finish.`);
      done()
    })
  })
}
