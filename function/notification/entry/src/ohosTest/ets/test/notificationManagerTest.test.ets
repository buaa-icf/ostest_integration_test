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
     * @tc.number      Sub_Notification_Ans_NoDistrub_Repetition_0100
     * @tc.name        Sub_Notification_Ans_NoDistrub_Repetition_0100
    */
    it('Sub_Notification_Ans_NoDistrub_Repetition_0100', 3, () => {
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
        appMessageId:null
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
     * @tc.number      Sub_Notification_Ans_NoDistrub_Repetition_0400
     * @tc.name        Sub_Notification_Ans_NoDistrub_Repetition_0400
    */
    it('Sub_Notification_Ans_NoDistrub_Repetition_0400', 3, () => {
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
        unifiedGroupInfo:null
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

  })
}