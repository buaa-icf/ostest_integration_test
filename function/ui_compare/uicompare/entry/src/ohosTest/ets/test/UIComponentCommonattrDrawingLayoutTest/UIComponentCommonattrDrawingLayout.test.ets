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

export default function UIComponentCommonattrDrawingLayout() {

  describe('UIComponentCommonattrDrawingLayout', () => {
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
     * @tc.number  SUB_ACE_UI_COMPONENT_COMMONATTR_DRAWING_LAYOUTMIRRORING_0020
     * @tc.name    SUB_ACE_UI_COMPONENT_COMMONATTR_DRAWING_LAYOUTMIRRORING_0020
     * @tc.desc    position top:LengthMetrics.vp(150),end:LengthMetrics.vp(100)
     */
    it('SUB_ACE_UI_COMPONENT_COMMONATTR_DRAWING_LAYOUTMIRRORING_0020', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_COMMONATTR_DRAWING_LAYOUTMIRRORING_0020 start.`);
      Settings.createWindow("testability/pages/UIComponentCommonattrDrawingLayout/UIComponentCommonattrDrawingLayout002")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_COMMONATTR_DRAWING_LAYOUTMIRRORING_0020 finish.`);
      done()
    })

    /*
   * @tc.number  SUB_ACE_UI_COMPONENT_COMMONATTR_DRAWING_LAYOUTMIRRORING_0030
   * @tc.name    SUB_ACE_UI_COMPONENT_COMMONATTR_DRAWING_LAYOUTMIRRORING_0030
   * @tc.desc    position start:LengthMetrics.fp(50),bottom:LengthMetrics.fp(100)
   */
    it('SUB_ACE_UI_COMPONENT_COMMONATTR_DRAWING_LAYOUTMIRRORING_0030', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_COMMONATTR_DRAWING_LAYOUTMIRRORING_0030 start.`);
      Settings.createWindow("testability/pages/UIComponentCommonattrDrawingLayout/UIComponentCommonattrDrawingLayout003")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_COMMONATTR_DRAWING_LAYOUTMIRRORING_0030 finish.`);
      done()
    })

    /*
* @tc.number  SUB_ACE_UI_COMPONENT_COMMONATTR_DRAWING_LAYOUTMIRRORING_0040
* @tc.name    SUB_ACE_UI_COMPONENT_COMMONATTR_DRAWING_LAYOUTMIRRORING_0040
* @tc.desc    position end:LengthMetrics.percent(0.1),bottom:LengthMetrics.percent(0.2)
*/
    it('SUB_ACE_UI_COMPONENT_COMMONATTR_DRAWING_LAYOUTMIRRORING_0040', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_COMMONATTR_DRAWING_LAYOUTMIRRORING_0040 start.`);
      Settings.createWindow("testability/pages/UIComponentCommonattrDrawingLayout/UIComponentCommonattrDrawingLayout004")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_COMMONATTR_DRAWING_LAYOUTMIRRORING_0040 finish.`);
      done()
    })

    /*
* @tc.number  SUB_ACE_UI_COMPONENT_COMMONATTR_DRAWING_LAYOUTMIRRORING_0050
* @tc.name    SUB_ACE_UI_COMPONENT_COMMONATTR_DRAWING_LAYOUTMIRRORING_0050
* @tc.desc    position start、top、end、bottom:null
*/
    it('SUB_ACE_UI_COMPONENT_COMMONATTR_DRAWING_LAYOUTMIRRORING_0050', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_COMMONATTR_DRAWING_LAYOUTMIRRORING_0050 start.`);
      Settings.createWindow("testability/pages/UIComponentCommonattrDrawingLayout/UIComponentCommonattrDrawingLayout005")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_COMMONATTR_DRAWING_LAYOUTMIRRORING_0050 finish.`);
      done()
    })

    /*
* @tc.number  SUB_ACE_UI_COMPONENT_COMMONATTR_DRAWING_LAYOUTMIRRORING_0060
* @tc.name    SUB_ACE_UI_COMPONENT_COMMONATTR_DRAWING_LAYOUTMIRRORING_0060
* @tc.desc    position start、top、end、bottom:undefined
*/
    it('SUB_ACE_UI_COMPONENT_COMMONATTR_DRAWING_LAYOUTMIRRORING_0060', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_COMMONATTR_DRAWING_LAYOUTMIRRORING_0060 start.`);
      Settings.createWindow("testability/pages/UIComponentCommonattrDrawingLayout/UIComponentCommonattrDrawingLayout006")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_COMMONATTR_DRAWING_LAYOUTMIRRORING_0060 finish.`);
      done()
    })

    /*
* @tc.number  SUB_ACE_UI_COMPONENT_COMMONATTR_DRAWING_LAYOUTMIRRORING_0070
* @tc.name    SUB_ACE_UI_COMPONENT_COMMONATTR_DRAWING_LAYOUTMIRRORING_0070
* @tc.desc    position start:LengthMetrics.px(100),top:LengthMetrics.lpx(500)
*/
    it('SUB_ACE_UI_COMPONENT_COMMONATTR_DRAWING_LAYOUTMIRRORING_0070', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_COMMONATTR_DRAWING_LAYOUTMIRRORING_0070 start.`);
      Settings.createWindow("testability/pages/UIComponentCommonattrDrawingLayout/UIComponentCommonattrDrawingLayout007")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_COMMONATTR_DRAWING_LAYOUTMIRRORING_0070 finish.`);
      done()
    })

    /*
* @tc.number  SUB_ACE_UI_COMPONENT_COMMONATTR_DRAWING_LAYOUTMIRRORING_0080
* @tc.name    SUB_ACE_UI_COMPONENT_COMMONATTR_DRAWING_LAYOUTMIRRORING_0080
* @tc.desc    position start:LengthMetrics.px(-100),top:LengthMetrics.lpx(-50)
*/
    it('SUB_ACE_UI_COMPONENT_COMMONATTR_DRAWING_LAYOUTMIRRORING_0080', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_COMMONATTR_DRAWING_LAYOUTMIRRORING_0080 start.`);
      Settings.createWindow("testability/pages/UIComponentCommonattrDrawingLayout/UIComponentCommonattrDrawingLayout008")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_COMMONATTR_DRAWING_LAYOUTMIRRORING_0080 finish.`);
      done()
    })


    /*
* @tc.number  SUB_ACE_UI_COMPONENT_COMMONATTR_DRAWING_LAYOUTMIRRORING_0090
* @tc.name    SUB_ACE_UI_COMPONENT_COMMONATTR_DRAWING_LAYOUTMIRRORING_0090
* @tc.desc    markAnchor start: LengthMetrics.px(50), top: LengthMetrics.px(50)
*/
    it('SUB_ACE_UI_COMPONENT_COMMONATTR_DRAWING_LAYOUTMIRRORING_0090', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_COMMONATTR_DRAWING_LAYOUTMIRRORING_0090 start.`);
      Settings.createWindow("testability/pages/UIComponentCommonattrDrawingLayout/UIComponentCommonattrDrawingLayout009")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_COMMONATTR_DRAWING_LAYOUTMIRRORING_0090 finish.`);
      done()
    })

    /*
* @tc.number  SUB_ACE_UI_COMPONENT_COMMONATTR_DRAWING_LAYOUTMIRRORING_0100
* @tc.name    SUB_ACE_UI_COMPONENT_COMMONATTR_DRAWING_LAYOUTMIRRORING_0100
* @tc.desc    markAnchor start: LengthMetrics.vp(50), top: LengthMetrics.vp(50)
*/
    it('SUB_ACE_UI_COMPONENT_COMMONATTR_DRAWING_LAYOUTMIRRORING_0100', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_COMMONATTR_DRAWING_LAYOUTMIRRORING_0100 start.`);
      Settings.createWindow("testability/pages/UIComponentCommonattrDrawingLayout/UIComponentCommonattrDrawingLayout010")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_COMMONATTR_DRAWING_LAYOUTMIRRORING_0100 finish.`);
      done()
    })

    /*
* @tc.number  SUB_ACE_UI_COMPONENT_COMMONATTR_DRAWING_LAYOUTMIRRORING_0110
* @tc.name    SUB_ACE_UI_COMPONENT_COMMONATTR_DRAWING_LAYOUTMIRRORING_0110
* @tc.desc    markAnchor start: LengthMetrics.fp(50), top: LengthMetrics.fp(50)
*/
    it('SUB_ACE_UI_COMPONENT_COMMONATTR_DRAWING_LAYOUTMIRRORING_0110', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_COMMONATTR_DRAWING_LAYOUTMIRRORING_0110 start.`);
      Settings.createWindow("testability/pages/UIComponentCommonattrDrawingLayout/UIComponentCommonattrDrawingLayout011")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_COMMONATTR_DRAWING_LAYOUTMIRRORING_0110 finish.`);
      done()
    })

    /*
* @tc.number  SUB_ACE_UI_COMPONENT_COMMONATTR_DRAWING_LAYOUTMIRRORING_0120
* @tc.name    SUB_ACE_UI_COMPONENT_COMMONATTR_DRAWING_LAYOUTMIRRORING_0120
* @tc.desc    markAnchor start:LengthMetrics.percent(0.1),top:LengthMetrics.percent(0.2)
*/
    it('SUB_ACE_UI_COMPONENT_COMMONATTR_DRAWING_LAYOUTMIRRORING_0120', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_COMMONATTR_DRAWING_LAYOUTMIRRORING_0120 start.`);
      Settings.createWindow("testability/pages/UIComponentCommonattrDrawingLayout/UIComponentCommonattrDrawingLayout012")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_COMMONATTR_DRAWING_LAYOUTMIRRORING_0120 finish.`);
      done()
    })

    /*
* @tc.number  SUB_ACE_UI_COMPONENT_COMMONATTR_DRAWING_LAYOUTMIRRORING_0130
* @tc.name    SUB_ACE_UI_COMPONENT_COMMONATTR_DRAWING_LAYOUTMIRRORING_0130
* @tc.desc    start:undefined,top:undefined
*/
    it('SUB_ACE_UI_COMPONENT_COMMONATTR_DRAWING_LAYOUTMIRRORING_0130', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_COMMONATTR_DRAWING_LAYOUTMIRRORING_0130 start.`);
      Settings.createWindow("testability/pages/UIComponentCommonattrDrawingLayout/UIComponentCommonattrDrawingLayout013")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_COMMONATTR_DRAWING_LAYOUTMIRRORING_0130 finish.`);
      done()
    })

    /*
* @tc.number  SUB_ACE_UI_COMPONENT_COMMONATTR_DRAWING_LAYOUTMIRRORING_0140
* @tc.name    SUB_ACE_UI_COMPONENT_COMMONATTR_DRAWING_LAYOUTMIRRORING_0140
* @tc.desc    markAnchor start: LengthMetrics.px(-50), top: LengthMetrics.px(-50)
*/
    it('SUB_ACE_UI_COMPONENT_COMMONATTR_DRAWING_LAYOUTMIRRORING_0140', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_COMMONATTR_DRAWING_LAYOUTMIRRORING_0140 start.`);
      Settings.createWindow("testability/pages/UIComponentCommonattrDrawingLayout/UIComponentCommonattrDrawingLayout014")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_COMMONATTR_DRAWING_LAYOUTMIRRORING_0140 finish.`);
      done()
    })

    /*
* @tc.number  SUB_ACE_UI_COMPONENT_COMMONATTR_DRAWING_LAYOUTMIRRORING_0150
* @tc.name    SUB_ACE_UI_COMPONENT_COMMONATTR_DRAWING_LAYOUTMIRRORING_0150
* @tc.desc    offset start: LengthMetrics.px(50), top: LengthMetrics.px(50)
*/
    it('SUB_ACE_UI_COMPONENT_COMMONATTR_DRAWING_LAYOUTMIRRORING_0150', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_COMMONATTR_DRAWING_LAYOUTMIRRORING_0150 start.`);
      Settings.createWindow("testability/pages/UIComponentCommonattrDrawingLayout/UIComponentCommonattrDrawingLayout015")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_COMMONATTR_DRAWING_LAYOUTMIRRORING_0150 finish.`);
      done()
    })

    /*
* @tc.number  SUB_ACE_UI_COMPONENT_COMMONATTR_DRAWING_LAYOUTMIRRORING_0160
* @tc.name    SUB_ACE_UI_COMPONENT_COMMONATTR_DRAWING_LAYOUTMIRRORING_0160
* @tc.desc    offset start: LengthMetrics.fp(50), top: LengthMetrics.fp(50)
*/
    it('SUB_ACE_UI_COMPONENT_COMMONATTR_DRAWING_LAYOUTMIRRORING_0160', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_COMMONATTR_DRAWING_LAYOUTMIRRORING_0160 start.`);
      Settings.createWindow("testability/pages/UIComponentCommonattrDrawingLayout/UIComponentCommonattrDrawingLayout016")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_COMMONATTR_DRAWING_LAYOUTMIRRORING_0160 finish.`);
      done()
    })

    /*
* @tc.number  SUB_ACE_UI_COMPONENT_COMMONATTR_DRAWING_LAYOUTMIRRORING_0170
* @tc.name    SUB_ACE_UI_COMPONENT_COMMONATTR_DRAWING_LAYOUTMIRRORING_0170
* @tc.desc    offset start: LengthMetrics.vp(50), top: LengthMetrics.vp(50)
*/
    it('SUB_ACE_UI_COMPONENT_COMMONATTR_DRAWING_LAYOUTMIRRORING_0170', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_COMMONATTR_DRAWING_LAYOUTMIRRORING_0170 start.`);
      Settings.createWindow("testability/pages/UIComponentCommonattrDrawingLayout/UIComponentCommonattrDrawingLayout017")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_COMMONATTR_DRAWING_LAYOUTMIRRORING_0170 finish.`);
      done()
    })

    /*
* @tc.number  SUB_ACE_UI_COMPONENT_COMMONATTR_DRAWING_LAYOUTMIRRORING_0180
* @tc.name    SUB_ACE_UI_COMPONENT_COMMONATTR_DRAWING_LAYOUTMIRRORING_0180
* @tc.desc    offset start: undefined, top:undefined
*/
    it('SUB_ACE_UI_COMPONENT_COMMONATTR_DRAWING_LAYOUTMIRRORING_0180', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_COMMONATTR_DRAWING_LAYOUTMIRRORING_0180 start.`);
      Settings.createWindow("testability/pages/UIComponentCommonattrDrawingLayout/UIComponentCommonattrDrawingLayout018")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_COMMONATTR_DRAWING_LAYOUTMIRRORING_0180 finish.`);
      done()
    })

    /*
* @tc.number  SUB_ACE_UI_COMPONENT_COMMONATTR_DRAWING_LAYOUTMIRRORING_0190
* @tc.name    SUB_ACE_UI_COMPONENT_COMMONATTR_DRAWING_LAYOUTMIRRORING_0190
* @tc.desc    offset start:null, top: null
*/
    it('SUB_ACE_UI_COMPONENT_COMMONATTR_DRAWING_LAYOUTMIRRORING_0190', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_COMMONATTR_DRAWING_LAYOUTMIRRORING_0190 start.`);
      Settings.createWindow("testability/pages/UIComponentCommonattrDrawingLayout/UIComponentCommonattrDrawingLayout019")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_COMMONATTR_DRAWING_LAYOUTMIRRORING_0190 finish.`);
      done()
    })

    /*
* @tc.number  SUB_ACE_UI_COMPONENT_COMMONATTR_DRAWING_LAYOUTMIRRORING_0200
* @tc.name    SUB_ACE_UI_COMPONENT_COMMONATTR_DRAWING_LAYOUTMIRRORING_0200
* @tc.desc    offset start:LengthMetrics.percent(0.1),top:LengthMetrics.percent(0.2)
*/
    it('SUB_ACE_UI_COMPONENT_COMMONATTR_DRAWING_LAYOUTMIRRORING_0200', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_COMMONATTR_DRAWING_LAYOUTMIRRORING_0200 start.`);
      Settings.createWindow("testability/pages/UIComponentCommonattrDrawingLayout/UIComponentCommonattrDrawingLayout020")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_COMMONATTR_DRAWING_LAYOUTMIRRORING_0200 finish.`);
      done()
    })

    /*
* @tc.number  SUB_ACE_UI_COMPONENT_COMMONATTR_DRAWING_LAYOUTMIRRORING_0210
* @tc.name    SUB_ACE_UI_COMPONENT_COMMONATTR_DRAWING_LAYOUTMIRRORING_0210
* @tc.desc    offset start: LengthMetrics.vp(-50), top: LengthMetrics.vp(-50)
*/
    it('SUB_ACE_UI_COMPONENT_COMMONATTR_DRAWING_LAYOUTMIRRORING_0210', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_COMMONATTR_DRAWING_LAYOUTMIRRORING_0210 start.`);
      Settings.createWindow("testability/pages/UIComponentCommonattrDrawingLayout/UIComponentCommonattrDrawingLayout021")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_COMMONATTR_DRAWING_LAYOUTMIRRORING_0210 finish.`);
      done()
    })

    /*
* @tc.number  SUB_ACE_UI_COMPONENT_COMMONATTR_DRAWING_LAYOUTMIRRORING_0220
* @tc.name    SUB_ACE_UI_COMPONENT_COMMONATTR_DRAWING_LAYOUTMIRRORING_0220
* @tc.desc    set relativecontainer position
*/
    it('SUB_ACE_UI_COMPONENT_COMMONATTR_DRAWING_LAYOUTMIRRORING_0220', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_COMMONATTR_DRAWING_LAYOUTMIRRORING_0220 start.`);
      Settings.createWindow("testability/pages/UIComponentCommonattrDrawingLayout/UIComponentCommonattrDrawingLayout022")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_COMMONATTR_DRAWING_LAYOUTMIRRORING_0220 finish.`);
      done()
    })

    /*
* @tc.number  SUB_ACE_UI_COMPONENT_COMMONATTR_DRAWING_LAYOUTMIRRORING_0230
* @tc.name    SUB_ACE_UI_COMPONENT_COMMONATTR_DRAWING_LAYOUTMIRRORING_0230
* @tc.desc    set relativecontainer offset
*/
    it('SUB_ACE_UI_COMPONENT_COMMONATTR_DRAWING_LAYOUTMIRRORING_0230', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_COMMONATTR_DRAWING_LAYOUTMIRRORING_0230 start.`);
      Settings.createWindow("testability/pages/UIComponentCommonattrDrawingLayout/UIComponentCommonattrDrawingLayout023")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_COMMONATTR_DRAWING_LAYOUTMIRRORING_0230 finish.`);
      done()
    })

    /*
* @tc.number  SUB_ACE_UI_COMPONENT_COMMONATTR_DRAWING_LAYOUTMIRRORING_0240
* @tc.name    SUB_ACE_UI_COMPONENT_COMMONATTR_DRAWING_LAYOUTMIRRORING_0240
* @tc.desc    set relativecontainer markAnchor
*/
    it('SUB_ACE_UI_COMPONENT_COMMONATTR_DRAWING_LAYOUTMIRRORING_0240', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_COMMONATTR_DRAWING_LAYOUTMIRRORING_0240 start.`);
      Settings.createWindow("testability/pages/UIComponentCommonattrDrawingLayout/UIComponentCommonattrDrawingLayout024")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_COMMONATTR_DRAWING_LAYOUTMIRRORING_0240 finish.`);
      done()
    })

    /*
* @tc.number  SUB_ACE_UI_COMPONENT_COMMONATTR_DRAWING_LAYOUTMIRRORING_0250
* @tc.name    SUB_ACE_UI_COMPONENT_COMMONATTR_DRAWING_LAYOUTMIRRORING_0250
* @tc.desc    set image（position）
*/
    it('SUB_ACE_UI_COMPONENT_COMMONATTR_DRAWING_LAYOUTMIRRORING_0250', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_COMMONATTR_DRAWING_LAYOUTMIRRORING_0250 start.`);
      Settings.createWindow("testability/pages/UIComponentCommonattrDrawingLayout/UIComponentCommonattrDrawingLayout025")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_COMMONATTR_DRAWING_LAYOUTMIRRORING_0250 finish.`);
      done()
    })

    /*
* @tc.number  SUB_ACE_UI_COMPONENT_COMMONATTR_DRAWING_LAYOUTMIRRORING_0260
* @tc.name    SUB_ACE_UI_COMPONENT_COMMONATTR_DRAWING_LAYOUTMIRRORING_0260
* @tc.desc    set image（offset）
*/
    it('SUB_ACE_UI_COMPONENT_COMMONATTR_DRAWING_LAYOUTMIRRORING_0260', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_COMMONATTR_DRAWING_LAYOUTMIRRORING_0260 start.`);
      Settings.createWindow("testability/pages/UIComponentCommonattrDrawingLayout/UIComponentCommonattrDrawingLayout026")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_COMMONATTR_DRAWING_LAYOUTMIRRORING_0260 finish.`);
      done()
    })

    /*
* @tc.number  SUB_ACE_UI_COMPONENT_COMMONATTR_DRAWING_LAYOUTMIRRORING_0270
* @tc.name    SUB_ACE_UI_COMPONENT_COMMONATTR_DRAWING_LAYOUTMIRRORING_0270
* @tc.desc    set image（markAnchor）
*/
    it('SUB_ACE_UI_COMPONENT_COMMONATTR_DRAWING_LAYOUTMIRRORING_0270', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_COMMONATTR_DRAWING_LAYOUTMIRRORING_0270 start.`);
      Settings.createWindow("testability/pages/UIComponentCommonattrDrawingLayout/UIComponentCommonattrDrawingLayout027")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_COMMONATTR_DRAWING_LAYOUTMIRRORING_0270 finish.`);
      done()
    })
  })
}
