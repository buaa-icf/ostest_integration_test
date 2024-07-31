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
import { IntentionCode } from '@ohos.multimodalInput.intentionCode'
import { KeyboardAvoidMode } from '@ohos.arkui.UIContext'

export default function UIComponentTextCommonTextStyleTextArea() {

  describe('UIComponentTextCommonTextStyleTextArea', () => {
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
     * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0850
     * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0850
     * @tc.desc    set maxLength of TextArea to 10
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0850', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0850 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCommonTextStyle/UIComponentTextCommonTextStyle085")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(5000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0850 finish.`);
      done()
    })

    /*
    * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0860
    * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0860
    * @tc.desc    set placeholderFont of TextArea to { size: 20, weight: FontWeight.Bolder,family:'Arial, HarmonyOS Sans' ,style:FontStyle.Italic}
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0860', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0860 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCommonTextStyle/UIComponentTextCommonTextStyle086")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(5000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0860 finish.`);
      done()
    })

    /*
    * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0870
    * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0870
    * @tc.desc    set placeholderColor of TextArea to Color. Blue
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0870', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0870 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCommonTextStyle/UIComponentTextCommonTextStyle087")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(5000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0870 finish.`);
      done()
    })

    /*
    * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0880
    * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0880
    * @tc.desc    set placeholderColor of TextArea to 0xffffff
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0880', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0880 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCommonTextStyle/UIComponentTextCommonTextStyle088")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(5000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0880 finish.`);
      done()
    })

    /*
    * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0890
    * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0890
    * @tc.desc    set placeholderColor of TextArea to rgb(255, 100, 255)
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0890', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0890 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCommonTextStyle/UIComponentTextCommonTextStyle089")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(5000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0890 finish.`);
      done()
    })

    /*
    * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0900
    * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0900
    * @tc.desc    set placeholderColor of TextArea to $r('app.string.color_yellow')
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0900', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0900 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCommonTextStyle/UIComponentTextCommonTextStyle090")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(5000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0900 finish.`);
      done()
    })

    /*
    * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0950
    * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0950
    * @tc.desc    set textAlign of TextArea to Start
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0950', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0950 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCommonTextStyle/UIComponentTextCommonTextStyle095")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(5000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0950 finish.`);
      done()
    })

    /*
    * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0960
    * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0960
    * @tc.desc    set textAlign of TextArea to center
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0960', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0960 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCommonTextStyle/UIComponentTextCommonTextStyle096")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(5000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0960 finish.`);
      done()
    })

    /*
    * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0970
    * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0970
    * @tc.desc    set textAlign of TextArea to End
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0970', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0970 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCommonTextStyle/UIComponentTextCommonTextStyle097")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(5000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0970 finish.`);
      done()
    })

    /*
    * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0980
    * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0980
    * @tc.desc    set fontColor of TextArea to Color. Blue
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0980', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0980 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCommonTextStyle/UIComponentTextCommonTextStyle098")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(5000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0980 finish.`);
      done()
    })

    /*
    * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0990
    * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0990
    * @tc.desc    set fontColor of TextArea to 0xffffff
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0990', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0990 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCommonTextStyle/UIComponentTextCommonTextStyle099")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(5000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0990 finish.`);
      done()
    })

    /*
    * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1000
    * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1000
    * @tc.desc    set fontColor of TextArea to rgb(255, 100, 255)
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1000', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1000 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCommonTextStyle/UIComponentTextCommonTextStyle100")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(5000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1000 finish.`);
      done()
    })

    /*
    * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1010
    * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1010
    * @tc.desc    set fontColor of TextArea to $r('app.string.color_yellow')
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1010', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1010 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCommonTextStyle/UIComponentTextCommonTextStyle101")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(5000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1010 finish.`);
      done()
    })

    /*
    * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1020
    * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1020
    * @tc.desc    set fontSize of TextArea to 20
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1020', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1020 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCommonTextStyle/UIComponentTextCommonTextStyle102")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(5000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1020 finish.`);
      done()
    })

    /*
    * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1030
    * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1030
    * @tc.desc    set fontSize of TextArea to '11px'
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1030', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1030 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCommonTextStyle/UIComponentTextCommonTextStyle103")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(5000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1030 finish.`);
      done()
    })

    /*
    * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1040
    * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1040
    * @tc.desc    set fontSize of TextArea to $r('app.string.size_30')
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1040', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1040 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCommonTextStyle/UIComponentTextCommonTextStyle104")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(5000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1040 finish.`);
      done()
    })

    /*
    * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1050
    * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1050
    * @tc.desc    set fontStyle of TextArea to normal
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1050', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1050 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCommonTextStyle/UIComponentTextCommonTextStyle105")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(5000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1050 finish.`);
      done()
    })

    /*
    * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1060
    * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1060
    * @tc.desc    set fontStyle of TextArea to Italic
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1060', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1060 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCommonTextStyle/UIComponentTextCommonTextStyle106")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(5000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1060 finish.`);
      done()
    })

    /*
    * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1070
    * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1070
    * @tc.desc    set fontWeight of TextArea to FontWeight.Normal
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1070', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1070 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCommonTextStyle/UIComponentTextCommonTextStyle107")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(5000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1070 finish.`);
      done()
    })

    /*
    * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1080
    * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1080
    * @tc.desc    set fontWeight of TextArea to FontWeight.Lighter
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1080', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1080 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCommonTextStyle/UIComponentTextCommonTextStyle108")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(5000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1080 finish.`);
      done()
    })

    /*
    * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1090
    * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1090
    * @tc.desc    set fontWeight of TextArea to FontWeight.Regular
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1090', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1090 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCommonTextStyle/UIComponentTextCommonTextStyle109")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(5000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1090 finish.`);
      done()
    })

    /*
    * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1100
    * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1100
    * @tc.desc    set fontWeight of TextArea to FontWeight.Medium
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1100', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1100 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCommonTextStyle/UIComponentTextCommonTextStyle110")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(5000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1100 finish.`);
      done()
    })

    /*
    * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1110
    * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1110
    * @tc.desc    set fontWeight of TextArea to FontWeight.Bold
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1110', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1110 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCommonTextStyle/UIComponentTextCommonTextStyle111")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(5000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1110 finish.`);
      done()
    })

    /*
    * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1120
    * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1120
    * @tc.desc    set fontWeight of TextArea to FontWeight.Bolder
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1120', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1120 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCommonTextStyle/UIComponentTextCommonTextStyle112")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(5000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1120 finish.`);
      done()
    })

    /*
    * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1130
    * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1130
    * @tc.desc    set fontFamily of TextArea to HarmonyOS-Sans
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1130', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1130 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCommonTextStyle/UIComponentTextCommonTextStyle113")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(5000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1130 finish.`);
      done()
    })

    /*
    * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1140
    * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1140
    * @tc.desc    set inputFilter of TextArea to '[A-Z]', (value: string) => { console.info("testtest" + value) }
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1140', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1140 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCommonTextStyle/UIComponentTextCommonTextStyle114")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(5000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1140 finish.`);
      done()
    })
  })
}
