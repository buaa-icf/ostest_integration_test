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
export default function UIComponentTextTextinputInterface() {
  describe('UIComponentTextTextinputInterface', () => {
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
   * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0020
   * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0020
   * @tc.desc        Set placeholderColor.green
   */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0020', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0020 start.`);
      // 创建 Driver 实例，指定页面路径
      Settings.createWindow("testability/pages/UIComponentTextTextinputInterface/UIComponentTextTextinputInterface002")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0020 finish.`);
      done()
    })

    /*
 * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0070
 * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0070
 * @tc.desc        Set placeholderFont({size:-1,weight:FontWeight.Lighter,family: ,style:FontStyle.Normal})
 */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0070', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0070 start.`);
      // 创建 Driver 窗口并设置页面
      Settings.createWindow("testability/pages/UIComponentTextTextinputInterface/UIComponentTextTextinputInterface007")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0070 finish.`);
      done()
    })

    /*
     * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0080
     * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0080
     * @tc.desc        Set placeholderFont({size:1,weight:FontWeight.Normal ,family: ,style:FontStyle.Normal})
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0080', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0080 start.`);
      // 创建 Driver 窗口并设置页面
      Settings.createWindow("testability/pages/UIComponentTextTextinputInterface/UIComponentTextTextinputInterface008")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0080 finish.`);
      done()
    })

    /*
     * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0090
     * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0090
     * @tc.desc        Set placeholderFont({size:'-11',weight:FontWeight.Medium ,family: ,style:FontStyle.Italic})
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0090', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0090 start.`);
      // 创建 Driver 窗口并设置页面
      Settings.createWindow("testability/pages/UIComponentTextTextinputInterface/UIComponentTextTextinputInterface009")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0090 finish.`);
      done()
    })

    /*
     * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0100
     * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0100
     * @tc.desc        Set placeholderFont({size:'-1',weight:FontWeight.Regular,family: ,style:FontStyle.Normal})
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0100', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0100 start.`);
      // 创建 Driver 窗口并设置页面
      Settings.createWindow("testability/pages/UIComponentTextTextinputInterface/UIComponentTextTextinputInterface010")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0100 finish.`);
      done()
    })

    /*
     * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0110
     * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0110
     * @tc.desc        Set placeholderFont：placeholderFont({size:'0',weight:1,family: ,style:FontStyle.Italic})
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0110', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0110 start.`);
      // 创建 Driver 窗口并设置页面
      Settings.createWindow("testability/pages/UIComponentTextTextinputInterface/UIComponentTextTextinputInterface011")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0110 finish.`);
      done()
    })

    /*
     * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0120
     * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0120
     * @tc.desc        Set placeholderFont({size: 0,weight:FontWeight.Regular ,family: ,style:FontStyle.Normal})
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0120', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0120 start.`);
      // 创建 Driver 窗口并设置页面
      Settings.createWindow("testability/pages/UIComponentTextTextinputInterface/UIComponentTextTextinputInterface012")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0120 finish.`);
      done()
    })

    /*
     * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0130
     * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0130
     * @tc.desc        Set placeholderFont({size:'11',weight:FontWeight.Bolder ,family: ,style:FontStyle.Italic})
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0130', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0130 start.`);
      // 创建 Driver 窗口并设置页面
      Settings.createWindow("testability/pages/UIComponentTextTextinputInterface/UIComponentTextTextinputInterface013")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0130 finish.`);
      done()
    })

    /*
     * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0140
     * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0140
     * @tc.desc        Set placeholderFont({size:1,weight:-1,family: ,style:FontStyle.Italic})
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0140', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0140 start.`);
      // 创建 Driver 窗口并设置页面
      Settings.createWindow("testability/pages/UIComponentTextTextinputInterface/UIComponentTextTextinputInterface014")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0140 finish.`);
      done()
    })

    /*
     * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0150
     * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0150
     * @tc.desc        Set placeholderFont({size:1,weight:0,family: ,style:FontStyle.Italic})
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0150', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0150 start.`);
      // 创建 Driver 窗口并设置页面
      Settings.createWindow("testability/pages/UIComponentTextTextinputInterface/UIComponentTextTextinputInterface015")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0150 finish.`);
      done()
    })

    /*
     * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0160
     * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0160
     * @tc.desc        Set placeholderFont({size:1,weight:1,family: ,style:FontStyle.Italic})
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0160', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0160 start.`);
      // 创建 Driver 窗口并设置页面
      Settings.createWindow("testability/pages/UIComponentTextTextinputInterface/UIComponentTextTextinputInterface016")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0160 finish.`);
      done()
    })

    /*
     * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0170
     * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0170
     * @tc.desc        Set placeholderFont({size:'1',weight:FontWeight.Bold ,family: ,style:FontStyle.Italic})
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0170', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0170 start.`);
      // 创建 Driver 窗口并设置页面
      Settings.createWindow("testability/pages/UIComponentTextTextinputInterface/UIComponentTextTextinputInterface017")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0170 finish.`);
      done()
    })

    /*
     * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0180
     * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0180
     * @tc.desc        Set placeholderFont({size:1,weight:'-1',family: ,style:FontStyle.Italic})
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0180', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0180 start.`);
      // 创建 Driver 窗口并设置页面
      Settings.createWindow("testability/pages/UIComponentTextTextinputInterface/UIComponentTextTextinputInterface018")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0180 finish.`);
      done()
    })

    /*
     * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0190
     * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0190
     * @tc.desc        Set placeholderFont({size:1,weight:'-11',family: ,style:FontStyle.Italic})
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0190', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0190 start.`);
      // 创建 Driver 窗口并设置页面
      Settings.createWindow("testability/pages/UIComponentTextTextinputInterface/UIComponentTextTextinputInterface019")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0190 finish.`);
      done()
    })

    /*
     * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0200
     * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0200
     * @tc.desc        Set placeholderFont({size:1,weight:'0',family: ,style:FontStyle.Italic})
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0200', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0200 start.`);
      // 创建 Driver 窗口并设置页面
      Settings.createWindow("testability/pages/UIComponentTextTextinputInterface/UIComponentTextTextinputInterface020")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0200 finish.`);
      done()
    })

    /*
     * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0210
     * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0210
     * @tc.desc        Set placeholderFont({size:1,weight:'1',family: ,style:FontStyle.Italic})
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0210', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0210 start.`);
      // 创建 Driver 窗口并设置页面
      Settings.createWindow("testability/pages/UIComponentTextTextinputInterface/UIComponentTextTextinputInterface021")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0210 finish.`);
      done()
    })

    /*
     * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0220
     * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0220
     * @tc.desc        Set placeholderFont({size:1,weight:'11',family: ,style:FontStyle.Italic})
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0220', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0220 start.`);
      // 创建 Driver 窗口并设置页面
      Settings.createWindow("testability/pages/UIComponentTextTextinputInterface/UIComponentTextTextinputInterface022")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0220 finish.`);
      done()
    })

    /*
     * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0280
     * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0280
     * @tc.desc        Set TextInputStyle. Inline
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0280', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0280 start.`);
      // 创建 Driver 窗口并设置页面
      Settings.createWindow("testability/pages/UIComponentTextTextinputInterface/UIComponentTextTextinputInterface028")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0280 finish.`);
      done()
    })

    /*
 * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0330
 * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0330
 * @tc.desc        Set TextAlign.Center
 */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0330', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0330 start.`);
      // 创建 Driver 窗口并设置页面
      Settings.createWindow("testability/pages/UIComponentTextTextinputInterface/UIComponentTextTextinputInterface033")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0330 finish.`);
      done()
    })

    /*
     * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0340
     * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0340
     * @tc.desc        Set TextAlign.End
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0340', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0340 start.`);
      // 创建 Driver 窗口并设置页面
      Settings.createWindow("testability/pages/UIComponentTextTextinputInterface/UIComponentTextTextinputInterface034")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0340 finish.`);
      done()
    })

    /*
     * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0350
     * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0350
     * @tc.desc        Set TextAlign.Start
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0350', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0350 start.`);
      // 创建 Driver 窗口并设置页面
      Settings.createWindow("testability/pages/UIComponentTextTextinputInterface/UIComponentTextTextinputInterface035")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0350 finish.`);
      done()
    })

    /*
     * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0410
     * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0410
     * @tc.desc        Set TextInputStyle.Default
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0410', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0410 start.`);
      // 创建 Driver 窗口并设置页面
      Settings.createWindow("testability/pages/UIComponentTextTextinputInterface/UIComponentTextTextinputInterface041")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0410 finish.`);
      done()
    })

    /*
     * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0480
     * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0480
     * @tc.desc        NoSet showPasswordIcon
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0480', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0480 start.`);
      // 创建 Driver 窗口并设置页面
      Settings.createWindow("testability/pages/UIComponentTextTextinputInterface/UIComponentTextTextinputInterface048")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0480 finish.`);
      done()
    })

    /*
     * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0490
     * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0490
     * @tc.desc        Set TextAlign.End
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0490', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0490 start.`);
      // 创建 Driver 窗口并设置页面
      Settings.createWindow("testability/pages/UIComponentTextTextinputInterface/UIComponentTextTextinputInterface049")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0490 finish.`);
      done()
    })

    /*
     * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0560
     * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0560
     * @tc.desc        Set TextContentStyle.default
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0560', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0560 start.`);
      // 创建 Driver 窗口并设置页面
      Settings.createWindow("testability/pages/UIComponentTextTextinputInterface/UIComponentTextTextinputInterface056")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0560 finish.`);
      done()
    })

    /*
     * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0570
     * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0570
     * @tc.desc        Set TextContentStyle=Inline
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0570', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0570 start.`);
      // 创建 Driver 窗口并设置页面
      Settings.createWindow("testability/pages/UIComponentTextTextinputInterface/UIComponentTextTextinputInterface057")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0570 finish.`);
      done()
    })

    /*
     * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0580
     * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0580
     * @tc.desc        Set InputType: Normal
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0580', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0580 start.`);
      // 创建 Driver 窗口并设置页面
      Settings.createWindow("testability/pages/UIComponentTextTextinputInterface/UIComponentTextTextinputInterface058")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0580 finish.`);
      done()
    })

    /*
     * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0590
     * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0590
     * @tc.desc        NoSet fontFamily
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0590', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0590 start.`);
      // 创建 Driver 窗口并设置页面
      Settings.createWindow("testability/pages/UIComponentTextTextinputInterface/UIComponentTextTextinputInterface059")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0590 finish.`);
      done()
    })

    /*
     * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0600
     * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0600
     * @tc.desc        Set InputType: Password
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0600', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0600 start.`);
      // 创建 Driver 窗口并设置页面
      Settings.createWindow("testability/pages/UIComponentTextTextinputInterface/UIComponentTextTextinputInterface060")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0600 finish.`);
      done()
    })

    /*
     * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0610
     * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0610
     * @tc.desc        NoSet showPasswordIcon
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0610', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0610 start.`);
      // 创建 Driver 窗口并设置页面
      Settings.createWindow("testability/pages/UIComponentTextTextinputInterface/UIComponentTextTextinputInterface061")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0610 finish.`);
      done()
    })

    /*
     * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0620
     * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0620
     * @tc.desc        Set InputType: PhoneNumber
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0620', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0620 start.`);
      // 创建 Driver 窗口并设置页面
      Settings.createWindow("testability/pages/UIComponentTextTextinputInterface/UIComponentTextTextinputInterface062")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0620 finish.`);
      done()
    })

    /*
     * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0630
     * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0630
     * @tc.desc        Set InputType: Number
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0630', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0630 start.`);
      // 创建 Driver 窗口并设置页面
      Settings.createWindow("testability/pages/UIComponentTextTextinputInterface/UIComponentTextTextinputInterface063")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0630 finish.`);
      done()
    })

    /*
     * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0640
     * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0640
     * @tc.desc        Set InputType: Email
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0640', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0640 start.`);
      // 创建 Driver 窗口并设置页面
      Settings.createWindow("testability/pages/UIComponentTextTextinputInterface/UIComponentTextTextinputInterface064")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0640 finish.`);
      done()
    })

    /*
     * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0680
     * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0680
     * @tc.desc        Set textselection（45,50）
     */
    // it('SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0680', 0, async (done: Function) => {
    //   Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0680 start.`);
    //   // 创建 Driver 窗口并设置页面
    //   Settings.createWindow("testability/pages/UIComponentTextTextinputInterface/UIComponentTextTextinputInterface068")
    //   await Utils.sleep(1000)
    //   windowSnap.snapShot()
    //   await Utils.sleep(1000)
    //   Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERFACE_0680 finish.`);
    //   done()
    // })




  })
}
