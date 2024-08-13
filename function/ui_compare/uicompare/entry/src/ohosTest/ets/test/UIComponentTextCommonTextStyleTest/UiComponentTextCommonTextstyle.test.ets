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
export default function UiComponentTextCommonTextstyle() {
  describe('UiComponentTextCommonTextstyle', () => {
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
    * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0010
    * @tc.name      SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0010
    * @tc.desc      Set the maxLines value to 5
   */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0010', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0010 start.`);
      Settings.createWindow("testability/pages/UiComponentTextCommonTextstyle/UiComponentTextCommonTextstyle001")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0010 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0020
     * @tc.name      SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0020
     * @tc.desc      Set barState Auto
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0020', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0020 start.`);
      Settings.createWindow("testability/pages/UiComponentTextCommonTextstyle/UiComponentTextCommonTextstyle002")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0020 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0030
     * @tc.name      SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0030
     * @tc.desc      Set barState.On
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0030', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0030 start.`);
      Settings.createWindow("testability/pages/UiComponentTextCommonTextstyle/UiComponentTextCommonTextstyle003")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0030 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0040
     * @tc.name      SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0040
     * @tc.desc      Set barState.Off
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0040', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0040 start.`);
      Settings.createWindow("testability/pages/UiComponentTextCommonTextstyle/UiComponentTextCommonTextstyle004")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0040 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0050
     * @tc.name      SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0050
     * @tc.desc      SelectionMenuHidden set to true
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0050', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0050 start.`);
      Settings.createWindow("testability/pages/UiComponentTextCommonTextstyle/UiComponentTextCommonTextstyle005")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0050 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0060
     * @tc.name      SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0060
     * @tc.desc      SelectionMenuHidden set to false
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0060', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0060 start.`);
      Settings.createWindow("testability/pages/UiComponentTextCommonTextstyle/UiComponentTextCommonTextstyle006")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0060 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0070
     * @tc.name      SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0070
     * @tc.desc      The value of carePosition is set to 3
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0070', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0070 start.`);
      Settings.createWindow("testability/pages/UiComponentTextCommonTextstyle/UiComponentTextCommonTextstyle007")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0070 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0080
     * @tc.name      SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0080
     * @tc.desc      Select Background Color to set the color type
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0080', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0080 start.`);
      Settings.createWindow("testability/pages/UiComponentTextCommonTextstyle/UiComponentTextCommonTextstyle008")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0080 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0090
     * @tc.name      SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0090
     * @tc.desc      Select Background Color to set the number type
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0090', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0090 start.`);
      Settings.createWindow("testability/pages/UiComponentTextCommonTextstyle/UiComponentTextCommonTextstyle009")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0090 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0100
     * @tc.name      SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0100
     * @tc.desc      Select Background Color to set the string type
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0100', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0100 start.`);
      Settings.createWindow("testability/pages/UiComponentTextCommonTextstyle/UiComponentTextCommonTextstyle010")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0100 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0110
     * @tc.name      SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0110
     * @tc.desc      CareStyle setting string type
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0110', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0110 start.`);
      Settings.createWindow("testability/pages/UiComponentTextCommonTextstyle/UiComponentTextCommonTextstyle011")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0110 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0120
     * @tc.name      SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0120
     * @tc.desc      CareStyle setting number type
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0120', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0120 start.`);
      Settings.createWindow("testability/pages/UiComponentTextCommonTextstyle/UiComponentTextCommonTextstyle012")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0120 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0130
     * @tc.name      SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0130
     * @tc.desc      CareStyle setting resource type
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0130', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0130 start.`);
      Settings.createWindow("testability/pages/UiComponentTextCommonTextstyle/UiComponentTextCommonTextstyle013")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0130 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0140
     * @tc.name      SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0140
     * @tc.desc      ShowOutline set to true
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0140', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0140 start.`);
      Settings.createWindow("testability/pages/UiComponentTextCommonTextstyle/UiComponentTextCommonTextstyle014")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0140 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0150
     * @tc.name      SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0150
     * @tc.desc      ShowOutline set to false
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0150', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0150 start.`);
      Settings.createWindow("testability/pages/UiComponentTextCommonTextstyle/UiComponentTextCommonTextstyle015")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0150 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0160
     * @tc.name      SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0160
     * @tc.desc      ShowOutline set to Error
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0160', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0160 start.`);
      Settings.createWindow("testability/pages/UiComponentTextCommonTextstyle/UiComponentTextCommonTextstyle016")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0160 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0170
     * @tc.name      SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0170
     * @tc.desc      PasswordIcon setting onIconSrc
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0170', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0170 start.`);
      Settings.createWindow("testability/pages/UiComponentTextCommonTextstyle/UiComponentTextCommonTextstyle017")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0170 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0180
     * @tc.name      SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0180
     * @tc.desc      PasswordIcon setting offIconSrc
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0180', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0180 start.`);
      Settings.createWindow("testability/pages/UiComponentTextCommonTextstyle/UiComponentTextCommonTextstyle018")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0180 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0190
     * @tc.name      SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0190
     * @tc.desc      Style setting TextInputStyle Default
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0190', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0190 start.`);
      Settings.createWindow("testability/pages/UiComponentTextCommonTextstyle/UiComponentTextCommonTextstyle019")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0190 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0200
     * @tc.name      SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0200
     * @tc.desc      Style setting TextInputStyle Inline
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0200', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0200 start.`);
      Settings.createWindow("testability/pages/UiComponentTextCommonTextstyle/UiComponentTextCommonTextstyle020")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0200 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0230
     * @tc.name      SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0230
     * @tc.desc      InputType is set to Normal
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0230', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0230 start.`);
      Settings.createWindow("testability/pages/UiComponentTextCommonTextstyle/UiComponentTextCommonTextstyle023")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0230 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0240
     * @tc.name      SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0240
     * @tc.desc      InputType is set to Password
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0240', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0240 start.`);
      Settings.createWindow("testability/pages/UiComponentTextCommonTextstyle/UiComponentTextCommonTextstyle024")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0240 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0250
     * @tc.name      SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0250
     * @tc.desc      InputType is set to Email
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0250', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0250 start.`);
      Settings.createWindow("testability/pages/UiComponentTextCommonTextstyle/UiComponentTextCommonTextstyle025")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0250 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0260
     * @tc.name      SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0260
     * @tc.desc      InputType is set to Number
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0260', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0260 start.`);
      Settings.createWindow("testability/pages/UiComponentTextCommonTextstyle/UiComponentTextCommonTextstyle026")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0260 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0270
     * @tc.name      SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0270
     * @tc.desc      InputType is set to PhoneNumber
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0270', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0270 start.`);
      Settings.createWindow("testability/pages/UiComponentTextCommonTextstyle/UiComponentTextCommonTextstyle027")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0270 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0280
     * @tc.name      SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0280
     * @tc.desc      InputType is set to USER_NAM
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0280', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0280 start.`);
      Settings.createWindow("testability/pages/UiComponentTextCommonTextstyle/UiComponentTextCommonTextstyle028")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0280 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0290
     * @tc.name      SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0290
     * @tc.desc      InputType is set to NEW_PASSWORD
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0290', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0290 start.`);
      Settings.createWindow("testability/pages/UiComponentTextCommonTextstyle/UiComponentTextCommonTextstyle029")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0290 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0300
     * @tc.name      SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0300
     * @tc.desc      InputType is set to NUMBER_PASSWORD
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0300', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0300 start.`);
      Settings.createWindow("testability/pages/UiComponentTextCommonTextstyle/UiComponentTextCommonTextstyle030")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0300 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0310
     * @tc.name      SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0310
     * @tc.desc      InputType is set to SCREEN_LOCK_PASSWORD
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0310', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0310 start.`);
      Settings.createWindow("testability/pages/UiComponentTextCommonTextstyle/UiComponentTextCommonTextstyle031")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0310 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0370
     * @tc.name      SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0370
     * @tc.desc      PlaceholderFont Set font style
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0370', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0370 start.`);
      Settings.createWindow("testability/pages/UiComponentTextCommonTextstyle/UiComponentTextCommonTextstyle037")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0370 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0380
     * @tc.name      SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0380
     * @tc.desc      PlaceholderFont Set color style
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0380', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0380 start.`);
      Settings.createWindow("testability/pages/UiComponentTextCommonTextstyle/UiComponentTextCommonTextstyle038")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0380 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0390
     * @tc.name      SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0390
     * @tc.desc      PlaceholderFont Set number style
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0390', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0390 start.`);
      Settings.createWindow("testability/pages/UiComponentTextCommonTextstyle/UiComponentTextCommonTextstyle039")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0390 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0400
     * @tc.name      SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0400
     * @tc.desc      PlaceholderFont Set string style
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0400', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0400 start.`);
      Settings.createWindow("testability/pages/UiComponentTextCommonTextstyle/UiComponentTextCommonTextstyle040")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0400 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0410
     * @tc.name      SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0410
     * @tc.desc      PlaceholderFont Set Resource style
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0410', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0410 start.`);
      Settings.createWindow("testability/pages/UiComponentTextCommonTextstyle/UiComponentTextCommonTextstyle041")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0410 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0420
     * @tc.name      SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0420
     * @tc.desc      caretColor Set color style
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0420', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0420 start.`);
      Settings.createWindow("testability/pages/UiComponentTextCommonTextstyle/UiComponentTextCommonTextstyle042")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0420 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0430
     * @tc.name      SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0430
     * @tc.desc      caretColor Set number style
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0430', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0430 start.`);
      Settings.createWindow("testability/pages/UiComponentTextCommonTextstyle/UiComponentTextCommonTextstyle043")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0430 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0440
     * @tc.name      SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0440
     * @tc.desc      caretColor Set string style
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0440', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0440 start.`);
      Settings.createWindow("testability/pages/UiComponentTextCommonTextstyle/UiComponentTextCommonTextstyle044")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0440 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0450
     * @tc.name      SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0450
     * @tc.desc      caretColor Set Resource style
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0450', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0450 start.`);
      Settings.createWindow("testability/pages/UiComponentTextCommonTextstyle/UiComponentTextCommonTextstyle045")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0450 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0460
     * @tc.name      SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0460
     * @tc.desc      maxLength Set 10
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0460', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0460 start.`);
      Settings.createWindow("testability/pages/UiComponentTextCommonTextstyle/UiComponentTextCommonTextstyle046")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0460 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0470
     * @tc.name      SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0470
     * @tc.desc      fontColor Set color style
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0470', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0470 start.`);
      Settings.createWindow("testability/pages/UiComponentTextCommonTextstyle/UiComponentTextCommonTextstyle047")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0470 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0480
     * @tc.name      SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0480
     * @tc.desc      fontColor Set number style
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0480', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0480 start.`);
      Settings.createWindow("testability/pages/UiComponentTextCommonTextstyle/UiComponentTextCommonTextstyle048")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0480 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0490
     * @tc.name      SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0490
     * @tc.desc      fontColor Set string style
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0490', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0490 start.`);
      Settings.createWindow("testability/pages/UiComponentTextCommonTextstyle/UiComponentTextCommonTextstyle049")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0490 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0500
     * @tc.name      SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0500
     * @tc.desc      fontColor Set Resource style
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0500', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0500 start.`);
      Settings.createWindow("testability/pages/UiComponentTextCommonTextstyle/UiComponentTextCommonTextstyle050")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0500 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0510
     * @tc.name      SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0510
     * @tc.desc      fontSize Set number style
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0510', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0510 start.`);
      Settings.createWindow("testability/pages/UiComponentTextCommonTextstyle/UiComponentTextCommonTextstyle051")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0510 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0520
     * @tc.name      SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0520
     * @tc.desc      fontSize Set string style
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0520', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0520 start.`);
      Settings.createWindow("testability/pages/UiComponentTextCommonTextstyle/UiComponentTextCommonTextstyle052")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0520 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0530
     * @tc.name      SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0530
     * @tc.desc      fontSize Set Resource style
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0530', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0530 start.`);
      Settings.createWindow("testability/pages/UiComponentTextCommonTextstyle/UiComponentTextCommonTextstyle053")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0530 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0540
     * @tc.name      SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0540
     * @tc.desc      fontStyle Set normal style
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0540', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0540 start.`);
      Settings.createWindow("testability/pages/UiComponentTextCommonTextstyle/UiComponentTextCommonTextstyle054")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0540 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0550
     * @tc.name      SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0550
     * @tc.desc      fontStyle Set Italic style
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0550', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0550 start.`);
      Settings.createWindow("testability/pages/UiComponentTextCommonTextstyle/UiComponentTextCommonTextstyle055")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0550 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0560
     * @tc.name      SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0560
     * @tc.desc      fontWeight Set Normal style
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0560', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0560 start.`);
      Settings.createWindow("testability/pages/UiComponentTextCommonTextstyle/UiComponentTextCommonTextstyle056")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0560 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0570
     * @tc.name      SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0570
     * @tc.desc      fontWeight Set Lighter style
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0570', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0570 start.`);
      Settings.createWindow("testability/pages/UiComponentTextCommonTextstyle/UiComponentTextCommonTextstyle057")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0570 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0580
     * @tc.name      SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0580
     * @tc.desc      fontWeight Set Regular style
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0580', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0580 start.`);
      Settings.createWindow("testability/pages/UiComponentTextCommonTextstyle/UiComponentTextCommonTextstyle058")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0580 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0590
     * @tc.name      SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0590
     * @tc.desc      fontWeight Set Medium style
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0590', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0590 start.`);
      Settings.createWindow("testability/pages/UiComponentTextCommonTextstyle/UiComponentTextCommonTextstyle059")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0590 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0600
     * @tc.name      SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0600
     * @tc.desc      fontWeight Set Bold style
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0600', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0600 start.`);
      Settings.createWindow("testability/pages/UiComponentTextCommonTextstyle/UiComponentTextCommonTextstyle060")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0600 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0610
     * @tc.name      SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0610
     * @tc.desc      fontWeight Set Bolder style
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0610', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0610 start.`);
      Settings.createWindow("testability/pages/UiComponentTextCommonTextstyle/UiComponentTextCommonTextstyle061")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0610 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0620
     * @tc.name      SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0620
     * @tc.desc      FontFamily setting HarmonyOS Sans
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0620', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0620 start.`);
      Settings.createWindow("testability/pages/UiComponentTextCommonTextstyle/UiComponentTextCommonTextstyle062")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0620 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0630
     * @tc.name      SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0630
     * @tc.desc      InputFilter sets the value to [A-Z]
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0630', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0630 start.`);
      Settings.createWindow("testability/pages/UiComponentTextCommonTextstyle/UiComponentTextCommonTextstyle063")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0630 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0640
     * @tc.name      SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0640
     * @tc.desc      CopyOption set to None
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0640', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0640 start.`);
      Settings.createWindow("testability/pages/UiComponentTextCommonTextstyle/UiComponentTextCommonTextstyle064")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0640 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0650
     * @tc.name      SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0650
     * @tc.desc      CopyOption set to InApp
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0650', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0650 start.`);
      Settings.createWindow("testability/pages/UiComponentTextCommonTextstyle/UiComponentTextCommonTextstyle065")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0650 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0660
     * @tc.name      SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0660
     * @tc.desc      CopyOption set to LocalDevice
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0660', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0660 start.`);
      Settings.createWindow("testability/pages/UiComponentTextCommonTextstyle/UiComponentTextCommonTextstyle066")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0660 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0670
     * @tc.name      SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0670
     * @tc.desc      CopyOption set to CROSS_DEVICE
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0670', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0670 start.`);
      Settings.createWindow("testability/pages/UiComponentTextCommonTextstyle/UiComponentTextCommonTextstyle067")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0670 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0680
     * @tc.name      SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0680
     * @tc.desc      ShowPasswordIcon Set True
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0680', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0680 start.`);
      Settings.createWindow("testability/pages/UiComponentTextCommonTextstyle/UiComponentTextCommonTextstyle068")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0680 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0690
     * @tc.name      SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0690
     * @tc.desc      ShowPasswordIcon Set False
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0690', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0690 start.`);
      Settings.createWindow("testability/pages/UiComponentTextCommonTextstyle/UiComponentTextCommonTextstyle069")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0690 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0700
     * @tc.name      SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0700
     * @tc.desc      TextAlign setting Start
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0700', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0700 start.`);
      Settings.createWindow("testability/pages/UiComponentTextCommonTextstyle/UiComponentTextCommonTextstyle070")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0700 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0710
     * @tc.name      SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0710
     * @tc.desc      TextAlign setting Center
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0710', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0710 start.`);
      Settings.createWindow("testability/pages/UiComponentTextCommonTextstyle/UiComponentTextCommonTextstyle071")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0710 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0720
     * @tc.name      SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0720
     * @tc.desc      TextAlign setting End
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0720', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0720 start.`);
      Settings.createWindow("testability/pages/UiComponentTextCommonTextstyle/UiComponentTextCommonTextstyle072")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0720 finish.`);
      done()
    })

    /*
           * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0910
           * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0910
           * @tc.desc    caretColor=Color. Blue
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0910', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0910 start.`);
      Settings.createWindow("testability/pages/UiComponentTextCommonTextstyle/UiComponentTextCommonTextstyle0910")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0910 finish.`);
      done()
    })
    /*
          * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0920
          * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0920
          * @tc.desc    caretColor=0xffffff
   */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0920', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0920 start.`);
      Settings.createWindow("testability/pages/UiComponentTextCommonTextstyle/UiComponentTextCommonTextstyle0920")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0920 finish.`);
      done()
    })
    /*
              * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0930
              * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0930
              * @tc.desc    caretColor='rgb(255, 100, 255)'
       */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0930', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0930 start.`);
      Settings.createWindow("testability/pages/UiComponentTextCommonTextstyle/UiComponentTextCommonTextstyle0930")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0930 finish.`);
      done()
    })
    /*
              * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0940
              * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0940
              * @tc.desc    caretColor($r('app.color.yellow'))
       */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0940', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0940 start.`);
      Settings.createWindow("testability/pages/UiComponentTextCommonTextstyle/UiComponentTextCommonTextstyle0940")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0940 finish.`);
      done()
    })
    /*
              * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1900
              * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1900
              * @tc.desc    search caretStyle{width: '3vp',color:0xff}
       */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1900', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1900 start.`);
      Settings.createWindow("testability/pages/UiComponentTextCommonTextstyle/UiComponentTextCommonTextstyle1900")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1900 finish.`);
      done()
    })
    /*
              * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1950
              * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1950
              * @tc.desc    search fontColor=Color. Blue
       */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1950', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1950 start.`);
      Settings.createWindow("testability/pages/UiComponentTextCommonTextstyle/UiComponentTextCommonTextstyle1950")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1950 finish.`);
      done()
    })
    /*
          * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1960
          * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1960
          * @tc.desc    search fontColor=0xffffff
   */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1960', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1960 start.`);
      Settings.createWindow("testability/pages/UiComponentTextCommonTextstyle/UiComponentTextCommonTextstyle1960")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1960 finish.`);
      done()
    })
    /*
          * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1970
          * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1970
          * @tc.desc   search fontColor='rgb(255, 100, 255)'
   */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1970', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1970 start.`);
      Settings.createWindow("testability/pages/UiComponentTextCommonTextstyle/UiComponentTextCommonTextstyle1970")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1970 finish.`);
      done()
    })
    /*
              * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1980
              * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1980
              * @tc.desc    search fontColo=0xffffff
       */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1980', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1980 start.`);
      Settings.createWindow("testability/pages/UiComponentTextCommonTextstyle/UiComponentTextCommonTextstyle1980")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1980 finish.`);
      done()
    })
    /*
          * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1990
          * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1990
          * @tc.desc    search  set placeholderFont({size:16,weight:FontWeight.Bold,family:'Arial, HarmonyOS Sans',style:FontStyle.Italic})
   */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1990', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1990 start.`);
      Settings.createWindow("testability/pages/UiComponentTextCommonTextstyle/UiComponentTextCommonTextstyle1990")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1990 finish.`);
      done()
    })
    /*
          * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2000
          * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2000
          * @tc.desc    search placeholdercolor=Color. Blue
   */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2000', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2000 start.`);
      Settings.createWindow("testability/pages/UiComponentTextCommonTextstyle/UiComponentTextCommonTextstyle2000")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2000 finish.`);
      done()
    })
    /*
          * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2010
          * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2010
          * @tc.desc    search placeholdercolor=0xffffff
   */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2010', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2010 start.`);
      Settings.createWindow("testability/pages/UiComponentTextCommonTextstyle/UiComponentTextCommonTextstyle2010")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2010 finish.`);
      done()
    })
    /*
          * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2020
          * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2020
          * @tc.desc     search placeholdercolor='rgb(255, 100, 255)'
   */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2020', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2020 start.`);
      Settings.createWindow("testability/pages/UiComponentTextCommonTextstyle/UiComponentTextCommonTextstyle2020")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2020 finish.`);
      done()
    })
    /*
          * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2030
          * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2030
          * @tc.desc    search placeholderColor($r('app.color.yellow'))
   */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2030', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2010 start.`);
      Settings.createWindow("testability/pages/UiComponentTextCommonTextstyle/UiComponentTextCommonTextstyle2030")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2030 finish.`);
      done()
    })
    /*
          * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2090
          * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2090
          * @tc.desc    search set textAlign(TextAlign.Start)
   */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2090', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2090 start.`);
      Settings.createWindow("testability/pages/UiComponentTextCommonTextstyle/UiComponentTextCommonTextstyle2090")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2090 finish.`);
      done()
    })
    /*
          * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2100
          * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2100
          * @tc.desc    search set textAlign(TextAlign.Center)
   */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2100', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2100 start.`);
      Settings.createWindow("testability/pages/UiComponentTextCommonTextstyle/UiComponentTextCommonTextstyle2100")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2100 finish.`);
      done()
    })
    /*
          * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2110
          * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2110
          * @tc.desc    search set textAlign(TextAlign.End)
   */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2110', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2110 start.`);
      Settings.createWindow("testability/pages/UiComponentTextCommonTextstyle/UiComponentTextCommonTextstyle2110")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2110 finish.`);
      done()
    })
    /*
          * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2160
          * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2160
          * @tc.desc    ImageSpan set objectFit(ImageFit.Contain)
   */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2160', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2160 start.`);
      Settings.createWindow("testability/pages/UiComponentTextCommonTextstyle/UiComponentTextCommonTextstyle2160")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2160 finish.`);
      done()
    })
    /*
          * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2170
          * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2170
          * @tc.desc    ImageSpan set objectFit(ImageFit.Cover)
   */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2170', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2170 start.`);
      Settings.createWindow("testability/pages/UiComponentTextCommonTextstyle/UiComponentTextCommonTextstyle2170")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2170 finish.`);
      done()
    })
    /*
          * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2180
          * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2180
          * @tc.desc    ImageSpan set objectFit(ImageFit.Auto)
   */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2180', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2180 start.`);
      Settings.createWindow("testability/pages/UiComponentTextCommonTextstyle/UiComponentTextCommonTextstyle2180")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2180 finish.`);
      done()
    })
    /*
          * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2190
          * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2190
          * @tc.desc    ImageSpan set objectFit(ImageFit.Fill)
   */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2190', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2190 start.`);
      Settings.createWindow("testability/pages/UiComponentTextCommonTextstyle/UiComponentTextCommonTextstyle2190")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2190 finish.`);
      done()
    })
    /*
          * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2200
          * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2200
          * @tc.desc    ImageSpan set objectFit(ImageFit.ScaleDown)
   */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2200', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2200 start.`);
      Settings.createWindow("testability/pages/UiComponentTextCommonTextstyle/UiComponentTextCommonTextstyle2200")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2200 finish.`);
      done()
    })
    /*
          * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2210
          * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2210
          * @tc.desc    ImageSpan set objectFit(ImageFit.None)
   */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2210', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2210 start.`);
      Settings.createWindow("testability/pages/UiComponentTextCommonTextstyle/UiComponentTextCommonTextstyle2210")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2210 finish.`);
      done()
    })
    /*
          * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2220
          * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2220
          * @tc.desc    ImageSpan set verticalAlign(ImageSpanAlignment.TOP)
   */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2220', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2220 start.`);
      Settings.createWindow("testability/pages/UiComponentTextCommonTextstyle/UiComponentTextCommonTextstyle2220")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2220 finish.`);
      done()
    })
    /*
          * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2230
          * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2230
          * @tc.desc    ImageSpan set verticalAlign(ImageSpanAlignment.CENTER)
   */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2230', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2230 start.`);
      Settings.createWindow("testability/pages/UiComponentTextCommonTextstyle/UiComponentTextCommonTextstyle2230")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2230 finish.`);
      done()
    })
    /*
          * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2240
          * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2240
          * @tc.desc    ImageSpan set verticalAlign(ImageSpanAlignment.BOTTOM)
   */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2240', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2240 start.`);
      Settings.createWindow("testability/pages/UiComponentTextCommonTextstyle/UiComponentTextCommonTextstyle2240")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2240 finish.`);
      done()
    })
    /*
          * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2250
          * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2250
          * @tc.desc    ImageSpan set verticalAlign(ImageSpanAlignment.BASELINE)
   */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2250', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2250 start.`);
      Settings.createWindow("testability/pages/UiComponentTextCommonTextstyle/UiComponentTextCommonTextstyle2250")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2250 finish.`);
      done()
    })

  })
}
