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
export default function UiComponentTextCommonTextstyle() {
  describe('UiComponentTextCommonTextstyle', () => {
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
           * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0910
           * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0910
           * @tc.desc    caretColor=Color. Blue
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0910', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0910 start.`);
      Settings.createWindow("testability/pages/UiComponentTextCommonTextstyle/UiComponentTextCommonTextstyle0910")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0910 finish.`);
      done()
    })
    /*
          * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0920
          * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0920
          * @tc.desc    caretColor=0xffffff
   */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0920', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0920 start.`);
      Settings.createWindow("testability/pages/UiComponentTextCommonTextstyle/UiComponentTextCommonTextstyle0920")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0920 finish.`);
      done()
    })
    /*
              * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0930
              * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0930
              * @tc.desc    caretColor='rgb(255, 100, 255)'
       */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0930', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0930 start.`);
      Settings.createWindow("testability/pages/UiComponentTextCommonTextstyle/UiComponentTextCommonTextstyle0930")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0930 finish.`);
      done()
    })
    /*
              * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0940
              * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0940
              * @tc.desc    caretColor($r('app.color.yellow'))
       */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0940', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0940 start.`);
      Settings.createWindow("testability/pages/UiComponentTextCommonTextstyle/UiComponentTextCommonTextstyle0940")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0940 finish.`);
      done()
    })
    /*
              * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1900
              * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1900
              * @tc.desc    search caretStyle{width: '3vp',color:0xff}
       */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1900', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1900 start.`);
      Settings.createWindow("testability/pages/UiComponentTextCommonTextstyle/UiComponentTextCommonTextstyle1900")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1900 finish.`);
      done()
    })
    /*
              * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1950
              * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1950
              * @tc.desc    search fontColor=Color. Blue
       */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1950', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1950 start.`);
      Settings.createWindow("testability/pages/UiComponentTextCommonTextstyle/UiComponentTextCommonTextstyle1950")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1950 finish.`);
      done()
    })
    /*
          * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1960
          * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1960
          * @tc.desc    search fontColor=0xffffff
   */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1960', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1960 start.`);
      Settings.createWindow("testability/pages/UiComponentTextCommonTextstyle/UiComponentTextCommonTextstyle1960")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1960 finish.`);
      done()
    })
    /*
          * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1970
          * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1970
          * @tc.desc   search fontColor='rgb(255, 100, 255)'
   */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1970', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1970 start.`);
      Settings.createWindow("testability/pages/UiComponentTextCommonTextstyle/UiComponentTextCommonTextstyle1970")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1970 finish.`);
      done()
    })
    /*
              * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1980
              * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1980
              * @tc.desc    search fontColo=0xffffff
       */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1980', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1980 start.`);
      Settings.createWindow("testability/pages/UiComponentTextCommonTextstyle/UiComponentTextCommonTextstyle1980")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1980 finish.`);
      done()
    })
    /*
          * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1990
          * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1990
          * @tc.desc    search  set placeholderFont({size:16,weight:FontWeight.Bold,family:'Arial, HarmonyOS Sans',style:FontStyle.Italic})
   */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1990', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1990 start.`);
      Settings.createWindow("testability/pages/UiComponentTextCommonTextstyle/UiComponentTextCommonTextstyle1990")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1990 finish.`);
      done()
    })
    /*
          * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2000
          * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2000
          * @tc.desc    search placeholdercolor=Color. Blue
   */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2000', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2000 start.`);
      Settings.createWindow("testability/pages/UiComponentTextCommonTextstyle/UiComponentTextCommonTextstyle2000")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2000 finish.`);
      done()
    })
    /*
          * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2010
          * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2010
          * @tc.desc    search placeholdercolor=0xffffff
   */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2010', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2010 start.`);
      Settings.createWindow("testability/pages/UiComponentTextCommonTextstyle/UiComponentTextCommonTextstyle2010")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2010 finish.`);
      done()
    })
    /*
          * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2020
          * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2020
          * @tc.desc     search placeholdercolor='rgb(255, 100, 255)'
   */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2020', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2020 start.`);
      Settings.createWindow("testability/pages/UiComponentTextCommonTextstyle/UiComponentTextCommonTextstyle2020")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2020 finish.`);
      done()
    })
    /*
          * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2030
          * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2030
          * @tc.desc    search placeholderColor($r('app.color.yellow'))
   */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2030', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2010 start.`);
      Settings.createWindow("testability/pages/UiComponentTextCommonTextstyle/UiComponentTextCommonTextstyle2030")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2030 finish.`);
      done()
    })
    /*
          * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2090
          * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2090
          * @tc.desc    search set textAlign(TextAlign.Start)
   */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2090', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2090 start.`);
      Settings.createWindow("testability/pages/UiComponentTextCommonTextstyle/UiComponentTextCommonTextstyle2090")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2090 finish.`);
      done()
    })
    /*
          * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2100
          * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2100
          * @tc.desc    search set textAlign(TextAlign.Center)
   */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2100', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2100 start.`);
      Settings.createWindow("testability/pages/UiComponentTextCommonTextstyle/UiComponentTextCommonTextstyle2100")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2100 finish.`);
      done()
    })
    /*
          * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2110
          * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2110
          * @tc.desc    search set textAlign(TextAlign.End)
   */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2110', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2110 start.`);
      Settings.createWindow("testability/pages/UiComponentTextCommonTextstyle/UiComponentTextCommonTextstyle2110")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2110 finish.`);
      done()
    })
    /*
          * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2160
          * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2160
          * @tc.desc    ImageSpan set objectFit(ImageFit.Contain)
   */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2160', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2160 start.`);
      Settings.createWindow("testability/pages/UiComponentTextCommonTextstyle/UiComponentTextCommonTextstyle2160")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2160 finish.`);
      done()
    })
    /*
          * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2170
          * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2170
          * @tc.desc    ImageSpan set objectFit(ImageFit.Cover)
   */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2170', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2170 start.`);
      Settings.createWindow("testability/pages/UiComponentTextCommonTextstyle/UiComponentTextCommonTextstyle2170")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2170 finish.`);
      done()
    })
    /*
          * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2180
          * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2180
          * @tc.desc    ImageSpan set objectFit(ImageFit.Auto)
   */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2180', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2180 start.`);
      Settings.createWindow("testability/pages/UiComponentTextCommonTextstyle/UiComponentTextCommonTextstyle2180")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2180 finish.`);
      done()
    })
    /*
          * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2190
          * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2190
          * @tc.desc    ImageSpan set objectFit(ImageFit.Fill)
   */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2190', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2190 start.`);
      Settings.createWindow("testability/pages/UiComponentTextCommonTextstyle/UiComponentTextCommonTextstyle2190")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2190 finish.`);
      done()
    })
    /*
          * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2200
          * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2200
          * @tc.desc    ImageSpan set objectFit(ImageFit.ScaleDown)
   */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2200', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2200 start.`);
      Settings.createWindow("testability/pages/UiComponentTextCommonTextstyle/UiComponentTextCommonTextstyle2200")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2200 finish.`);
      done()
    })
    /*
          * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2210
          * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2210
          * @tc.desc    ImageSpan set objectFit(ImageFit.None)
   */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2210', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2210 start.`);
      Settings.createWindow("testability/pages/UiComponentTextCommonTextstyle/UiComponentTextCommonTextstyle2210")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2210 finish.`);
      done()
    })
    /*
          * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2220
          * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2220
          * @tc.desc    ImageSpan set verticalAlign(ImageSpanAlignment.TOP)
   */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2220', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2220 start.`);
      Settings.createWindow("testability/pages/UiComponentTextCommonTextstyle/UiComponentTextCommonTextstyle2220")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2220 finish.`);
      done()
    })
    /*
          * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2230
          * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2230
          * @tc.desc    ImageSpan set verticalAlign(ImageSpanAlignment.CENTER)
   */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2230', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2230 start.`);
      Settings.createWindow("testability/pages/UiComponentTextCommonTextstyle/UiComponentTextCommonTextstyle2230")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2230 finish.`);
      done()
    })
    /*
          * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2240
          * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2240
          * @tc.desc    ImageSpan set verticalAlign(ImageSpanAlignment.BOTTOM)
   */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2240', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2240 start.`);
      Settings.createWindow("testability/pages/UiComponentTextCommonTextstyle/UiComponentTextCommonTextstyle2240")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2240 finish.`);
      done()
    })
    /*
          * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2250
          * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2250
          * @tc.desc    ImageSpan set verticalAlign(ImageSpanAlignment.BASELINE)
   */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2250', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2250 start.`);
      Settings.createWindow("testability/pages/UiComponentTextCommonTextstyle/UiComponentTextCommonTextstyle2250")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_2250 finish.`);
      done()
    })

  })
}
