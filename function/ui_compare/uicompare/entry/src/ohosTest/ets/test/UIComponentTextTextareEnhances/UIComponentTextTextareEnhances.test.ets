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

export default function UIComponentTextTextareEnhances() {

  describe('UIComponentTextTextareEnhances', () => {
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
        * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_TEXTARE_ENHANCES_0100
        * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_TEXTARE_ENHANCES_0100
        * @tc.desc        Input box to add width (auto) and TextAlign. The JUSTIFY properties,
        * input long string of Numbers 1232312312318172312312312313121231231231231231232123123123 to check the effect
        */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXTARE_ENHANCES_0100', 0, async (done: Function) => {
      Logger.info('TEST', `UIComponentTextTextareEnhances001 start.`);
      Settings.createWindow("testability/pages/UIComponentTextTextareEnhances/UIComponentTextTextareEnhances001")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `UIComponentTextTextareEnhances001 finish.`);
      done()
    })

    /*
        * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_TEXTARE_ENHANCES_0200
        * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_TEXTARE_ENHANCES_0200
        * @tc.desc        Input box to add width (auto) and TextAlign. The JUSTIFY properties,
        * JLSDJFLJDLFJSLDFJLSDSFGSDFGSDFGSFGSGSDFGSFGSSFDGSDG long string input lowercase English letters, see the effect
        */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXTARE_ENHANCES_0200', 0, async (done: Function) => {
      Logger.info('TEST', `UIComponentTextTextareEnhances002 start.`);
      Settings.createWindow("testability/pages/UIComponentTextTextareEnhances/UIComponentTextTextareEnhances002")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `UIComponentTextTextareEnhances002 finish.`);
      done()
    })

    /*
        * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_TEXTARE_ENHANCES_0300
        * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_TEXTARE_ENHANCES_0300
        * @tc.desc        Input box to add width (auto) and TextAlign. The JUSTIFY properties,
        * long input string SDFJLSDJFLSJDFLJSDLFJSDLFJDSLJFSLDJFLSDJFLSDJFLSDJFSDFLJHS capital English letters, see the effect
        */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXTARE_ENHANCES_0300', 0, async (done: Function) => {
      Logger.info('TEST', `UIComponentTextTextareEnhances003 start.`);
      Settings.createWindow("testability/pages/UIComponentTextTextareEnhances/UIComponentTextTextareEnhances003")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `UIComponentTextTextareEnhances003 finish.`);
      done()
    })

    /*
        * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_TEXTARE_ENHANCES_0400
        * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_TEXTARE_ENHANCES_0400
        * @tc.desc        Input box to add width (auto) and TextAlign. The JUSTIFY properties,
        * enter a long string of mixed case jlsdjfljSDFLSJDFLJdlfFSDjFSFsldSDFSDFSDFgsSADFASDFdg English letters, see the effect
        */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXTARE_ENHANCES_0400', 0, async (done: Function) => {
      Logger.info('TEST', `UIComponentTextTextareEnhances004 start.`);
      Settings.createWindow("testability/pages/UIComponentTextTextareEnhances/UIComponentTextTextareEnhances004")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `UIComponentTextTextareEnhances004 finish.`);
      done()
    })

    /*
        * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_TEXTARE_ENHANCES_0500
        * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_TEXTARE_ENHANCES_0500
        * @tc.desc       Add the width(auto) and TextAlign.JUSTIFY attributes to the input field,
        * using long strings of Chinese characters mixed with Chinese and English characters.
        */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXTARE_ENHANCES_0500', 0, async (done: Function) => {
      Logger.info('TEST', `UIComponentTextTextareEnhances005 start.`);
      Settings.createWindow("testability/pages/UIComponentTextTextareEnhances/UIComponentTextTextareEnhances005")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `UIComponentTextTextareEnhances005 finish.`);
      done()
    })

    /*
        * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_TEXTARE_ENHANCES_0600
        * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_TEXTARE_ENHANCES_0600
        * @tc.desc        Add the width(auto) and TextAlign.JUSTIFY attributes to the input field,
        * using long strings of Chinese characters mixed with Chinese and English characters.
        */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXTARE_ENHANCES_0600', 0, async (done: Function) => {
      Logger.info('TEST', `UIComponentTextTextareEnhances006 start.`);
      Settings.createWindow("testability/pages/UIComponentTextTextareEnhances/UIComponentTextTextareEnhances006")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `UIComponentTextTextareEnhances006 finish.`);
      done()
    })

    /*
        * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_TEXTARE_ENHANCES_0700
        * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_TEXTARE_ENHANCES_0700
        * @tc.desc        Add the width(auto) and TextAlign.JUSTIFY attributes to the input box,
        * and a symbolic string to see the effect
        */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXTARE_ENHANCES_0700', 0, async (done: Function) => {
      Logger.info('TEST', `UIComponentTextTextareEnhances007 start.`);
      Settings.createWindow("testability/pages/UIComponentTextTextareEnhances/UIComponentTextTextareEnhances007")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `UIComponentTextTextareEnhances007 finish.`);
      done()
    })

    /*
        * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_TEXTARE_ENHANCES_0800
        * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_TEXTARE_ENHANCES_0800
        * @tc.desc        Add the width(auto) and TextAlign.JUSTIFY properties, type the Enter key, and see how it works
        */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXTARE_ENHANCES_0800', 0, async (done: Function) => {
      Logger.info('TEST', `UIComponentTextTextareEnhances008 start.`);
      Settings.createWindow("testability/pages/UIComponentTextTextareEnhances/UIComponentTextTextareEnhances008")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `UIComponentTextTextareEnhances008 finish.`);
      done()
    })

    /*
        * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_TEXTARE_ENHANCES_1000
        * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_TEXTARE_ENHANCES_1000
        * @tc.desc        Add the width(auto) and TextAlign.JUSTIFY attributes to the input field, using single and double quotes to justify
        */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXTARE_ENHANCES_1000', 0, async (done: Function) => {
      Logger.info('TEST', `UIComponentTextTextareEnhances010 start.`);
      Settings.createWindow("testability/pages/UIComponentTextTextareEnhances/UIComponentTextTextareEnhances010")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `UIComponentTextTextareEnhances010 finish.`);
      done()
    })

    /*
        * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_TEXTARE_ENHANCES_1100
        * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_TEXTARE_ENHANCES_1100
        * @tc.desc        Add the width(auto) and TextAlign.JUSTIFY attributes to the input box,
        * and input the special characters "doucment.write("abc"), <br><tr><td><body><script><front>" to see the effect
        */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXTARE_ENHANCES_1100', 0, async (done: Function) => {
      Logger.info('TEST', `UIComponentTextTextareEnhances011 start.`);
      Settings.createWindow("testability/pages/UIComponentTextTextareEnhances/UIComponentTextTextareEnhances011")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `UIComponentTextTextareEnhances011 finish.`);
      done()
    })

    /*
        * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_TEXTARE_ENHANCES_1200
        * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_TEXTARE_ENHANCES_1200
        * @tc.desc        Add the width(auto) and TextAlign.JUSTIFY properties to the input field,
        * add mixed length text, clear it with one click, and see how the width of the text field changes
        */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXTARE_ENHANCES_1200', 0, async (done: Function) => {
      Logger.info('TEST', `UIComponentTextTextareEnhances012 start.`);
      Settings.createWindow("testability/pages/UIComponentTextTextareEnhances/UIComponentTextTextareEnhances012")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `UIComponentTextTextareEnhances012 finish.`);
      done()
    })

    /*
        * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_TEXTARE_ENHANCES_1300
        * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_TEXTARE_ENHANCES_1300
        * @tc.desc        Add the width(auto) and TextAlign.JUSTIFY attributes to the input field, add long text to justify the scrollbar,
        * determine the amount of space in the scrollbar content area, and see if it affects the justification Settings
        */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXTARE_ENHANCES_1300', 0, async (done: Function) => {
      Logger.info('TEST', `UIComponentTextTextareEnhances013 start.`);
      Settings.createWindow("testability/pages/UIComponentTextTextareEnhances/UIComponentTextTextareEnhances013")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `UIComponentTextTextareEnhances013 finish.`);
      done()
    })

    /*
        * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_TEXTARE_ENHANCES_1400
        * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_TEXTARE_ENHANCES_1400
        * @tc.desc        Add width(auto) and TextAlign.JUSTIFY properties to the input box,
        * add prompt text to the text box, tap the text box for input, and see how the width of the text box changes
        */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXTARE_ENHANCES_1400', 0, async (done: Function) => {
      Logger.info('TEST', `UIComponentTextTextareEnhances014 start.`);
      Settings.createWindow("testability/pages/UIComponentTextTextareEnhances/UIComponentTextTextareEnhances014")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `UIComponentTextTextareEnhances014 finish.`);
      done()
    })

    /*
        * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_TEXTARE_ENHANCES_1500
        * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_TEXTARE_ENHANCES_1500
        * @tc.desc        Add width(auto) and TextAlign.JUSTIFY properties to the input box,
        * add padding to the text box for 10, tap the text box to input and see how the width of the text box changes
        */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXTARE_ENHANCES_1500', 0, async (done: Function) => {
      Logger.info('TEST', `UIComponentTextTextareEnhances015 start.`);
      Settings.createWindow("testability/pages/UIComponentTextTextareEnhances/UIComponentTextTextareEnhances015")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `UIComponentTextTextareEnhances015 finish.`);
      done()
    })

    /*
        * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_TEXTARE_ENHANCES_1600
        * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_TEXTARE_ENHANCES_1600
        * @tc.desc        Add width(auto) and TextAlign.JUSTIFY properties to the input box,
        * and add a margin of 10 to the text box. Click on the text box to input content and see how the width of the text box changes
        */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXTARE_ENHANCES_1600', 0, async (done: Function) => {
      Logger.info('TEST', `UIComponentTextTextareEnhances016 start.`);
      Settings.createWindow("testability/pages/UIComponentTextTextareEnhances/UIComponentTextTextareEnhances016")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `UIComponentTextTextareEnhances016 finish.`);
      done()
    })

    /*
        * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_TEXTARE_ENHANCES_1700
        * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_TEXTARE_ENHANCES_1700
        * @tc.desc        Input box alone add width (auto) properties, enter a long string of Numbers  to check the effect
        */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXTARE_ENHANCES_1700', 0, async (done: Function) => {
      Logger.info('TEST', `UIComponentTextTextareEnhances017 start.`);
      Settings.createWindow("testability/pages/UIComponentTextTextareEnhances/UIComponentTextTextareEnhances017")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `UIComponentTextTextareEnhances017 finish.`);
      done()
    })

    /*
        * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_TEXTARE_ENHANCES_1800
        * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_TEXTARE_ENHANCES_1800
        * @tc.desc        Input box add width(auto) property, enter a long string of lowercase English letters, see the effect
        */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXTARE_ENHANCES_1800', 0, async (done: Function) => {
      Logger.info('TEST', `UIComponentTextTextareEnhances018 start.`);
      Settings.createWindow("testability/pages/UIComponentTextTextareEnhances/UIComponentTextTextareEnhances018")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `UIComponentTextTextareEnhances018 finish.`);
      done()
    })

    /*
        * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_TEXTARE_ENHANCES_1900
        * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_TEXTARE_ENHANCES_1900
        * @tc.desc        Input box add width(auto) property, enter a long string of uppercase English letters, see the effect
        */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXTARE_ENHANCES_1900', 0, async (done: Function) => {
      Logger.info('TEST', `UIComponentTextTextareEnhances019 start.`);
      Settings.createWindow("testability/pages/UIComponentTextTextareEnhances/UIComponentTextTextareEnhances019")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `UIComponentTextTextareEnhances019 finish.`);
      done()
    })

    /*
        * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_TEXTARE_ENHANCES_2000
        * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_TEXTARE_ENHANCES_2000
        * @tc.desc        Input box add width(auto) property, enter a long string of mixed case English letters, see the effect
        */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXTARE_ENHANCES_2000', 0, async (done: Function) => {
      Logger.info('TEST', `UIComponentTextTextareEnhances020 start.`);
      Settings.createWindow("testability/pages/UIComponentTextTextareEnhances/UIComponentTextTextareEnhances020")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `UIComponentTextTextareEnhances020 finish.`);
      done()
    })

    /*
        * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_TEXTARE_ENHANCES_2100
        * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_TEXTARE_ENHANCES_2100
        * @tc.desc        Input box add width(auto) property, input a long string of Chinese characters mixed with Chinese and English characters,
        * add a space in the string, see the effect
        */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXTARE_ENHANCES_2100', 0, async (done: Function) => {
      Logger.info('TEST', `UIComponentTextTextareEnhances021 start.`);
      Settings.createWindow("testability/pages/UIComponentTextTextareEnhances/UIComponentTextTextareEnhances021")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `UIComponentTextTextareEnhances021 finish.`);
      done()
    })

    /*
        * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_TEXTARE_ENHANCES_2200
        * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_TEXTARE_ENHANCES_2200
        * @tc.desc        Input box add width(auto) property, input a long string of Chinese characters mixed with
        * Chinese and English characters, add Spaces before and after the string, check the effect
        */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXTARE_ENHANCES_2200', 0, async (done: Function) => {
      Logger.info('TEST', `UIComponentTextTextareEnhances022 start.`);
      Settings.createWindow("testability/pages/UIComponentTextTextareEnhances/UIComponentTextTextareEnhances022")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `UIComponentTextTextareEnhances022 finish.`);
      done()
    })

    /*
        * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_TEXTARE_ENHANCES_2300
        * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_TEXTARE_ENHANCES_2300
        * @tc.desc        Input box add width(auto) property, enter the symbol string, see the effect
        */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXTARE_ENHANCES_2300', 0, async (done: Function) => {
      Logger.info('TEST', `UIComponentTextTextareEnhances023 start.`);
      Settings.createWindow("testability/pages/UIComponentTextTextareEnhances/UIComponentTextTextareEnhances023")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `UIComponentTextTextareEnhances023 finish.`);
      done()
    })

    /*
        * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_TEXTARE_ENHANCES_2400
        * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_TEXTARE_ENHANCES_2400
        * @tc.desc        Input box add width(auto) property, Enter enter key, see the effect
        */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXTARE_ENHANCES_2400', 0, async (done: Function) => {
      Logger.info('TEST', `UIComponentTextTextareEnhances024 start.`);
      Settings.createWindow("testability/pages/UIComponentTextTextareEnhances/UIComponentTextTextareEnhances024")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `UIComponentTextTextareEnhances024 finish.`);
      done()
    })

    /*
        * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_TEXTARE_ENHANCES_2600
        * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_TEXTARE_ENHANCES_2600
        * @tc.desc        Add the width(auto) attribute to the input box, enter single quotation marks,
        * double quotation marks mixed with other characters, and check the effect
        */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXTARE_ENHANCES_2600', 0, async (done: Function) => {
      Logger.info('TEST', `UIComponentTextTextareEnhances026 start.`);
      Settings.createWindow("testability/pages/UIComponentTextTextareEnhances/UIComponentTextTextareEnhances026")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `UIComponentTextTextareEnhances026 finish.`);
      done()
    })

    /*
        * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_TEXTARE_ENHANCES_2700
        * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_TEXTARE_ENHANCES_2700
        * @tc.desc       Add the width(auto) attribute to the input box,
        * enter the special characters "doucment.write("abc"), <br><tr><td><body><script><front>", and see the effect
        */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXTARE_ENHANCES_2700', 0, async (done: Function) => {
      Logger.info('TEST', `UIComponentTextTextareEnhances027 start.`);
      Settings.createWindow("testability/pages/UIComponentTextTextareEnhances/UIComponentTextTextareEnhances027")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `UIComponentTextTextareEnhances027 finish.`);
      done()
    })

    /*
        * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_TEXTARE_ENHANCES_2800
        * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_TEXTARE_ENHANCES_2800
        * @tc.desc        Add width to the input box (auto), enter mixed long text,
        * clear it with one click, and check the width change of the text box
        */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXTARE_ENHANCES_2800', 0, async (done: Function) => {
      Logger.info('TEST', `UIComponentTextTextareEnhances028 start.`);
      Settings.createWindow("testability/pages/UIComponentTextTextareEnhances/UIComponentTextTextareEnhances028")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `UIComponentTextTextareEnhances028 finish.`);
      done()
    })

    /*
        * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_TEXTARE_ENHANCES_2900
        * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_TEXTARE_ENHANCES_2900
        * @tc.desc        Add width(auto) to the input box, input long text to add a scroll bar,
        * confirm the space proportion of the scroll bar content area, and check whether the alignment Settings are affected
        */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXTARE_ENHANCES_2900', 0, async (done: Function) => {
      Logger.info('TEST', `UIComponentTextTextareEnhances029 start.`);
      Settings.createWindow("testability/pages/UIComponentTextTextareEnhances/UIComponentTextTextareEnhances029")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `UIComponentTextTextareEnhances029 finish.`);
      done()
    })

    /*
        * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_TEXTARE_ENHANCES_3000
        * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_TEXTARE_ENHANCES_3000
        * @tc.desc        Add width to the input box (auto), add prompt text to the text box,
        * click the text box to input content, and check the width change of the text box
        */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXTARE_ENHANCES_3000', 0, async (done: Function) => {
      Logger.info('TEST', `UIComponentTextTextareEnhances030 start.`);
      Settings.createWindow("testability/pages/UIComponentTextTextareEnhances/UIComponentTextTextareEnhances030")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `UIComponentTextTextareEnhances030 finish.`);
      done()
    })

    /*
        * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_TEXTARE_ENHANCES_3100
        * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_TEXTARE_ENHANCES_3100
        * @tc.desc        Add width(auto) to the input box and add 10 padding value to the text box.
        * Click the text box to input content and check the change of the width of the text box
        */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXTARE_ENHANCES_3100', 0, async (done: Function) => {
      Logger.info('TEST', `UIComponentTextTextareEnhances031 start.`);
      Settings.createWindow("testability/pages/UIComponentTextTextareEnhances/UIComponentTextTextareEnhances031")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `UIComponentTextTextareEnhances031 finish.`);
      done()
    })

    /*
        * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_TEXTARE_ENHANCES_3200
        * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_TEXTARE_ENHANCES_3200
        * @tc.desc        Add width(auto) to the input box and add a margin value of 10 to the text box.
        * Click the text box to input content and check the width change of the text box
        */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXTARE_ENHANCES_3200', 0, async (done: Function) => {
      Logger.info('TEST', `UIComponentTextTextareEnhances032 start.`);
      Settings.createWindow("testability/pages/UIComponentTextTextareEnhances/UIComponentTextTextareEnhances032")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `UIComponentTextTextareEnhances032 finish.`);
      done()
    })

    /*
        * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_TEXTARE_ENHANCES_3300
        * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_TEXTARE_ENHANCES_3300
        * @tc.desc        Add the TextAlign.JUSTIFY attribute to the input box alone,
        * enter a long string of numbers, and see the effect
        */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXTARE_ENHANCES_3300', 0, async (done: Function) => {
      Logger.info('TEST', `UIComponentTextTextareEnhances033 start.`);
      Settings.createWindow("testability/pages/UIComponentTextTextareEnhances/UIComponentTextTextareEnhances033")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `UIComponentTextTextareEnhances033 finish.`);
      done()
    })

    /*
        * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_TEXTARE_ENHANCES_3400
        * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_TEXTARE_ENHANCES_3400
        * @tc.desc        Add the TextAlign.JUSTIFY attribute, enter a long string of lowercase letters, and see how it works
        */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXTARE_ENHANCES_3400', 0, async (done: Function) => {
      Logger.info('TEST', `UIComponentTextTextareEnhances034 start.`);
      Settings.createWindow("testability/pages/UIComponentTextTextareEnhances/UIComponentTextTextareEnhances034")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `UIComponentTextTextareEnhances034 finish.`);
      done()
    })

    /*
        * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_TEXTARE_ENHANCES_3500
        * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_TEXTARE_ENHANCES_3500
        * @tc.desc        Add the TextAlign.JUSTIFY attribute, enter a long string of uppercase letters, and see how it works
        */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXTARE_ENHANCES_3500', 0, async (done: Function) => {
      Logger.info('TEST', `UIComponentTextTextareEnhances035 start.`);
      Settings.createWindow("testability/pages/UIComponentTextTextareEnhances/UIComponentTextTextareEnhances035")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `UIComponentTextTextareEnhances035 finish.`);
      done()
    })

    /*
        * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_TEXTARE_ENHANCES_3600
        * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_TEXTARE_ENHANCES_3600
        * @tc.desc        Add the TextAlign.JUSTIFY property, enter a long string of uppercase and lowercase letters, and see how it works
        */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXTARE_ENHANCES_3600', 0, async (done: Function) => {
      Logger.info('TEST', `UIComponentTextTextareEnhances036 start.`);
      Settings.createWindow("testability/pages/UIComponentTextTextareEnhances/UIComponentTextTextareEnhances036")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `UIComponentTextTextareEnhances036 finish.`);
      done()
    })

    /*
        * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_TEXTARE_ENHANCES_3700
        * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_TEXTARE_ENHANCES_3700
        * @tc.desc        Add the TextAlign.JUSTIFY attribute. Add a long list of characters
        * in both Chinese and English, add Spaces to the justify property, and see how it works
        */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXTARE_ENHANCES_3700', 0, async (done: Function) => {
      Logger.info('TEST', `UIComponentTextTextareEnhances037 start.`);
      Settings.createWindow("testability/pages/UIComponentTextTextareEnhances/UIComponentTextTextareEnhances037")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `UIComponentTextTextareEnhances037 finish.`);
      done()
    })

    /*
        * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_TEXTARE_ENHANCES_3800
        * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_TEXTARE_ENHANCES_3800
        * @tc.desc        Add the TextAlign.JUSTIFY attribute. Add a long list of Chinese and English characters,
        * add Spaces before and after the justify attribute, and see how it works
        */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXTARE_ENHANCES_3800', 0, async (done: Function) => {
      Logger.info('TEST', `UIComponentTextTextareEnhances038 start.`);
      Settings.createWindow("testability/pages/UIComponentTextTextareEnhances/UIComponentTextTextareEnhances038")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `UIComponentTextTextareEnhances038 finish.`);
      done()
    })

    /*
        * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_TEXTARE_ENHANCES_3900
        * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_TEXTARE_ENHANCES_3900
        * @tc.desc        Add the TextAlign.JUSTIFY attribute to the input box, enter the symbol string, and see the effect
        */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXTARE_ENHANCES_3900', 0, async (done: Function) => {
      Logger.info('TEST', `UIComponentTextTextareEnhances039 start.`);
      Settings.createWindow("testability/pages/UIComponentTextTextareEnhances/UIComponentTextTextareEnhances039")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `UIComponentTextTextareEnhances039 finish.`);
      done()
    })

    /*
        * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_TEXTARE_ENHANCES_4000
        * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_TEXTARE_ENHANCES_4000
        * @tc.desc        Add the TextAlign.JUSTIFY property, Enter the Enter key, and see how it works
        */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXTARE_ENHANCES_4000', 0, async (done: Function) => {
      Logger.info('TEST', `UIComponentTextTextareEnhances040 start.`);
      Settings.createWindow("testability/pages/UIComponentTextTextareEnhances/UIComponentTextTextareEnhances040")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `UIComponentTextTextareEnhances040 finish.`);
      done()
    })

    /*
        * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_TEXTARE_ENHANCES_4100
        * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_TEXTARE_ENHANCES_4100
        * @tc.desc        Add the justify attribute of TextAlign.JUSTIFY to input lengthy text, move,
        * select, and delete it to justify the height of the input
        */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXTARE_ENHANCES_4100', 0, async (done: Function) => {
      Logger.info('TEST', `UIComponentTextTextareEnhances041 start.`);
      Settings.createWindow("testability/pages/UIComponentTextTextareEnhances/UIComponentTextTextareEnhances041")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `UIComponentTextTextareEnhances041 finish.`);
      done()
    })

    /*
        * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_TEXTARE_ENHANCES_4200
        * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_TEXTARE_ENHANCES_4200
        * @tc.desc        Add the TextAlign.JUSTIFY attribute, single quotes, double quotes, and justify, and see how it works
        */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXTARE_ENHANCES_4200', 0, async (done: Function) => {
      Logger.info('TEST', `UIComponentTextTextareEnhances042 start.`);
      Settings.createWindow("testability/pages/UIComponentTextTextareEnhances/UIComponentTextTextareEnhances042")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `UIComponentTextTextareEnhances042 finish.`);
      done()
    })

    /*
        * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_TEXTARE_ENHANCES_4300
        * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_TEXTARE_ENHANCES_4300
        * @tc.desc        Add the TextAlign.JUSTIFY attribute, enter the special characters "doucment.write("abc"),
        * <br><tr><td><body><script><front>", and see what it looks like
        */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXTARE_ENHANCES_4300', 0, async (done: Function) => {
      Logger.info('TEST', `UIComponentTextTextareEnhances043 start.`);
      Settings.createWindow("testability/pages/UIComponentTextTextareEnhances/UIComponentTextTextareEnhances043")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `UIComponentTextTextareEnhances043 finish.`);
      done()
    })

    /*
        * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_TEXTARE_ENHANCES_4400
        * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_TEXTARE_ENHANCES_4400
        * @tc.desc        Add the TextAlign.JUSTIFY attribute to the input field, add blended long text,
        * clear it with one click, and see how the width of the text field changes
        */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXTARE_ENHANCES_4400', 0, async (done: Function) => {
      Logger.info('TEST', `UIComponentTextTextareEnhances044 start.`);
      Settings.createWindow("testability/pages/UIComponentTextTextareEnhances/UIComponentTextTextareEnhances044")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `UIComponentTextTextareEnhances044 finish.`);
      done()
    })

    /*
        * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_TEXTARE_ENHANCES_4500
        * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_TEXTARE_ENHANCES_4500
        * @tc.desc        Add the TextAlign.JUSTIFY attribute into the input field, add long text to justify the scrollbar,
        * determine the amount of space in the scrollbar content area, and see if it affects the justification Settings
        */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXTARE_ENHANCES_4500', 0, async (done: Function) => {
      Logger.info('TEST', `UIComponentTextTextareEnhances045 start.`);
      Settings.createWindow("testability/pages/UIComponentTextTextareEnhances/UIComponentTextTextareEnhances045")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `UIComponentTextTextareEnhances045 finish.`);
      done()
    })

    /*
        * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_TEXTARE_ENHANCES_4600
        * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_TEXTARE_ENHANCES_4600
        * @tc.desc        Add the TextAlign.JUSTIFY attribute to the input box, add prompt text to the text box,
        * tap the text box to input, and see how the width of the text box changes
        */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXTARE_ENHANCES_4600', 0, async (done: Function) => {
      Logger.info('TEST', `UIComponentTextTextareEnhances046 start.`);
      Settings.createWindow("testability/pages/UIComponentTextTextareEnhances/UIComponentTextTextareEnhances046")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `UIComponentTextTextareEnhances046 finish.`);
      done()
    })

    /*
        * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_TEXTARE_ENHANCES_4700
        * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_TEXTARE_ENHANCES_4700
        * @tc.desc        Add the TextAlign.JUSTIFY attribute to the input box,
        * add a padding value of 10 to the text box, tap the text box to input, and see how the width of the text box changes
        */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXTARE_ENHANCES_4700', 0, async (done: Function) => {
      Logger.info('TEST', `UIComponentTextTextareEnhances047 start.`);
      Settings.createWindow("testability/pages/UIComponentTextTextareEnhances/UIComponentTextTextareEnhances047")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `UIComponentTextTextareEnhances047 finish.`);
      done()
    })

    /*
        * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_TEXTARE_ENHANCES_4800
        * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_TEXTARE_ENHANCES_4800
        * @tc.desc        Add the TextAlign.JUSTIFY attribute to the input box and add a margin of 10 to the text box.
        * Click on the input to see how the width of the text box changes
        */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXTARE_ENHANCES_4800', 0, async (done: Function) => {
      Logger.info('TEST', `UIComponentTextTextareEnhances048 start.`);
      Settings.createWindow("testability/pages/UIComponentTextTextareEnhances/UIComponentTextTextareEnhances048")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `UIComponentTextTextareEnhances048 finish.`);
      done()
    })
  })
}
