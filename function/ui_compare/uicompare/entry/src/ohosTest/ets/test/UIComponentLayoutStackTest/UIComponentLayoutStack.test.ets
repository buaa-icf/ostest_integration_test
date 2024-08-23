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

export default function UIComponentLayoutStackTest() {
  describe('UIComponentLayoutStackTest', () => {
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
           * @tc.number  SUB_ACE_UI_COMPONENT_LAYOUT_STACK_025
           * @tc.name    SUB_ACE_UI_COMPONENT_LAYOUT_STACK_025
           * @tc.desc    Set background={.u32=0xFFFF0000}
    */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_STACK_025', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_STACK_025 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutStack/UIComponentLayoutStack025")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_STACK_025 finish.`);
      done()
    })

    /*
      * @tc.number  SUB_ACE_UI_COMPONENT_LAYOUT_STACK_030
      * @tc.name    SUB_ACE_UI_COMPONENT_LAYOUT_STACK_030
      * @tc.desc    Set Xcomponent(node) stack
*/
    it('SUB_ACE_UI_COMPONENT_LAYOUT_STACK_030', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_STACK_030 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutStack/UIComponentLayoutStack030")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_STACK_030 finish.`);
      done()
    })


    /*
      * @tc.number  SUB_ACE_UI_COMPONENT_LAYOUT_STACK_031
      * @tc.name    SUB_ACE_UI_COMPONENT_LAYOUT_STACK_031
      * @tc.desc    set repeat=ARKUI_IMAGEREPEAT_NO_REPEAT
*/
    it('SUB_ACE_UI_COMPONENT_LAYOUT_STACK_031', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_STACK_031 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutStack/UIComponentLayoutStack031")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_STACK_031 finish.`);
      done()
    })

    /*
    * @tc.number  SUB_ACE_UI_COMPONENT_LAYOUT_STACK_032
    * @tc.name    SUB_ACE_UI_COMPONENT_LAYOUT_STACK_032
    * @tc.desc   set repeat=ARKUI_IMAGEREPEAT_X
*/
    it('SUB_ACE_UI_COMPONENT_LAYOUT_STACK_032', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_STACK_032 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutStack/UIComponentLayoutStack032")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_STACK_032 finish.`);
      done()
    })

    /*
  * @tc.number  SUB_ACE_UI_COMPONENT_LAYOUT_STACK_033
  * @tc.name    SUB_ACE_UI_COMPONENT_LAYOUT_STACK_033
  * @tc.desc    set repeat=ARKUI_IMAGEREPEAT_Y
*/
    it('SUB_ACE_UI_COMPONENT_LAYOUT_STACK_033', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_STACK_033 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutStack/UIComponentLayoutStack033")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_STACK_033 finish.`);
      done()
    })

    /*
 * @tc.number  SUB_ACE_UI_COMPONENT_LAYOUT_STACK_034
 * @tc.name    SUB_ACE_UI_COMPONENT_LAYOUT_STACK_034
 * @tc.desc   set repeat=ARKUI_IMAGEREPEAT_XY
*/
    it('SUB_ACE_UI_COMPONENT_LAYOUT_STACK_034', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_STACK_034 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutStack/UIComponentLayoutStack034")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_STACK_034 finish.`);
      done()
    })


    /*
* @tc.number  SUB_ACE_UI_COMPONENT_LAYOUT_STACK_038
* @tc.name    SUB_ACE_UI_COMPONENT_LAYOUT_STACK_038
* @tc.desc    set backgroundImageSize=50 50
*/
    it('SUB_ACE_UI_COMPONENT_LAYOUT_STACK_038', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_STACK_038 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutStack/UIComponentLayoutStack038")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_STACK_038 finish.`);
      done()
    })

    /*
* @tc.number  SUB_ACE_UI_COMPONENT_LAYOUT_STACK_039
* @tc.name    SUB_ACE_UI_COMPONENT_LAYOUT_STACK_039
* @tc.desc    set backgroundImageSize=0 0
*/
    it('SUB_ACE_UI_COMPONENT_LAYOUT_STACK_039', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_STACK_039 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutStack/UIComponentLayoutStack039")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_STACK_039 finish.`);
      done()
    })

    /*
* @tc.number  SUB_ACE_UI_COMPONENT_LAYOUT_STACK_041
* @tc.name    SUB_ACE_UI_COMPONENT_LAYOUT_STACK_041
* @tc.desc    set backgroundImageSize=50
*/
    it('SUB_ACE_UI_COMPONENT_LAYOUT_STACK_041', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_STACK_041 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutStack/UIComponentLayoutStack041")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_STACK_041 finish.`);
      done()
    })

    /*
* @tc.number  SUB_ACE_UI_COMPONENT_LAYOUT_STACK_042
* @tc.name    SUB_ACE_UI_COMPONENT_LAYOUT_STACK_042
* @tc.desc    set borderwidth={ 2, 5, 2, 5 }
*/
    it('SUB_ACE_UI_COMPONENT_LAYOUT_STACK_042', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_STACK_042 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutStack/UIComponentLayoutStack042")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_STACK_042 finish.`);
      done()
    })

    /*
* @tc.number  SUB_ACE_UI_COMPONENT_LAYOUT_STACK_043
* @tc.name    SUB_ACE_UI_COMPONENT_LAYOUT_STACK_043
* @tc.desc    set borderwidth=6
*/
    it('SUB_ACE_UI_COMPONENT_LAYOUT_STACK_043', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_STACK_043 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutStack/UIComponentLayoutStack043")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_STACK_043 finish.`);
      done()
    })

    /*
* @tc.number  SUB_ACE_UI_COMPONENT_LAYOUT_STACK_047
* @tc.name    SUB_ACE_UI_COMPONENT_LAYOUT_STACK_047
* @tc.desc    set borderwidth=0xFFFF0000
*/
    it('SUB_ACE_UI_COMPONENT_LAYOUT_STACK_047', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_STACK_047 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutStack/UIComponentLayoutStack047")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_STACK_047 finish.`);
      done()
    })

    /*
* @tc.number  SUB_ACE_UI_COMPONENT_LAYOUT_STACK_048
* @tc.name    SUB_ACE_UI_COMPONENT_LAYOUT_STACK_048
* @tc.desc    set borderwidth=0xFFFF0000,0xFFFFFFFF,0xFFFF0000,0xFFFFFFFF
*/
    it('SUB_ACE_UI_COMPONENT_LAYOUT_STACK_048', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_STACK_048 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutStack/UIComponentLayoutStack048")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_STACK_048 finish.`);
      done()
    })

    /*
* @tc.number  SUB_ACE_UI_COMPONENT_LAYOUT_STACK_049
* @tc.name    SUB_ACE_UI_COMPONENT_LAYOUT_STACK_049
* @tc.desc    set borderradius={ 5 }
*/
    it('SUB_ACE_UI_COMPONENT_LAYOUT_STACK_049', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_STACK_049 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutStack/UIComponentLayoutStack049")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_STACK_049 finish.`);
      done()
    })

    /*
* @tc.number  SUB_ACE_UI_COMPONENT_LAYOUT_STACK_050
* @tc.name    SUB_ACE_UI_COMPONENT_LAYOUT_STACK_050
* @tc.desc    set borderradius={ 5, 10, 5, 10 }
*/
    it('SUB_ACE_UI_COMPONENT_LAYOUT_STACK_050', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_STACK_050 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutStack/UIComponentLayoutStack050")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_STACK_050 finish.`);
      done()
    })


    /*
* @tc.number  SUB_ACE_UI_COMPONENT_LAYOUT_STACK_053
* @tc.name    SUB_ACE_UI_COMPONENT_LAYOUT_STACK_053
* @tc.desc    set opacity={ 0.5 } clip=1
*/
    it('SUB_ACE_UI_COMPONENT_LAYOUT_STACK_053', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_STACK_053 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutStack/UIComponentLayoutStack053")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_STACK_053 finish.`);
      done()
    })

    /*
* @tc.number  SUB_ACE_UI_COMPONENT_LAYOUT_STACK_054
* @tc.name    SUB_ACE_UI_COMPONENT_LAYOUT_STACK_054
* @tc.desc    set opacity={ 0.5 } clip=0
*/
    it('SUB_ACE_UI_COMPONENT_LAYOUT_STACK_054', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_STACK_054 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutStack/UIComponentLayoutStack054")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_STACK_054 finish.`);
      done()
    })

    /*
* @tc.number  SUB_ACE_UI_COMPONENT_LAYOUT_STACK_055
* @tc.name    SUB_ACE_UI_COMPONENT_LAYOUT_STACK_055
* @tc.desc    set opacity={ 0.5 } clip=0
*/
    it('SUB_ACE_UI_COMPONENT_LAYOUT_STACK_055', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_STACK_055 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutStack/UIComponentLayoutStack055")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_STACK_055 finish.`);
      done()
    })

    /*
* @tc.number  SUB_ACE_UI_COMPONENT_LAYOUT_STACK_064
* @tc.name    SUB_ACE_UI_COMPONENT_LAYOUT_STACK_064
* @tc.desc    set backgroundBlurStyle=thin
*/
    it('SUB_ACE_UI_COMPONENT_LAYOUT_STACK_064', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_STACK_064 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutStack/UIComponentLayoutStack064")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_STACK_064 finish.`);
      done()
    })

    /*
* @tc.number  SUB_ACE_UI_COMPONENT_LAYOUT_STACK_065
* @tc.name    SUB_ACE_UI_COMPONENT_LAYOUT_STACK_065
* @tc.desc    set backgroundBlurStyle=regular
*/
    it('SUB_ACE_UI_COMPONENT_LAYOUT_STACK_065', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_STACK_065 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutStack/UIComponentLayoutStack065")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_STACK_065 finish.`);
      done()
    })

    /*
* @tc.number  SUB_ACE_UI_COMPONENT_LAYOUT_STACK_066
* @tc.name    SUB_ACE_UI_COMPONENT_LAYOUT_STACK_066
* @tc.desc    set backgroundBlurStyle=thick
*/
    it('SUB_ACE_UI_COMPONENT_LAYOUT_STACK_066', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_STACK_066 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutStack/UIComponentLayoutStack066")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_STACK_066 finish.`);
      done()
    })

    /*
* @tc.number  SUB_ACE_UI_COMPONENT_LAYOUT_STACK_067
* @tc.name    SUB_ACE_UI_COMPONENT_LAYOUT_STACK_067
* @tc.desc    set shadow=ARKUI_SHADOW_STYLE_OUTER_DEFAULT_XS
*/
    it('SUB_ACE_UI_COMPONENT_LAYOUT_STACK_067', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_STACK_067 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutStack/UIComponentLayoutStack067")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_STACK_067 finish.`);
      done()
    })

    /*
* @tc.number  SUB_ACE_UI_COMPONENT_LAYOUT_STACK_068
* @tc.name    SUB_ACE_UI_COMPONENT_LAYOUT_STACK_068
* @tc.desc    set shadow=ARKUI_SHADOW_STYLE_OUTER_DEFAULT_SM
*/
    it('SUB_ACE_UI_COMPONENT_LAYOUT_STACK_068', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_STACK_068 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutStack/UIComponentLayoutStack068")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_STACK_068 finish.`);
      done()
    })

    /*
* @tc.number  SUB_ACE_UI_COMPONENT_LAYOUT_STACK_069
* @tc.name    SUB_ACE_UI_COMPONENT_LAYOUT_STACK_069
* @tc.desc    set shadow=ARKUI_SHADOW_STYLE_OUTER_DEFAULT_MD
*/
    it('SUB_ACE_UI_COMPONENT_LAYOUT_STACK_069', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_STACK_069 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutStack/UIComponentLayoutStack069")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_STACK_069 finish.`);
      done()
    })

    /*
* @tc.number  SUB_ACE_UI_COMPONENT_LAYOUT_STACK_070
* @tc.name    SUB_ACE_UI_COMPONENT_LAYOUT_STACK_070
* @tc.desc    set shadow=ARKUI_SHADOW_STYLE_OUTER_DEFAULT_LG
*/
    it('SUB_ACE_UI_COMPONENT_LAYOUT_STACK_070', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_STACK_069 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutStack/UIComponentLayoutStack070")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_STACK_070 finish.`);
      done()
    })

    /*
* @tc.number  SUB_ACE_UI_COMPONENT_LAYOUT_STACK_071
* @tc.name    SUB_ACE_UI_COMPONENT_LAYOUT_STACK_071
* @tc.desc    set shadow=ARKUI_SHADOW_STYLE_OUTER_FLOATING_SM
*/
    it('SUB_ACE_UI_COMPONENT_LAYOUT_STACK_071', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_STACK_071 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutStack/UIComponentLayoutStack071")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_STACK_071 finish.`);
      done()
    })

    /*
* @tc.number  SUB_ACE_UI_COMPONENT_LAYOUT_STACK_072
* @tc.name    SUB_ACE_UI_COMPONENT_LAYOUT_STACK_072
* @tc.desc    set shadow=ARKUI_SHADOW_STYLE_OUTER_FLOATING_MD
*/
    it('SUB_ACE_UI_COMPONENT_LAYOUT_STACK_072', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_STACK_071 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutStack/UIComponentLayoutStack072")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_STACK_072 finish.`);
      done()
    })

    /*
* @tc.number  SUB_ACE_UI_COMPONENT_LAYOUT_STACK_089
* @tc.name    SUB_ACE_UI_COMPONENT_LAYOUT_STACK_089
* @tc.desc    set borderStyle=ARKUI_BORDER_STYLE_SOLID
*/
    it('SUB_ACE_UI_COMPONENT_LAYOUT_STACK_089', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_STACK_089 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutStack/UIComponentLayoutStack089")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_STACK_089 finish.`);
      done()
    })

    /*
* @tc.number  SUB_ACE_UI_COMPONENT_LAYOUT_STACK_090
* @tc.name    SUB_ACE_UI_COMPONENT_LAYOUT_STACK_090
* @tc.desc    set borderStyle=ARKUI_BORDER_STYLE_SOLID，ARKUI_BORDER_STYLE_DASHED，ARKUI_BORDER_STYLE_DOTTED，ARKUI_BORDER_STYLE_DOTTED
*/
    it('SUB_ACE_UI_COMPONENT_LAYOUT_STACK_090', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_STACK_089 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutStack/UIComponentLayoutStack090")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_STACK_090 finish.`);
      done()
    })


  })
}
