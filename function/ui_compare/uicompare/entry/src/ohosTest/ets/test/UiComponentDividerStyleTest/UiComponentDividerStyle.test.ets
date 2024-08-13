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

export default function UiComponentDividerStyle() {
  describe('UiComponentDividerStyle', () => {
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
     * @tc.number    SUB_ACE_UI_COMPONENT_DIVIDER_STYLE_0010
     * @tc.name      SUB_ACE_UI_COMPONENT_DIVIDER_STYLE_0010
     * @tc.desc      Add Diver component. Set vertical. Set vertical to true. Set vertical to false
    */
    it('SUB_ACE_UI_COMPONENT_DIVIDER_STYLE_0010', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_DIVIDER_STYLE_0010 start.`);
      Settings.createWindow("testability/pages/UiComponentDividerStyle/UiComponentDividerStyle001")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_DIVIDER_STYLE_0010 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_DIVIDER_STYLE_0020
     * @tc.name      SUB_ACE_UI_COMPONENT_DIVIDER_STYLE_0020
     * @tc.desc      Add Diver component. Set color. Do not set color. Color is default value, null, undefined, color.blue, #0000ff, rgb(0, 0, 255, 0x0000ff, referenced through resource resources, illegal string, background color
    */
    it('SUB_ACE_UI_COMPONENT_DIVIDER_STYLE_0020', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_DIVIDER_STYLE_0020 start.`);
      Settings.createWindow("testability/pages/UiComponentDividerStyle/UiComponentDividerStyle002")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_DIVIDER_STYLE_0020 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_DIVIDER_STYLE_0030
     * @tc.name      SUB_ACE_UI_COMPONENT_DIVIDER_STYLE_0030
     * @tc.desc      Add Diver component. Set strokeWidth. Do not set strokeWidth. StrokeWidth is default value, null, undefined, 5, 0, -5, '5vp', '5px', '5fp', '5lpx', '5abc'. Set strokeWidth(5). height(20). Set strokeWidth(20). height(5)
    */
    it('SUB_ACE_UI_COMPONENT_DIVIDER_STYLE_0030', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_DIVIDER_STYLE_0030 start.`);
      Settings.createWindow("testability/pages/UiComponentDividerStyle/UiComponentDividerStyle003")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_DIVIDER_STYLE_0030 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_DIVIDER_STYLE_0040
     * @tc.name      SUB_ACE_UI_COMPONENT_DIVIDER_STYLE_0040
     * @tc.desc      Add Diver component. Set lineCap, Butt, Round, Square, Default value
    */
    it('SUB_ACE_UI_COMPONENT_DIVIDER_STYLE_0040', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_DIVIDER_STYLE_0040 start.`);
      Settings.createWindow("testability/pages/UiComponentDividerStyle/UiComponentDividerStyle004")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_DIVIDER_STYLE_0040 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_DIVIDER_STYLE_0050
     * @tc.name      SUB_ACE_UI_COMPONENT_DIVIDER_STYLE_0050
     * @tc.desc      Add Diver component with vertical set to true
    */
    it('SUB_ACE_UI_COMPONENT_DIVIDER_STYLE_0050', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_DIVIDER_STYLE_0050 start.`);
      Settings.createWindow("testability/pages/UiComponentDividerStyle/UiComponentDividerStyle005")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_DIVIDER_STYLE_0050 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_DIVIDER_STYLE_0060
     * @tc.name      SUB_ACE_UI_COMPONENT_DIVIDER_STYLE_0060
     * @tc.desc      Add Diver component, pass color as null
    */
    it('SUB_ACE_UI_COMPONENT_DIVIDER_STYLE_0060', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_DIVIDER_STYLE_0060 start.`);
      Settings.createWindow("testability/pages/UiComponentDividerStyle/UiComponentDividerStyle006")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_DIVIDER_STYLE_0060 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_DIVIDER_STYLE_0070
     * @tc.name      SUB_ACE_UI_COMPONENT_DIVIDER_STYLE_0070
     * @tc.desc      Add Diver component, pass color as undefined
    */
    it('SUB_ACE_UI_COMPONENT_DIVIDER_STYLE_0070', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_DIVIDER_STYLE_0070 start.`);
      Settings.createWindow("testability/pages/UiComponentDividerStyle/UiComponentDividerStyle007")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_DIVIDER_STYLE_0070 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_DIVIDER_STYLE_0080
     * @tc.name      SUB_ACE_UI_COMPONENT_DIVIDER_STYLE_0080
     * @tc.desc      Add Diver component, pass color into Color Blue
    */
    it('SUB_ACE_UI_COMPONENT_DIVIDER_STYLE_0080', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_DIVIDER_STYLE_0080 start.`);
      Settings.createWindow("testability/pages/UiComponentDividerStyle/UiComponentDividerStyle008")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_DIVIDER_STYLE_0080 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_DIVIDER_STYLE_0090
     * @tc.name      SUB_ACE_UI_COMPONENT_DIVIDER_STYLE_0090
     * @tc.desc      Add Diver component, pass color as #0000FF
    */
    it('SUB_ACE_UI_COMPONENT_DIVIDER_STYLE_0090', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_DIVIDER_STYLE_0090 start.`);
      Settings.createWindow("testability/pages/UiComponentDividerStyle/UiComponentDividerStyle009")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_DIVIDER_STYLE_0090 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_DIVIDER_STYLE_0100
     * @tc.name      SUB_ACE_UI_COMPONENT_DIVIDER_STYLE_0100
     * @tc.desc      Add Diver component, pass color to rgb(0,0,255)
    */
    it('SUB_ACE_UI_COMPONENT_DIVIDER_STYLE_0100', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_DIVIDER_STYLE_0100 start.`);
      Settings.createWindow("testability/pages/UiComponentDividerStyle/UiComponentDividerStyle010")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_DIVIDER_STYLE_0100 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_DIVIDER_STYLE_0110
     * @tc.name      SUB_ACE_UI_COMPONENT_DIVIDER_STYLE_0110
     * @tc.desc      Add Diver component, pass color as 0x0000FF
    */
    it('SUB_ACE_UI_COMPONENT_DIVIDER_STYLE_0110', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_DIVIDER_STYLE_0110 start.`);
      Settings.createWindow("testability/pages/UiComponentDividerStyle/UiComponentDividerStyle011")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_DIVIDER_STYLE_0110 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_DIVIDER_STYLE_0120
     * @tc.name      SUB_ACE_UI_COMPONENT_DIVIDER_STYLE_0120
     * @tc.desc      Color is referenced through resource resources
    */
    it('SUB_ACE_UI_COMPONENT_DIVIDER_STYLE_0120', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_DIVIDER_STYLE_0120 start.`);
      Settings.createWindow("testability/pages/UiComponentDividerStyle/UiComponentDividerStyle012")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_DIVIDER_STYLE_0120 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_DIVIDER_STYLE_0130
     * @tc.name      SUB_ACE_UI_COMPONENT_DIVIDER_STYLE_0130
     * @tc.desc      Add Diver component, color passed in illegal string
    */
    it('SUB_ACE_UI_COMPONENT_DIVIDER_STYLE_0130', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_DIVIDER_STYLE_0130 start.`);
      Settings.createWindow("testability/pages/UiComponentDividerStyle/UiComponentDividerStyle013")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_DIVIDER_STYLE_0130 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_DIVIDER_STYLE_0140
     * @tc.name      SUB_ACE_UI_COMPONENT_DIVIDER_STYLE_0140
     * @tc.desc      Diverter sets color and background color
    */
    it('SUB_ACE_UI_COMPONENT_DIVIDER_STYLE_0140', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_DIVIDER_STYLE_0150 start.`);
      Settings.createWindow("testability/pages/UiComponentDividerStyle/UiComponentDividerStyle014")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_DIVIDER_STYLE_0140 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_DIVIDER_STYLE_0150
     * @tc.name      SUB_ACE_UI_COMPONENT_DIVIDER_STYLE_0150
     * @tc.desc      Diver sets strokeWidth to null
    */
    it('SUB_ACE_UI_COMPONENT_DIVIDER_STYLE_0150', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_DIVIDER_STYLE_0150 start.`);
      Settings.createWindow("testability/pages/UiComponentDividerStyle/UiComponentDividerStyle015")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      let strJson = getInspectorByKey('UiComponentDividerStyle015');
      Logger.info('TEST', "JSON.parse(strJson) is: " + JSON.stringify(JSON.parse(strJson)));
      Logger.info('TEST', "JSON.parse(strJson).$attrs.strokeWidth is: " + JSON.parse(strJson).$attrs.strokeWidth);
      expect(JSON.parse(strJson).$attrs.strokeWidth).assertEqual('1.00px');
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_DIVIDER_STYLE_0150 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_DIVIDER_STYLE_0160
     * @tc.name      SUB_ACE_UI_COMPONENT_DIVIDER_STYLE_0160
     * @tc.desc      Diver sets strokeWidth to undefined
    */
    it('SUB_ACE_UI_COMPONENT_DIVIDER_STYLE_0160', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_DIVIDER_STYLE_0160 start.`);
      Settings.createWindow("testability/pages/UiComponentDividerStyle/UiComponentDividerStyle016")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      let strJson = getInspectorByKey('UiComponentDividerStyle016');
      Logger.info('TEST', "JSON.parse(strJson) is: " + JSON.stringify(JSON.parse(strJson)));
      Logger.info('TEST', "JSON.parse(strJson).$attrs.strokeWidth is: " + JSON.parse(strJson).$attrs.strokeWidth);
      expect(JSON.parse(strJson).$attrs.strokeWidth).assertEqual('1.00px');
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_DIVIDER_STYLE_0160 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_DIVIDER_STYLE_0170
     * @tc.name      SUB_ACE_UI_COMPONENT_DIVIDER_STYLE_0170
     * @tc.desc      Diver sets strokeWidth to 5
    */
    it('SUB_ACE_UI_COMPONENT_DIVIDER_STYLE_0170', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_DIVIDER_STYLE_0170 start.`);
      Settings.createWindow("testability/pages/UiComponentDividerStyle/UiComponentDividerStyle017")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      let strJson = getInspectorByKey('UiComponentDividerStyle017');
      Logger.info('TEST', "JSON.parse(strJson) is: " + JSON.stringify(JSON.parse(strJson)));
      Logger.info('TEST', "JSON.parse(strJson).$attrs.strokeWidth is: " + JSON.parse(strJson).$attrs.strokeWidth);
      // expect(JSON.parse(strJson).$attrs.strokeWidth).assertEqual('1.00px');
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_DIVIDER_STYLE_0170 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_DIVIDER_STYLE_0180
     * @tc.name      SUB_ACE_UI_COMPONENT_DIVIDER_STYLE_0180
     * @tc.desc      Diver sets strokeWidth to 0
    */
    it('SUB_ACE_UI_COMPONENT_DIVIDER_STYLE_0180', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_DIVIDER_STYLE_0180 start.`);
      Settings.createWindow("testability/pages/UiComponentDividerStyle/UiComponentDividerStyle018")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      let strJson = getInspectorByKey('UiComponentDividerStyle018');
      Logger.info('TEST', "JSON.parse(strJson) is: " + JSON.stringify(JSON.parse(strJson)));
      Logger.info('TEST', "JSON.parse(strJson).$attrs.strokeWidth is: " + JSON.parse(strJson).$attrs.strokeWidth);
      // expect(JSON.parse(strJson).$attrs.strokeWidth).assertEqual('1.00px');
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_DIVIDER_STYLE_0180 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_DIVIDER_STYLE_0190
     * @tc.name      SUB_ACE_UI_COMPONENT_DIVIDER_STYLE_0190
     * @tc.desc      Diver sets the strokeWidth to -5
    */
    it('SUB_ACE_UI_COMPONENT_DIVIDER_STYLE_0190', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_DIVIDER_STYLE_0190 start.`);
      Settings.createWindow("testability/pages/UiComponentDividerStyle/UiComponentDividerStyle019")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      let strJson = getInspectorByKey('UiComponentDividerStyle019');
      Logger.info('TEST', "JSON.parse(strJson) is: " + JSON.stringify(JSON.parse(strJson)));
      Logger.info('TEST', "JSON.parse(strJson).$attrs.strokeWidth is: " + JSON.parse(strJson).$attrs.strokeWidth);
      // expect(JSON.parse(strJson).$attrs.strokeWidth).assertEqual('1.00px');
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_DIVIDER_STYLE_0190 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_DIVIDER_STYLE_0200
     * @tc.name      SUB_ACE_UI_COMPONENT_DIVIDER_STYLE_0200
     * @tc.desc      Diver sets strokeWidth to "5vp"
    */
    it('SUB_ACE_UI_COMPONENT_DIVIDER_STYLE_0200', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_DIVIDER_STYLE_0200 start.`);
      Settings.createWindow("testability/pages/UiComponentDividerStyle/UiComponentDividerStyle020")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      let strJson = getInspectorByKey('UiComponentDividerStyle020');
      Logger.info('TEST', "JSON.parse(strJson) is: " + JSON.stringify(JSON.parse(strJson)));
      Logger.info('TEST', "JSON.parse(strJson).$attrs.strokeWidth is: " + JSON.parse(strJson).$attrs.strokeWidth);
      expect(JSON.parse(strJson).$attrs.strokeWidth).assertEqual('5.00vp');
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_DIVIDER_STYLE_0200 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_DIVIDER_STYLE_0210
     * @tc.name      SUB_ACE_UI_COMPONENT_DIVIDER_STYLE_0210
     * @tc.desc      Diver sets the strokeWidth to "5px"
    */
    it('SUB_ACE_UI_COMPONENT_DIVIDER_STYLE_0210', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_DIVIDER_STYLE_0210 start.`);
      Settings.createWindow("testability/pages/UiComponentDividerStyle/UiComponentDividerStyle021")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      let strJson = getInspectorByKey('UiComponentDividerStyle021');
      Logger.info('TEST', "JSON.parse(strJson) is: " + JSON.stringify(JSON.parse(strJson)));
      Logger.info('TEST', "JSON.parse(strJson).$attrs.strokeWidth is: " + JSON.parse(strJson).$attrs.strokeWidth);
      expect(JSON.parse(strJson).$attrs.strokeWidth).assertEqual('5.00px');
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_DIVIDER_STYLE_0210 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_DIVIDER_STYLE_0220
     * @tc.name      SUB_ACE_UI_COMPONENT_DIVIDER_STYLE_0220
     * @tc.desc      Diver sets strokeWidth to "5fp"
    */
    it('SUB_ACE_UI_COMPONENT_DIVIDER_STYLE_0220', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_DIVIDER_STYLE_0220 start.`);
      Settings.createWindow("testability/pages/UiComponentDividerStyle/UiComponentDividerStyle022")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      let strJson = getInspectorByKey('UiComponentDividerStyle022');
      Logger.info('TEST', "JSON.parse(strJson) is: " + JSON.stringify(JSON.parse(strJson)));
      Logger.info('TEST', "JSON.parse(strJson).$attrs.strokeWidth is: " + JSON.parse(strJson).$attrs.strokeWidth);
      expect(JSON.parse(strJson).$attrs.strokeWidth).assertEqual('5.00fp');
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_DIVIDER_STYLE_0220 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_DIVIDER_STYLE_0230
     * @tc.name      SUB_ACE_UI_COMPONENT_DIVIDER_STYLE_0230
     * @tc.desc      Diver sets strokeWidth to "5lpx"
    */
    it('SUB_ACE_UI_COMPONENT_DIVIDER_STYLE_0230', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_DIVIDER_STYLE_0230 start.`);
      Settings.createWindow("testability/pages/UiComponentDividerStyle/UiComponentDividerStyle023")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      let strJson = getInspectorByKey('UiComponentDividerStyle023');
      Logger.info('TEST', "JSON.parse(strJson) is: " + JSON.stringify(JSON.parse(strJson)));
      Logger.info('TEST', "JSON.parse(strJson).$attrs.strokeWidth is: " + JSON.parse(strJson).$attrs.strokeWidth);
      expect(JSON.parse(strJson).$attrs.strokeWidth).assertEqual('5.00lpx');
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_DIVIDER_STYLE_0230 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_DIVIDER_STYLE_0240
     * @tc.name      SUB_ACE_UI_COMPONENT_DIVIDER_STYLE_0240
     * @tc.desc      Diver sets strokeWidth to "5abc"
    */
    it('SUB_ACE_UI_COMPONENT_DIVIDER_STYLE_0240', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_DIVIDER_STYLE_0240 start.`);
      Settings.createWindow("testability/pages/UiComponentDividerStyle/UiComponentDividerStyle024")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      let strJson = getInspectorByKey('UiComponentDividerStyle024');
      Logger.info('TEST', "JSON.parse(strJson) is: " + JSON.stringify(JSON.parse(strJson)));
      Logger.info('TEST', "JSON.parse(strJson).$attrs.strokeWidth is: " + JSON.parse(strJson).$attrs.strokeWidth);
      expect(JSON.parse(strJson).$attrs.strokeWidth).assertEqual('1.00px');
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_DIVIDER_STYLE_0240 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_DIVIDER_STYLE_0250
     * @tc.name      SUB_ACE_UI_COMPONENT_DIVIDER_STYLE_0250
     * @tc.desc      Diver setting strokeWidth (5). height (20)
    */
    it('SUB_ACE_UI_COMPONENT_DIVIDER_STYLE_0250', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_DIVIDER_STYLE_0250 start.`);
      Settings.createWindow("testability/pages/UiComponentDividerStyle/UiComponentDividerStyle025")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      let strJson = getInspectorByKey('UiComponentDividerStyle025');
      Logger.info('TEST', "JSON.parse(strJson) is: " + JSON.stringify(JSON.parse(strJson)));
      Logger.info('TEST', "JSON.parse(strJson).$attrs.strokeWidth is: " + JSON.parse(strJson).$attrs.strokeWidth);
      // expect(JSON.parse(strJson).$attrs.strokeWidth).assertEqual(5);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_DIVIDER_STYLE_0250 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_DIVIDER_STYLE_0260
     * @tc.name      SUB_ACE_UI_COMPONENT_DIVIDER_STYLE_0260
     * @tc.desc      The width of the Divider dividing line exceeds the general attribute setting, strokeWidth(20).height(6)
    */
    it('SUB_ACE_UI_COMPONENT_DIVIDER_STYLE_0260', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_DIVIDER_STYLE_0260 start.`);
      Settings.createWindow("testability/pages/UiComponentDividerStyle/UiComponentDividerStyle026")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      let strJson = getInspectorByKey('UiComponentDividerStyle026');
      Logger.info('TEST', "JSON.parse(strJson) is: " + JSON.stringify(JSON.parse(strJson)));
      Logger.info('TEST', "JSON.parse(strJson).$attrs.strokeWidth is: " + JSON.parse(strJson).$attrs.strokeWidth);
      // expect(JSON.parse(strJson).$attrs.strokeWidth).assertEqual(5);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_DIVIDER_STYLE_0260 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_DIVIDER_STYLE_0270
     * @tc.name      SUB_ACE_UI_COMPONENT_DIVIDER_STYLE_0270
     * @tc.desc      Diver sets lineCap to LineCapStyle Round
    */
    it('SUB_ACE_UI_COMPONENT_DIVIDER_STYLE_0270', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_DIVIDER_STYLE_0270 start.`);
      Settings.createWindow("testability/pages/UiComponentDividerStyle/UiComponentDividerStyle027")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      let strJson = getInspectorByKey('UiComponentDividerStyle027');
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_DIVIDER_STYLE_0270 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_DIVIDER_STYLE_0280
     * @tc.name      SUB_ACE_UI_COMPONENT_DIVIDER_STYLE_0280
     * @tc.desc      Diver sets lineCap to LineCapStyle Square
    */
    it('SUB_ACE_UI_COMPONENT_DIVIDER_STYLE_0280', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_DIVIDER_STYLE_0280 start.`);
      Settings.createWindow("testability/pages/UiComponentDividerStyle/UiComponentDividerStyle028")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      let strJson = getInspectorByKey('UiComponentDividerStyle028');
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_DIVIDER_STYLE_0280 finish.`);
      done()
    })
  })
}
