import {
  DEFAULT_COLOR_MODE,
  DEFAULT_FONT_SIZE,
  GET_BREAK_POINT_SYSTEM,
  GET_USER_CONFIG,
  kvDatabase,
  logger,
  preferenceDB,
  PreferenceEnum,
  UserConfigViewModel
} from "common";
import { common } from "@kit.AbilityKit";
import { AppStorageV2, promptAction, window } from "@kit.ArkUI";
import { colorModManager, newsManager, userConfigManager } from "feature";
import { BusinessError } from "@kit.BasicServicesKit";

const AppInit_LOG_TAG = 'AppInit: '

/**
 * 应用初始化接口
 */
export class AppInit {
  /**
   * 用户配置项初始化
   */
  configInit(context: common.UIAbilityContext) {
    const isPreferenceDBInitSuccess: boolean = preferenceDB.init(context)
    if (isPreferenceDBInitSuccess) {
      logger.info(`${AppInit_LOG_TAG}首选项数据对象初始化成功`)
      if(userConfigManager.syncDataToAppStorage()){
        return true
      }
      return false
    } else {
      promptAction.openToast({ message: `${AppInit_LOG_TAG}首选项数据对象初始化错误` })
      logger.error(`${AppInit_LOG_TAG}首选项数据对象初始化错误`)
      return false
    }
  }

  async initAll(uiAbilityContext: common.UIAbilityContext,applicationContext:common.ApplicationContext){
    await newsManager.init(uiAbilityContext)
    this.configInit(uiAbilityContext)
    colorModManager.init(applicationContext)
    newsManager.updateNewsListToDB()
  }

}

export const appInit = new AppInit()