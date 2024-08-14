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

export default function UiComponentRowcolumnSidebarcontainerInterface() {

  describe('UiComponentRowcolumnSidebarcontainerInterface', () => {
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
     * @tc.number    SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_INTERFACE_0180
     * @tc.name      SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_INTERFACE_0180
     * @tc.desc      Set the ControlButton property, set two parameters for icon, and fill in both shown and hidden
    */
    it('SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_INTERFACE_0180', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_INTERFACE_0180 start.`);
      Settings.createWindow("testability/pages/UiComponentRowcolumnSidebarcontainerInterface/UiComponentRowcolumnSidebarcontainerInterface018")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_INTERFACE_0180 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_INTERFACE_0190
     * @tc.name      SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_INTERFACE_0190
     * @tc.desc      Set the ControlButton property, icon supports relative path referencing of images
    */
    it('SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_INTERFACE_0190', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_INTERFACE_0190 start.`);
      Settings.createWindow("testability/pages/UiComponentRowcolumnSidebarcontainerInterface/UiComponentRowcolumnSidebarcontainerInterface019")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_INTERFACE_0190 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_INTERFACE_0200
     * @tc.name      SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_INTERFACE_0200
     * @tc.desc      Set the ControlButton property, icon supports referencing network images
    */
    it('SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_INTERFACE_0200', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_INTERFACE_0200 start.`);
      Settings.createWindow("testability/pages/UiComponentRowcolumnSidebarcontainerInterface/UiComponentRowcolumnSidebarcontainerInterface020")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_INTERFACE_0200 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_INTERFACE_0210
     * @tc.name      SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_INTERFACE_0210
     * @tc.desc      Set the ControlButton property, icon introduces multiple formats of images
    */
    it('SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_INTERFACE_0210', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_INTERFACE_0210 start.`);
      Settings.createWindow("testability/pages/UiComponentRowcolumnSidebarcontainerInterface/UiComponentRowcolumnSidebarcontainerInterface021")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_INTERFACE_0210 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_INTERFACE_0220
     * @tc.name      SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_INTERFACE_0220
     * @tc.desc      Set the ControlButton property and use $r to reference the image for the icon
    */
    it('SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_INTERFACE_0220', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_INTERFACE_0220 start.`);
      Settings.createWindow("testability/pages/UiComponentRowcolumnSidebarcontainerInterface/UiComponentRowcolumnSidebarcontainerInterface022")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_INTERFACE_0220 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_INTERFACE_0230
     * @tc.name      SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_INTERFACE_0230
     * @tc.desc      Set the ControlButton property and use $rawfile to reference the image for the icon
    */
    it('SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_INTERFACE_0230', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_INTERFACE_0230 start.`);
      Settings.createWindow("testability/pages/UiComponentRowcolumnSidebarcontainerInterface/UiComponentRowcolumnSidebarcontainerInterface023")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_INTERFACE_0230 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_INTERFACE_0240
     * @tc.name      SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_INTERFACE_0240
     * @tc.desc      Set the ControlButton property, use $r to reference multiple formats of images for icons
    */
    it('SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_INTERFACE_0240', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_INTERFACE_0240 start.`);
      Settings.createWindow("testability/pages/UiComponentRowcolumnSidebarcontainerInterface/UiComponentRowcolumnSidebarcontainerInterface024")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_INTERFACE_0240 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_INTERFACE_0260
     * @tc.name      SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_INTERFACE_0260
     * @tc.desc      Set the ControlButton property, default value for icon
    */
    it('SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_INTERFACE_0260', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_INTERFACE_0260 start.`);
      Settings.createWindow("testability/pages/UiComponentRowcolumnSidebarcontainerInterface/UiComponentRowcolumnSidebarcontainerInterface026")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_INTERFACE_0260 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_INTERFACE_0750
     * @tc.name      SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_INTERFACE_0750
     * @tc.desc      Set divider style, null
    */
    it('SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_INTERFACE_0750', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_INTERFACE_0750 start.`);
      Settings.createWindow("testability/pages/UiComponentRowcolumnSidebarcontainerInterface/UiComponentRowcolumnSidebarcontainerInterface075")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_INTERFACE_0750 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_INTERFACE_0760
     * @tc.name      SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_INTERFACE_0760
     * @tc.desc      Set the divider style, the width of the dividing line is strokeWidth, and the number value is 0
    */
    it('SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_INTERFACE_0760', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_INTERFACE_0760 start.`);
      Settings.createWindow("testability/pages/UiComponentRowcolumnSidebarcontainerInterface/UiComponentRowcolumnSidebarcontainerInterface076")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      let strJson = getInspectorByKey('UiComponentRowcolumnSidebarcontainerInterface076');
      Logger.info('TEST', "JSON.parse(strJson) is: " + JSON.stringify(JSON.parse(strJson)));
      Logger.info('TEST', "JSON.parse(strJson).$attrs.divider.strokeWidth is: " + JSON.parse(JSON.parse(strJson).$attrs.divider).strokeWidth);
      expect(JSON.parse(JSON.parse(strJson).$attrs.divider).strokeWidth).assertEqual('0.00vp');
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_INTERFACE_0760 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_INTERFACE_0770
     * @tc.name      SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_INTERFACE_0770
     * @tc.desc      Set the divider style, the width of the dividing line is strokeWidth, and the number value is -10
    */
    it('SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_INTERFACE_0770', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_INTERFACE_0770 start.`);
      Settings.createWindow("testability/pages/UiComponentRowcolumnSidebarcontainerInterface/UiComponentRowcolumnSidebarcontainerInterface077")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      let strJson = getInspectorByKey('UiComponentRowcolumnSidebarcontainerInterface077');
      Logger.info('TEST', "JSON.parse(strJson) is: " + JSON.stringify(JSON.parse(strJson)));
      Logger.info('TEST', "JSON.parse(strJson).$attrs.divider.strokeWidth is: " + JSON.parse(JSON.parse(strJson).$attrs.divider).strokeWidth);
      expect(JSON.parse(JSON.parse(strJson).$attrs.divider).strokeWidth).assertEqual('1.00vp');
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_INTERFACE_0770 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_INTERFACE_0780
     * @tc.name      SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_INTERFACE_0780
     * @tc.desc      Set the divider style with a StrokeWidth dividing line width and a number value of 10
    */
    it('SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_INTERFACE_0780', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_INTERFACE_0780 start.`);
      Settings.createWindow("testability/pages/UiComponentRowcolumnSidebarcontainerInterface/UiComponentRowcolumnSidebarcontainerInterface078")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_INTERFACE_0780 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_INTERFACE_0790
     * @tc.name      SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_INTERFACE_0790
     * @tc.desc      Set the divider style, the width of the dividing line is strokeWidth, and the string value is "0"
    */
    it('SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_INTERFACE_0790', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_INTERFACE_0790 start.`);
      Settings.createWindow("testability/pages/UiComponentRowcolumnSidebarcontainerInterface/UiComponentRowcolumnSidebarcontainerInterface079")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      let strJson = getInspectorByKey('UiComponentRowcolumnSidebarcontainerInterface079');
      Logger.info('TEST', "JSON.parse(strJson) is: " + JSON.stringify(JSON.parse(strJson)));
      Logger.info('TEST', "JSON.parse(strJson).$attrs.divider.strokeWidth is: " + JSON.parse(JSON.parse(strJson).$attrs.divider).strokeWidth);
      expect(JSON.parse(JSON.parse(strJson).$attrs.divider).strokeWidth).assertEqual('0.00vp');
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_INTERFACE_0790 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_INTERFACE_0800
     * @tc.name      SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_INTERFACE_0800
     * @tc.desc      Set the divider style, the width of the dividing line is strokeWidth, and the string value is "-10"
    */
    it('SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_INTERFACE_0800', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_INTERFACE_0800 start.`);
      Settings.createWindow("testability/pages/UiComponentRowcolumnSidebarcontainerInterface/UiComponentRowcolumnSidebarcontainerInterface080")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      let strJson = getInspectorByKey('UiComponentRowcolumnSidebarcontainerInterface080');
      Logger.info('TEST', "JSON.parse(strJson) is: " + JSON.stringify(JSON.parse(strJson)));
      Logger.info('TEST', "JSON.parse(strJson).$attrs.divider.strokeWidth is: " + JSON.parse(JSON.parse(strJson).$attrs.divider).strokeWidth);
      expect(JSON.parse(JSON.parse(strJson).$attrs.divider).strokeWidth).assertEqual('1.00vp');
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_INTERFACE_0800 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_INTERFACE_0810
     * @tc.name      SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_INTERFACE_0810
     * @tc.desc      Set the divider style, the width of the dividing line is strokeWidth, and the string value is "10"
    */
    it('SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_INTERFACE_0810', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_INTERFACE_0810 start.`);
      Settings.createWindow("testability/pages/UiComponentRowcolumnSidebarcontainerInterface/UiComponentRowcolumnSidebarcontainerInterface081")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      let strJson = getInspectorByKey('UiComponentRowcolumnSidebarcontainerInterface081');
      Logger.info('TEST', "JSON.parse(strJson) is: " + JSON.stringify(JSON.parse(strJson)));
      Logger.info('TEST', "JSON.parse(strJson).$attrs.divider.strokeWidth is: " + JSON.parse(JSON.parse(strJson).$attrs.divider).strokeWidth);
      expect(JSON.parse(JSON.parse(strJson).$attrs.divider).strokeWidth).assertEqual('10.00vp');
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_INTERFACE_0810 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_INTERFACE_0820
     * @tc.name      SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_INTERFACE_0820
     * @tc.desc      Set the divider style, stride width of the dividing line, and string value of "10vp"
    */
    it('SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_INTERFACE_0820', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_INTERFACE_0820 start.`);
      Settings.createWindow("testability/pages/UiComponentRowcolumnSidebarcontainerInterface/UiComponentRowcolumnSidebarcontainerInterface082")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      let strJson = getInspectorByKey('UiComponentRowcolumnSidebarcontainerInterface082');
      Logger.info('TEST', "JSON.parse(strJson) is: " + JSON.stringify(JSON.parse(strJson)));
      Logger.info('TEST', "JSON.parse(strJson).$attrs.divider.strokeWidth is: " + JSON.parse(JSON.parse(strJson).$attrs.divider).strokeWidth);
      expect(JSON.parse(JSON.parse(strJson).$attrs.divider).strokeWidth).assertEqual('10.00vp');
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_INTERFACE_0820 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_INTERFACE_0830
     * @tc.name      SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_INTERFACE_0830
     * @tc.desc      Set the divider style, the width of the dividing line is strokeWidth, and the string value is "10fp"
    */
    it('SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_INTERFACE_0830', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_INTERFACE_0830 start.`);
      Settings.createWindow("testability/pages/UiComponentRowcolumnSidebarcontainerInterface/UiComponentRowcolumnSidebarcontainerInterface083")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      let strJson = getInspectorByKey('UiComponentRowcolumnSidebarcontainerInterface083');
      Logger.info('TEST', "JSON.parse(strJson) is: " + JSON.stringify(JSON.parse(strJson)));
      Logger.info('TEST', "JSON.parse(strJson).$attrs.divider.strokeWidth is: " + JSON.parse(JSON.parse(strJson).$attrs.divider).strokeWidth);
      expect(JSON.parse(JSON.parse(strJson).$attrs.divider).strokeWidth).assertEqual('10.00fp');
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_INTERFACE_0830 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_INTERFACE_0840
     * @tc.name      SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_INTERFACE_0840
     * @tc.desc      Set the divider style, the width of the dividing line is strokeWidth, and the string value is "10lpx"
    */
    it('SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_INTERFACE_0840', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_INTERFACE_0840 start.`);
      Settings.createWindow("testability/pages/UiComponentRowcolumnSidebarcontainerInterface/UiComponentRowcolumnSidebarcontainerInterface084")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      let strJson = getInspectorByKey('UiComponentRowcolumnSidebarcontainerInterface084');
      Logger.info('TEST', "JSON.parse(strJson) is: " + JSON.stringify(JSON.parse(strJson)));
      Logger.info('TEST', "JSON.parse(strJson).$attrs.divider.strokeWidth is: " + JSON.parse(JSON.parse(strJson).$attrs.divider).strokeWidth);
      expect(JSON.parse(JSON.parse(strJson).$attrs.divider).strokeWidth).assertEqual('10.00lpx');
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_INTERFACE_0840 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_INTERFACE_0850
     * @tc.name      SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_INTERFACE_0850
     * @tc.desc      Set the divider style, stride width of the dividing line, and string value of "10px"
    */
    it('SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_INTERFACE_0850', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_INTERFACE_0850 start.`);
      Settings.createWindow("testability/pages/UiComponentRowcolumnSidebarcontainerInterface/UiComponentRowcolumnSidebarcontainerInterface085")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      let strJson = getInspectorByKey('UiComponentRowcolumnSidebarcontainerInterface085');
      Logger.info('TEST', "JSON.parse(strJson) is: " + JSON.stringify(JSON.parse(strJson)));
      Logger.info('TEST', "JSON.parse(strJson).$attrs.divider.strokeWidth is: " + JSON.parse(JSON.parse(strJson).$attrs.divider).strokeWidth);
      expect(JSON.parse(JSON.parse(strJson).$attrs.divider).strokeWidth).assertEqual('10.00px');
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_INTERFACE_0850 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_INTERFACE_0860
     * @tc.name      SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_INTERFACE_0860
     * @tc.desc      Set the divider style, the width of the dividing line is strokeWidth, and the string value is "sdfsdf"
    */
    it('SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_INTERFACE_0860', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_INTERFACE_0860 start.`);
      Settings.createWindow("testability/pages/UiComponentRowcolumnSidebarcontainerInterface/UiComponentRowcolumnSidebarcontainerInterface086")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      let strJson = getInspectorByKey('UiComponentRowcolumnSidebarcontainerInterface086');
      Logger.info('TEST', "JSON.parse(strJson) is: " + JSON.stringify(JSON.parse(strJson)));
      Logger.info('TEST', "JSON.parse(strJson).$attrs.divider.strokeWidth is: " + JSON.parse(JSON.parse(strJson).$attrs.divider).strokeWidth);
      expect(JSON.parse(JSON.parse(strJson).$attrs.divider).strokeWidth).assertEqual('1.00vp');
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_INTERFACE_0860 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_INTERFACE_0870
     * @tc.name      SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_INTERFACE_0870
     * @tc.desc      Set the divider style, the width of the dividing line is strokeWidth, and the string value is "100dd"
    */
    it('SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_INTERFACE_0870', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_INTERFACE_0870 start.`);
      Settings.createWindow("testability/pages/UiComponentRowcolumnSidebarcontainerInterface/UiComponentRowcolumnSidebarcontainerInterface087")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      let strJson = getInspectorByKey('UiComponentRowcolumnSidebarcontainerInterface087');
      Logger.info('TEST', "JSON.parse(strJson) is: " + JSON.stringify(JSON.parse(strJson)));
      Logger.info('TEST', "JSON.parse(strJson).$attrs.divider.strokeWidth is: " + JSON.parse(JSON.parse(strJson).$attrs.divider).strokeWidth);
      expect(JSON.parse(JSON.parse(strJson).$attrs.divider).strokeWidth).assertEqual('1.00vp');
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_INTERFACE_0870 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_INTERFACE_0880
     * @tc.name      SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_INTERFACE_0880
     * @tc.desc      Split line width strokeWidth, Resource type, create a new JSON file of type string in the base ->element directory
    */
    it('SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_INTERFACE_0880', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_INTERFACE_0880 start.`);
      Settings.createWindow("testability/pages/UiComponentRowcolumnSidebarcontainerInterface/UiComponentRowcolumnSidebarcontainerInterface088")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      let strJson = getInspectorByKey('UiComponentRowcolumnSidebarcontainerInterface088');
      Logger.info('TEST', "JSON.parse(strJson) is: " + JSON.stringify(JSON.parse(strJson)));
      Logger.info('TEST', "JSON.parse(strJson).$attrs.divider.strokeWidth is: " + JSON.parse(JSON.parse(strJson).$attrs.divider).strokeWidth);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_INTERFACE_0880 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_INTERFACE_0890
     * @tc.name      SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_INTERFACE_0890
     * @tc.desc      Split line width strokeWidth, Resource type, create a JSON file of type other than string or float in the base ->element directory
    */
    it('SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_INTERFACE_0890', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_INTERFACE_0890 start.`);
      Settings.createWindow("testability/pages/UiComponentRowcolumnSidebarcontainerInterface/UiComponentRowcolumnSidebarcontainerInterface089")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      let strJson = getInspectorByKey('UiComponentRowcolumnSidebarcontainerInterface089');
      Logger.info('TEST', "JSON.parse(strJson) is: " + JSON.stringify(JSON.parse(strJson)));
      Logger.info('TEST', "JSON.parse(strJson).$attrs.divider.strokeWidth is: " + JSON.parse(JSON.parse(strJson).$attrs.divider).strokeWidth);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_INTERFACE_0890 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_INTERFACE_0900
     * @tc.name      SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_INTERFACE_0900
     * @tc.desc      Split line width strokeWidth, Resource type, create a JSON file of type float in the base ->element directory
    */
    it('SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_INTERFACE_0900', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_INTERFACE_0900 start.`);
      Settings.createWindow("testability/pages/UiComponentRowcolumnSidebarcontainerInterface/UiComponentRowcolumnSidebarcontainerInterface090")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      let strJson = getInspectorByKey('UiComponentRowcolumnSidebarcontainerInterface090');
      Logger.info('TEST', "JSON.parse(strJson) is: " + JSON.stringify(JSON.parse(strJson)));
      Logger.info('TEST', "JSON.parse(strJson).$attrs.divider.strokeWidth is: " + JSON.parse(JSON.parse(strJson).$attrs.divider).strokeWidth);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_INTERFACE_0900 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_INTERFACE_0910
     * @tc.name      SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_INTERFACE_0910
     * @tc.desc      Line width of the dividing line strokeWidth, Resource type, $rawfile reference
    */
    it('SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_INTERFACE_0910', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_INTERFACE_0910 start.`);
      Settings.createWindow("testability/pages/UiComponentRowcolumnSidebarcontainerInterface/UiComponentRowcolumnSidebarcontainerInterface091")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      let strJson = getInspectorByKey('UiComponentRowcolumnSidebarcontainerInterface091');
      Logger.info('TEST', "JSON.parse(strJson) is: " + JSON.stringify(JSON.parse(strJson)));
      Logger.info('TEST', "JSON.parse(strJson).$attrs.divider.strokeWidth is: " + JSON.parse(JSON.parse(strJson).$attrs.divider).strokeWidth);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_INTERFACE_0910 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_INTERFACE_0920
     * @tc.name      SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_INTERFACE_0920
     * @tc.desc      Set the divider style, split line color, and set the value Color Blue
    */
    it('SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_INTERFACE_0920', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_INTERFACE_0920 start.`);
      Settings.createWindow("testability/pages/UiComponentRowcolumnSidebarcontainerInterface/UiComponentRowcolumnSidebarcontainerInterface092")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      let strJson = getInspectorByKey('UiComponentRowcolumnSidebarcontainerInterface092');
      Logger.info('TEST', "JSON.parse(strJson) is: " + JSON.stringify(JSON.parse(strJson)));
      Logger.info('TEST', "JSON.parse(strJson).$attrs.divider.strokeWidth is: " + JSON.parse(JSON.parse(strJson).$attrs.divider).strokeWidth);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_INTERFACE_0920 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_INTERFACE_0930
     * @tc.name      SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_INTERFACE_0930
     * @tc.desc      Set the divider style, the color of the dividing line, and set the value to "# fc0303"
    */
    it('SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_INTERFACE_0930', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_INTERFACE_0930 start.`);
      Settings.createWindow("testability/pages/UiComponentRowcolumnSidebarcontainerInterface/UiComponentRowcolumnSidebarcontainerInterface093")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      let strJson = getInspectorByKey('UiComponentRowcolumnSidebarcontainerInterface093');
      Logger.info('TEST', "JSON.parse(strJson) is: " + JSON.stringify(JSON.parse(strJson)));
      Logger.info('TEST', "JSON.parse(strJson).$attrs.divider.strokeWidth is: " + JSON.parse(JSON.parse(strJson).$attrs.divider).strokeWidth);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_INTERFACE_0930 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_INTERFACE_0940
     * @tc.name      SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_INTERFACE_0940
     * @tc.desc      Set the divider style, dividing line color, and set the value 0xff0000
    */
    it('SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_INTERFACE_0940', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_INTERFACE_0940 start.`);
      Settings.createWindow("testability/pages/UiComponentRowcolumnSidebarcontainerInterface/UiComponentRowcolumnSidebarcontainerInterface094")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      let strJson = getInspectorByKey('UiComponentRowcolumnSidebarcontainerInterface094');
      Logger.info('TEST', "JSON.parse(strJson) is: " + JSON.stringify(JSON.parse(strJson)));
      Logger.info('TEST', "JSON.parse(strJson).$attrs.divider.strokeWidth is: " + JSON.parse(JSON.parse(strJson).$attrs.divider).strokeWidth);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_INTERFACE_0940 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_INTERFACE_0950
     * @tc.name      SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_INTERFACE_0950
     * @tc.desc      Set the divider style, dividing line color, and set the value rgb (2, 184, 17)
    */
    it('SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_INTERFACE_0950', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_INTERFACE_0950 start.`);
      Settings.createWindow("testability/pages/UiComponentRowcolumnSidebarcontainerInterface/UiComponentRowcolumnSidebarcontainerInterface095")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      let strJson = getInspectorByKey('UiComponentRowcolumnSidebarcontainerInterface095');
      Logger.info('TEST', "JSON.parse(strJson) is: " + JSON.stringify(JSON.parse(strJson)));
      Logger.info('TEST', "JSON.parse(strJson).$attrs.divider.strokeWidth is: " + JSON.parse(JSON.parse(strJson).$attrs.divider).strokeWidth);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_INTERFACE_0950 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_INTERFACE_0960
     * @tc.name      SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_INTERFACE_0960
     * @tc.desc      Set the divider style, split line color, and set the value resource reference app.color Pink
    */
    it('SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_INTERFACE_0960', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_INTERFACE_0960 start.`);
      Settings.createWindow("testability/pages/UiComponentRowcolumnSidebarcontainerInterface/UiComponentRowcolumnSidebarcontainerInterface096")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      let strJson = getInspectorByKey('UiComponentRowcolumnSidebarcontainerInterface096');
      Logger.info('TEST', "JSON.parse(strJson) is: " + JSON.stringify(JSON.parse(strJson)));
      Logger.info('TEST', "JSON.parse(strJson).$attrs.divider.strokeWidth is: " + JSON.parse(JSON.parse(strJson).$attrs.divider).strokeWidth);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_INTERFACE_0960 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_INTERFACE_0970
     * @tc.name      SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_INTERFACE_0970
     * @tc.desc      Set divider style, dividing line color, optional, default value # 000000 plus 3% transparency
    */
    it('SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_INTERFACE_0970', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_INTERFACE_0970 start.`);
      Settings.createWindow("testability/pages/UiComponentRowcolumnSidebarcontainerInterface/UiComponentRowcolumnSidebarcontainerInterface097")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      let strJson = getInspectorByKey('UiComponentRowcolumnSidebarcontainerInterface097');
      Logger.info('TEST', "JSON.parse(strJson) is: " + JSON.stringify(JSON.parse(strJson)));
      Logger.info('TEST', "JSON.parse(strJson).$attrs.divider.color is: " + JSON.parse(JSON.parse(strJson).$attrs.divider).color);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_INTERFACE_0970 finish.`);
      done()
    })
  })
}
