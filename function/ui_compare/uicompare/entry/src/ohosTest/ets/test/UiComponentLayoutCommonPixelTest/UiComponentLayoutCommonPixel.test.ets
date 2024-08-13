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

export default function UiComponentLayoutCommonPixel() {
  describe('UiComponentLayoutCommonPixel', () => {
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
     * @tc.number    SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0010
     * @tc.name      SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0010
     * @tc.desc      Set the columnsTemplate of the grid component to 1 line, set the GridItem to different floating-point numbers for width and height, and check if there are any pixel gaps in the layout
    */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0010', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0010 start.`);
      Settings.createWindow("testability/pages/UiComponentLayoutCommonPixel/UiComponentLayoutCommonPixel001")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0010 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0020
     * @tc.name      SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0020
     * @tc.desc      Set the columnsTemplate of the grid component to multiple rows,
                     set the GridItem to different floating-point numbers for width and height, and check if there are pixel gaps in the layout
    */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0020', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0020 start.`);
      Settings.createWindow("testability/pages/UiComponentLayoutCommonPixel/UiComponentLayoutCommonPixel002")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0020 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0030
     * @tc.name      SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0030
     * @tc.desc      The grid component is laid out in reverse along the vertical direction, with columnsTemplate set to multiple columns and GridItem set to width and height as floating point numbers. Check if there are any pixel gaps in the layout
    */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0030', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0030 start.`);
      Settings.createWindow("testability/pages/UiComponentLayoutCommonPixel/UiComponentLayoutCommonPixel003")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0030 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0040
     * @tc.name      SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0040
     * @tc.desc      Grid components are laid out vertically, with columnsTemplate set to multiple columns and GridItem set to width and height as floating point numbers. Check if there are any pixel gaps in the layout
    */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0040', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0040 start.`);
      Settings.createWindow("testability/pages/UiComponentLayoutCommonPixel/UiComponentLayoutCommonPixel004")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0040 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0050
     * @tc.name      SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0050
     * @tc.desc      Grid components are laid out in reverse along the horizontal direction, with rowsTemplate set to multiple rows and GridItem set to a floating point number in width and height
    */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0050', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0050 start.`);
      Settings.createWindow("testability/pages/UiComponentLayoutCommonPixel/UiComponentLayoutCommonPixel005")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0050 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0060
     * @tc.name      SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0060
     * @tc.desc      Layout horizontally, set the rowsTemplate to multiple rows, and set the GridItem to a floating point number in width and height
    */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0060', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0060 start.`);
      Settings.createWindow("testability/pages/UiComponentLayoutCommonPixel/UiComponentLayoutCommonPixel006")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0060 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0070
     * @tc.name      SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0070
     * @tc.desc      After adding 7 GridItem sub components with floating point values in width and height, delete the GridItem sub component with index=0
    */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0070', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0070 start.`);
      Settings.createWindow("testability/pages/UiComponentLayoutCommonPixel/UiComponentLayoutCommonPixel007")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0070 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0080
     * @tc.name      SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0080
     * @tc.desc      After adding 7 GridItem sub components with floating point values in width and height, delete the GridItem sub component with index=2
    */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0080', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0080 start.`);
      Settings.createWindow("testability/pages/UiComponentLayoutCommonPixel/UiComponentLayoutCommonPixel008")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0080 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0090
     * @tc.name      SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0090
     * @tc.desc      After adding 7 GridItem sub components with floating point values in width and height, delete the GridItem sub component with index=6
    */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0090', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0090 start.`);
      Settings.createWindow("testability/pages/UiComponentLayoutCommonPixel/UiComponentLayoutCommonPixel009")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0090 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0100
     * @tc.name      SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0100
     * @tc.desc      After adding 7 GridItem sub components with floating point values in width and height, add a GridItem sub component with floating point values in width and height at index=0 position
    */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0100', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0100 start.`);
      Settings.createWindow("testability/pages/UiComponentLayoutCommonPixel/UiComponentLayoutCommonPixel010")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0100 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0110
     * @tc.name      SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0110
     * @tc.desc      After adding 7 GridItem sub components with floating point values in width and height, add a GridItem sub component with floating point values in width and height at index=2 position
    */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0110', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0110 start.`);
      Settings.createWindow("testability/pages/UiComponentLayoutCommonPixel/UiComponentLayoutCommonPixel011")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0110 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0120
     * @tc.name      SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0120
     * @tc.desc      After adding 7 GridItem sub components with floating point values in width and height, add a GridItem sub component with floating point values in width and height at index=6 position
    */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0120', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0120 start.`);
      Settings.createWindow("testability/pages/UiComponentLayoutCommonPixel/UiComponentLayoutCommonPixel012")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0120 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0240
     * @tc.name      SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0240
     * @tc.desc      Set the width and height of the grid component to floating-point numbers, and check if the layout width and height are rounded to the nearest whole
    */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0240', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0240 start.`);
      Settings.createWindow("testability/pages/UiComponentLayoutCommonPixel/UiComponentLayoutCommonPixel024")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      let strJson = getInspectorByKey('UiComponentLayoutCommonPixel024');
      Logger.info('TEST', "JSON.parse(strJson) is: " + JSON.stringify(JSON.parse(strJson)));
      Logger.info('TEST', "JSON.parse(strJson).$attrs.width is: " + JSON.parse(strJson).$attrs.size.width);
      Logger.info('TEST', "JSON.parse(strJson).$attrs.height is: " + JSON.parse(strJson).$attrs.size.height);
      expect(JSON.parse(strJson).$attrs.size.width).assertEqual('100.50vp');
      expect(JSON.parse(strJson).$attrs.size.height).assertEqual('100.40vp');
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0240 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0250
     * @tc.name      SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0250
     * @tc.desc      Grid component, no columnsTemplate set, GridItem set width and height to floating point numbers
    */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0250', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0250 start.`);
      Settings.createWindow("testability/pages/UiComponentLayoutCommonPixel/UiComponentLayoutCommonPixel025")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0250 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0260
     * @tc.name      SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0260
     * @tc.desc      After adding 7 listItem subcomponents with floating point values in width and height, delete the listItem subcomponent with index=0
    */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0260', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0260 start.`);
      Settings.createWindow("testability/pages/UiComponentLayoutCommonPixel/UiComponentLayoutCommonPixel026")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0260 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0270
     * @tc.name      SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0270
     * @tc.desc      After adding 7 listItem subcomponents with floating point values in width and height, delete the listItem subcomponent with index=2
    */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0270', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0270 start.`);
      Settings.createWindow("testability/pages/UiComponentLayoutCommonPixel/UiComponentLayoutCommonPixel027")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0270 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0280
     * @tc.name      SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0280
     * @tc.desc      After adding 7 listItem subcomponents with floating point values in width and height, delete the listItem subcomponent with index=6
    */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0280', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0280 start.`);
      Settings.createWindow("testability/pages/UiComponentLayoutCommonPixel/UiComponentLayoutCommonPixel028")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0280 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0290
     * @tc.name      SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0290
     * @tc.desc      After adding 7 listItem sub components with floating-point values in width and height, add a listItem sub component with floating-point values in width and height at index=0 position
    */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0290', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0290 start.`);
      Settings.createWindow("testability/pages/UiComponentLayoutCommonPixel/UiComponentLayoutCommonPixel029")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0290 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0300
     * @tc.name      SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0300
     * @tc.desc      After adding 7 listItem sub components with floating-point values in width and height, add a listItem sub component with floating-point values in width and height at index=2 position
    */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0300', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0300 start.`);
      Settings.createWindow("testability/pages/UiComponentLayoutCommonPixel/UiComponentLayoutCommonPixel030")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0300 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0310
     * @tc.name      SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0310
     * @tc.desc      After adding 7 listItem sub components with floating-point values in width and height, add a listItem sub component with floating-point values in width and height at index=6 position
    */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0310', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0310 start.`);
      Settings.createWindow("testability/pages/UiComponentLayoutCommonPixel/UiComponentLayoutCommonPixel031")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0310 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0420
     * @tc.name      SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0420
     * @tc.desc      Set to 1 column, set the listDirection property to slide vertically, and set the width and height of listItem to floating-point numbers
    */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0420', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0420 start.`);
      Settings.createWindow("testability/pages/UiComponentLayoutCommonPixel/UiComponentLayoutCommonPixel042")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0420 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0430
     * @tc.name      SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0430
     * @tc.desc      Set to 1 line, set the listDirection property to slide horizontally, and set the width and height of listItem to floating-point numbers
    */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0430', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0430 start.`);
      Settings.createWindow("testability/pages/UiComponentLayoutCommonPixel/UiComponentLayoutCommonPixel043")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0430 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0450
     * @tc.name      SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0450
     * @tc.desc      Set the width and height of the list component to floating-point numbers, and check if the layout width and height are rounded to the nearest whole
    */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0450', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0450 start.`);
      Settings.createWindow("testability/pages/UiComponentLayoutCommonPixel/UiComponentLayoutCommonPixel045")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      let strJson = getInspectorByKey('UiComponentLayoutCommonPixel045');
      Logger.info('TEST', "JSON.parse(strJson) is: " + JSON.stringify(JSON.parse(strJson)));
      Logger.info('TEST', "JSON.parse(strJson).$attrs.width is: " + JSON.parse(strJson).$attrs.size.width);
      Logger.info('TEST', "JSON.parse(strJson).$attrs.height is: " + JSON.parse(strJson).$attrs.size.height);
      expect(JSON.parse(strJson).$attrs.size.width).assertEqual('100.50vp');
      expect(JSON.parse(strJson).$attrs.size.height).assertEqual('100.40vp');
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0450 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0460
     * @tc.name      SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0460
     * @tc.desc      After adding 7 ScrollItem subcomponents with floating point values in width and height, delete the ScrollItem subcomponent with index=0
    */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0460', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0460 start.`);
      Settings.createWindow("testability/pages/UiComponentLayoutCommonPixel/UiComponentLayoutCommonPixel046")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0460 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0470
     * @tc.name      SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0470
     * @tc.desc      After adding 7 ScrollItem subcomponents with floating point values in width and height, delete the ScrollItem subcomponent with index=2
    */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0470', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0470 start.`);
      Settings.createWindow("testability/pages/UiComponentLayoutCommonPixel/UiComponentLayoutCommonPixel047")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0470 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0480
     * @tc.name      SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0480
     * @tc.desc      After adding 7 ScrollItem subcomponents with floating point values in width and height, delete the ScrollItem subcomponent with index=6
    */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0480', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0480 start.`);
      Settings.createWindow("testability/pages/UiComponentLayoutCommonPixel/UiComponentLayoutCommonPixel048")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0480 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0490
     * @tc.name      SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0490
     * @tc.desc      After adding 7 ScrollItem sub components with floating-point values in width and height, add a ScrollItem sub component with floating-point values in width and height at index=0 position
    */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0490', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0490 start.`);
      Settings.createWindow("testability/pages/UiComponentLayoutCommonPixel/UiComponentLayoutCommonPixel049")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0490 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0500
     * @tc.name      SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0500
     * @tc.desc      After adding 7 ScrollItem subcomponents with floating-point values in width and height, add a ScrollItem subcomponent with floating-point values in width and height at index=2 position
    */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0500', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0500 start.`);
      Settings.createWindow("testability/pages/UiComponentLayoutCommonPixel/UiComponentLayoutCommonPixel050")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0500 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0510
     * @tc.name      SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0510
     * @tc.desc      After adding 7 ScrollItem sub components with floating-point values in width and height, add a ScrollItem sub component with floating-point values in width and height at index=6 position
    */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0510', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0510 start.`);
      Settings.createWindow("testability/pages/UiComponentLayoutCommonPixel/UiComponentLayoutCommonPixel051")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0510 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0630
     * @tc.name      SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0630
     * @tc.desc      Set the width and height of the Scroll component to floating-point numbers, and check if the layout width and height are rounded to the nearest whole
    */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0630', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0630 start.`);
      Settings.createWindow("testability/pages/UiComponentLayoutCommonPixel/UiComponentLayoutCommonPixel063")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      let strJson = getInspectorByKey('UiComponentLayoutCommonPixel063');
      Logger.info('TEST', "JSON.parse(strJson) is: " + JSON.stringify(JSON.parse(strJson)));
      Logger.info('TEST', "JSON.parse(strJson).$attrs.width is: " + JSON.parse(strJson).$attrs.size.width);
      Logger.info('TEST', "JSON.parse(strJson).$attrs.height is: " + JSON.parse(strJson).$attrs.size.height);
      expect(JSON.parse(strJson).$attrs.size.width).assertEqual('100.50vp');
      expect(JSON.parse(strJson).$attrs.size.height).assertEqual('100.40vp');
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0630 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0660
     * @tc.name      SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0660
     * @tc.desc      Scroll component, set ScrollDirection None， Make the component unable to scroll
    */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0660', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0660 start.`);
      Settings.createWindow("testability/pages/UiComponentLayoutCommonPixel/UiComponentLayoutCommonPixel066")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0660 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0680
     * @tc.name      SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0680
     * @tc.desc      Scroll component, set ScrollDirection None， Make the component unable to scroll
    */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0680', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0680 start.`);
      Settings.createWindow("testability/pages/UiComponentLayoutCommonPixel/UiComponentLayoutCommonPixel068")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0680 finish.`);
      done()
    })
  })
}
