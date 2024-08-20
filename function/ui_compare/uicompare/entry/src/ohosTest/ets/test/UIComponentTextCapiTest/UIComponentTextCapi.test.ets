/*
 * SUB_ACE_UI_ATTRIBUTES_FONT_INTERFACE_0010:设置文本颜色
 *
 * Settings.createWindow(config.url)：
 *  创建窗口，更改窗口基本配置，更改方式详见model/Settings createWindow方法
 *
 * windowSnap.snapShot(globalThis.context)：
 *  窗口截屏&图片文件保存，存储在设备端
 *  存储文件固定，单挑用例执行后覆盖，用于自动化UI对比
 *  支持调试更改文件名为时间戳格式，更改model/snapShot createAndGetFile方法 注释L35，放开L32，L33
 *
 * Logger日志使用方法：
 *  import Logger form './model/Logger'
 *  Logger.info(TAG,`config = ${config}, err = ${JSON.stringify(exception)}`)
 * */
import { describe, beforeAll, beforeEach, afterEach, afterAll, it, expect } from '@ohos/hypium'
import Settings from '../model/Settings'
import windowSnap from '../model/snapShot'
import Logger from '../model/Logger'
import Utils from '../model/Utils'
export default function UIComponentTextCapi() {
  describe('UIComponentTextCapi', () => {
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
 * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_CAPI_0010
 * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_CAPI_0010
 * @tc.desc        Add Text, Set id
 */
    it('SUB_ACE_UI_COMPONENT_TEXT_CAPI_0010', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CAPI_0010 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCapi/UIComponentTextCapi001")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CAPI_0010 finish.`);
      done()
    })

    /*
     * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_CAPI_0020
     * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_CAPI_0020
     * @tc.desc        Set fontsize
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CAPI_0020', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CAPI_0020 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCapi/UIComponentTextCapi002")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CAPI_0020 finish.`);
      done()
    })

    /*
     * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_CAPI_0030
     * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_CAPI_0030
     * @tc.desc        Set value
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CAPI_0030', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CAPI_0030 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCapi/UIComponentTextCapi003")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CAPI_0030 finish.`);
      done()
    })

    /*
     * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_CAPI_0040
     * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_CAPI_0040
     * @tc.desc        Set fontcolor
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CAPI_0040', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CAPI_0040 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCapi/UIComponentTextCapi004")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CAPI_0040 finish.`);
      done()
    })

    /*
     * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_CAPI_0050
     * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_CAPI_0050
     * @tc.desc        Set fontstyle
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CAPI_0050', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CAPI_0050 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCapi/UIComponentTextCapi005")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CAPI_0050 finish.`);
      done()
    })

    /*
     * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_CAPI_0060
     * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_CAPI_0060
     * @tc.desc        Set fontweight.bolder
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CAPI_0060', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CAPI_0060 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCapi/UIComponentTextCapi006")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CAPI_0060 finish.`);
      done()
    })

    /*
     * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_CAPI_0070
     * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_CAPI_0070
     * @tc.desc        Set fontweight.lighter
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CAPI_0070', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CAPI_0070 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCapi/UIComponentTextCapi007")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CAPI_0070 finish.`);
      done()
    })

    /*
     * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_CAPI_0080
     * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_CAPI_0080
     * @tc.desc        Set fontweight.normal
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CAPI_0080', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CAPI_0080 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCapi/UIComponentTextCapi008")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CAPI_0080 finish.`);
      done()
    })

    /*
     * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_CAPI_0090
     * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_CAPI_0090
     * @tc.desc        Set fontweight.regular
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CAPI_0090', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CAPI_0090 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCapi/UIComponentTextCapi009")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CAPI_0090 finish.`);
      done()
    })

    /*
     * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_CAPI_0100
     * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_CAPI_0100
     * @tc.desc        Set fontweight.medium
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CAPI_0100', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CAPI_0100 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCapi/UIComponentTextCapi010")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CAPI_0100 finish.`);
      done()
    })

    /*
     * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_CAPI_0110
     * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_CAPI_0110
     * @tc.desc        Set fontweight.bold
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CAPI_0110', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CAPI_0110 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCapi/UIComponentTextCapi011")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CAPI_0110 finish.`);
      done()
    })

    /*
     * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_CAPI_0120
     * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_CAPI_0120
     * @tc.desc        Set fontweight.bolder
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CAPI_0120', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CAPI_0120 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCapi/UIComponentTextCapi012")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CAPI_0120 finish.`);
      done()
    })

    /*
     * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_CAPI_0130
     * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_CAPI_0130
     * @tc.desc        Set fontfamily
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CAPI_0130', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CAPI_0130 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCapi/UIComponentTextCapi013")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CAPI_0130 finish.`);
      done()
    })

    /*
     * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_CAPI_0150
     * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_CAPI_0150
     * @tc.desc        Set copyoption.inapp
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CAPI_0150', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CAPI_0150 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCapi/UIComponentTextCapi015")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CAPI_0150 finish.`);
      done()
    })

    /*
     * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_CAPI_0160
     * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_CAPI_0160
     * @tc.desc        Set copyoption.localdevice
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CAPI_0160', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CAPI_0160 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCapi/UIComponentTextCapi016")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CAPI_0160 finish.`);
      done()
    })

    /*
     * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_CAPI_0170
     * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_CAPI_0170
     * @tc.desc        Set copyoption.device
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CAPI_0170', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CAPI_0170 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCapi/UIComponentTextCapi017")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CAPI_0170 finish.`);
      done()
    })

    /*
     * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_CAPI_0180
     * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_CAPI_0180
     * @tc.desc        Set textlineheight 30
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CAPI_0180', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CAPI_0180 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCapi/UIComponentTextCapi018")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CAPI_0180 finish.`);
      done()
    })

    /*
     * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_CAPI_0190
     * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_CAPI_0190
     * @tc.desc        Set textlineheight -10
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CAPI_0190', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CAPI_0190 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCapi/UIComponentTextCapi019")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CAPI_0190 finish.`);
      done()
    })

    /*
     * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_CAPI_0200
     * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_CAPI_0200
     * @tc.desc        Set textlineheight,fontsize
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CAPI_0200', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CAPI_0200 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCapi/UIComponentTextCapi020")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CAPI_0200 finish.`);
      done()
    })

    /*
     * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_CAPI_0210
     * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_CAPI_0210
     * @tc.desc        Set textdecoration.none
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CAPI_0210', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CAPI_0210 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCapi/UIComponentTextCapi021")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CAPI_0210 finish.`);
      done()
    })

    /*
     * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_CAPI_0220
     * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_CAPI_0220
     * @tc.desc        Set textdecoration.underline
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CAPI_0220', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CAPI_0220 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCapi/UIComponentTextCapi022")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CAPI_0220 finish.`);
      done()
    })

    /*
     * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_CAPI_0230
     * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_CAPI_0230
     * @tc.desc        Set textdecoration.linethrough
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CAPI_0230', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CAPI_0230 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCapi/UIComponentTextCapi023")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CAPI_0230 finish.`);
      done()
    })

    /*
     * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_CAPI_0240
     * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_CAPI_0240
     * @tc.desc        Set textdecoration.overline
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CAPI_0240', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CAPI_0240 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCapi/UIComponentTextCapi024")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CAPI_0240 finish.`);
      done()
    })

    /*
     * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_CAPI_0260
     * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_CAPI_0260
     * @tc.desc        Set textcase.lowercase
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CAPI_0260', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CAPI_0260 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCapi/UIComponentTextCapi026")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CAPI_0260 finish.`);
      done()
    })

    /*
     * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_CAPI_0270
     * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_CAPI_0270
     * @tc.desc        Set textcase.uppercase
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CAPI_0270', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CAPI_0270 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCapi/UIComponentTextCapi027")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CAPI_0270 finish.`);
      done()
    })

    /*
     * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_CAPI_0280
     * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_CAPI_0280
     * @tc.desc        Set textcase.normal
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CAPI_0280', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CAPI_0280 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCapi/UIComponentTextCapi028")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CAPI_0280 finish.`);
      done()
    })

    /*
     * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_CAPI_0300
     * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_CAPI_0300
     * @tc.desc        Set textletterspacing 10
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CAPI_0300', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CAPI_0300 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCapi/UIComponentTextCapi030")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CAPI_0300 finish.`);
      done()
    })

    /*
     * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_CAPI_0310
     * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_CAPI_0310
     * @tc.desc        Set textletterspacing -5
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CAPI_0310', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CAPI_0310 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCapi/UIComponentTextCapi031")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CAPI_0310 finish.`);
      done()
    })

    /*
     * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_CAPI_0320
     * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_CAPI_0320
     * @tc.desc        Set textmaxlines 5
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CAPI_0320', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CAPI_0320 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCapi/UIComponentTextCapi032")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CAPI_0320 finish.`);
      done()
    })

    /*
     * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_CAPI_0330
     * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_CAPI_0330
     * @tc.desc        Set textmaxlines -1
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CAPI_0330', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CAPI_0330 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCapi/UIComponentTextCapi033")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CAPI_0330 finish.`);
      done()
    })

    /*
     * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_CAPI_0340
     * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_CAPI_0340
     * @tc.desc        Set textalign.start
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CAPI_0340', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CAPI_0340 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCapi/UIComponentTextCapi034")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CAPI_0340 finish.`);
      done()
    })

    /*
     * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_CAPI_0350
     * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_CAPI_0350
     * @tc.desc        Set textalign.center
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CAPI_0350', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CAPI_0350 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCapi/UIComponentTextCapi035")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CAPI_0350 finish.`);
      done()
    })

    /*
     * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_CAPI_0360
     * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_CAPI_0360
     * @tc.desc        Set textalign.end
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CAPI_0360', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CAPI_0360 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCapi/UIComponentTextCapi036")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CAPI_0360 finish.`);
      done()
    })

    /*
     * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_CAPI_0370
     * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_CAPI_0370
     * @tc.desc        Set textalign.justify
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CAPI_0370', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CAPI_0370 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCapi/UIComponentTextCapi037")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CAPI_0370 finish.`);
      done()
    })

    /*
     * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_CAPI_0380
     * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_CAPI_0380
     * @tc.desc        Set textalign.justify
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CAPI_0380', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CAPI_0380 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCapi/UIComponentTextCapi038")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CAPI_0380 finish.`);
      done()
    })

    /*
     * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_CAPI_0390
     * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_CAPI_0390
     * @tc.desc        Set textalign.justify
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CAPI_0390', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CAPI_0390 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCapi/UIComponentTextCapi039")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CAPI_0390 finish.`);
      done()
    })

    /*
     * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_CAPI_0400
     * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_CAPI_0400
     * @tc.desc        Set textalign.center, align.topstart
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CAPI_0400', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CAPI_0400 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCapi/UIComponentTextCapi040")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CAPI_0400 finish.`);
      done()
    })

    /*
 * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_CAPI_0410
 * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_CAPI_0410
 * @tc.desc        Set textalign.end, align.center
 */
    it('SUB_ACE_UI_COMPONENT_TEXT_CAPI_0410', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CAPI_0410 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCapi/UIComponentTextCapi041")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CAPI_0410 finish.`);
      done()
    })

    /*
     * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_CAPI_0420
     * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_CAPI_0420
     * @tc.desc        Set textalign.center, align.bottomend
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CAPI_0420', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CAPI_0420 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCapi/UIComponentTextCapi042")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CAPI_0420 finish.`);
      done()
    })

    /*
     * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_CAPI_0430
     * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_CAPI_0430
     * @tc.desc        Set textoverflow, textmaxlines
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CAPI_0430', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CAPI_0430 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCapi/UIComponentTextCapi043")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CAPI_0430 finish.`);
      done()
    })

    /*
     * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_CAPI_0440
     * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_CAPI_0440
     * @tc.desc        Set textoverflow, textmaxlines
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CAPI_0440', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CAPI_0440 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCapi/UIComponentTextCapi044")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CAPI_0440 finish.`);
      done()
    })

    /*
     * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_CAPI_0450
     * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_CAPI_0450
     * @tc.desc        Set textoverflow, textmaxlines
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CAPI_0450', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CAPI_0450 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCapi/UIComponentTextCapi045")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CAPI_0450 finish.`);
      done()
    })

    /*
     * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_CAPI_0460
     * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_CAPI_0460
     * @tc.desc        Set textoverflow, textmaxlines
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CAPI_0460', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CAPI_0460 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCapi/UIComponentTextCapi046")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CAPI_0460 finish.`);
      done()
    })

    /*
     * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_CAPI_0480
     * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_CAPI_0480
     * @tc.desc        Set textoverflow, textmaxlines, clip.false
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CAPI_0480', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CAPI_0480 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCapi/UIComponentTextCapi048")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CAPI_0480 finish.`);
      done()
    })

    /*
     * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_CAPI_0490
     * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_CAPI_0490
     * @tc.desc        Set baselineoffset 10
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CAPI_0490', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CAPI_0490 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCapi/UIComponentTextCapi049")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CAPI_0490 finish.`);
      done()
    })

    /*
     * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_CAPI_0500
     * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_CAPI_0500
     * @tc.desc        Set baselineoffset -5
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CAPI_0500', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CAPI_0500 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCapi/UIComponentTextCapi050")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CAPI_0500 finish.`);
      done()
    })

    /*
     * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_CAPI_0510
     * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_CAPI_0510
     * @tc.desc        Set baselineoffset 50%
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CAPI_0510', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CAPI_0510 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCapi/UIComponentTextCapi051")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CAPI_0510 finish.`);
      done()
    })

    /*
     * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_CAPI_0520
     * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_CAPI_0520
     * @tc.desc        Set textindent 10
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CAPI_0520', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CAPI_0520 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCapi/UIComponentTextCapi052")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CAPI_0520 finish.`);
      done()
    })

    /*
     * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_CAPI_0530
     * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_CAPI_0530
     * @tc.desc        Set textindent -10
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CAPI_0530', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CAPI_0530 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCapi/UIComponentTextCapi053")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CAPI_0530 finish.`);
      done()
    })

    /*
     * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_CAPI_0540
     * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_CAPI_0540
     * @tc.desc        Set shadow 0xFFFF0000
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CAPI_0540', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CAPI_0540 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCapi/UIComponentTextCapi054")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CAPI_0540 finish.`);
      done()
    })

    /*
     * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_CAPI_0550
     * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_CAPI_0550
     * @tc.desc        Set shadow 0xFF0000FF
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_CAPI_0550', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CAPI_0550 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCapi/UIComponentTextCapi055")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CAPI_0550 finish.`);
      done()
    })




  })
}