import UIAbility from '@ohos.app.ability.UIAbility';
import { DisplayInfoManager } from '../utils/DisplayInfoManager'
import window from '@ohos.window';
import tuanjie from 'libtuanjie.so';
import { TuanjieLog } from '../common/TuanjieLog';
import { TuanjieMainWorker } from '../workers/TuanjieMainWorker';
import { SetToGlobalThis } from '../common/GlobalThisUtil';
import { WindowUtils } from '../utils/WindowUtils'

export default class TuanjiePlayerAbility extends UIAbility {
  onCreate(want, launchParam): void {
    TuanjieLog.info('%{public}s', 'TuanjiePlayerAbility onCreate, bundleCodeDir:' + this.context.bundleCodeDir);
    if (this.context.resourceManager.getNumber($r('app.integer.ShowStaticSplashScreen'))) {
      globalThis.showStaticSplashScreen = true;
    }

    tuanjie.nativeOnCreate(/*this.context.resourceManager*/);
    TuanjieMainWorker.getInstance().postMessage({
      type: 'SetGlobalThisContext', data: this.context
    });
    globalThis.AbilityContext = this.context;
    DisplayInfoManager.getInstance().initialize();
  }

  onDestroy(): void {
    TuanjieLog.info('%{public}s', 'TuanjiePlayerAbility onDestroy');
    tuanjie.nativeOnDestroy();
  }

  onWindowStageCreate(windowStage: window.WindowStage): void {
    // Main window is created, set main page for this ability
    TuanjieLog.info('%{public}s', 'TuanjiePlayerAbility onWindowStageCreate');

    // set full screen at first
    let windowClass = windowStage.getMainWindowSync();
    try {
      SetToGlobalThis(WindowUtils.MainWindowKey, windowClass);
      windowClass.setFullScreen(true, (err, data) => {
        if (err.code) {
          console.error('Failed to enable the full-screen mode. Cause: ' + JSON.stringify(err));
          return;
        }
        console.info('Succeeded in enabling the full-screen mode. Data: ' + JSON.stringify(data));
      });
    } catch (err) {
      console.error('Failed to obtain the main window. Cause: ' + JSON.stringify(err));
    }

    windowStage.loadContent('pages/TuanjiePlayerAbilityIndex', (err, data) => {
      if (err.code) {
        TuanjieLog.error('Failed to load the content. Cause: %{public}s', JSON.stringify(err) ?? '');
        return;
      }
      TuanjieLog.info('Succeeded in loading the content. Data: %{public}s', JSON.stringify(data) ?? '');
    });

    // set callback
    windowStage.on('windowStageEvent', (data) => {
      let stageEventType: window.WindowStageEventType = data;
      switch (stageEventType) {
        case window.WindowStageEventType.ACTIVE:
          TuanjieLog.info('windowStage active.');
          tuanjie.nativeOnWindowStageActive();
          break;
        case window.WindowStageEventType.INACTIVE:
          TuanjieLog.info('windowStage inactive.');
          tuanjie.nativeOnWindowStageInActive();
          break;
        default:
          break;
      }
    })
  }

  onWindowStageDestroy(): void {
    TuanjieLog.info('%{public}s', 'TuanjiePlayerAbility onWindowStageDestroy');
  }

  onForeground(): void {
    TuanjieLog.info('%{public}s', 'TuanjiePlayerAbility onForeground');
    tuanjie.nativeOnResume();
  }

  onBackground(): void {
    TuanjieLog.info('%{public}s', 'TuanjiePlayerAbility onBackground');
    tuanjie.nativeOnPause();
  }
}