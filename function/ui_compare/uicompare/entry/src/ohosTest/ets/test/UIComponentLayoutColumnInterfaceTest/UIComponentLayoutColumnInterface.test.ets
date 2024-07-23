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

export default function UIComponentLayoutColumnInterface() {

  describe('UIComponentLayoutColumnInterface', () => {
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
      * @tc.number      SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_INTERFACE_0030
      * @tc.name        SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_INTERFACE_0030
      * @tc.desc        set alignItems = HorizontalAlign.Center
   */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_INTERFACE_0030', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_INTERFACE_0030 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutColumnInterface/UIComponentLayoutColumnInterface003")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_INTERFACE_0030 finish.`);
      done()
    })

    /*
      * @tc.number      SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_INTERFACE_0040
      * @tc.name        SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_INTERFACE_0040
      * @tc.desc        set alignItems = HorizontalAlign.End
   */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_INTERFACE_0040', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_INTERFACE_0040 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutColumnInterface/UIComponentLayoutColumnInterface004")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_INTERFACE_0040 finish.`);
      done()
    })

    /*
      * @tc.number      SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_INTERFACE_0050
      * @tc.name        SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_INTERFACE_0050
      * @tc.desc        set alignItems = HorizontalAlign.Start
   */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_INTERFACE_0050', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_INTERFACE_0050 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutColumnInterface/UIComponentLayoutColumnInterface005")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_INTERFACE_0050 finish.`);
      done()
    })

    /*
      * @tc.number      SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_INTERFACE_0060
      * @tc.name        SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_INTERFACE_0060
      * @tc.desc        set alignItems = FlexAlign.Center
   */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_INTERFACE_0060', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_INTERFACE_0060 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutColumnInterface/UIComponentLayoutColumnInterface006")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_INTERFACE_0060 finish.`);
      done()
    })

    /*
      * @tc.number      SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_INTERFACE_0070
      * @tc.name        SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_INTERFACE_0070
      * @tc.desc        set alignItems = FlexAlign.End
   */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_INTERFACE_0070', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_INTERFACE_0070 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutColumnInterface/UIComponentLayoutColumnInterface007")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_INTERFACE_0070 finish.`);
      done()
    })

    /*
      * @tc.number      SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_INTERFACE_0080
      * @tc.name        SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_INTERFACE_0080
      * @tc.desc        set alignItems = FlexAlign.SpaceAround
   */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_INTERFACE_0080', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_INTERFACE_0080 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutColumnInterface/UIComponentLayoutColumnInterface008")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_INTERFACE_0080 finish.`);
      done()
    })

    /*
      * @tc.number      SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_INTERFACE_0090
      * @tc.name        SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_INTERFACE_0090
      * @tc.desc        set justifyContent = FlexAlign.SpaceBetween
   */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_INTERFACE_0090', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_INTERFACE_0090 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutColumnInterface/UIComponentLayoutColumnInterface009")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_INTERFACE_0090 finish.`);
      done()
    })

    /*
      * @tc.number      SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_INTERFACE_0100
      * @tc.name        SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_INTERFACE_0100
      * @tc.desc        set justifyContent = FlexAlign.SpaceEvenly
   */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_INTERFACE_0100', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_INTERFACE_0100 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutColumnInterface/UIComponentLayoutColumnInterface010")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_INTERFACE_0100 finish.`);
      done()
    })

    /*
      * @tc.number      SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_INTERFACE_0110
      * @tc.name        SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_INTERFACE_0110
      * @tc.desc        set justifyContent = FlexAlign.Start
   */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_INTERFACE_0110', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_INTERFACE_0110 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutColumnInterface/UIComponentLayoutColumnInterface011")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_INTERFACE_0110 finish.`);
      done()
    })

    /*
      * @tc.number      SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_INTERFACE_0120
      * @tc.name        SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_INTERFACE_0120
      * @tc.desc        set column =  space:null
   */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_INTERFACE_0120', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_INTERFACE_0120 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutColumnInterface/UIComponentLayoutColumnInterface012")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_INTERFACE_0120 finish.`);
      done()
    })

    /*
      * @tc.number      SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_INTERFACE_0130
      * @tc.name        SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_INTERFACE_0130
      * @tc.desc        set column =  space:undefined
   */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_INTERFACE_0130', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_INTERFACE_0130 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutColumnInterface/UIComponentLayoutColumnInterface013")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_INTERFACE_0130 finish.`);
      done()
    })

    /*
      * @tc.number      SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_INTERFACE_0140
      * @tc.name        SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_INTERFACE_0140
      * @tc.desc        set column =  space:30
   */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_INTERFACE_0140', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_INTERFACE_0140 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutColumnInterface/UIComponentLayoutColumnInterface014")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_INTERFACE_0140 finish.`);
      done()
    })

    /*
       * @tc.number      SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_INTERFACE_0150
       * @tc.name        SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_INTERFACE_0150
       * @tc.desc        set column =  space:0
   */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_INTERFACE_0150', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_INTERFACE_0150 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutColumnInterface/UIComponentLayoutColumnInterface015")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_INTERFACE_0150 finish.`);
      done()
    })

    /*
       * @tc.number      SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_INTERFACE_0160
       * @tc.name        SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_INTERFACE_0160
       * @tc.desc        set column =  space:70
   */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_INTERFACE_0160', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_INTERFACE_0160 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutColumnInterface/UIComponentLayoutColumnInterface016")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_INTERFACE_0160 finish.`);
      done()
    })

    /*
      * @tc.number      SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_INTERFACE_0170
      * @tc.name        SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_INTERFACE_0170
      * @tc.desc        set column =  space:30
    */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_INTERFACE_0170', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_INTERFACE_0170 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutColumnInterface/UIComponentLayoutColumnInterface017")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_INTERFACE_0170 finish.`);
      done()
    })

    /*
      * @tc.number      SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_INTERFACE_0180
      * @tc.name        SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_INTERFACE_0180
      * @tc.desc        set column =  space:30vp
    */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_INTERFACE_0180', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_INTERFACE_0180 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutColumnInterface/UIComponentLayoutColumnInterface018")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_INTERFACE_0180 finish.`);
      done()
    })

    /*
      * @tc.number      SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_INTERFACE_0190
      * @tc.name        SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_INTERFACE_0190
      * @tc.desc        set column =  space:50px
   */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_INTERFACE_0190', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_INTERFACE_0190 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutColumnInterface/UIComponentLayoutColumnInterface019")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_INTERFACE_0190 finish.`);
      done()
    })

    /*
      * @tc.number      SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_INTERFACE_0200
      * @tc.name        SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_INTERFACE_0200
      * @tc.desc        set column = 70fp
   */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_INTERFACE_0200', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_INTERFACE_0200 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutColumnInterface/UIComponentLayoutColumnInterface020")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_INTERFACE_0200 finish.`);
      done()
    })

    /*
      * @tc.number      SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_INTERFACE_0210
      * @tc.name        SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_INTERFACE_0210
      * @tc.desc        set column =  space: 70lpx
   */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_INTERFACE_0210', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_INTERFACE_0210 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutColumnInterface/UIComponentLayoutColumnInterface021")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_INTERFACE_0210 finish.`);
      done()
    })

    /*
      * @tc.number      SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_INTERFACE_0220
      * @tc.name        SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_INTERFACE_0220
      * @tc.desc        set column =  "3" + "0"
   */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_INTERFACE_0220', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_INTERFACE_0220 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutColumnInterface/UIComponentLayoutColumnInterface022")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_INTERFACE_0220 finish.`);
      done()
    })

    /*
      * @tc.number      SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_INTERFACE_0230
      * @tc.name        SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_INTERFACE_0230
      * @tc.desc        set column =  space:fp2px(10)
   */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_INTERFACE_0230', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_INTERFACE_0230 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutColumnInterface/UIComponentLayoutColumnInterface023")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_INTERFACE_0230 finish.`);
      done()
    })

    /*
      * @tc.number      SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_INTERFACE_0240
      * @tc.name        SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_INTERFACE_0240
      * @tc.desc        set column =  space:lpx2px(10)
   */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_INTERFACE_0240', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_INTERFACE_0240 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutColumnInterface/UIComponentLayoutColumnInterface024")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_INTERFACE_0240 finish.`);
      done()
    })

    /*
      * @tc.number      SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_INTERFACE_0250
      * @tc.name        SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_INTERFACE_0250
      * @tc.desc        set column =  space:px2lpx(10)
   */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_INTERFACE_0250', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_INTERFACE_0250 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutColumnInterface/UIComponentLayoutColumnInterface025")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_INTERFACE_0250 finish.`);
      done()
    })

    /*
      * @tc.number      SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_INTERFACE_0260
      * @tc.name        SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_INTERFACE_0260
      * @tc.desc        set column =  space:px2lpx(10)
   */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_INTERFACE_0260', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_INTERFACE_0260 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutColumnInterface/UIComponentLayoutColumnInterface026")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_INTERFACE_0260 finish.`);
      done()
    })

    /*
      * @tc.number      SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_INTERFACE_0270
      * @tc.name        SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_INTERFACE_0270
      * @tc.desc        set column =  space:px2vp(10)
   */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_INTERFACE_0270', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_INTERFACE_0270 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutColumnInterface/UIComponentLayoutColumnInterface027")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_INTERFACE_0270 finish.`);
      done()
    })

    /*
      * @tc.number      SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_INTERFACE_0280
      * @tc.name        SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_INTERFACE_0280
      * @tc.desc        set column =  space:vp2px(10)
   */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_INTERFACE_0280', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_INTERFACE_0280 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutColumnInterface/UIComponentLayoutColumnInterface028")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_INTERFACE_0280 finish.`);
      done()
    })

    /*
      * @tc.number      SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_INTERFACE_0290
      * @tc.name        SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_INTERFACE_0290
      * @tc.desc        set column = space: space:"80%"
  */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_INTERFACE_0290', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_INTERFACE_0290 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutColumnInterface/UIComponentLayoutColumnInterface029")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_INTERFACE_0290 finish.`);
      done()
    })

    /*
      * @tc.number      SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_INTERFACE_0300
      * @tc.name        SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_INTERFACE_0300
      * @tc.desc        set column = space:abc
   */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_INTERFACE_0300', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_INTERFACE_0300 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutColumnInterface/UIComponentLayoutColumnInterface030")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_INTERFACE_0300 finish.`);
      done()
    })

    /*
      * @tc.number      SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_INTERFACE_0310
      * @tc.name        SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_INTERFACE_0310
      * @tc.desc        set column = space:30
   */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_INTERFACE_0310', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_INTERFACE_0310 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutColumnInterface/UIComponentLayoutColumnInterface031")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COLUMN_INTERFACE_0310 finish.`);
      done()
    })
  })
}

