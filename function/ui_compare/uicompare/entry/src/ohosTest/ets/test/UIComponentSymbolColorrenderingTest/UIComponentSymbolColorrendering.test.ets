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
import {UiComponent, UiDriver, Component, Driver, UiWindow, ON, BY, MatchPattern, DisplayRotation, ResizeDirection, WindowMode, PointerMatrix} from '@ohos.UiTest';
export default function UIComponentSymbolColorrendering() {
  describe('UIComponentSymbolColorrendering', () => {
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
           * @tc.number  SUB_ACE_UI_COMPONENT_symbol_symbol_COLOURRENDERING_002
           * @tc.name    SUB_ACE_UI_COMPONENT_symbol_symbol_COLOURRENDERING_002
           * @tc.desc    resource=sys.media.ohos_lungs
    */
    it('SUB_ACE_UI_COMPONENT_symbol_symbol_COLOURRENDERING_002', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_symbol_symbol_COLOURRENDERING_002 start.`);
      Settings.createWindow("testability/pages/UIComponentSymbolColorrendering/UIComponentSymbolColorrendering002")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_symbol_symbol_COLOURRENDERING_002 finish.`);
      done()
    })

    /*
           * @tc.number  SUB_ACE_UI_COMPONENT_symbol_symbol_COLOURRENDERING_007
           * @tc.name    SUB_ACE_UI_COMPONENT_symbol_symbol_COLOURRENDERING_007
           * @tc.desc    fontcolor=(color.green,color.yellow)
    */
    it('SUB_ACE_UI_COMPONENT_symbol_symbol_COLOURRENDERING_007', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_symbol_symbol_COLOURRENDERING_007 start.`);
      Settings.createWindow("testability/pages/UIComponentSymbolColorrendering/UIComponentSymbolColorrendering007")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_symbol_symbol_COLOURRENDERING_007 finish.`);
      done()
    })

    /*
         * @tc.number  SUB_ACE_UI_COMPONENT_symbol_symbol_COLOURRENDERING_008
         * @tc.name    SUB_ACE_UI_COMPONENT_symbol_symbol_COLOURRENDERING_008
         * @tc.desc    renderingStrategy(2)
  */
    it('SUB_ACE_UI_COMPONENT_symbol_symbol_COLOURRENDERING_008', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_symbol_symbol_COLOURRENDERING_008 _0010 start.`);
      Settings.createWindow("testability/pages/UIComponentSymbolColorrendering/UIComponentSymbolColorrendering008")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_symbol_symbol_COLOURRENDERING_008 finish.`);
      done()
    })

    /*
        * @tc.number  SUB_ACE_UI_COMPONENT_symbol_symbol_COLOURRENDERING_009
        * @tc.name    SUB_ACE_UI_COMPONENT_symbol_symbol_COLOURRENDERING_009
        * @tc.desc    resource=sys.media.ohos_mic
 */
    it('SUB_ACE_UI_COMPONENT_symbol_symbol_COLOURRENDERING_009', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_symbol_symbol_COLOURRENDERING_009 _0010 start.`);
      Settings.createWindow("testability/pages/UIComponentSymbolColorrendering/UIComponentSymbolColorrendering009")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_symbol_symbol_COLOURRENDERING_009 finish.`);
      done()
    })

    /*
        * @tc.number  SUB_ACE_UI_COMPONENT_SYMBOL_SYMBOL_DISPLAY_0030
        * @tc.name    SUB_ACE_UI_COMPONENT_SYMBOL_SYMBOL_DISPLAY_0030
        * @tc.desc    resource=ohos_folder_badge_plus
 */
    it('SUB_ACE_UI_COMPONENT_SYMBOL_SYMBOL_DISPLAY_0030', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SYMBOL_SYMBOL_DISPLAY_0030 start.`);
      Settings.createWindow("testability/pages/UIComponentSymbolColorrendering/UIComponentSymboldisplay003")
      await Utils.sleep(1000)
      let driver : Driver = Driver.create()
      let button:Component = await driver.findComponent(ON.id('symboldisplay003'))
      await button.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SYMBOL_SYMBOL_DISPLAY_0030 finish.`);
      done()
    })
  })
}
