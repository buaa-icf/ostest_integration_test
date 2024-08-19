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
export default function UIComponentTextTextinputPolymorphic() {
  describe('UIComponentTextTextinputPolymorphic', () => {
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
   * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_POLYMORPHIC_0010
   * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_POLYMORPHIC_0010
   * @tc.desc        Set showUnderline
   */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_POLYMORPHIC_0010', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_POLYMORPHIC_0010 start.`);
      // 创建 Driver 实例，指定页面路径
      Settings.createWindow("testability/pages/UIComponentTextTextinputPolymorphic/UIComponentTextTextinputPolymorphic001")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_POLYMORPHIC_0010 finish.`);
      done()
    })

    /*
 * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_POLYMORPHIC_0020
 * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_POLYMORPHIC_0020
 * @tc.desc        Set showUnderline(false)
 */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_POLYMORPHIC_0020', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_POLYMORPHIC_0020 start.`);
      Settings.createWindow("testability/pages/UIComponentTextTextinputPolymorphic/UIComponentTextTextinputPolymorphic002")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_POLYMORPHIC_0020 finish.`);
      done()
    })

    /*
     * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_POLYMORPHIC_0030
     * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_POLYMORPHIC_0030
     * @tc.desc        Set showUnderline(true)
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_POLYMORPHIC_0030', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_POLYMORPHIC_0030 start.`);
      Settings.createWindow("testability/pages/UIComponentTextTextinputPolymorphic/UIComponentTextTextinputPolymorphic003")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_POLYMORPHIC_0030 finish.`);
      done()
    })

    /*
     * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_POLYMORPHIC_0040
     * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_POLYMORPHIC_0040
     * @tc.desc        Set showUnderline(true)
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_POLYMORPHIC_0040', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_POLYMORPHIC_0040 start.`);
      Settings.createWindow("testability/pages/UIComponentTextTextinputPolymorphic/UIComponentTextTextinputPolymorphic004")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_POLYMORPHIC_0040 finish.`);
      done()
    })

    /*
     * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_POLYMORPHIC_0050
     * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_POLYMORPHIC_0050
     * @tc.desc        Set showUnderline(true)
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_POLYMORPHIC_0050', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_POLYMORPHIC_0050 start.`);
      Settings.createWindow("testability/pages/UIComponentTextTextinputPolymorphic/UIComponentTextTextinputPolymorphic005")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_POLYMORPHIC_0050 finish.`);
      done()
    })

    /*
     * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_POLYMORPHIC_0060
     * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_POLYMORPHIC_0060
     * @tc.desc        Set showError('Err')
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_POLYMORPHIC_0060', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_POLYMORPHIC_0060 start.`);
      Settings.createWindow("testability/pages/UIComponentTextTextinputPolymorphic/UIComponentTextTextinputPolymorphic006")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_POLYMORPHIC_0060 finish.`);
      done()
    })

    /*
     * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_POLYMORPHIC_0070
     * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_POLYMORPHIC_0070
     * @tc.desc        Set passwordIcon({onIconSrc:this.PassWordSrc1,offIconSrc : this.PassWordSrc2})
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_POLYMORPHIC_0070', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_POLYMORPHIC_0070 start.`);
      Settings.createWindow("testability/pages/UIComponentTextTextinputPolymorphic/UIComponentTextTextinputPolymorphic007")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_POLYMORPHIC_0070 finish.`);
      done()
    })

    /*
     * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_POLYMORPHIC_0080
     * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_POLYMORPHIC_0080
     * @tc.desc        Set showUnit，value.MB
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_POLYMORPHIC_0080', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_POLYMORPHIC_0080 start.`);
      Settings.createWindow("testability/pages/UIComponentTextTextinputPolymorphic/UIComponentTextTextinputPolymorphic008")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_POLYMORPHIC_0080 finish.`);
      done()
    })




  })
}