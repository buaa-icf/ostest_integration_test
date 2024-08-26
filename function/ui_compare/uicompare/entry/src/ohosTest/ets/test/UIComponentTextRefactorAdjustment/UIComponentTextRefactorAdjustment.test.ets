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

export default function UIComponentTextRefactorAdjustment() {

  describe('UIComponentTextRefactorAdjustment', () => {
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
        * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_REFACTOR_ADJUSTMENT_0010
        * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_REFACTOR_ADJUSTMENT_0010
        * @tc.desc        inline mode Empty text, toggles the input box
        */
    it('SUB_ACE_UI_COMPONENT_TEXT_REFACTOR_ADJUSTMENT_0010', 0, async (done: Function) => {
      Logger.info('TEST', `UIComponentTextRefactorAdjustment001 start.`);
      Settings.createWindow("testability/pages/UIComponentTextRefactorAdjustment/UIComponentTextRefactorAdjustment001")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `UIComponentTextRefactorAdjustment001 finish.`);
      done()
    })

    /*
        * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_REFACTOR_ADJUSTMENT_0060
        * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_REFACTOR_ADJUSTMENT_0060
        * @tc.desc        Click the Clear button and modify the prompt text style
        */
    it('SUB_ACE_UI_COMPONENT_TEXT_REFACTOR_ADJUSTMENT_0060', 0, async (done: Function) => {
      Logger.info('TEST', `UIComponentTextRefactorAdjustment006 start.`);
      Settings.createWindow("testability/pages/UIComponentTextRefactorAdjustment/UIComponentTextRefactorAdjustment006")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `UIComponentTextRefactorAdjustment006 finish.`);
      done()
    })

    /*
        * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_REFACTOR_ADJUSTMENT_0080
        * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_REFACTOR_ADJUSTMENT_0080
        * @tc.desc        textarea scroll bar verification
        */
    it('SUB_ACE_UI_COMPONENT_TEXT_REFACTOR_ADJUSTMENT_0080', 0, async (done: Function) => {
      Logger.info('TEST', `UIComponentTextRefactorAdjustment008 start.`);
      Settings.createWindow("testability/pages/UIComponentTextRefactorAdjustment/UIComponentTextRefactorAdjustment008")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `UIComponentTextRefactorAdjustment008 finish.`);
      done()
    })

    /*
        * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_REFACTOR_ADJUSTMENT_0240
        * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_REFACTOR_ADJUSTMENT_0240
        * @tc.desc        password mode sets the tail alignment
        */
    it('SUB_ACE_UI_COMPONENT_TEXT_REFACTOR_ADJUSTMENT_0240', 0, async (done: Function) => {
      Logger.info('TEST', `UIComponentTextRefactorAdjustment024 start.`);
      Settings.createWindow("testability/pages/UIComponentTextRefactorAdjustment/UIComponentTextRefactorAdjustment024")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `UIComponentTextRefactorAdjustment024 finish.`);
      done()
    })

    /*
        * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_REFACTOR_ADJUSTMENT_0250
        * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_REFACTOR_ADJUSTMENT_0250
        * @tc.desc        In phonenumber mode, enter * and #
        */
    it('SUB_ACE_UI_COMPONENT_TEXT_REFACTOR_ADJUSTMENT_0250', 0, async (done: Function) => {
      Logger.info('TEST', `UIComponentTextRefactorAdjustment025 start.`);
      Settings.createWindow("testability/pages/UIComponentTextRefactorAdjustment/UIComponentTextRefactorAdjustment025")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `UIComponentTextRefactorAdjustment025 finish.`);
      done()
    })

    /*
        * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_REFACTOR_ADJUSTMENT_0390
        * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_REFACTOR_ADJUSTMENT_0390
        * @tc.desc        Set the text style to italics
        */
    it('SUB_ACE_UI_COMPONENT_TEXT_REFACTOR_ADJUSTMENT_0390', 0, async (done: Function) => {
      Logger.info('TEST', `UIComponentTextRefactorAdjustment039 start.`);
      Settings.createWindow("testability/pages/UIComponentTextRefactorAdjustment/UIComponentTextRefactorAdjustment039")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `UIComponentTextRefactorAdjustment039 finish.`);
      done()
    })

    /*
        * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_REFACTOR_ADJUSTMENT_0400
        * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_REFACTOR_ADJUSTMENT_0400
        * @tc.desc        Set the search button text to be too long
        */
    it('SUB_ACE_UI_COMPONENT_TEXT_REFACTOR_ADJUSTMENT_0400', 0, async (done: Function) => {
      Logger.info('TEST', `UIComponentTextRefactorAdjustment040 start.`);
      Settings.createWindow("testability/pages/UIComponentTextRefactorAdjustment/UIComponentTextRefactorAdjustment040")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `UIComponentTextRefactorAdjustment040 finish.`);
      done()
    })

    /*
        * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_REFACTOR_ADJUSTMENT_0410
        * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_REFACTOR_ADJUSTMENT_0410
        * @tc.desc        Set the bottom alignment of text and set the number of characters displayed
        */
    it('SUB_ACE_UI_COMPONENT_TEXT_REFACTOR_ADJUSTMENT_0410', 0, async (done: Function) => {
      Logger.info('TEST', `UIComponentTextRefactorAdjustment041 start.`);
      Settings.createWindow("testability/pages/UIComponentTextRefactorAdjustment/UIComponentTextRefactorAdjustment041")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `UIComponentTextRefactorAdjustment041 finish.`);
      done()
    })

    /*
        * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_REFACTOR_ADJUSTMENT_0430
        * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_REFACTOR_ADJUSTMENT_0430
        * @tc.desc        Set the text box width to empty
        */
    it('SUB_ACE_UI_COMPONENT_TEXT_REFACTOR_ADJUSTMENT_0430', 0, async (done: Function) => {
      Logger.info('TEST', `UIComponentTextRefactorAdjustment043 start.`);
      Settings.createWindow("testability/pages/UIComponentTextRefactorAdjustment/UIComponentTextRefactorAdjustment043")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `UIComponentTextRefactorAdjustment043 finish.`);
      done()
    })
  })
}
