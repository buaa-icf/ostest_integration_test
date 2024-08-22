/*
 * Copyright (c) 2023 Huawei Device Co., Ltd.
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

import hilog from '@ohos.hilog';
import { describe, beforeAll, beforeEach, afterEach, afterAll, it, expect } from '@ohos/hypium';
import Base from '@ohos.base';
import notificationManager from '@ohos.notificationManager';

export default function abilityTest() {
  describe('ActsAbilityTest', () => {

    /*
     * @tc.number      Sub_Notification_Ans_NoDistrub_Repetition_0200
     * @tc.name        Sub_Notification_Ans_NoDistrub_Repetition_0200
    */
    it('Sub_Notification_Ans_NoDistrub_Repetition_0200', 3, () => {
      hilog.info(0x0001, 'test1', '%{public}s', 'appMessageId it begin');

      let notificationRequest: notificationManager.NotificationRequest = {
        id: 1,
        content: {
          notificationContentType: notificationManager.ContentType.NOTIFICATION_CONTENT_BASIC_TEXT,
          normal: {
            title: "test_title",
            text: "test_text",
            additionalText: "test_additionalText"
          }
        },
        appMessageId:undefined
      };

      try{
        notificationManager.publish(notificationRequest)
          .then(() => {
            hilog.info(0x0001, 'MyTest', '%{public}s', "appMessageId success, data: void"/* + JSON.stringify(data)*/);
            expect().assertFail()
          })
      }
      catch(err){
        hilog.info(0x0001, 'MyTest', '%{public}s', `appMessageId fail！ code: ${err.code}, message: ${err.message}`);
        expect(err.code).assertEqual(401);
      }

      hilog.info(0x0001, 'test1', '%{public}s', 'appMessageId it end');
    })

    /*
     * @tc.number      Sub_Notification_Ans_NoDistrub_Repetition_0500
     * @tc.name        Sub_Notification_Ans_NoDistrub_Repetition_0500
    */
    it('Sub_Notification_Ans_NoDistrub_Repetition_0500', 3, () => {
      hilog.info(0x0001, 'test1', '%{public}s', 'unifiedGroupInfo it begin');

      let notificationRequest: notificationManager.NotificationRequest = {
        id: 1,
        content: {
          notificationContentType: notificationManager.ContentType.NOTIFICATION_CONTENT_BASIC_TEXT,
          normal: {
            title: "test_title",
            text: "test_text",
            additionalText: "test_additionalText"
          }
        },
        unifiedGroupInfo:undefined
      };

      try{
        notificationManager.publish(notificationRequest)
          .then(() => {
            hilog.info(0x0001, 'MyTest', '%{public}s', "unifiedGroupInfo success, data: void"/* + JSON.stringify(data)*/);
            expect().assertFail()
          })
      }
      catch(err){
        hilog.info(0x0001, 'MyTest', '%{public}s', `unifiedGroupInfo fail！ code: ${err.code}, message: ${err.message}`);
        expect(err.code).assertEqual(401);
      }

      hilog.info(0x0001, 'test1', '%{public}s', 'unifiedGroupInfo it end');
    })

    /*
     * @tc.number      Sub_Noticication_Ans_Publish_IntelligentAggregation_0055
     * @tc.name        PublishinasBundle
     * @tc.desc        The user calls the PublishinasBundle interface, without adding the unifiedGroupInfo parameter, and informs that the publication is successful.
    */
    it('Sub_Noticication_Ans_Publish_IntelligentAggregation_0055', 3, () => {
      hilog.info(0x0055, 'testTag', '%{public}s', 'test55 it begin');
      let representativeBundle: notificationManager.BundleOption = {
        bundle: "bundleName1",
      };
      let request: notificationManager.NotificationRequest = {
        id: 1,
        content: {
          notificationContentType: notificationManager.ContentType.NOTIFICATION_CONTENT_BASIC_TEXT,
          normal: {
            title: "test_title",
            text: "test_text",
            additionalText: "test_additionalText"
          }
        }
      };
      try{
        notificationManager.publishAsBundle(representativeBundle, request).then(() => {
          hilog.info(0x0056, 'testTag', '%{public}s', 'publishAsBundle success');
        })
      }
      catch(err){
        hilog.info(0x0055, 'testTag', '%{public}s', `publishAsBundle fail！ code: ${err.code}, message: ${err.message}`);
        expect().assertFail();
      }
      hilog.info(0x0055, 'testTag', '%{public}s', 'test55 it end');
    })

    /*
       * @tc.number      Sub_Noticication_Ans_Publish_IntelligentAggregation_0056
       * @tc.name        PublishinasBundle
       * @tc.desc        The user calls the PublishinasBundle interface, and adds the unifiedGroupInfo parameter to inform that the publication is successful.
    */
    it('Sub_Noticication_Ans_Publish_IntelligentAggregation_0056', 3, () => {
      let representativeBundle: notificationManager.BundleOption = {
        bundle: "bundleName1",
      };
      let request: notificationManager.NotificationRequest = {
        id: 1,
        content: {
          notificationContentType: notificationManager.ContentType.NOTIFICATION_CONTENT_BASIC_TEXT,
          normal: {
            title: "test_title",
            text: "test_text",
            additionalText: "test_additionalText"
          }
        },
        unifiedGroupInfo:{
          key:"test",
          title: "test-title",
          content:"test-content",
          sceneName:"flight",
          extraInfo:{
            'subScene':'FLIGHT_TICKETED_SUCCESS',
            'wordList':['',''],
            'hashcodeList':[]
          }
        }
      };
      try{
        notificationManager.publishAsBundle(representativeBundle, request).then(() => {
          hilog.info(0x0056, 'testTag', '%{public}s', 'publishAsBundle success');
        })
      }
      catch(err){
        hilog.info(0x0056, 'testTag', '%{public}s', `publishAsBundle fail！ code: ${err.code}, message: ${err.message}`);
        expect().assertFail()
      }
      hilog.info(0x0056, 'testTag', '%{public}s', 'test56 it end');
    })

    /*
       * @tc.number      Sub_Notification_Ans_Collaboration_deviceType_001
       * @tc.name        NotificationSubscribeInfo
       * @tc.desc        The deviceType is null, and the call failed with error code 401.
    */
    it('Sub_Notification_Ans_Collaboration_deviceType_001', 3, () => {
      hilog.info(0x0057, 'testTag', '%{public}s', 'test57 it begin');
      let subscribeCallback = (err: Base.BusinessError) => {
        if (err) {
          console.error(`subscribe failed, code is ${err.code}, message is ${err.message}`);
          expect(err.code).assertEqual(401);
        } else {
          console.info("subscribe success");
          expect().assertFail();
        }
      }
      let onConsumeCallback = (data: notificationSubscribe.SubscribeCallbackData) => {
        console.info("Consume callback: " + JSON.stringify(data));
      }
      let subscriber: notificationSubscribe.NotificationSubscriber = {
        onConsume: onConsumeCallback
      };
      let info: notificationSubscribe.NotificationSubscribeInfo = {
        bundleNames: ["bundleName1","bundleName2"],
        userId:100,
        deviceType:null
      };
      try{
        notificationSubscribe.subscribe(subscriber, info, subscribeCallback);
      }
      catch(err){
        hilog.info(0x0057, 'testTag', '%{public}s', `subscribe fail！ code: ${err.code}, message: ${err.message}`);
        expect(err.code).assertEqual(401);
      }
      hilog.info(0x0057, 'testTag', '%{public}s', 'test57 it end');
    })

    /*
       * @tc.number      Sub_Notification_Ans_Collaboration_deviceType_002
       * @tc.name        NotificationSubscribeInfo
       * @tc.desc        The deviceType is undefined, and the call failed with error code 401.
    */
    it('Sub_Notification_Ans_Collaboration_deviceType_002', 3, () => {
      let subscribeCallback = (err: Base.BusinessError) => {
        if (err) {
          console.error(`subscribe failed, code is ${err.code}, message is ${err.message}`);
          expect(err.code).assertEqual(401);
        } else {
          console.info("subscribe success");
          expect().assertFail()
        }
      }
      let onConsumeCallback = (data: notificationSubscribe.SubscribeCallbackData) => {
        console.info("Consume callback: " + JSON.stringify(data));
      }
      let subscriber: notificationSubscribe.NotificationSubscriber = {
        onConsume: onConsumeCallback
      };
      let info: notificationSubscribe.NotificationSubscribeInfo = {
        bundleNames: ["bundleName1","bundleName2"],
        userId:100,
        deviceType:undefined
      };
      try{
        notificationSubscribe.subscribe(subscriber, info, subscribeCallback);
      }
      catch(err){
        hilog.info(0x0057, 'testTag', '%{public}s', `subscribe fail！ code: ${err.code}, message: ${err.message}`);
        expect(err.code).assertEqual(401);
      }
    })

    /*
       * @tc.number      Sub_Notification_Ans_Collaboration_deviceType_003
       * @tc.name        NotificationSubscribeInfo
       * @tc.desc        The deviceType is null, and the call failed with error code 401.
    */
    it('Sub_Notification_Ans_Collaboration_deviceType_003', 3, () => {
      let subscribeCallback = (err: Base.BusinessError) => {
        if (err) {
          console.error(`subscribe failed, code is ${err.code}, message is ${err.message}`);
          expect(err.code).assertEqual(401);
        } else {
          console.info("subscribe success");
          expect().assertFail()
        }
      }
      let onConsumeCallback = (data: notificationSubscribe.SubscribeCallbackData) => {
        console.info("Consume callback: " + JSON.stringify(data));
      }
      let subscriber: notificationSubscribe.NotificationSubscriber = {
        onConsume: onConsumeCallback
      };
      let info: notificationSubscribe.NotificationSubscribeInfo = {
        bundleNames: ["bundleName1","bundleName2"],
        userId:100,
        deviceType:""
      };
      try{
        notificationSubscribe.subscribe(subscriber, info, subscribeCallback);
      }
      catch(err){
        hilog.info(0x0057, 'testTag', '%{public}s', `subscribe fail！ code: ${err.code}, message: ${err.message}`);
        expect(err.code).assertEqual(401);
      }
    })

    /*
       * @tc.number      Sub_Notification_Ans_Collaboration_deviceType_004
       * @tc.name        NotificationSubscribeInfo
       * @tc.desc        DeviceType was not passed, and the call was successful.
    */
    it('Sub_Notification_Ans_Collaboration_deviceType_004', 3, () => {
      let subscribeCallback = (err: Base.BusinessError) => {
        if (err) {
          console.error(`subscribe failed, code is ${err.code}, message is ${err.message}`);
          expect().assertFail();
        } else {
          console.info("subscribe success");
        }
      }
      let onConsumeCallback = (data: notificationSubscribe.SubscribeCallbackData) => {
        console.info("Consume callback: " + JSON.stringify(data));
      }
      let subscriber: notificationSubscribe.NotificationSubscriber = {
        onConsume: onConsumeCallback
      };
      let info: notificationSubscribe.NotificationSubscribeInfo = {
        bundleNames: ["bundleName1","bundleName2"],
        userId:100,
      };
      try{
        notificationSubscribe.subscribe(subscriber, info, subscribeCallback);
      }
      catch(err){
        hilog.info(0x0057, 'testTag', '%{public}s', `subscribe fail！ code: ${err.code}, message: ${err.message}`);
        expect().assertFail();
      }
    })

    /*
       * @tc.number      Sub_Notification_Ans_Collaboration_Query_0800
       * @tc.name        isDistributedEnabledByBundle
       * @tc.desc        DeviceType passed an empty string, and the call failed, returning error code 401.
    */
    it('Sub_Notification_Ans_Collaboration_Query_0800', 3, () => {
      hilog.info(0x0062, 'testTag', '%{public}s', 'test62 it begin');
      let bundle: notificationManager.BundleOption = {
        bundle: "bundleName1",
        uid: 1
      };
      let deviceType: string = "";
      try{
        notificationManager.isDistributedEnabledByBundle(bundle,deviceType)
          .then(() => {
            expect().assertFail()
          })
      }
      catch(err){
        hilog.info(0x0062, 'testTag', '%{public}s', `isDistributedEnabledByBundle fail！ code: ${err.code}, message: ${err.message}`);
        expect(err.code).assertEqual(401);
      }
      hilog.info(0x0062, 'testTag', '%{public}s', 'test62 it end');
    })

    /*
       * @tc.number      Sub_Notification_Ans_Collaboration_Query_1300
       * @tc.name        isSmartReminderEnabled
       * @tc.desc        DeviceType passed an empty string, and the call failed, returning error code 401.
    */
    it('Sub_Notification_Ans_Collaboration_Query_1300', 3, () => {
      let deviceType: string = "";
      try{
        notificationManager.isSmartReminderEnabled(deviceType)
          .then((data: boolean) => {
            console.info("isSmartReminderEnabled success， data:" + data);
            expect().assertFail()
          })
      }
      catch(err){
        hilog.info(0x0063, 'testTag', '%{public}s', `isSmartReminderEnabled fail！ code: ${err.code}, message: ${err.message}`);
        console.info(`isSmartReminderEnabled fail！ code: ${err.code}, message: ${err.message}`);
        expect(err.code).assertEqual(401);
      }
    })

    /*
       * @tc.number      Sub_Notification_Ans_Delete_SpecifiedGroup_4200
       * @tc.name        removeGroupByBundle
       * @tc.desc        empty groupName
    */
    it('Sub_Notification_Ans_Delete_SpecifiedGroup_4200', 3, () => {
      let removeGroupByBundleCallback = (err: Base.BusinessError): void => {
        if (err) {
          console.error(`removeGroupByBundle failed, code is ${err.code}, message is ${err.message}`);
          expect().assertFail()
        } else {
          console.info("removeGroupByBundle success");
        }
      }
      let bundleOption: notificationManager.BundleOption = { bundle: "com.example.myapplication" };
      let groupName: string = "";
      try{
        notificationManager.removeGroupByBundle(bundleOption, groupName, removeGroupByBundleCallback);
      }
      catch(err){
        hilog.info(0x0065, 'testTag', '%{public}s', `removeGroupByBundle fail！ code: ${err.code}, message: ${err.message}`);
        expect().assertFail();
      }
    })

    /*
       * @tc.number      Sub_Notification_Ans_Delete_SpecifiedGroup_5550
       * @tc.name        removeGroupByBundle
       * @tc.desc        callback
    */
    it('Sub_Notification_Ans_Delete_SpecifiedGroup_5550', 3, () => {
      let removeGroupByBundleCallback = (err: Base.BusinessError): void => {
        if (err) {
          console.error(`removeGroupByBundle failed, code is ${err.code}, message is ${err.message}`);
          expect().assertFail()
        } else {
          console.info("removeGroupByBundle success");
        }
      }
      let bundleOption: notificationManager.BundleOption = { bundle: "com.example.myapplication" };
      let groupName: string = "groupName1";
      try{
        notificationManager.removeGroupByBundle(bundleOption, groupName, removeGroupByBundleCallback);
      }
      catch(err){
        hilog.info(0x0065, 'testTag', '%{public}s', `removeGroupByBundle fail！ code: ${err.code}, message: ${err.message}`);
        expect().assertFail();
      }
    })

    /*
       * @tc.number      Sub_Notification_Ans_Delete_SpecifiedGroup_5950
       * @tc.name        removeGroupByBundle
       * @tc.desc        callback
    */
    it('Sub_Notification_Ans_Delete_SpecifiedGroup_5950', 3, () => {
      let removeGroupByBundleCallback = (err: Base.BusinessError): void => {
        if (err) {
          console.error(`removeGroupByBundle failed, code is ${err.code}, message is ${err.message}`);
          expect().assertFail()
        } else {
          console.info("removeGroupByBundle success");
        }
      }
      let bundleOption: notificationManager.BundleOption = { bundle: "com.example.myapplication" };
      let groupName: string = "groupName1";
      try{
        notificationManager.removeGroupByBundle(bundleOption, groupName, removeGroupByBundleCallback);
      }
      catch(err){
        hilog.info(0x0065, 'testTag', '%{public}s', `removeGroupByBundle fail！ code: ${err.code}, message: ${err.message}`);
        expect().assertFail();
      }
    })

    /*
       * @tc.number      Sub_Notification_Ans_Slot_Emergency_0100
       * @tc.name        publish
       * @tc.desc        Calling callback form of publish interface and setting slotType to create emergency channel for EMERGENCY_INFORMATION succeeded, and the subscriber called back.
    */
    it('Sub_Notification_Ans_Slot_Emergency_0100', 3, () => {
      let subscribeCallback = (err: Base.BusinessError) => {
        if (err) {
          hilog.info(0x0182, 'testTag', '%{public}s', `subscribe failed, code is ${err.code}, message is ${err.message}`);
          expect().assertFail()
        } else {
          hilog.info(0x0182, 'testTag', '%{public}s', "subscribe success");
        }
      }
      let onConsumeCallback = (data: notificationSubscribe.SubscribeCallbackData) => {
        console.info("Consume callback: " + JSON.stringify(data));
      }
      let subscriber: notificationSubscribe.NotificationSubscriber = {
        onConsume: onConsumeCallback
      };
      let info: notificationSubscribe.NotificationSubscribeInfo = {
        bundleNames: ["com.example.myapplication"],
        userId:100,
        deviceType:"phone"
      };
      notificationSubscribe.subscribe(subscriber, info, subscribeCallback);
      let setNotificationEnableCallback = (err: Base.BusinessError): void => {
        if (err) {
          hilog.info(0x0182, 'testTag', '%{public}s', `setNotificationEnable failed, code is ${err.code}, message is ${err.message}`);
          expect().assertFail()
        } else {
          hilog.info(0x0182, 'testTag', '%{public}s', "setNotificationEnable success");
        }
      }
      let bundle: notificationManager.BundleOption = {
        bundle: "com.example.myapplication",
      };
      notificationManager.setNotificationEnable(bundle, false, setNotificationEnableCallback);
      let publishCallback = (err: Base.BusinessError): void => {
        if (err) {
          hilog.info(0x0182, 'testTag', '%{public}s', `publish failed, code is ${err.code}, message is ${err.message}`);
          expect().assertFail()
        } else {
          hilog.info(0x0182, 'testTag', '%{public}s', "publish success");
        }
      }
      let notificationRequest: notificationManager.NotificationRequest = {
        id: 1,
        notificationSlotType: notificationManager.SlotType.EMERGENCY_INFORMATION,
        content: {
          notificationContentType: notificationManager.ContentType.NOTIFICATION_CONTENT_BASIC_TEXT,
          normal: {
            title: "test_title",
            text: "test_text",
            additionalText: "test_additionalText"
          }
        }
      };
      notificationManager.publish(notificationRequest,publishCallback)
    })

    /*
       * @tc.number      Sub_Notification_Ans_Slot_Emergency_0200
       * @tc.name        addslot
       * @tc.desc        Call addslot interface and set slot to create emergency channel for EMERGENCY_INFORMATION, and call getslots interface to obtain the specified channel successfully.
    */
    it('Sub_Notification_Ans_Slot_Emergency_0200', 3, () => {
      let addSlotCallBack = (err: Base.BusinessError): void => {
        if (err) {
          console.error(`addSlot failed, code is ${err.code}, message is ${err.message}`);
          expect().assertFail()
        } else {
          console.info("addSlot success");
        }
      }
      let notificationSlot: notificationManager.NotificationSlot = {
        notificationType: notificationManager.SlotType.EMERGENCY_INFORMATION
      };
      notificationManager.addSlot(notificationSlot, addSlotCallBack);
      let getSlotsCallback = (err: Base.BusinessError, notificationSlot: Array<notificationManager.NotificationSlot>): void => {
        if (err) {
          console.error(`getSlots failed, code is ${err.code}, message is ${err.message}`);
          expect().assertFail()
        } else {
          console.info(`getSlots success, data is ${JSON.stringify(notificationSlot)}`);
        }
      }
      notificationManager.getSlots(getSlotsCallback);
    })

    /*
       * @tc.number      Sub_Notification_Ces_StaticEvent_Enable_001
       * @tc.name        setStaticSubscriberState
       * @tc.desc        (enable: boolean, callback: AsyncCallback<void>): void，enable=true
    */
    it('Sub_Notification_Ces_StaticEvent_Enable_001', 3, () => {
      let enable:boolean = true;
      let Callback = (err: Base.BusinessError): void => {
        if (err) {
          console.error(`setStaticSubscriberState failed, code is ${err.code}, message is ${err.message}`);
          expect().assertFail()
        } else {
          console.info("setStaticSubscriberState success");
        }
      }
      commonEventManager.setStaticSubscriberState(enable, Callback);
    })

    /*
       * @tc.number      Sub_Notification_Ces_StaticEvent_Enable_002
       * @tc.name        setStaticSubscriberState
       * @tc.desc        (enable: boolean, callback: AsyncCallback<void>): void，enable=false
    */
    it('Sub_Notification_Ces_StaticEvent_Enable_002', 3, () => {
      let enable:boolean = false;
      let Callback = (err: Base.BusinessError): void => {
        if (err) {
          console.error(`setStaticSubscriberState failed, code is ${err.code}, message is ${err.message}`);
          expect().assertFail()
        } else {
          console.info("setStaticSubscriberState success");
        }
      }
      commonEventManager.setStaticSubscriberState(enable, Callback);
    })

    /*
       * @tc.number      Sub_Notification_Ces_StaticEvent_Enable_003
       * @tc.name        setStaticSubscriberState
       * @tc.desc        (enable: boolean): Promise<void>，enable=true
    */
    it('Sub_Notification_Ces_StaticEvent_Enable_003', 3, () => {
      let enable:boolean = true;
      let evenName: string[] = ['usual.event.SEND_DATA'];
      commonEventManager.setStaticSubscriberState(enable, evenName).then(() => {
        try {
          promptAction.showToast({
            message: 'app.string.static_subscribe_enabled',
            duration: 2000,
          });
        } catch (error) {
          console.error(`showToast error code is ${error.code}, message is ${error.message}`);
        }
        console.info(`setStaticSubscriberState success, state is ${enable}`);
      }).catch((err: BusinessError) => {
        console.info(`setStaticSubscriberState failed, errCode: ${err.code}, errMes: ${err.message}`);
        expect().assertFail()
      });
    })

    /*
       * @tc.number      Sub_Notification_Ces_StaticEvent_Enable_004
       * @tc.name        setStaticSubscriberState
       * @tc.desc        (enable: boolean): Promise<void>，enable=false
    */
    it('Sub_Notification_Ces_StaticEvent_Enable_004', 3, () => {
      let enable:boolean = false;
      let evenName: string[] = ['usual.event.SEND_DATA'];
      commonEventManager.setStaticSubscriberState(enable, evenName).then(() => {
        try {
          promptAction.showToast({
            message: 'app.string.static_subscribe_enabled',
            duration: 2000,
          });
        } catch (error) {
          console.error(`showToast error code is ${error.code}, message is ${error.message}`);
        }
        console.info(`setStaticSubscriberState success, state is ${enable}`);
      }).catch((err: BusinessError) => {
        console.info(`setStaticSubscriberState failed, errCode: ${err.code}, errMes: ${err.message}`);
        expect().assertFail()
      });
    })

    /*
       * @tc.number      Sub_Notification_Ces_StaticEvent_Enable_014
       * @tc.name        setStaticSubscriberState
       * @tc.desc        Parameter enable is null and undefined, special characters, Chinese, and numbers. Call failed and 401 is returned.
    */
    it('Sub_Notification_Ces_StaticEvent_Enable_014', 3, () => {
      let enable: boolean = null;
      let evenName: string[] = ['usual.event.SEND_DATA'];
      commonEventManager.setStaticSubscriberState(enable, evenName).then(() => {
        try {
          promptAction.showToast({
            message: 'app.string.static_subscribe_enabled',
            duration: 2000,
          });
        } catch (error) {
          console.error(`showToast error code is ${error.code}, message is ${error.message}`);
        }
        console.info(`setStaticSubscriberState success, state is ${enable}`);
        expect().assertFail()
      }).catch((err: BusinessError) => {
        console.info(`setStaticSubscriberState failed, errCode: ${err.code}, errMes: ${err.message}`);
        expect(err.code).assertEqual(401);
      });
    })
  })
}