/*
 * Copyright (C) 2024 Huawei Device Co., Ltd.
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
import bundleResourceManager from '@ohos.bundle.bundleResourceManager';
import abilityAccessCtrl, { Context, Permissions } from '@ohos.abilityAccessCtrl';
import { Component, Driver, ON } from '@ohos.UiTest';
import { GlobalThis } from './GlobalThis';
import installer from '@ohos.bundle.installer';
import { LayeredDrawableDescriptor } from '@ohos.arkui.drawableDescriptor';

const TAG = "IconDoubleLayerTest"

function sleep(ms: number) {
  console.info(TAG + "Entering sleep -> Promise constructor");
  return new Promise<void>(resolve => setTimeout(resolve, ms));
}

async function getPermissions(done: Function) {
  let context = GlobalThis.getInstance().getContext("UIAbility") as Context;
  console.log('getPermission beforeAll');
  let list: Array<Permissions> = ['ohos.permission.GET_INSTALLED_BUNDLE_LIST'];
  let atManager = abilityAccessCtrl.createAtManager();
  atManager.requestPermissionsFromUser(context, list, (err, result) => {
    if (err) {
      console.log(`getPermission err ${JSON.stringify(err)}`);
    } else {
      console.log(`getPermission success`);
    }
    done();
  });
  await sleep(1500);
  const driver: Driver = Driver.create();
  await sleep(1500);
  const allowBtn: Component = await driver.findComponent(ON.text('允许'));
  if (allowBtn) {
    await allowBtn.click();
  }
}

export default function IconDoubleLayerTest() {
  describe('IconDoubleLayerTest', () => {
    beforeAll(async (done: Function) => {
      console.info('beforeAll case');
      getPermissions(done);
      console.info('beforeAll out');
    });
    beforeEach(() => {
      console.info('beforeEach case');
    });
    afterEach(() => {
      console.info('afterEach case');
    });
    /**
     * @tc.number: Sub_Bms_Framework_Icon_DoubleLayer_0100
     * @tc.name: getBundleResourceInfoNotDualLayerIcon
     * @tc.desc: invoke the getBundleResourceInfo interface to check whether the resource information is empty
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : Level 1
     */
    it('Sub_Bms_Framework_Icon_DoubleLayer_0100', 0, async (done: Function) => {
      let bundleName = "com.example.bmsicondoublelayerno";
      let bundleFlags = bundleResourceManager.ResourceFlag.GET_RESOURCE_INFO_WITH_DRAWABLE_DESCRIPTOR;
      console.info('Sub_Bms_Framework_Icon_DoubleLayer_0100 START')
      try {
        let resourceInfo = bundleResourceManager.getBundleResourceInfo(bundleName, bundleFlags);
        console.info('getBundleResourceInfo successfully.Datalabel:%{public}S', JSON.stringify(resourceInfo))
        console.info('getBundleResourceInfo successfully.Datalabel:%{public}S', JSON.stringify(resourceInfo.drawableDescriptor))
        expect(resourceInfo.drawableDescriptor != null).assertTrue();
        done();
      } catch (err) {
        console.info('getBundleResourceInfo failed:%{public}s', err.message)
        expect(false).assertTrue();
        done();
      }
      console.info('Sub_Bms_Framework_Icon_DoubleLayer_0100 END')
    });

    /**
     * @tc.number: Sub_Bms_Framework_Icon_DoubleLayer_0200
     * @tc.name: getLauncherAbilityResourceInfoNotDualLayerIcon
     * @tc.desc: invoke the getLauncherAbilityResourceInfo interface to check whether the resource information is empty
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : Level 1
     */
    it('Sub_Bms_Framework_Icon_DoubleLayer_0200', 0, async (done: Function) => {
      let bundleName = "com.example.bmsicondoublelayerno";
      let bundleFlags = bundleResourceManager.ResourceFlag.GET_RESOURCE_INFO_WITH_DRAWABLE_DESCRIPTOR;
      console.info('Sub_Bms_Framework_Icon_DoubleLayer_0200 START')
      try {
        let resourceInfo = bundleResourceManager.getLauncherAbilityResourceInfo(bundleName, bundleFlags);
        console.info('getLauncherAbilityResourceInfo successfully.Datalabel:%{public}S', JSON.stringify(resourceInfo))
        console.info('getLauncherAbilityResourceInfo successfully.Datalabel:%{public}S', JSON.stringify(resourceInfo[0].drawableDescriptor))
        expect(resourceInfo[0].drawableDescriptor != null).assertTrue();
        done();
      } catch (err) {
        console.info('getLauncherAbilityResourceInfo failed:%{public}s', err.message)
        expect(false).assertTrue();
        done();
      }
      console.info('Sub_Bms_Framework_Icon_DoubleLayer_0200 END')
    });

    /**
     * @tc.number: Sub_Bms_Framework_Icon_DoubleLayer_0300
     * @tc.name: getAllBundleResourceInfoNotDualLayerIcon
     * @tc.desc: invoke the getAllBundleResourceInfo interface to check whether the resource information is empty
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : Level 1
     */
    it('Sub_Bms_Framework_Icon_DoubleLayer_0300', 0, async (done: Function) => {
      let bundleName = "com.example.bmsicondoublelayerno";
      let bundleFlags = bundleResourceManager.ResourceFlag.GET_RESOURCE_INFO_WITH_DRAWABLE_DESCRIPTOR;
      console.info('Sub_Bms_Framework_Icon_DoubleLayer_0300 START')
      try {
        let resourceInfos = await bundleResourceManager.getAllBundleResourceInfo(bundleFlags);
        let resourceInfo = resourceInfos.find(item => item.bundleName === bundleName)
        console.info('getAllBundleResourceInfo successfully.Datalabel:%{public}S', JSON.stringify(resourceInfos))
        console.info('getAllBundleResourceInfo successfully.Datalabel:%{public}S', JSON.stringify(resourceInfo!.drawableDescriptor))
        expect(resourceInfo!.drawableDescriptor != null).assertTrue();
        done();
      } catch (err) {
        console.info('getAllBundleResourceInfo failed:%{public}s', err.message)
        expect(false).assertTrue();
        done();
      }
      console.info('Sub_Bms_Framework_Icon_DoubleLayer_0300 END')
    });

    /**
     * @tc.number: Sub_Bms_Framework_Icon_DoubleLayer_0400
     * @tc.name: getAllLauncherAbilityResourceInfoInfoNotDualLayerIcon
     * @tc.desc: invoke the getAllLauncherAbilityResourceInfo interface to check whether the resource information is empty
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : Level 1
     */
    it('Sub_Bms_Framework_Icon_DoubleLayer_0400', 0, async (done: Function) => {
      let bundleName = "com.example.bmsicondoublelayerno";
      let bundleFlags = bundleResourceManager.ResourceFlag.GET_RESOURCE_INFO_WITH_DRAWABLE_DESCRIPTOR;
      console.info('Sub_Bms_Framework_Icon_DoubleLayer_0400 START')
      try {
        let resourceInfos = await bundleResourceManager.getAllLauncherAbilityResourceInfo(bundleFlags);
        let resourceInfo = resourceInfos.find(item => item.bundleName === bundleName)
        console.info('getAllLauncherAbilityResourceInfo successfully.Datalabel:%{public}S', JSON.stringify(resourceInfo))
        console.info('getAllLauncherAbilityResourceInfo successfully.Datalabel:%{public}S', JSON.stringify(resourceInfo!.drawableDescriptor))
        expect(resourceInfo!.drawableDescriptor != null).assertTrue();
        done();
      } catch (err) {
        console.info('getAllLauncherAbilityResourceInfo failed:%{public}s', err.message)
        expect(false).assertTrue();
        done();
      }
      console.info('Sub_Bms_Framework_Icon_DoubleLayer_0400 END')
    });

    /**
     * @tc.number: Sub_Bms_Framework_Icon_DoubleLayer_0500
     * @tc.name: getBundleResourceInfoDualLayerIcon
     * @tc.desc: invoke the getBundleResourceInfo interface to check whether the resource information is not empty
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : Level 1
     */
    it('Sub_Bms_Framework_Icon_DoubleLayer_0500', 0, async (done: Function) => {
      let bundleName = "com.example.bmsicondoublelayera";
      let bundleFlags = bundleResourceManager.ResourceFlag.GET_RESOURCE_INFO_WITH_LABEL | bundleResourceManager.ResourceFlag.GET_RESOURCE_INFO_WITH_SORTED_BY_LABEL;
      console.info('Sub_Bms_Framework_Icon_DoubleLayer_0500 START')
      try {
        let resourceInfo = bundleResourceManager.getBundleResourceInfo(bundleName, bundleFlags);
        console.info('getBundleResourceInfo successfully.Datalabel:%{public}S', JSON.stringify(resourceInfo))
        console.info('getBundleResourceInfo successfully.Datalabel:%{public}S', JSON.stringify(resourceInfo.drawableDescriptor))
        expect(resourceInfo.drawableDescriptor == null).assertTrue();
        done();
      } catch (err) {
        console.info('getBundleResourceInfo failed:%{public}s', err.message)
        expect(false).assertTrue();
        done();
      }
      console.info('Sub_Bms_Framework_Icon_DoubleLayer_0500 END')
    });

    /**
     * @tc.number: Sub_Bms_Framework_Icon_DoubleLayer_0600
     * @tc.name: getLauncherAbilityResourceInfoDualLayerIcon
     * @tc.desc: invoke the getLauncherAbilityResourceInfo interface to check whether the resource information is not empty
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : Level 1
     */
    it('Sub_Bms_Framework_Icon_DoubleLayer_0600', 0, async (done: Function) => {
      let bundleName = "com.example.bmsicondoublelayera";
      let bundleFlags = bundleResourceManager.ResourceFlag.GET_RESOURCE_INFO_WITH_LABEL | bundleResourceManager.ResourceFlag.GET_RESOURCE_INFO_WITH_SORTED_BY_LABEL;
      console.info('Sub_Bms_Framework_Icon_DoubleLayer_0600 START')
      try {
        let resourceInfo = bundleResourceManager.getLauncherAbilityResourceInfo(bundleName, bundleFlags);
        console.info('getLauncherAbilityResourceInfo successfully.Datalabel:%{public}S', JSON.stringify(resourceInfo))
        console.info('getLauncherAbilityResourceInfo successfully.Datalabel:%{public}S', JSON.stringify(resourceInfo[0].drawableDescriptor))
        expect(resourceInfo[0].drawableDescriptor == null).assertTrue();
        done();
      } catch (err) {
        console.info('getLauncherAbilityResourceInfo failed:%{public}s', err.message)
        expect(false).assertTrue();
        done();
      }
      console.info('Sub_Bms_Framework_Icon_DoubleLayer_0600 END')
    });


    /**
     * @tc.number: Sub_Bms_Framework_Icon_DoubleLayer_0700
     * @tc.name: getAllBundleResourceInfoDualLayerIcon
     * @tc.desc: invoke the getAllBundleResourceInfo interface to check whether the resource information is not empty
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : Level 1
     */
    it('Sub_Bms_Framework_Icon_DoubleLayer_0700', 0, async (done: Function) => {
      let bundleName = "com.example.bmsicondoublelayera";
      let bundleFlags = bundleResourceManager.ResourceFlag.GET_RESOURCE_INFO_WITH_LABEL | bundleResourceManager.ResourceFlag.GET_RESOURCE_INFO_WITH_SORTED_BY_LABEL;
      console.info('Sub_Bms_Framework_Icon_DoubleLayer_0700 START')
      try {
        let resourceInfos = await bundleResourceManager.getAllBundleResourceInfo(bundleFlags);
        let resourceInfo = resourceInfos.find(item => item.bundleName === bundleName)
        console.info('getAllBundleResourceInfo successfully.Datalabel:%{public}S', JSON.stringify(resourceInfos))
        console.info('getAllBundleResourceInfo successfully.Datalabel:%{public}S', JSON.stringify(resourceInfo!.drawableDescriptor))
        expect(resourceInfo!.drawableDescriptor == null).assertTrue();
        done();
      } catch (err) {
        console.info('getAllBundleResourceInfo failed:%{public}s', err.message)
        expect(false).assertTrue();
        done();
      }
      console.info('Sub_Bms_Framework_Icon_DoubleLayer_0700 END')
    });

    /**
     * @tc.number: Sub_Bms_Framework_Icon_DoubleLayer_0800
     * @tc.name: getAllLauncherAbilityResourceInfoInfoDualLayerIcon
     * @tc.desc: invoke the getAllLauncherAbilityResourceInfo interface to check whether the resource information is not empty
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : Level 1
     */
    it('Sub_Bms_Framework_Icon_DoubleLayer_0800', 0, async (done: Function) => {
      let bundleName = "com.example.bmsicondoublelayera";
      let bundleFlags = bundleResourceManager.ResourceFlag.GET_RESOURCE_INFO_WITH_LABEL | bundleResourceManager.ResourceFlag.GET_RESOURCE_INFO_WITH_SORTED_BY_LABEL;
      console.info('Sub_Bms_Framework_Icon_DoubleLayer_0800 START')
      try {
        let resourceInfos = await bundleResourceManager.getAllLauncherAbilityResourceInfo(bundleFlags);
        let resourceInfo = resourceInfos.find(item => item.bundleName === bundleName)
        console.info('getAllLauncherAbilityResourceInfo successfully.Datalabel:%{public}S', JSON.stringify(resourceInfo))
        console.info('getAllLauncherAbilityResourceInfo successfully.Datalabel:%{public}S', JSON.stringify(resourceInfo!.drawableDescriptor))
        expect(resourceInfo!.drawableDescriptor == null).assertTrue();
        done();
      } catch (err) {
        console.info('getAllLauncherAbilityResourceInfo failed:%{public}s', err.message)
        expect(false).assertTrue();
        done();
      }
      console.info('Sub_Bms_Framework_Icon_DoubleLayer_0800 END')
    });


    /**
     * @tc.number: Sub_Bms_Framework_Icon_DoubleLayer_0900
     * @tc.name: getBundleResourceInfoDualLayerIcon
     * @tc.desc: invoke the getBundleResourceInfo interface to check whether the resource information is not empty
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : Level 1
     */
    it('Sub_Bms_Framework_Icon_DoubleLayer_0900', 0, async (done: Function) => {
      let bundleName = "com.example.bmsicondoublelayera";
      let bundleFlags = bundleResourceManager.ResourceFlag.GET_RESOURCE_INFO_WITH_ICON;
      console.info('Sub_Bms_Framework_Icon_DoubleLayer_0900 START')
      try {
        let resourceInfo = bundleResourceManager.getBundleResourceInfo(bundleName, bundleFlags);
        console.info('getBundleResourceInfo successfully.Datalabel:%{public}S', JSON.stringify(resourceInfo))
        console.info('getBundleResourceInfo successfully.Datalabel:%{public}S', JSON.stringify(resourceInfo.drawableDescriptor))
        expect(resourceInfo.drawableDescriptor == null).assertTrue();
        done();
      } catch (err) {
        console.info('getBundleResourceInfo failed:%{public}s', err.message)
        expect(false).assertTrue();
        done();
      }
      console.info('Sub_Bms_Framework_Icon_DoubleLayer_0900 END')
    });

    /**
     * @tc.number: Sub_Bms_Framework_Icon_DoubleLayer_1000
     * @tc.name: getLauncherAbilityResourceInfoDualLayerIcon
     * @tc.desc: invoke the getLauncherAbilityResourceInfo interface to check whether the resource information is not empty
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : Level 1
     */
    it('Sub_Bms_Framework_Icon_DoubleLayer_1000', 0, async (done: Function) => {
      let bundleName = "com.example.bmsicondoublelayera";
      let bundleFlags = bundleResourceManager.ResourceFlag.GET_RESOURCE_INFO_WITH_ICON;
      console.info('Sub_Bms_Framework_Icon_DoubleLayer_1000 START')
      try {
        let resourceInfo = bundleResourceManager.getLauncherAbilityResourceInfo(bundleName, bundleFlags);
        console.info('getLauncherAbilityResourceInfo successfully.Datalabel:%{public}S', JSON.stringify(resourceInfo))
        console.info('getLauncherAbilityResourceInfo successfully.Datalabel:%{public}S', JSON.stringify(resourceInfo[0].drawableDescriptor))
        expect(resourceInfo[0].drawableDescriptor == null).assertTrue();
        done();
      } catch (err) {
        console.info('getLauncherAbilityResourceInfo failed:%{public}s', err.message)
        expect(false).assertTrue();
        done();
      }
      console.info('Sub_Bms_Framework_Icon_DoubleLayer_1000 END')
    });


    /**
     * @tc.number: Sub_Bms_Framework_Icon_DoubleLayer_1100
     * @tc.name: getAllBundleResourceInfoDualLayerIcon
     * @tc.desc: invoke the getAllBundleResourceInfo interface to check whether the resource information is not empty
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : Level 1
     */
    it('Sub_Bms_Framework_Icon_DoubleLayer_1100', 0, async (done: Function) => {
      let bundleName = "com.example.bmsicondoublelayera";
      let bundleFlags = bundleResourceManager.ResourceFlag.GET_RESOURCE_INFO_WITH_ICON;
      console.info('Sub_Bms_Framework_Icon_DoubleLayer_1100 START')
      try {
        let resourceInfos = await bundleResourceManager.getAllBundleResourceInfo(bundleFlags);
        let resourceInfo = resourceInfos.find(item => item.bundleName === bundleName)
        console.info('getAllBundleResourceInfo successfully.Datalabel:%{public}S', JSON.stringify(resourceInfos))
        console.info('getAllBundleResourceInfo successfully.Datalabel:%{public}S', JSON.stringify(resourceInfo!.drawableDescriptor))
        expect(resourceInfo!.drawableDescriptor == null).assertTrue();
        done();
      } catch (err) {
        console.info('getAllBundleResourceInfo failed:%{public}s', err.message)
        expect(false).assertTrue();
        done();
      }
      console.info('Sub_Bms_Framework_Icon_DoubleLayer_1100 END')
    });

    /**
     * @tc.number: Sub_Bms_Framework_Icon_DoubleLayer_1200
     * @tc.name: getAllLauncherAbilityResourceInfoInfoDualLayerIcon
     * @tc.desc: invoke the getAllLauncherAbilityResourceInfo interface to check whether the resource information is not empty
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : Level 1
     */
    it('Sub_Bms_Framework_Icon_DoubleLayer_1200', 0, async (done: Function) => {
      let bundleName = "com.example.bmsicondoublelayera";
      let bundleFlags = bundleResourceManager.ResourceFlag.GET_RESOURCE_INFO_WITH_ICON;
      console.info('Sub_Bms_Framework_Icon_DoubleLayer_1200 START')
      try {
        let resourceInfos = await bundleResourceManager.getAllLauncherAbilityResourceInfo(bundleFlags);
        let resourceInfo = resourceInfos.find(item => item.bundleName === bundleName)
        console.info('getAllLauncherAbilityResourceInfo successfully.Datalabel:%{public}S', JSON.stringify(resourceInfo))
        console.info('getAllLauncherAbilityResourceInfo successfully.Datalabel:%{public}S', JSON.stringify(resourceInfo!.drawableDescriptor))
        expect(resourceInfo!.drawableDescriptor == null).assertTrue();
        done();
      } catch (err) {
        console.info('getAllLauncherAbilityResourceInfo failed:%{public}s', err.message)
        expect(false).assertTrue();
        done();
      }
      console.info('Sub_Bms_Framework_Icon_DoubleLayer_1200 END')
    });

    /**
     * @tc.number: Sub_Bms_Framework_Icon_DoubleLayer_1300
     * @tc.name: getBundleResourceInfoNotDualLayerIcon
     * @tc.desc: invoke the getBundleResourceInfo interface to check whether the resource information is empty
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : Level 1
     */
    it('Sub_Bms_Framework_Icon_DoubleLayer_1300', 0, async (done: Function) => {
      let bundleName = "com.example.bmsicondoublelayera";
      let bundleFlags = bundleResourceManager.ResourceFlag.GET_RESOURCE_INFO_ALL | bundleResourceManager.ResourceFlag.GET_RESOURCE_INFO_WITH_DRAWABLE_DESCRIPTOR;
      console.info('Sub_Bms_Framework_Icon_DoubleLayer_1300 START')
      try {
        let resourceInfo = bundleResourceManager.getBundleResourceInfo(bundleName, bundleFlags);
        console.info('getBundleResourceInfo successfully.Datalabel:%{public}S', JSON.stringify(resourceInfo))
        console.info('getBundleResourceInfo successfully.Datalabel:%{public}S', JSON.stringify(resourceInfo.drawableDescriptor))
        expect(resourceInfo.drawableDescriptor != null && resourceInfo.drawableDescriptor instanceof LayeredDrawableDescriptor)
          .assertTrue();
        done();
      } catch (err) {
        console.info('getBundleResourceInfo failed:%{public}s', err.message)
        expect(false).assertTrue();
        done();
      }
      console.info('Sub_Bms_Framework_Icon_DoubleLayer_1300 END')
    });

    /**
     * @tc.number: Sub_Bms_Framework_Icon_DoubleLayer_1400
     * @tc.name: getLauncherAbilityResourceInfoNotDualLayerIcon
     * @tc.desc: invoke the getLauncherAbilityResourceInfo interface to check whether the resource information is empty
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : Level 1
     */
    it('Sub_Bms_Framework_Icon_DoubleLayer_1400', 0, async (done: Function) => {
      let bundleName = "com.example.bmsicondoublelayera";
      let bundleFlags = bundleResourceManager.ResourceFlag.GET_RESOURCE_INFO_ALL | bundleResourceManager.ResourceFlag.GET_RESOURCE_INFO_WITH_DRAWABLE_DESCRIPTOR;
      console.info('Sub_Bms_Framework_Icon_DoubleLayer_1400 START')
      try {
        let resourceInfo = bundleResourceManager.getLauncherAbilityResourceInfo(bundleName, bundleFlags);
        console.info('getLauncherAbilityResourceInfo successfully.Datalabel:%{public}S', JSON.stringify(resourceInfo))
        console.info('getLauncherAbilityResourceInfo successfully.Datalabel:%{public}S', JSON.stringify(resourceInfo[0].drawableDescriptor))
        expect(resourceInfo[0].drawableDescriptor != null && resourceInfo[0].drawableDescriptor instanceof LayeredDrawableDescriptor)
          .assertTrue();
        done();
      } catch (err) {
        console.info('getLauncherAbilityResourceInfo failed:%{public}s', err.message)
        expect(false).assertTrue();
        done();
      }
      console.info('Sub_Bms_Framework_Icon_DoubleLayer_1400 END')
    });

    /**
     * @tc.number: Sub_Bms_Framework_Icon_DoubleLayer_1500
     * @tc.name: getAllBundleResourceInfoNotDualLayerIcon
     * @tc.desc: invoke the getAllBundleResourceInfo interface to check whether the resource information is empty
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : Level 1
     */
    it('Sub_Bms_Framework_Icon_DoubleLayer_1500', 0, async (done: Function) => {
      let bundleName = "com.example.bmsicondoublelayera";
      let bundleFlags = bundleResourceManager.ResourceFlag.GET_RESOURCE_INFO_ALL | bundleResourceManager.ResourceFlag.GET_RESOURCE_INFO_WITH_DRAWABLE_DESCRIPTOR;
      console.info('Sub_Bms_Framework_Icon_DoubleLayer_1500 START')
      try {
        let resourceInfos = await bundleResourceManager.getAllBundleResourceInfo(bundleFlags);
        let resourceInfo = resourceInfos.find(item => item.bundleName === bundleName)
        console.info('getAllBundleResourceInfo successfully.Datalabel:%{public}S', JSON.stringify(resourceInfos))
        console.info('getAllBundleResourceInfo successfully.Datalabel:%{public}S', JSON.stringify(resourceInfo!.drawableDescriptor))
        expect(resourceInfo!.drawableDescriptor != null && resourceInfo!.drawableDescriptor instanceof LayeredDrawableDescriptor)
          .assertTrue();
        done();
      } catch (err) {
        console.info('getAllBundleResourceInfo failed:%{public}s', err.message)
        expect(false).assertTrue();
        done();
      }
      console.info('Sub_Bms_Framework_Icon_DoubleLayer_1500 END')
    });

    /**
     * @tc.number: Sub_Bms_Framework_Icon_DoubleLayer_1600
     * @tc.name: getAllLauncherAbilityResourceInfoInfoNotDualLayerIcon
     * @tc.desc: invoke the getAllLauncherAbilityResourceInfo interface to check whether the resource information is empty
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : Level 1
     */
    it('Sub_Bms_Framework_Icon_DoubleLayer_1600', 0, async (done: Function) => {
      let bundleName = "com.example.bmsicondoublelayera";
      let bundleFlags = bundleResourceManager.ResourceFlag.GET_RESOURCE_INFO_ALL | bundleResourceManager.ResourceFlag.GET_RESOURCE_INFO_WITH_DRAWABLE_DESCRIPTOR;
      console.info('Sub_Bms_Framework_Icon_DoubleLayer_1600 START')
      try {
        let resourceInfos = await bundleResourceManager.getAllLauncherAbilityResourceInfo(bundleFlags);
        let resourceInfo = resourceInfos.find(item => item.bundleName === bundleName)
        console.info('getAllLauncherAbilityResourceInfo successfully.Datalabel:%{public}S', JSON.stringify(resourceInfo))
        console.info('getAllLauncherAbilityResourceInfo successfully.Datalabel:%{public}S', JSON.stringify(resourceInfo!.drawableDescriptor))
        expect(resourceInfo!.drawableDescriptor != null && resourceInfo!.drawableDescriptor instanceof LayeredDrawableDescriptor)
          .assertTrue();
        done();
      } catch (err) {
        console.info('getAllLauncherAbilityResourceInfo failed:%{public}s', err.message)
        expect(false).assertTrue();
        done();
      }
      console.info('Sub_Bms_Framework_Icon_DoubleLayer_1600 END')
    });

    /**
     * @tc.number: Sub_Bms_Framework_Icon_DoubleLayer_1700
     * @tc.name: getBundleResourceInfoDualLayerIcon
     * @tc.desc: invoke the getBundleResourceInfo interface to check whether the resource information is empty
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : Level 1
     */
    it('Sub_Bms_Framework_Icon_DoubleLayer_1700', 0, async (done: Function) => {
      let bundleName = "com.example.bmsicondoublelayera";
      let bundleFlags = bundleResourceManager.ResourceFlag.GET_RESOURCE_INFO_WITH_DRAWABLE_DESCRIPTOR;
      console.info('Sub_Bms_Framework_Icon_DoubleLayer_1700 START')
      try {
        let resourceInfo = bundleResourceManager.getBundleResourceInfo(bundleName, bundleFlags);
        console.info('getBundleResourceInfo successfully.Datalabel:%{public}S', JSON.stringify(resourceInfo))
        console.info('getBundleResourceInfo successfully.Datalabel:%{public}S', JSON.stringify(resourceInfo.drawableDescriptor))
        expect(resourceInfo.drawableDescriptor != null && resourceInfo.drawableDescriptor instanceof LayeredDrawableDescriptor)
          .assertTrue();
        done();
      } catch (err) {
        console.info('getBundleResourceInfo failed:%{public}s', err.message)
        expect(false).assertTrue();
        done();
      }
      console.info('Sub_Bms_Framework_Icon_DoubleLayer_1700 END')
    });

    /**
     * @tc.number: Sub_Bms_Framework_Icon_DoubleLayer_1800
     * @tc.name: getBundleResourceInfo
     * @tc.desc: invoke the getBundleResourceInfo interface to check whether the resource information is empty
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : Level 1
     */
    it('Sub_Bms_Framework_Icon_DoubleLayer_1800', 0, async (done: Function) => {
      let bundleName = "com.example.bmsicondoublelayera";
      let bundleFlags = bundleResourceManager.ResourceFlag.GET_RESOURCE_INFO_WITH_DRAWABLE_DESCRIPTOR | bundleResourceManager.ResourceFlag.GET_RESOURCE_INFO_WITH_ICON;
      console.info('Sub_Bms_Framework_Icon_DoubleLayer_1800 START')
      try {
        let resourceInfo = bundleResourceManager.getBundleResourceInfo(bundleName, bundleFlags);
        console.info('getBundleResourceInfo resourceInfo.icon:%{public}S', JSON.stringify(resourceInfo.icon))
        console.info('getBundleResourceInfo resourceInfo.drawableDescriptor:%{public}S', JSON.stringify(resourceInfo.drawableDescriptor))
        expect(resourceInfo.drawableDescriptor != null && resourceInfo.drawableDescriptor instanceof LayeredDrawableDescriptor)
          .assertTrue();
        let hapFilePath = '/data/storage/el2/base/files/'
        let bundleInstaller = await installer.getBundleInstaller()
        await bundleInstaller.install([hapFilePath + 'bmsIconDoubleLayerB.hap'], {
          installFlag: 0x01
        })
        let resourceInfo2 = bundleResourceManager.getBundleResourceInfo(bundleName, bundleFlags);
        console.info('getBundleResourceInfo2 resourceInfo.icon:%{public}S', JSON.stringify(resourceInfo2.icon))
        console.info('getBundleResourceInfo2 resourceInfo.drawableDescriptor:%{public}S', JSON.stringify(resourceInfo2.drawableDescriptor))
        expect(resourceInfo2.drawableDescriptor != null && resourceInfo2.drawableDescriptor instanceof LayeredDrawableDescriptor)
          .assertTrue();
        expect(resourceInfo.icon == resourceInfo2.icon).assertTrue();
        done();
      } catch (err) {
        console.info('getBundleResourceInfo failed:%{public}s', err.message)
        expect(false).assertTrue();
        done();
      }
      console.info('Sub_Bms_Framework_Icon_DoubleLayer_1800 END')
    });

    /**
     * @tc.number: Sub_Bms_Framework_Icon_DoubleLayer_2900
     * @tc.name: getBundleResourceInfoDualLayerIcon
     * @tc.desc: invoke the getBundleResourceInfo interface to check whether the resource information is not empty
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : Level 1
     */
    it('Sub_Bms_Framework_Icon_DoubleLayer_2900', 0, async (done: Function) => {
      let bundleName = "com.example.bmsicondoublelayera";
      let bundleFlags = bundleResourceManager.ResourceFlag.GET_RESOURCE_INFO_WITH_DRAWABLE_DESCRIPTOR | bundleResourceManager.ResourceFlag.GET_RESOURCE_INFO_WITH_ICON;
      console.info('Sub_Bms_Framework_Icon_DoubleLayer_2900 START')
      try {
        let resourceInfo = bundleResourceManager.getBundleResourceInfo(bundleName, bundleFlags);
        console.info('getBundleResourceInfo successfully.Datalabel:%{public}S', JSON.stringify(resourceInfo))
        console.info('getBundleResourceInfo successfully.Datalabel:%{public}S', JSON.stringify(resourceInfo.drawableDescriptor))
        expect(resourceInfo.drawableDescriptor != null).assertTrue();
        done();
      } catch (err) {
        console.info('getBundleResourceInfo failed:%{public}s', err.message)
        expect(false).assertTrue();
        done();
      }
      console.info('Sub_Bms_Framework_Icon_DoubleLayer_2900 END')
    });

    /**
     * @tc.number: Sub_Bms_Framework_Icon_DoubleLayer_3200
     * @tc.name: getLauncherAbilityResourceInfo uninstall
     * @tc.desc: invoke the getLauncherAbilityResourceInfo interface to check whether the resource information is empty
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : Level 1
     */
    it('Sub_Bms_Framework_Icon_DoubleLayer_3200', 0, async (done: Function) => {
      let bundleName = "com.example.bmsicondoublelayer32";
      let bundleFlags = bundleResourceManager.ResourceFlag.GET_RESOURCE_INFO_WITH_DRAWABLE_DESCRIPTOR | bundleResourceManager.ResourceFlag.GET_RESOURCE_INFO_WITH_ICON;
      console.info('Sub_Bms_Framework_Icon_DoubleLayer_3200 START')
      try {
        let resourceInfos = bundleResourceManager.getLauncherAbilityResourceInfo(bundleName, bundleFlags);
        console.info('getLauncherAbilityResourceInfo resourceInfos1:%{public}S', JSON.stringify(resourceInfos[0]))
        console.info('getLauncherAbilityResourceInfo resourceInfos1.drawableDescriptor:%{public}S', JSON.stringify(resourceInfos[0].drawableDescriptor))
        expect(resourceInfos[0].drawableDescriptor != null && !(resourceInfos[0].drawableDescriptor instanceof LayeredDrawableDescriptor))
          .assertTrue();
        expect(resourceInfos[0].icon != null).assertTrue();
        let hapFilePath = '/data/storage/el2/base/files/'
        let bundleInstaller = await installer.getBundleInstaller()
        await bundleInstaller.install([hapFilePath + 'bmsIconDoubleLayer321.hap'], {
          installFlag: 0x01
        })
        let resourceInfos2 = bundleResourceManager.getLauncherAbilityResourceInfo(bundleName, bundleFlags);
        let ability = resourceInfos2.find(item => item.abilityName === 'EntryAbility')!
        console.info('getLauncherAbilityResourceInfo ability.icon:%{public}S', JSON.stringify(ability.icon))
        expect(resourceInfos[0].icon == ability.icon).assertTrue();
        let ability2 = resourceInfos2.find(item => item.abilityName === 'EntryAbility2')!
        console.info('getLauncherAbilityResourceInfo ability2.icon:%{public}S', JSON.stringify(ability2.icon))
        console.info('getLauncherAbilityResourceInfo ability2.drawableDescriptor:%{public}S', JSON.stringify(ability2.drawableDescriptor))
        expect(ability2.drawableDescriptor != null && ability2.drawableDescriptor instanceof LayeredDrawableDescriptor)
          .assertTrue();
        expect(ability2.icon != null).assertTrue();
        let ability3 = resourceInfos2.find(item => item.abilityName === 'EntryAbility3')!
        console.info('getLauncherAbilityResourceInfo ability3.icon:%{public}S', JSON.stringify(ability3.icon))
        console.info('getLauncherAbilityResourceInfo ability3.drawableDescriptor:%{public}S', JSON.stringify(ability3.drawableDescriptor))
        expect(ability3.drawableDescriptor != null && ability3.drawableDescriptor instanceof LayeredDrawableDescriptor)
          .assertTrue();
        expect(ability3.icon != null).assertTrue();
        done();
      } catch (err) {
        console.info('getLauncherAbilityResourceInfo failed:%{public}s', err.message)
        expect(false).assertTrue();
        done();
      }
      console.info('Sub_Bms_Framework_Icon_DoubleLayer_3200 END')
    });

    /**
     * @tc.number: Sub_Bms_Framework_Icon_DoubleLayer_3400
     * @tc.name: getLauncherAbilityResourceInfo
     * @tc.desc: invoke the getLauncherAbilityResourceInfo interface to check whether the resource information is empty
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : Level 1
     */
    it('Sub_Bms_Framework_Icon_DoubleLayer_3400', 0, async (done: Function) => {
      let bundleName = "com.example.bmsicondoublelayer34";
      let bundleFlags = bundleResourceManager.ResourceFlag.GET_RESOURCE_INFO_WITH_DRAWABLE_DESCRIPTOR;
      console.info('Sub_Bms_Framework_Icon_DoubleLayer_3400 START')
      try {
        let resourceInfos = bundleResourceManager.getLauncherAbilityResourceInfo(bundleName, bundleFlags);
        let ability = resourceInfos.find(item => item.abilityName === 'EntryAbility')!
        console.info('getLauncherAbilityResourceInfo ability.drawableDescriptor:%{public}S', JSON.stringify(ability.drawableDescriptor))
        expect(ability.drawableDescriptor != null && !(ability.drawableDescriptor instanceof LayeredDrawableDescriptor))
          .assertTrue();

        let hapFilePath = '/data/storage/el2/base/files/'
        let bundleInstaller = await installer.getBundleInstaller()
        await bundleInstaller.install([hapFilePath + 'bmsIconDoubleLayer341.hap'], {
          installFlag: 0x01
        })

        let resourceInfos2 = bundleResourceManager.getLauncherAbilityResourceInfo(bundleName, bundleFlags);
        ability = resourceInfos2.find(item => item.abilityName === 'EntryAbility')!
        console.info('getLauncherAbilityResourceInfo ability.drawableDescriptor:%{public}S', JSON.stringify(ability.drawableDescriptor))
        expect(ability.drawableDescriptor != null && ability.drawableDescriptor instanceof LayeredDrawableDescriptor)
          .assertTrue();

        done();
      } catch (err) {
        console.info('getLauncherAbilityResourceInfo failed:%{public}s', err.message)
        expect(false).assertTrue();
        done();
      }
      console.info('Sub_Bms_Framework_Icon_DoubleLayer_3400 END')
    });

    /**
     * @tc.number: Sub_Bms_Framework_Icon_DoubleLayer_3500
     * @tc.name: getLauncherAbilityResourceInfo
     * @tc.desc: invoke the getLauncherAbilityResourceInfo interface to check whether the resource information is empty
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : Level 1
     */
    it('Sub_Bms_Framework_Icon_DoubleLayer_3500', 0, async (done: Function) => {
      let bundleName = "com.example.bmsicondoublelayer35";
      let bundleFlags = bundleResourceManager.ResourceFlag.GET_RESOURCE_INFO_WITH_DRAWABLE_DESCRIPTOR | bundleResourceManager.ResourceFlag.GET_RESOURCE_INFO_WITH_ICON;
      console.info('Sub_Bms_Framework_Icon_DoubleLayer_3500 START')
      try {
        let resourceInfos = bundleResourceManager.getLauncherAbilityResourceInfo(bundleName, bundleFlags);
        let ability = resourceInfos.find(item => item.abilityName === 'EntryAbility')!
        console.info('getLauncherAbilityResourceInfo ability.icon:%{public}S', JSON.stringify(ability.icon))
        console.info('getLauncherAbilityResourceInfo ability.drawableDescriptor:%{public}S', JSON.stringify(ability.drawableDescriptor))
        expect(ability.drawableDescriptor != null && ability.drawableDescriptor instanceof LayeredDrawableDescriptor)
          .assertTrue();

        let hapFilePath = '/data/storage/el2/base/files/'
        let bundleInstaller = await installer.getBundleInstaller()
        await bundleInstaller.install([hapFilePath + 'bmsIconDoubleLayer351.hap'], {
          installFlag: 0x01
        })

        let resourceInfos2 = bundleResourceManager.getLauncherAbilityResourceInfo(bundleName, bundleFlags);
        let ability2 = resourceInfos2.find(item => item.abilityName === 'EntryAbility')!
        console.info('getLauncherAbilityResourceInfo ability2.icon:%{public}S', JSON.stringify(ability2.icon))
        console.info('getLauncherAbilityResourceInfo ability2.drawableDescriptor:%{public}S', JSON.stringify(ability2.drawableDescriptor))
        expect(ability2.drawableDescriptor != null && ability2.drawableDescriptor instanceof LayeredDrawableDescriptor)
          .assertTrue();
        expect(ability.icon != ability2.icon).assertTrue();
        done();
      } catch (err) {
        console.info('getLauncherAbilityResourceInfo failed:%{public}s', err.message)
        expect(false).assertTrue();
        done();
      }
      console.info('Sub_Bms_Framework_Icon_DoubleLayer_3500 END')
    });

    /**
     * @tc.number: Sub_Bms_Framework_Icon_DoubleLayer_3600
     * @tc.name: getLauncherAbilityResourceInfo
     * @tc.desc: invoke the getLauncherAbilityResourceInfo interface to check whether the resource information is empty
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : Level 1
     */
    it('Sub_Bms_Framework_Icon_DoubleLayer_3600', 0, async (done: Function) => {
      let bundleName = "com.example.bmsicondoublelayer36";
      let bundleFlags = bundleResourceManager.ResourceFlag.GET_RESOURCE_INFO_WITH_DRAWABLE_DESCRIPTOR;
      console.info('Sub_Bms_Framework_Icon_DoubleLayer_3600 START')
      try {
        let resourceInfos = bundleResourceManager.getLauncherAbilityResourceInfo(bundleName, bundleFlags);
        let ability = resourceInfos.find(item => item.abilityName === 'EntryAbility')!
        console.info('getLauncherAbilityResourceInfo ability.icon:%{public}S', JSON.stringify(ability.icon))
        console.info('getLauncherAbilityResourceInfo ability.drawableDescriptor:%{public}S', JSON.stringify(ability.drawableDescriptor))
        expect(ability.drawableDescriptor != null && ability.drawableDescriptor instanceof LayeredDrawableDescriptor)
          .assertTrue();

        let hapFilePath = '/data/storage/el2/base/files/'
        let bundleInstaller = await installer.getBundleInstaller()
        await bundleInstaller.install([hapFilePath + 'bmsIconDoubleLayer361.hap'], {
          installFlag: 0x01
        })

        let resourceInfos2 = bundleResourceManager.getLauncherAbilityResourceInfo(bundleName, bundleFlags);
        let ability2 = resourceInfos2.find(item => item.abilityName === 'EntryAbility')!
        console.info('getLauncherAbilityResourceInfo ability2.icon:%{public}S', JSON.stringify(ability2.icon))
        console.info('getLauncherAbilityResourceInfo ability2.drawableDescriptor:%{public}S', JSON.stringify(ability2.drawableDescriptor))
        expect(ability2.drawableDescriptor != null && !(ability2.drawableDescriptor instanceof LayeredDrawableDescriptor))
          .assertTrue();
        done();
      } catch (err) {
        console.info('getLauncherAbilityResourceInfo failed:%{public}s', err.message)
        expect(false).assertTrue();
        done();
      }
      console.info('Sub_Bms_Framework_Icon_DoubleLayer_3600 END')
    });

    /**
     * @tc.number: Sub_Bms_Framework_Icon_DoubleLayer_4100
     * @tc.name: getLauncherAbilityResourceInfo
     * @tc.desc: invoke the getLauncherAbilityResourceInfo interface to check whether the resource information is empty
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : Level 1
     */
    it('Sub_Bms_Framework_Icon_DoubleLayer_4100', 0, async (done: Function) => {
      let bundleName = "com.example.bmsicondoublelayer35";
      let bundleFlags = bundleResourceManager.ResourceFlag.GET_RESOURCE_INFO_WITH_DRAWABLE_DESCRIPTOR | bundleResourceManager.ResourceFlag.GET_RESOURCE_INFO_WITH_ICON;
      console.info('Sub_Bms_Framework_Icon_DoubleLayer_4100 START')
      try {
        let resourceInfos = bundleResourceManager.getLauncherAbilityResourceInfo(bundleName, bundleFlags);
        let ability = resourceInfos.find(item => item.abilityName === 'EntryAbility')!
        console.info('getLauncherAbilityResourceInfo ability.icon:%{public}S', JSON.stringify(ability.icon))
        console.info('getLauncherAbilityResourceInfo ability.drawableDescriptor:%{public}S', JSON.stringify(ability.drawableDescriptor))
        expect(ability.drawableDescriptor != null && ability.drawableDescriptor instanceof LayeredDrawableDescriptor)
          .assertTrue();
        expect(ability.icon != null).assertTrue();

        done();
      } catch (err) {
        console.info('getLauncherAbilityResourceInfo failed:%{public}s', err.message)
        expect(false).assertTrue();
        done();
      }
      console.info('Sub_Bms_Framework_Icon_DoubleLayer_4100 END')
    });

  })
}