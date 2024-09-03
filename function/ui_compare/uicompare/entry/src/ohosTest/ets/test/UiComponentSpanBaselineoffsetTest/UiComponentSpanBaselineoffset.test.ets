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
import { Driver, ON } from '@ohos.UiTest'

export default function UiComponentSpanBaselineoffset() {
  describe('UiComponentSpanBaselineoffset', () => {
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
      await Utils.sleep(3000);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_SPAN_BASELINEOFFSET_0010
     * @tc.name      SUB_ACE_UI_COMPONENT_SPAN_BASELINEOFFSET_0010
     * @tc.desc      Set baselineOffset as span, value as number type, do not set LengthUnit
    */
    it('SUB_ACE_UI_COMPONENT_SPAN_BASELINEOFFSET_0010', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPAN_BASELINEOFFSET_0010 start.`);
      Settings.createWindow("testability/pages/UiComponentSpanBaselineoffset/UiComponentSpanBaselineoffset001")
      let driver: Driver = Driver.create();
      let SliderCom = await driver.findComponent(ON.id("Button1"));
      let pointCenter = await SliderCom.getBoundsCenter();
      await driver.click(pointCenter.x, pointCenter.y);
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPAN_BASELINEOFFSET_0010 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_SPAN_BASELINEOFFSET_0030
     * @tc.name      SUB_ACE_UI_COMPONENT_SPAN_BASELINEOFFSET_0030
     * @tc.desc      Set baselineOffset to change the unit value
    */
    it('SUB_ACE_UI_COMPONENT_SPAN_BASELINEOFFSET_0030', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPAN_BASELINEOFFSET_0030 start.`);
      Settings.createWindow("testability/pages/UiComponentSpanBaselineoffset/UiComponentSpanBaselineoffset003")
      let driver: Driver = Driver.create();
      let SliderCom = await driver.findComponent(ON.id("Button3"));
      let pointCenter = await SliderCom.getBoundsCenter();
      for (let i = 0; i < 10; i++) {
        await driver.click(pointCenter.x, pointCenter.y);
      }
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPAN_BASELINEOFFSET_0030 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_SPAN_BASELINEOFFSET_0040
     * @tc.name      SUB_ACE_UI_COMPONENT_SPAN_BASELINEOFFSET_0040
     * @tc.desc      Multiple span set different offsets.
    */
    it('SUB_ACE_UI_COMPONENT_SPAN_BASELINEOFFSET_0040', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPAN_BASELINEOFFSET_0040 start.`);
      Settings.createWindow("testability/pages/UiComponentSpanBaselineoffset/UiComponentSpanBaselineoffset004")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPAN_BASELINEOFFSET_0040 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_SPAN_BASELINEOFFSET_0050
     * @tc.name      SUB_ACE_UI_COMPONENT_SPAN_BASELINEOFFSET_0050
     * @tc.desc      ImageSpan: Set baselineOffset, value as number type, do not set unit
    */
    it('SUB_ACE_UI_COMPONENT_SPAN_BASELINEOFFSET_0050', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPAN_BASELINEOFFSET_0050 start.`);
      Settings.createWindow("testability/pages/UiComponentSpanBaselineoffset/UiComponentSpanBaselineoffset005")
      let driver: Driver = Driver.create();
      let SliderCom = await driver.findComponent(ON.id("Button5"));
      let pointCenter = await SliderCom.getBoundsCenter();
      for (let i = 0; i < 6; i++) {
        await driver.click(pointCenter.x, pointCenter.y);
      }
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPAN_BASELINEOFFSET_0050 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_SPAN_BASELINEOFFSET_0070
     * @tc.name      SUB_ACE_UI_COMPONENT_SPAN_BASELINEOFFSET_0070
     * @tc.desc      Set baselineOffset to ImageSpan and change the unit value
    */
    it('SUB_ACE_UI_COMPONENT_SPAN_BASELINEOFFSET_0070', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPAN_BASELINEOFFSET_0070 start.`);
      Settings.createWindow("testability/pages/UiComponentSpanBaselineoffset/UiComponentSpanBaselineoffset007")
      let driver: Driver = Driver.create();
      let SliderCom = await driver.findComponent(ON.id("Button7"));
      let pointCenter = await SliderCom.getBoundsCenter();
      for (let i = 0; i < 13; i++) {
        await driver.click(pointCenter.x, pointCenter.y);
      }
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPAN_BASELINEOFFSET_0070 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_SPAN_BASELINEOFFSET_0080
     * @tc.name      SUB_ACE_UI_COMPONENT_SPAN_BASELINEOFFSET_0080
     * @tc.desc      Multiple ImageSpan settings with different offsets
    */
    it('SUB_ACE_UI_COMPONENT_SPAN_BASELINEOFFSET_0080', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPAN_BASELINEOFFSET_0080 start.`);
      Settings.createWindow("testability/pages/UiComponentSpanBaselineoffset/UiComponentSpanBaselineoffset008")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPAN_BASELINEOFFSET_0080 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_SPAN_BASELINEOFFSET_0090
     * @tc.name      SUB_ACE_UI_COMPONENT_SPAN_BASELINEOFFSET_0090
     * @tc.desc      Add graphic and text blending, set different offsets
    */
    it('SUB_ACE_UI_COMPONENT_SPAN_BASELINEOFFSET_0090', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPAN_BASELINEOFFSET_0090 start.`);
      Settings.createWindow("testability/pages/UiComponentSpanBaselineoffset/UiComponentSpanBaselineoffset009")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPAN_BASELINEOFFSET_0090 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_SPAN_BASELINEOFFSET_0100
     * @tc.name      SUB_ACE_UI_COMPONENT_SPAN_BASELINEOFFSET_0100
     * @tc.desc      Text component and sub components are both set to baselineOffset
    */
    it('SUB_ACE_UI_COMPONENT_SPAN_BASELINEOFFSET_0100', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPAN_BASELINEOFFSET_0100 start.`);
      Settings.createWindow("testability/pages/UiComponentSpanBaselineoffset/UiComponentSpanBaselineoffset010")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPAN_BASELINEOFFSET_0100 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_SPAN_BASELINEOFFSET_0120
     * @tc.name      SUB_ACE_UI_COMPONENT_SPAN_BASELINEOFFSET_0120
     * @tc.desc      Text component, multiple spans set different offsets, set modifier lines
    */
    it('SUB_ACE_UI_COMPONENT_SPAN_BASELINEOFFSET_0120', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPAN_BASELINEOFFSET_0120 start.`);
      Settings.createWindow("testability/pages/UiComponentSpanBaselineoffset/UiComponentSpanBaselineoffset012")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPAN_BASELINEOFFSET_0120 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_SPAN_BASELINEOFFSET_0130
     * @tc.name      SUB_ACE_UI_COMPONENT_SPAN_BASELINEOFFSET_0130
     * @tc.desc      Text component, set different offsets for multiple spans, select text
    */
    it('SUB_ACE_UI_COMPONENT_SPAN_BASELINEOFFSET_0130', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPAN_BASELINEOFFSET_0130 start.`);
      Settings.createWindow("testability/pages/UiComponentSpanBaselineoffset/UiComponentSpanBaselineoffset013")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPAN_BASELINEOFFSET_0130 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_SPAN_BASELINEOFFSET_0140
     * @tc.name      SUB_ACE_UI_COMPONENT_SPAN_BASELINEOFFSET_0140
     * @tc.desc      ImageSpan， Set verticalAlign
    */
    it('SUB_ACE_UI_COMPONENT_SPAN_BASELINEOFFSET_0140', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPAN_BASELINEOFFSET_0140 start.`);
      Settings.createWindow("testability/pages/UiComponentSpanBaselineoffset/UiComponentSpanBaselineoffset014")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPAN_BASELINEOFFSET_0140 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_SPAN_BASELINEOFFSET_0190
     * @tc.name      SUB_ACE_UI_COMPONENT_SPAN_BASELINEOFFSET_0190
     * @tc.desc      Text component setting textAlign
    */
    it('SUB_ACE_UI_COMPONENT_SPAN_BASELINEOFFSET_0190', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPAN_BASELINEOFFSET_0190 start.`);
      Settings.createWindow("testability/pages/UiComponentSpanBaselineoffset/UiComponentSpanBaselineoffset019")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPAN_BASELINEOFFSET_0190 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_SPAN_BASELINEOFFSET_0200
     * @tc.name      SUB_ACE_UI_COMPONENT_SPAN_BASELINEOFFSET_0200
     * @tc.desc      Text component setting padding
    */
    it('SUB_ACE_UI_COMPONENT_SPAN_BASELINEOFFSET_0200', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPAN_BASELINEOFFSET_0200 start.`);
      Settings.createWindow("testability/pages/UiComponentSpanBaselineoffset/UiComponentSpanBaselineoffset020")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPAN_BASELINEOFFSET_0200 finish.`);
      done()
    })
  })
}
