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

export default function UIComponentDividerBlankLayout() {

  describe('UIComponentDividerBlankLayout', () => {
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
    * @tc.number      SUB_ACE_UI_COMPONENT_DIVIDER_BLANK_LAYOUT_0010
    * @tc.name        SUB_ACE_UI_COMPONENT_DIVIDER_BLANK_LAYOUT_0010
    * @tc.desc        The width of the Row component is set, the Blank component is set only to min,
    * and the width of the Row component is set to be greater than the spindle length of all subcomponents
    */
    it('SUB_ACE_UI_COMPONENT_DIVIDER_BLANK_LAYOUT_0010', 0, async (done: Function) => {
      Logger.info('TEST', `UIComponentDividerBlankLayout001 start.`);
      Settings.createWindow("testability/pages/UIComponentDividerBlankLayout/UIComponentDividerBlankLayout001")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `UIComponentDividerBlankLayout001 finish.`);
      done()
    })

    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_DIVIDER_BLANK_LAYOUT_0020
    * @tc.name        SUB_ACE_UI_COMPONENT_DIVIDER_BLANK_LAYOUT_0020
    * @tc.desc        The width of the Row component is set, the Blank component is set only in min,
    * and the width of the Row component is set less than the spindle length of all subcomponents
    */
    it('SUB_ACE_UI_COMPONENT_DIVIDER_BLANK_LAYOUT_0020', 0, async (done: Function) => {
      Logger.info('TEST', `UIComponentDividerBlankLayout002 start.`);
      Settings.createWindow("testability/pages/UIComponentDividerBlankLayout/UIComponentDividerBlankLayout002")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `UIComponentDividerBlankLayout002 finish.`);
      done()
    })

    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_DIVIDER_BLANK_LAYOUT_0030
    * @tc.name        SUB_ACE_UI_COMPONENT_DIVIDER_BLANK_LAYOUT_0030
    * @tc.desc        The width of the Row component is set, the width of the Blank component is set only,
    * and the width of the Row component is set to be greater than the spindle length of all subcomponents
    */
    it('SUB_ACE_UI_COMPONENT_DIVIDER_BLANK_LAYOUT_0030', 0, async (done: Function) => {
      Logger.info('TEST', `UIComponentDividerBlankLayout003 start.`);
      Settings.createWindow("testability/pages/UIComponentDividerBlankLayout/UIComponentDividerBlankLayout003")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `UIComponentDividerBlankLayout003 finish.`);
      done()
    })

    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_DIVIDER_BLANK_LAYOUT_0040
    * @tc.name        SUB_ACE_UI_COMPONENT_DIVIDER_BLANK_LAYOUT_0040
    * @tc.desc        The width of the Row component is set, the width of the Blank component is set only,
    * and the width of the Row component is set less than the spindle length of all subcomponents
    */
    it('SUB_ACE_UI_COMPONENT_DIVIDER_BLANK_LAYOUT_0040', 0, async (done: Function) => {
      Logger.info('TEST', `UIComponentDividerBlankLayout004 start.`);
      Settings.createWindow("testability/pages/UIComponentDividerBlankLayout/UIComponentDividerBlankLayout004")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `UIComponentDividerBlankLayout004 finish.`);
      done()
    })

    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_DIVIDER_BLANK_LAYOUT_0050
    * @tc.name        SUB_ACE_UI_COMPONENT_DIVIDER_BLANK_LAYOUT_0050
    * @tc.desc        The width of the Row component is set, the width of the Blank component is set to min and width(min<width),
    * and the width of the Row component is set to be greater than the spindle length of all subcomponents
    */
    it('SUB_ACE_UI_COMPONENT_DIVIDER_BLANK_LAYOUT_0050', 0, async (done: Function) => {
      Logger.info('TEST', `UIComponentDividerBlankLayout005 start.`);
      Settings.createWindow("testability/pages/UIComponentDividerBlankLayout/UIComponentDividerBlankLayout005")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `UIComponentDividerBlankLayout005 finish.`);
      done()
    })

    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_DIVIDER_BLANK_LAYOUT_0060
    * @tc.name        SUB_ACE_UI_COMPONENT_DIVIDER_BLANK_LAYOUT_0060
    * @tc.desc        The width of the Row component is set, the width of the Blank component is set to min and width(min<width),
    * and the width of the Row component is set to be less than the spindle length of all subcomponents
    */
    it('SUB_ACE_UI_COMPONENT_DIVIDER_BLANK_LAYOUT_0060', 0, async (done: Function) => {
      Logger.info('TEST', `UIComponentDividerBlankLayout006 start.`);
      Settings.createWindow("testability/pages/UIComponentDividerBlankLayout/UIComponentDividerBlankLayout006")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `UIComponentDividerBlankLayout006 finish.`);
      done()
    })

    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_DIVIDER_BLANK_LAYOUT_0070
    * @tc.name        SUB_ACE_UI_COMPONENT_DIVIDER_BLANK_LAYOUT_0070
    * @tc.desc        The width of the Row component is set, the width of the Blank component is set to min and width(min>width),
    * and the width of the Row component is set to be greater than the spindle length of all subcomponents
    */
    it('SUB_ACE_UI_COMPONENT_DIVIDER_BLANK_LAYOUT_0070', 0, async (done: Function) => {
      Logger.info('TEST', `UIComponentDividerBlankLayout007 start.`);
      Settings.createWindow("testability/pages/UIComponentDividerBlankLayout/UIComponentDividerBlankLayout007")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `UIComponentDividerBlankLayout007 finish.`);
      done()
    })

    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_DIVIDER_BLANK_LAYOUT_0080
    * @tc.name        SUB_ACE_UI_COMPONENT_DIVIDER_BLANK_LAYOUT_0080
    * @tc.desc        The width of the Row component is set, the width of the Blank component is set to min and width(min>width),
    * and the width of the Row component is set to be less than the spindle length of all subcomponents
    */
    it('SUB_ACE_UI_COMPONENT_DIVIDER_BLANK_LAYOUT_0080', 0, async (done: Function) => {
      Logger.info('TEST', `UIComponentDividerBlankLayout008 start.`);
      Settings.createWindow("testability/pages/UIComponentDividerBlankLayout/UIComponentDividerBlankLayout008")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `UIComponentDividerBlankLayout008 finish.`);
      done()
    })

    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_DIVIDER_BLANK_LAYOUT_0090
    * @tc.name        SUB_ACE_UI_COMPONENT_DIVIDER_BLANK_LAYOUT_0090
    * @tc.desc        The Row component sets the width, and only one Blank component in the Row component is displayed
    */
    it('SUB_ACE_UI_COMPONENT_DIVIDER_BLANK_LAYOUT_0090', 0, async (done: Function) => {
      Logger.info('TEST', `UIComponentDividerBlankLayout009 start.`);
      Settings.createWindow("testability/pages/UIComponentDividerBlankLayout/UIComponentDividerBlankLayout009")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `UIComponentDividerBlankLayout009 finish.`);
      done()
    })

    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_DIVIDER_BLANK_LAYOUT_0100
    * @tc.name        SUB_ACE_UI_COMPONENT_DIVIDER_BLANK_LAYOUT_0100
    * @tc.desc        The width of the Row component is set, the sub-components are Text and Blank components,
    * the Blank component is set only min, and the width of the Row component is set greater than the spindle length of all sub-components
    */
    it('SUB_ACE_UI_COMPONENT_DIVIDER_BLANK_LAYOUT_0100', 0, async (done: Function) => {
      Logger.info('TEST', `UIComponentDividerBlankLayout010 start.`);
      Settings.createWindow("testability/pages/UIComponentDividerBlankLayout/UIComponentDividerBlankLayout010")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `UIComponentDividerBlankLayout010 finish.`);
      done()
    })

    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_DIVIDER_BLANK_LAYOUT_0110
    * @tc.name        SUB_ACE_UI_COMPONENT_DIVIDER_BLANK_LAYOUT_0110
    * @tc.desc        The width of the Row component is set, the sub-components are Text and Blank components,
    * the Blank component is set only min, and the width of the Row component is set less than the spindle length of all sub-components
    */
    it('SUB_ACE_UI_COMPONENT_DIVIDER_BLANK_LAYOUT_0110', 0, async (done: Function) => {
      Logger.info('TEST', `UIComponentDividerBlankLayout011 start.`);
      Settings.createWindow("testability/pages/UIComponentDividerBlankLayout/UIComponentDividerBlankLayout011")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `UIComponentDividerBlankLayout011 finish.`);
      done()
    })

    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_DIVIDER_BLANK_LAYOUT_0120
    * @tc.name        SUB_ACE_UI_COMPONENT_DIVIDER_BLANK_LAYOUT_0120
    * @tc.desc        The width of the Row component is set, the sub-components are Text and Blank components,
    * the Blank component is set only width, and the width of the Row component is set less than the main axis length of the Text component
    */
    it('SUB_ACE_UI_COMPONENT_DIVIDER_BLANK_LAYOUT_0120', 0, async (done: Function) => {
      Logger.info('TEST', `UIComponentDividerBlankLayout012 start.`);
      Settings.createWindow("testability/pages/UIComponentDividerBlankLayout/UIComponentDividerBlankLayout012")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `UIComponentDividerBlankLayout012 finish.`);
      done()
    })

    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_DIVIDER_BLANK_LAYOUT_0130
    * @tc.name        SUB_ACE_UI_COMPONENT_DIVIDER_BLANK_LAYOUT_0130
    * @tc.desc        The width of the Row component is set, the sub-components are Text and Blank components,
    * the Blank component is set min and width, and the width of the Row component is set to be greater than the spindle length of all sub-components (min<width).
    */
    it('SUB_ACE_UI_COMPONENT_DIVIDER_BLANK_LAYOUT_0130', 0, async (done: Function) => {
      Logger.info('TEST', `UIComponentDividerBlankLayout013 start.`);
      Settings.createWindow("testability/pages/UIComponentDividerBlankLayout/UIComponentDividerBlankLayout013")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `UIComponentDividerBlankLayout013 finish.`);
      done()
    })

    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_DIVIDER_BLANK_LAYOUT_0140
    * @tc.name        SUB_ACE_UI_COMPONENT_DIVIDER_BLANK_LAYOUT_0140
    * @tc.desc        The width of the Row component is set, the sub-components are Text and Blank components,
    * the Blank component is set min and width, and the width of the Row component is set to be greater than the spindle length of all sub-components (min>width).
    */
    it('SUB_ACE_UI_COMPONENT_DIVIDER_BLANK_LAYOUT_0140', 0, async (done: Function) => {
      Logger.info('TEST', `UIComponentDividerBlankLayout014 start.`);
      Settings.createWindow("testability/pages/UIComponentDividerBlankLayout/UIComponentDividerBlankLayout014")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `UIComponentDividerBlankLayout014 finish.`);
      done()
    })

    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_DIVIDER_BLANK_LAYOUT_0150
    * @tc.name        SUB_ACE_UI_COMPONENT_DIVIDER_BLANK_LAYOUT_0150
    * @tc.desc        The width of the Row component is set, the sub-components are Text and Blank components,
    * the Blank component is set min and width, and the width of the Row component is set less than the spindle length of all sub-components (min<width).
    */
    it('SUB_ACE_UI_COMPONENT_DIVIDER_BLANK_LAYOUT_0150', 0, async (done: Function) => {
      Logger.info('TEST', `UIComponentDividerBlankLayout015 start.`);
      Settings.createWindow("testability/pages/UIComponentDividerBlankLayout/UIComponentDividerBlankLayout015")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `UIComponentDividerBlankLayout015 finish.`);
      done()
    })

    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_DIVIDER_BLANK_LAYOUT_0160
    * @tc.name        SUB_ACE_UI_COMPONENT_DIVIDER_BLANK_LAYOUT_0160
    * @tc.desc        The width of the Row component is set, the sub-components are Text and Blank components,
    * the Blank component is set min and width, and the width of the Row component is set less than the spindle length of all sub-components (min>width).
    */
    it('SUB_ACE_UI_COMPONENT_DIVIDER_BLANK_LAYOUT_0160', 0, async (done: Function) => {
      Logger.info('TEST', `UIComponentDividerBlankLayout016 start.`);
      Settings.createWindow("testability/pages/UIComponentDividerBlankLayout/UIComponentDividerBlankLayout016")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `UIComponentDividerBlankLayout016 finish.`);
      done()
    })

    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_DIVIDER_BLANK_LAYOUT_0170
    * @tc.name        SUB_ACE_UI_COMPONENT_DIVIDER_BLANK_LAYOUT_0170
    * @tc.desc        The Row component sets the width, and the sub-components are multiple Blank components.
    * The Blank component does not set min and width
    */
    it('SUB_ACE_UI_COMPONENT_DIVIDER_BLANK_LAYOUT_0170', 0, async (done: Function) => {
      Logger.info('TEST', `UIComponentDividerBlankLayout017 start.`);
      Settings.createWindow("testability/pages/UIComponentDividerBlankLayout/UIComponentDividerBlankLayout017")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `UIComponentDividerBlankLayout017 finish.`);
      done()
    })

    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_DIVIDER_BLANK_LAYOUT_0180
    * @tc.name        SUB_ACE_UI_COMPONENT_DIVIDER_BLANK_LAYOUT_0180
    * @tc.desc        The Row component sets the width, the child components are multiple Blank components,
    * and the Blank component sets only one width
    */
    it('SUB_ACE_UI_COMPONENT_DIVIDER_BLANK_LAYOUT_0180', 0, async (done: Function) => {
      Logger.info('TEST', `UIComponentDividerBlankLayout018 start.`);
      Settings.createWindow("testability/pages/UIComponentDividerBlankLayout/UIComponentDividerBlankLayout018")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `UIComponentDividerBlankLayout018 finish.`);
      done()
    })

    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_DIVIDER_BLANK_LAYOUT_0190
    * @tc.name        SUB_ACE_UI_COMPONENT_DIVIDER_BLANK_LAYOUT_0190
    * @tc.desc        The width of the Row component is set, and the sub-components are multiple Blank components,
    * and the Blank components are only set to different min
    */
    it('SUB_ACE_UI_COMPONENT_DIVIDER_BLANK_LAYOUT_0190', 0, async (done: Function) => {
      Logger.info('TEST', `UIComponentDividerBlankLayout019 start.`);
      Settings.createWindow("testability/pages/UIComponentDividerBlankLayout/UIComponentDividerBlankLayout019")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `UIComponentDividerBlankLayout019 finish.`);
      done()
    })

    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_DIVIDER_BLANK_LAYOUT_0200
    * @tc.name        SUB_ACE_UI_COMPONENT_DIVIDER_BLANK_LAYOUT_0200
    * @tc.desc        The width of the Row component is set, the sub-components are multiple Blank components,
    * the Blank components are set only for different min, and the width of the Row component is set to be greater than the spindle length of all sub-components
    */
    it('SUB_ACE_UI_COMPONENT_DIVIDER_BLANK_LAYOUT_0200', 0, async (done: Function) => {
      Logger.info('TEST', `UIComponentDividerBlankLayout020 start.`);
      Settings.createWindow("testability/pages/UIComponentDividerBlankLayout/UIComponentDividerBlankLayout020")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `UIComponentDividerBlankLayout020 finish.`);
      done()
    })

    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_DIVIDER_BLANK_LAYOUT_0210
    * @tc.name        SUB_ACE_UI_COMPONENT_DIVIDER_BLANK_LAYOUT_0210
    * @tc.desc        The width of the Row component is set, the sub-components are multiple Blank components,
    * the Blank components are set only for different min, and the width of the Row component is set less than the spindle length of all sub-components
    */
    it('SUB_ACE_UI_COMPONENT_DIVIDER_BLANK_LAYOUT_0210', 0, async (done: Function) => {
      Logger.info('TEST', `UIComponentDividerBlankLayout021 start.`);
      Settings.createWindow("testability/pages/UIComponentDividerBlankLayout/UIComponentDividerBlankLayout021")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `UIComponentDividerBlankLayout021 finish.`);
      done()
    })

    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_DIVIDER_BLANK_LAYOUT_0220
    * @tc.name        SUB_ACE_UI_COMPONENT_DIVIDER_BLANK_LAYOUT_0220
    * @tc.desc        The width of the Row component is set, the sub-component is multiple Blank components,
    * the min and width of the Blank component are set, and the width of the Row component is set to be greater than
    * the spindle length of all sub-components (min<width).
    */
    it('SUB_ACE_UI_COMPONENT_DIVIDER_BLANK_LAYOUT_0220', 0, async (done: Function) => {
      Logger.info('TEST', `UIComponentDividerBlankLayout022 start.`);
      Settings.createWindow("testability/pages/UIComponentDividerBlankLayout/UIComponentDividerBlankLayout022")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `UIComponentDividerBlankLayout022 finish.`);
      done()
    })

    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_DIVIDER_BLANK_LAYOUT_0230
    * @tc.name        SUB_ACE_UI_COMPONENT_DIVIDER_BLANK_LAYOUT_0230
    * @tc.desc        The width of the Row component is set, the sub-component is multiple Blank components,
    * the Blank component is set min and width, and the min and width of the three blanks are set to the same value
    */
    it('SUB_ACE_UI_COMPONENT_DIVIDER_BLANK_LAYOUT_0230', 0, async (done: Function) => {
      Logger.info('TEST', `UIComponentDividerBlankLayout023 start.`);
      Settings.createWindow("testability/pages/UIComponentDividerBlankLayout/UIComponentDividerBlankLayout023")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `UIComponentDividerBlankLayout023 finish.`);
      done()
    })
  })
}
