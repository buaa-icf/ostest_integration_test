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

export default function UIComponentLayoutColumnLayout() {

  describe('UIComponentLayoutColumnLayout', () => {
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
    * @tc.number      SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0010
    * @tc.name        SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0010
    * @tc.desc        Set ItemAlign.End
    */
     it('SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0010', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0010 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutColumnLayout/UIComponentLayoutColumnLayout001")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0010 finish.`);
      done()
    })

    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0020
    * @tc.name        SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0020
    * @tc.desc        Set ItemAlign.Start
    */
     it('SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0020', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0020 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutColumnLayout/UIComponentLayoutColumnLayout002")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0020 finish.`);
      done()
    })

    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0030
    * @tc.name        SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0030
    * @tc.desc        Set .alignItems(HorizontalAlign.End)
    */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0030', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0030 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutColumnLayout/UIComponentLayoutColumnLayout003")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0030 finish.`);
      done()
    })

    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0040
    * @tc.name        SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0040
    * @tc.desc        Set .alignItems(HorizontalAlign.Start)
    */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0040', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0040 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutColumnLayout/UIComponentLayoutColumnLayout004")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0040 finish.`);
      done()
    })

    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0050
    * @tc.name        SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0050
    * @tc.desc        Set alignItems(HorizontalAlign.End)
    */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0050', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0050 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutColumnLayout/UIComponentLayoutColumnLayout005")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0050 finish.`);
      done()
    })

    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0060
    * @tc.name        SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0060
    * @tc.desc        Set flexGrow(2)，layoutWeight(3).layoutWeight(2).layoutWeight(1)
    */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0060', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0060 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutColumnLayout/UIComponentLayoutColumnLayout006")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0060 finish.`);
      done()
    })

    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0070
    * @tc.name        SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0070
    * @tc.desc        NoSet flexBasis
    */
   it('SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0070', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0070 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutColumnLayout/UIComponentLayoutColumnLayout007")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0070 finish.`);
      done()
    })

    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0080
    * @tc.name        SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0080
    * @tc.desc        Set flexBasis = -5
    */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0080', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0080 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutColumnLayout/UIComponentLayoutColumnLayout008")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0080 finish.`);
      done()
    })

    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0090
    * @tc.name        SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0090
    * @tc.desc        Set flexBasis = null
    */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0090', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0090 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutColumnLayout/UIComponentLayoutColumnLayout009")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0090 finish.`);
      done()
    })

    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0100
    * @tc.name        SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0100
    * @tc.desc        Set flexBasis = undefined
    */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0100', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0100 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutColumnLayout/UIComponentLayoutColumnLayout010")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0100 finish.`);
      done()
    })

    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0110
    * @tc.name        SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0110
    * @tc.desc        Set flexBasis = 0
    */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0110', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0110 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutColumnLayout/UIComponentLayoutColumnLayout011")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0110 finish.`);
      done()
    })

    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0120
    * @tc.name        SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0120
    * @tc.desc        Set flexBasis = 100
    */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0120', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0120 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutColumnLayout/UIComponentLayoutColumnLayout012")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0120 finish.`);
      done()
    })

    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0130
    * @tc.name        SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0130
    * @tc.desc        Set flexBasis = "200fp"
    */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0130', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0130 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutColumnLayout/UIComponentLayoutColumnLayout013")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0130 finish.`);
      done()
    })

    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0140
    * @tc.name        SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0140
    * @tc.desc        Set flexBasis = "200lpx"
    */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0140', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0140 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutColumnLayout/UIComponentLayoutColumnLayout014")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0140 finish.`);
      done()
    })

    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0150
    * @tc.name        SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0150
    * @tc.desc        Set flexBasis = "200px"
    */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0150', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0150 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutColumnLayout/UIComponentLayoutColumnLayout015")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0150 finish.`);
      done()
    })

    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0160
    * @tc.name        SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0160
    * @tc.desc        Set flexBasis = "200vp"
    */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0160', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0160 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutColumnLayout/UIComponentLayoutColumnLayout016")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0160 finish.`);
      done()
    })

    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0170
    * @tc.name        SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0170
    * @tc.desc        Set flexBasis = auto
    */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0170', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0170 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutColumnLayout/UIComponentLayoutColumnLayout017")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0170 finish.`);
      done()
    })

    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0180
    * @tc.name        SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0180
    * @tc.desc        Set .layoutWeight(3).layoutWeight(2).layoutWeight(1)
    */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0180', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0180 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutColumnLayout/UIComponentLayoutColumnLayout018")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0180 finish.`);
      done()
    })

    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0190
    * @tc.name        SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0190
    * @tc.desc        Set layoutWeight（0.5）
    */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0190', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0190 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutColumnLayout/UIComponentLayoutColumnLayout019")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0190 finish.`);
      done()
    })

    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0200
    * @tc.name        SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0200
    * @tc.desc        Set  layoutWeight（≥1）
    */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0200', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0200 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutColumnLayout/UIComponentLayoutColumnLayout020")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0200 finish.`);
      done()
    })

    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0210
    * @tc.name        SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0210
    * @tc.desc        Set .layoutWeight("3").layoutWeight("2").layoutWeight("1")
    */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0210', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0210 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutColumnLayout/UIComponentLayoutColumnLayout021")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0210 finish.`);
      done()
    })

    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0220
    * @tc.name        SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0220
    * @tc.desc        Set  layoutWeight("3")
    */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0220', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0220 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutColumnLayout/UIComponentLayoutColumnLayout022")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0220 finish.`);
      done()
    })

    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0230
    * @tc.name        SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0230
    * @tc.desc        NoSet flexGrow
    */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0230', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0230 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutColumnLayout/UIComponentLayoutColumnLayout023")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0230 finish.`);
      done()
    })

    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0250
    * @tc.name        SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0250
    * @tc.desc        Set flexShrink(2)，column1、2、3.layoutWeight(3).layoutWeight(2).layoutWeight(1)
    */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0250', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0250 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutColumnLayout/UIComponentLayoutColumnLayout025")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0250 finish.`);
      done()
    })

    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0260
    * @tc.name        SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0260
    * @tc.desc        Set .displayPriority(1).displayPriority(0.5).displayPriority(1)
    */
    // it('SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0260', 0, async (done: Function) => {
    //   Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0260 start.`);
    //   Settings.createWindow("testability/pages/UIComponentLayoutColumnLayout/UIComponentLayoutColumnLayout026")
    //   await Utils.sleep(1000)
    //   windowSnap.snapShot()
    //   await Utils.sleep(1000)
    //   Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0260 finish.`);
    //   done()
    // })

    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0270
    * @tc.name        SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0270
    * @tc.desc        Set .displayPriority(1).displayPriority(2).displayPriority(3)
    */
    // it('SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0270', 0, async (done: Function) => {
    //   Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0270 start.`);
    //   Settings.createWindow("testability/pages/UIComponentLayoutColumnLayout/UIComponentLayoutColumnLayout027")
    //   await Utils.sleep(1000)
    //   windowSnap.snapShot()
    //   await Utils.sleep(1000)
    //   Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0270 finish.`);
    //   done()
    // })

    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0280
    * @tc.name        SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0280
    * @tc.desc        Set flexGrow = -5
    */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0280', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0280 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutColumnLayout/UIComponentLayoutColumnLayout028")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0280 finish.`);
      done()
    })

    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0290
    * @tc.name        SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0290
    * @tc.desc        Set flexGrow = null
    */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0290', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0190 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutColumnLayout/UIComponentLayoutColumnLayout029")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0290 finish.`);
      done()
    })

    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0300
    * @tc.name        SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0300
    * @tc.desc        Set flexGrow = undefined
    */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0300', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0300 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutColumnLayout/UIComponentLayoutColumnLayout030")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0300 finish.`);
      done()
    })

    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0310
    * @tc.name        SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0310
    * @tc.desc        Set flexGrow = 3、2、1
    */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0310', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0310 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutColumnLayout/UIComponentLayoutColumnLayout031")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0310 finish.`);
      done()
    })

    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0320
    * @tc.name        SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0320
    * @tc.desc        Set flexShink = -5
    */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0320', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0320 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutColumnLayout/UIComponentLayoutColumnLayout032")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0320 finish.`);
      done()
    })

    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0330
    * @tc.name        SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0330
    * @tc.desc        Set flexShink =null
    */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0330', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0330 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutColumnLayout/UIComponentLayoutColumnLayout033")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0330 finish.`);
      done()
    })

    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0340
    * @tc.name        SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0340
    * @tc.desc        Set flexShink = undefined
    */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0340', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0340 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutColumnLayout/UIComponentLayoutColumnLayout034")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0340 finish.`);
      done()
    })

    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0350
    * @tc.name        SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0350
    * @tc.desc        Set flexShink = 1
    */
/*    it('SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0350', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0350 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutColumnLayout/UIComponentLayoutColumnLayout035")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0350 finish.`);
      done()
    })*/

    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0360
    * @tc.name        SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0360
    * @tc.desc        Set layoutWeight = "aaa"
    */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0360', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0360 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutColumnLayout/UIComponentLayoutColumnLayout036")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0360 finish.`);
      done()
    })

    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0370
    * @tc.name        SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0370
    * @tc.desc        Set layoutWeight = -10
    */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0370', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0370 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutColumnLayout/UIComponentLayoutColumnLayout037")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0370 finish.`);
      done()
    })

    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0380
    * @tc.name        SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0380
    * @tc.desc        Set layoutWeight = null
    */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0380', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0380 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutColumnLayout/UIComponentLayoutColumnLayout038")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0380 finish.`);
      done()
    })

    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0390
    * @tc.name        SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0390
    * @tc.desc        Set layoutWeight = undefined
    */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0390', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0390 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutColumnLayout/UIComponentLayoutColumnLayout039")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0390 finish.`);
      done()
    })

    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0400
    * @tc.name        SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0400
    * @tc.desc        Set .layoutWeight(3) .layoutWeight(2)
    */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0400', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0400 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutColumnLayout/UIComponentLayoutColumnLayout040")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_LAYOUT_0400 finish.`);
      done()
    })
  })
}
