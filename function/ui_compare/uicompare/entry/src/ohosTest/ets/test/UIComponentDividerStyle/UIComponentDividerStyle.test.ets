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

export default function UIComponentDividerStyle() {

  describe('UIComponentDividerStyle', () => {
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
    * @tc.number      SUB_ACE_UI_COMPONENT_DIVIDER_STYLE_0290
    * @tc.name        SUB_ACE_UI_COMPONENT_DIVIDER_STYLE_0290
    * @tc.desc        Blankcolor passes in color.blue
    */
    it('SUB_ACE_UI_COMPONENT_DIVIDER_STYLE_0290', 0, async (done: Function) => {
      Logger.info('TEST', `UIComponentDividerStyle029 start.`);
      Settings.createWindow("testability/pages/UIComponentDividerStyle/UIComponentDividerStyle029")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `UIComponentDividerStyle029 finish.`);
      done()
    })

    /*
        * @tc.number      SUB_ACE_UI_COMPONENT_DIVIDER_STYLE_0300
        * @tc.name        SUB_ACE_UI_COMPONENT_DIVIDER_STYLE_0300
        * @tc.desc        The Blankcolor is passed in #0000ff
        */
    it('SUB_ACE_UI_COMPONENT_DIVIDER_STYLE_0300', 0, async (done: Function) => {
      Logger.info('TEST', `UIComponentDividerStyle030 start.`);
      Settings.createWindow("testability/pages/UIComponentDividerStyle/UIComponentDividerStyle030")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `UIComponentDividerStyle030 finish.`);
      done()
    })

    /*
        * @tc.number      SUB_ACE_UI_COMPONENT_DIVIDER_STYLE_0310
        * @tc.name        SUB_ACE_UI_COMPONENT_DIVIDER_STYLE_0310
        * @tc.desc        Blankcolor rgb(0, 0, 255)
        */
    it('SUB_ACE_UI_COMPONENT_DIVIDER_STYLE_0310', 0, async (done: Function) => {
      Logger.info('TEST', `UIComponentDividerStyle031 start.`);
      Settings.createWindow("testability/pages/UIComponentDividerStyle/UIComponentDividerStyle031")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `UIComponentDividerStyle031 finish.`);
      done()
    })

    /*
        * @tc.number      SUB_ACE_UI_COMPONENT_DIVIDER_STYLE_0320
        * @tc.name        SUB_ACE_UI_COMPONENT_DIVIDER_STYLE_0320
        * @tc.desc        The Blankcolor is passed 0x0000ff
        */
    it('SUB_ACE_UI_COMPONENT_DIVIDER_STYLE_0320', 0, async (done: Function) => {
      Logger.info('TEST', `UIComponentDividerStyle032 start.`);
      Settings.createWindow("testability/pages/UIComponentDividerStyle/UIComponentDividerStyle032")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `UIComponentDividerStyle032 finish.`);
      done()
    })

    /*
        * @tc.number      SUB_ACE_UI_COMPONENT_DIVIDER_STYLE_0330
        * @tc.name        SUB_ACE_UI_COMPONENT_DIVIDER_STYLE_0330
        * @tc.desc        Blankcolor refers to resources through resources
        */
    it('SUB_ACE_UI_COMPONENT_DIVIDER_STYLE_0330', 0, async (done: Function) => {
      Logger.info('TEST', `UIComponentDividerStyle033 start.`);
      Settings.createWindow("testability/pages/UIComponentDividerStyle/UIComponentDividerStyle033")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `UIComponentDividerStyle033 finish.`);
      done()
    })

    /*
        * @tc.number      SUB_ACE_UI_COMPONENT_DIVIDER_STYLE_0340
        * @tc.name        SUB_ACE_UI_COMPONENT_DIVIDER_STYLE_0340
        * @tc.desc        Blankcolor passed in an illegal string
        */
    it('SUB_ACE_UI_COMPONENT_DIVIDER_STYLE_0340', 0, async (done: Function) => {
      Logger.info('TEST', `UIComponentDividerStyle034 start.`);
      Settings.createWindow("testability/pages/UIComponentDividerStyle/UIComponentDividerStyle034")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `UIComponentDividerStyle034 finish.`);
      done()
    })

    /*
        * @tc.number      SUB_ACE_UI_COMPONENT_DIVIDER_STYLE_0350
        * @tc.name        SUB_ACE_UI_COMPONENT_DIVIDER_STYLE_0350
        * @tc.desc        Blank sets the background color
        */
    it('SUB_ACE_UI_COMPONENT_DIVIDER_STYLE_0350', 0, async (done: Function) => {
      Logger.info('TEST', `UIComponentDividerStyle035 start.`);
      Settings.createWindow("testability/pages/UIComponentDividerStyle/UIComponentDividerStyle035")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `UIComponentDividerStyle035 finish.`);
      done()
    })
  })
}
