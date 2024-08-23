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
import { afterEach, describe, it } from '@ohos/hypium'
import Settings from '../model/Settings'
import windowSnap from '../model/snapShot'
import Logger from '../model/Logger'
import Utils from '../model/Utils'

export default function UIComponentTextCommonLocationTest() {

  describe('UIComponentTextCommonLocationTest', () => {
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
      * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0010
      * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0010
      * @tc.desc        Search placeholder
   */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0010', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0010 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCommonLocation/UIComponentTextCommonLocation001")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0010 finish.`);
      done()
    })

    /*
     * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0020
     * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0020
     * @tc.desc        Search placeholder
  */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0020', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0020 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCommonLocation/UIComponentTextCommonLocation002")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0020 finish.`);
      done()
    })

    /*
   * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0030
   * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0030
   * @tc.desc        Search
*/
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0030', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0030 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCommonLocation/UIComponentTextCommonLocation003")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0030 finish.`);
      done()
    })

    /*
   * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0040
   * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0040
   * @tc.desc        Search  set placeholder
*/
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0040', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0040 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCommonLocation/UIComponentTextCommonLocation004")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0040 finish.`);
      done()
    })

    /*
   * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0050
   * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0050
   * @tc.desc        Search more text
*/
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0050', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0050 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCommonLocation/UIComponentTextCommonLocation005")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0050 finish.`);
      done()
    })

    /*
       * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0060
       * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0060
       * @tc.desc        Search no text
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0060', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0060 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCommonLocation/UIComponentTextCommonLocation006")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0060 finish.`);
      done()
    })


    /*
   * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0090
   * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0090
   * @tc.desc        set fontSize、fontStyle、fontWeight
*/
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0090', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0090 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCommonLocation/UIComponentTextCommonLocation009")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0090 finish.`);
      done()
    })

    /*
   * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0100
   * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0100
   * @tc.desc        set textAlign、align
*/
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0100', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0100 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCommonLocation/UIComponentTextCommonLocation010")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0100 finish.`);
      done()
    })

    /*
* @tc.number      SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0120
* @tc.name        SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0120
* @tc.desc        set border
*/
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0120', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0120 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCommonLocation/UIComponentTextCommonLocation012")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0120 finish.`);
      done()
    })

    /*
* @tc.number      SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0140
* @tc.name        SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0140
* @tc.desc        set padding、margin
*/
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0140', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0140 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCommonLocation/UIComponentTextCommonLocation014")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0140 finish.`);
      done()
    })

    /*
* @tc.number      SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0150
* @tc.name        SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0150
* @tc.desc        set width、height
*/
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0150', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0150 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCommonLocation/UIComponentTextCommonLocation015")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0150 finish.`);
      done()
    })

    /*
* @tc.number      SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0160
* @tc.name        SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0160
* @tc.desc        set maxlength
*/
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0160', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0160 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCommonLocation/UIComponentTextCommonLocation016")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0160 finish.`);
      done()
    })

    /*
* @tc.number      SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0170
* @tc.name        SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0170
* @tc.desc        set a phrase
*/
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0170', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0170 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCommonLocation/UIComponentTextCommonLocation017")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0170 finish.`);
      done()
    })

    /*
* @tc.number      SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0180
* @tc.name        SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0180
* @tc.desc        Textinput set placeholder
*/
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0180', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0180 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCommonLocation/UIComponentTextCommonLocation018")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0180 finish.`);
      done()
    })

    /*
* @tc.number      SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0190
* @tc.name        SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0190
* @tc.desc        Textinput set placeholder
*/
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0190', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0190 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCommonLocation/UIComponentTextCommonLocation019")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0190 finish.`);
      done()
    })

    /*
* @tc.number      SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0200
* @tc.name        SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0200
* @tc.desc        Textinput
*/
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0200', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0200 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCommonLocation/UIComponentTextCommonLocation020")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0200 finish.`);
      done()
    })

    /*
* @tc.number      SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0210
* @tc.name        SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0210
* @tc.desc        Textinput set placeholder
*/
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0210', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0210 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCommonLocation/UIComponentTextCommonLocation021")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0210 finish.`);
      done()
    })

    /*
* @tc.number      SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0220
* @tc.name        SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0220
* @tc.desc        Textinput
*/
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0220', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0220 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCommonLocation/UIComponentTextCommonLocation022")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0220 finish.`);
      done()
    })

    /*
* @tc.number      SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0230
* @tc.name        SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0230
* @tc.desc        Textinput single placeholder
*/
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0230', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0230 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCommonLocation/UIComponentTextCommonLocation023")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0230 finish.`);
      done()
    })

    /*
* @tc.number      SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0260
* @tc.name        SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0260
* @tc.desc        Textinput set fontSize、fontStyle、fontWeight
*/
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0260', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0260 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCommonLocation/UIComponentTextCommonLocation026")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0260 finish.`);
      done()
    })

    /*
* @tc.number      SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0270
* @tc.name        SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0270
* @tc.desc        Textinput textAlign、align
*/
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0270', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0270 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCommonLocation/UIComponentTextCommonLocation027")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0270 finish.`);
      done()
    })

    /*
* @tc.number      SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0280
* @tc.name        SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0280
* @tc.desc        Textinput set barState
*/
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0280', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0280 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCommonLocation/UIComponentTextCommonLocation028")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0280 finish.`);
      done()
    })

    /*
* @tc.number      SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0290
* @tc.name        SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0290
* @tc.desc        Textinput setborder
*/
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0290', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0290 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCommonLocation/UIComponentTextCommonLocation029")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0290 finish.`);
      done()
    })

    /*
* @tc.number      SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0300
* @tc.name        SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0300
* @tc.desc        Textinput set maxLines
*/
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0300', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0300 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCommonLocation/UIComponentTextCommonLocation030")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0300 finish.`);
      done()
    })

    /*
* @tc.number      SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0310
* @tc.name        SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0310
* @tc.desc        Textinput set padding、margin
*/
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0310', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0310 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCommonLocation/UIComponentTextCommonLocation031")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0310 finish.`);
      done()
    })

    /*
* @tc.number      SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0320
* @tc.name        SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0320
* @tc.desc        Textinput set width、height
*/
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0320', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0320 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCommonLocation/UIComponentTextCommonLocation032")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0320 finish.`);
      done()
    })

    /*
* @tc.number      SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0330
* @tc.name        SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0330
* @tc.desc        Textinput set maxlength
*/
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0330', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0330 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCommonLocation/UIComponentTextCommonLocation033")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0330 finish.`);
      done()
    })

    /*
* @tc.number      SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0340
* @tc.name        SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0340
* @tc.desc        Textinput set a phrese
*/
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0340', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0340 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCommonLocation/UIComponentTextCommonLocation034")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0340 finish.`);
      done()
    })

    /*
* @tc.number      SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0350
* @tc.name        SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0350
* @tc.desc        textarea placeholder
*/
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0350', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0350 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCommonLocation/UIComponentTextCommonLocation035")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0350 finish.`);
      done()
    })

    /*
* @tc.number      SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0360
* @tc.name        SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0360
* @tc.desc        textarea set placeholder
*/
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0360', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0360 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCommonLocation/UIComponentTextCommonLocation036")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0360 finish.`);
      done()
    })

    /*
* @tc.number      SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0370
* @tc.name        SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0370
* @tc.desc        textarea set single phrase
*/
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0370', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0370 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCommonLocation/UIComponentTextCommonLocation037")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0370 finish.`);
      done()
    })

    /*
* @tc.number      SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0380
* @tc.name        SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0380
* @tc.desc        textarea set placeholder
*/
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0380', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0380 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCommonLocation/UIComponentTextCommonLocation038")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0380 finish.`);
      done()
    })

    /*
* @tc.number      SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0390
* @tc.name        SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0390
* @tc.desc        textarea set multiple placeholder
*/
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0390', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0390 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCommonLocation/UIComponentTextCommonLocation039")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0390 finish.`);
      done()
    })

    /*
* @tc.number      SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0400
* @tc.name        SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0400
* @tc.desc        textarea not set
*/
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0400', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0400 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCommonLocation/UIComponentTextCommonLocation040")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0400 finish.`);
      done()
    })

    /*
* @tc.number      SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0430
* @tc.name        SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0430
* @tc.desc        textarea fontSize、fontStyle、fontWeight
*/
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0430', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0430 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCommonLocation/UIComponentTextCommonLocation043")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0430 finish.`);
      done()
    })

    /*
* @tc.number      SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0440
* @tc.name        SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0440
* @tc.desc        textarea set textAlign、align
*/
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0440', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0440 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCommonLocation/UIComponentTextCommonLocation044")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0440 finish.`);
      done()
    })

    /*
* @tc.number      SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0450
* @tc.name        SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0450
* @tc.desc        textarea set barState
*/
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0450', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0450 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCommonLocation/UIComponentTextCommonLocation045")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0450 finish.`);
      done()
    })

    /*
* @tc.number      SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0460
* @tc.name        SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0460
* @tc.desc        textarea
*/
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0460', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0460 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCommonLocation/UIComponentTextCommonLocation046")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0460 finish.`);
      done()
    })

    /*
* @tc.number      SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0470
* @tc.name        SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0470
* @tc.desc        textarea set maxLines
*/
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0470', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0470 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCommonLocation/UIComponentTextCommonLocation047")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0470 finish.`);
      done()
    })

    /*
* @tc.number      SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0480
* @tc.name        SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0480
* @tc.desc        textarea set padding、margin
*/
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0480', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0480 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCommonLocation/UIComponentTextCommonLocation048")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0480 finish.`);
      done()
    })

    /*
* @tc.number      SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0490
* @tc.name        SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0490
* @tc.desc        textarea set width、height
*/
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0490', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0490 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCommonLocation/UIComponentTextCommonLocation049")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0490 finish.`);
      done()
    })

    /*
* @tc.number      SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0500
* @tc.name        SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0500
* @tc.desc        textarea set maxlength
*/
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0500', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0500 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCommonLocation/UIComponentTextCommonLocation050")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0500 finish.`);
      done()
    })

    /*
* @tc.number      SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0510
* @tc.name        SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0510
* @tc.desc        textarea set a phrase
*/
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0510', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0510 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCommonLocation/UIComponentTextCommonLocation051")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_LOCATION_0510 finish.`);
      done()
    })

    /*
          * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_1010
          * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_1010
          * @tc.desc    TextArea showCounter=true
   */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_1010', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_1010 start.`);
      Settings.createWindow("testability/pages/UiComponentTextTextareaInterface/UiComponentTextTextareaInterface1010")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(10000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_1010 finish.`);
      done()
    })

    /*
         * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_1030
         * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_1030
         * @tc.desc    TextArea  style=TextContentStyle.INLINE
  */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_1030', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_1010 start.`);
      Settings.createWindow("testability/pages/UiComponentTextTextareaInterface/UiComponentTextTextareaInterface1030")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(10000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_1030 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_1080
       * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_1080
       * @tc.desc    TextArea  selectionEnd>max
*/
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_1080', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_1010 start.`);
      Settings.createWindow("testability/pages/UiComponentTextTextareaInterface/UiComponentTextTextareaInterface1080")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(10000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_1080 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_1090
       * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_1090
       * @tc.desc    TextArea  selectionEnd>max
*/
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_1090', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_1090 start.`);
      Settings.createWindow("testability/pages/UiComponentTextTextareaInterface/UiComponentTextTextareaInterface1090")
      await Utils.sleep(1000)
      let driver:Driver=Driver.create()
      let textarea:Component =await driver.findComponent(ON.id('textarea1090'))
      await textarea.inputText('aaaaaaaaaaaaaaaaaaaaaaaaaaaaa')
      await textarea.clearText()
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_1090 finish.`);
      done()
    })
  })
}

