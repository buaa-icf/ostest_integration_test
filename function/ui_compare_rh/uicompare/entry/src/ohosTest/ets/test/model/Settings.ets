/*
 * Copyright (C) 2024 Huawei Device Co., Ltd.
 * Licensed under the Apache License, Version 2.0 (the 'License')
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an 'AS IS' BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

import screen from '@ohos.screen';
import window from '@ohos.window';
import Logger from './Logger';
import { GlobalThis } from './globalThis'
import { BusinessError } from '@ohos.base'
import Window from '@ohos.window'
import common from '@ohos.app.ability.common';
import { i18n } from '@kit.LocalizationKit';
import { router } from '@kit.ArkUI';
import { systemDateTime } from '@kit.BasicServicesKit';

const TAG: string = '[TEST]';

async function sleep(time: number): Promise<void> {
  const result: string = await new Promise((resolve: Function) => {
    setTimeout(() => {
      resolve('sleep ok')
    }, time)
  });
  console.info(result);
}

class Settings {
  isPhone: boolean = true;
  windowClass: window.Window | undefined = undefined
  windowCreateType: string = "changeWindow";
  private static DEFAULT_WIDTH: number = 720;
  private static DEFAULT_HEIGHT: number = 1280;
  private static DEFAULT_DPI: number = 240;
  private static DEFAULT_OFFSET_X: number = 0;
  private static DEFAULT_OFFSET_Y: number = 60;
  private portrait: boolean = true

  changeWindowPosition(windowClass: window.Window, X: number | undefined, Y: number | undefined) {
    //为悬浮窗设置位置
    windowClass.moveWindowTo(X, Y, (err) => {
      if (err.code) {
        Logger.error(TAG, `Failed to move the window. Cause : ${JSON.stringify(err)}`)
        return;
      }
      Logger.info(TAG, 'Succeed moveWindowTo.');
    })
  }

  changeWindowSize(windowClass: window.Window, width: number | undefined, height: number | undefined) {
    //为悬浮窗设置大小
    windowClass.resize(width, height, (err) => {
      if (err.code) {
        Logger.error(TAG, `Failed to change the window size. Cause : ${JSON.stringify(err)}`)
        return;
      }
      Logger.info(TAG, 'Succeed changeWindowSize');
    })
  }

  loadContent(windowClass: window.Window, pageURI: string) {
    //为悬浮窗加载对应的目标页面
    windowClass.setUIContent(pageURI, (err) => {
      if (err.code) {
        Logger.error(TAG, `Failed to load the window. Cause : ${JSON.stringify(err)}`)
        return;
      }
      Logger.info(TAG, `Succeeded in loading the content.`);

      //显示悬浮窗
      windowClass.showWindow((err) => {
        if (err.code) {
          Logger.error(TAG, `Failed to show the window. Cause : ${JSON.stringify(err)}`)
          return;
        }
        Logger.info(TAG, `Succeeded in showing the window.`);
      })
    })
  }

  loadContentChange(windowClass: window.Window, pageURI: string) {
    //为悬浮窗加载对应的目标页面
    windowClass.setUIContent(pageURI, (err) => {
      if (err.code) {
        Logger.error(TAG, `Failed to load the window. Cause : ${JSON.stringify(err)}`)
        return;
      }
      Logger.info(TAG, `Succeeded in loading the content.`);

    })
  }

  changeDpi(dpi: number) {
    let screenClass: screen.Screen;
    screen.getAllScreens((err: BusinessError, data: Array<screen.Screen>) => {
      if (err.code) {
        Logger.error(TAG, `Failed to get all screens. Cause : ${JSON.stringify(err)}`);
        return;
      }
      Logger.info(TAG, `Succeeded in getting all screens. Data:${JSON.stringify(data)}`);

      screenClass = data[0];
      //设置设备dpi
      screenClass.setDensityDpi(dpi, (err: BusinessError) => {
        if (err.code) {
          Logger.error(TAG, `Failed to set the pixel density. Code : ${JSON.stringify(err)}`)
          return;
        }
        Logger.info(TAG, `Succeeded in setting the pixel density`);
      })
    })
  }

  setWindowSystemBarEnable(windowClass: window.Window, names: Array<'status' | 'navigation'>) {
    windowClass.setWindowSystemBarEnable(names, (err: BusinessError) => {
      const errCode: number = err.code;
      if (errCode) {
        Logger.error(TAG, 'Failed to set the system bar to be invisible. Cause:' + JSON.stringify(err))
        return;
      }
      Logger.info(TAG, `Succeeded in set the system bar to be invisible`);
    });
  }

  destroyWindow(windowClass: window.Window) {
    if (!this.isPhone) {
      //销毁窗口
      windowClass.destroyWindow((err) => {
        if (err.code) {
          Logger.error(TAG, `Failed to destroy the window. Cause : ${JSON.stringify(err)}`)
          return;
        }
        Logger.info(TAG, `Succeeded in destroy the window.`);
      })
    }
  }

  /*
   * 窗口页面更新
   * Setting.createWindow(pageURI: String, {X,Y,width,height,dpi}?:{X?:number,Y?:number,width?:number,height?:number,dpi?:number}):void
   * 必填：
   * pageURI：页面路由
   * 选填：
   * X,Y：窗口相对于左上角的位置，默认X=100,Y=100 单位为px
   * width,height:窗口宽高，默认width=600,height=1250 可配置范围：[0,2560],单位为vp
   * dpi:像素密度，默认dpi=330，可配置范围：80-640
   * */

  createWindow(pageURI: string, X?: number | undefined, Y?: number | undefined, width?: number | undefined,
    height?: number | undefined, dpi?: number | undefined) {
    if (!this.isPhone) {
      this.windowCreateType = "createWindow"
      if (X == undefined) {
        X = Settings.DEFAULT_OFFSET_X;
      }
      if (Y == undefined) {
        Y = Settings.DEFAULT_OFFSET_Y;
      }
      if (width == undefined) {
        width = Settings.DEFAULT_WIDTH;
      }
      if (height == undefined) {
        height = Settings.DEFAULT_HEIGHT - Settings.DEFAULT_OFFSET_Y;
      }
      if (dpi == undefined) {
        dpi = Settings.DEFAULT_DPI;
      }
      Logger.info(TAG, `params,pageURI=${pageURI},X=${X},Y=${Y},width=${width},height=${height},dpi=${dpi}`)
      this.changeDpi(dpi)
      sleep(1000)
      let config: window.Configuration = {
        name: "floatWindow",
        windowType: window.WindowType.TYPE_FLOAT,
        ctx: GlobalThis.getInstance().getContext('context')
      };

      window.createWindow(config, (err, data) => {
        if (err.code) {
          Logger.error(TAG, `Failed to create the floatWindow. Cause : ${JSON.stringify(err)}`)
          return;
        }
        Logger.info(TAG, `Succeeded in creating the floatWindow. Data : ${JSON.stringify(err)}`);
        this.windowClass = data;
        this.changeWindowPosition(this.windowClass, X, Y);
        this.changeWindowSize(this.windowClass, width, height);
        this.loadContent(this.windowClass, pageURI)
      })
    } else {
      try {
        router.pushUrl({
          url: pageURI
        })
        Logger.info(TAG, `params,pageURI=${pageURI}`)
      } catch (e) {
        Logger.error(TAG, `params,pageURI=${pageURI} errpr ${e}`)
      }
    }
  }

  async changeWindow(pageURI: string, width?: number | undefined, height?: number | undefined,
    dpi?: number | undefined) {
    if (!this.isPhone) {
      this.windowCreateType = "changeWindow"
      if (width == undefined) {
        width = Settings.DEFAULT_WIDTH;
      }
      if (height == undefined) {
        height = Settings.DEFAULT_HEIGHT - Settings.DEFAULT_OFFSET_Y;
      }
      if (dpi == undefined) {
        dpi = Settings.DEFAULT_DPI;
      }
      Logger.info(TAG, `params,pageURI=${pageURI},width=${width},height=${height},dpi=${dpi}`)
      this.changeDpi(dpi)
      await sleep(500)
      window.getLastWindow(GlobalThis.getInstance().getContext('context'), async (err: BusinessError, data) => {
        const errCode: number = err.code;
        if (errCode) {
          Logger.error(TAG, 'Failed to obtain the top Window. Cause : ' + JSON.stringify(err));
          return;
        }
        Logger.info(TAG, 'succeed to obtain the top Window. Cause : ' + JSON.stringify(err));
        this.windowClass = data;
        await sleep(200)
        this.loadContent(this.windowClass, pageURI)
        await sleep(200)
        this.changeWindowSize(this.windowClass, width, height);
        await sleep(200)
        this.setWindowSystemBarEnable(this.windowClass, []);
      });
    } else {
      await router.pushUrl({ url: pageURI })
    }
    let appPreferredLanguage2: string = i18n.System.getAppPreferredLanguage(); // 获取应用偏好语言
    console.log(`Switch Locales,appPreferredLanguage2=${appPreferredLanguage2}`);
  }

  /**
   * 切换应用内部语言
   */
  switchLocales() {
    let currentLanguages = i18n.System.getSystemLanguages();
    let systemLocale: string = i18n.System.getSystemLocale(); // 获取系统当前Locale
    let systemRegion: string = i18n.System.getSystemRegion(); // 获取系统当前地区设置
    let appPreferredLanguage: string = i18n.System.getAppPreferredLanguage(); // 获取应用偏好语言
    console.log(`Switch Locales,current currentLanguages=${currentLanguages}
      ,systemLocale=${systemLocale},systemRegion=${systemRegion},appPreferredLanguage=${appPreferredLanguage}`);
    try {
      i18n.System.setAppPreferredLanguage('ug-CN'); // 设置系统当前Locale为 "zh-CN"
    } catch (error) {
      let err: BusinessError = error as BusinessError;
      console.error(`call System.setAppPreferredLanguage  failed, error code: ${err.code}, message: ${err.message}.`);
    }
    let appPreferredLanguage2: string = i18n.System.getAppPreferredLanguage(); // 获取应用偏好语言
    console.log(`Switch Locales,appPreferredLanguage2=${appPreferredLanguage2}`);
  }

  /**
   * 切换应用内部语言
   * @param locale:(zh-Hans-CN(简体中文),zh-Hant-CN(繁体中文),en-Latn-CN(英文)，ug-CN(维语)，bo-CN(藏语))
   */
  switchCusLocales(locale: string) {
    try {
      i18n.System.setAppPreferredLanguage(locale); // 设置系统当前Locale为 "zh-CN"
    } catch (error) {
      let err: BusinessError = error as BusinessError;
      console.error(`call System.setAppPreferredLanguage  failed, error code: ${err.code}, message: ${err.message}.`);
    }
    let appPreferredLanguage2: string = i18n.System.getAppPreferredLanguage(); // 获取应用偏好语言
    console.log(`Switch CusLocales,appPreferredLanguage2=${appPreferredLanguage2}`);
  }

  changeOrientation(object?: Object) {
    // 获取上下文，使用common模块
    let context = getContext()
    let promise = Window.getLastWindow(context);
    promise.then((data) => {
      let windowClass = data;
      if (this.portrait) {
        //切换成横屏
        let orientation = Window.Orientation.LANDSCAPE;
        windowClass.setPreferredOrientation(orientation, (err) => {

        });
        // windowSnap.snapShot()
        this.portrait = !this.portrait
        console.info('LANDSCAPE  Succeeded in obtaining the top window. Data: ' + JSON.stringify(data));
      } else {
        //切换成竖屏
        let orientation = Window.Orientation.PORTRAIT;
        windowClass.setPreferredOrientation(orientation, (err) => {
        });
        this.portrait = !this.portrait
        console.info('PORTRAIT Succeeded in obtaining the top window. Data: ' + JSON.stringify(data));
      }
    }).catch((err: BusinessError) => {
      console.error('Failed to obtain the top window. Cause: ' + JSON.stringify(err));
    });
  }

  setOrientation() {
    try {
      window.getLastWindow(getContext(this), (err, data) => { // 获取window实例
        if (err.code) {
          return;
        }
        let windowClass = data;

        let orientation = window.Orientation.LANDSCAPE; // 设置窗口方向为传感器自动旋转模式。
        try {
          windowClass.setPreferredOrientation(orientation, (err) => {
            if (err.code) {
              return;
            }
          });
        } catch (exception) {
        }
        ;
      });
    } catch (exception) {
    }
    ;
  }

  getSysDateTime(): Date {
    try {
      systemDateTime.getDate().then((date: Date) => {
        console.info(`Succeeded in getting date : ${date}`);
        return date;
      }).catch((error: BusinessError) => {
        console.info(`Failed to get date. message: ${error.message}, code: ${error.code}`);
      });
    } catch (e) {
      let error = e as BusinessError;
      console.info(`Failed to get date. message: ${error.message}, code: ${error.code}`);
    }
    return new Date();
  }
}

export default new Settings()