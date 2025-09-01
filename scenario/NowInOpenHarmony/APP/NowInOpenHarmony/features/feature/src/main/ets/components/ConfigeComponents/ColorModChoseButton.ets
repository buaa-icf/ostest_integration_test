import { DEFAULT_COLOR_MODE, DEVICE_TYPES, GET_USER_CONFIG, logger, UserConfigViewModel } from "common"
import { AppStorageV2 } from "@kit.ArkUI"
import { colorModManager } from "../../managers/ColorModManager"
import { ConfigurationConstant } from "@kit.AbilityKit"
import { deviceInfo } from "@kit.BasicServicesKit"

const ColorModChoseButton_LOG_TAG = 'ColorModChoseButton: '

/**
 * 颜色模式切换按钮
 */
@ComponentV2
export struct ColorModChoseButton {
  @Local deviceType: DEVICE_TYPES =
    deviceInfo.deviceType === DEVICE_TYPES.PHONE ? DEVICE_TYPES.PHONE : DEVICE_TYPES.TABLET
  @Local appColorMode: 0 | 1 | 2 = DEFAULT_COLOR_MODE

  aboutToAppear(): void {
    this.appColorMode =
      AppStorageV2.connect(UserConfigViewModel, GET_USER_CONFIG, () => new UserConfigViewModel())!.colorModel
  }

  changeColorMode() {
    logger.debug(`${ColorModChoseButton_LOG_TAG}颜色切换触发`)
    if (this.appColorMode === 2) {
      this.appColorMode = 0
      colorModManager.setLightMod()
      logger.info(`${ColorModChoseButton_LOG_TAG}点击生效，切换为浅色模式`)
    } else if (this.appColorMode === 0) {
      this.appColorMode = 1
      colorModManager.setDarkMod()
      logger.info(`${ColorModChoseButton_LOG_TAG}点击生效，切换为深色模式`)
    } else if (this.appColorMode === 1) {
      this.appColorMode = 2
      colorModManager.setDefaultColorMode()
      logger.info(`${ColorModChoseButton_LOG_TAG}点击生效，切换为跟随系统模式`)
    }
  }

  build() {
    Stack({ alignContent: Alignment.Center }) {
      Image($rawfile('colorButtonBG.svg'))
        .width('90%')
        .height('90%')
        .fillColor($r('app.color.color_change_button_svg'))
      if (this.appColorMode === 2) {
        Text('系')
          .textStyle(this.deviceType)
      } else if (this.appColorMode === 1) {
        Text('深')
          .textStyle(this.deviceType)
      } else if (this.appColorMode === 0) {
        Text('浅')
          .textStyle(this.deviceType)
      }
    }
    .width(this.deviceType === DEVICE_TYPES.PHONE ? 35 : 45)
    .height(this.deviceType === DEVICE_TYPES.PHONE ? 35 : 45)
    .shadow({
      color: Color.Black,
      radius: 10
    })
    .backgroundColor($r('app.color.color_change_button_background'))
    .onClick(() => {
      this.changeColorMode()
    })
    .borderRadius(99)
  }
}

@Extend(Text)
function textStyle(deviceType: DEVICE_TYPES) {
  .fontSize(deviceType === DEVICE_TYPES.PHONE ? 20 : 30)
  .fontWeight(800)
  .fontColor($r('app.color.color_change_button_font'))
}
