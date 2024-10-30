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

import { formBindingData, FormExtensionAbility, formInfo } from '@kit.FormKit';
import { Want } from '@kit.AbilityKit';
import { fileIo } from '@kit.CoreFileKit';
import formProvider from '@ohos.app.form.formProvider';
import { BusinessError } from '@kit.BasicServicesKit';
import http from '@ohos.net.http';
import Logger from '../utils/Logger';

const TAG: string = 'EntryFormAbility';

export default class EntryFormAbility extends FormExtensionAbility {
  onAddForm(want: Want) {

    // Called to return a FormBindingData object.
    class DataObj1 {
      formId: string = '';
    }

    let dataObj1 = new DataObj1();
    if (want.parameters && want.parameters['ohos.extra.param.key.form_identity'] !== undefined) {
      let formId = want.parameters['ohos.extra.param.key.form_identity'].toString();
      dataObj1.formId = formId;
    }
    Logger.info(TAG, "EntryFormAbility formId：" + dataObj1.formId);
    return formBindingData.createFormBindingData(dataObj1);
  }

  onCastToNormalForm(formId: string) {
    // Called when the form provider is notified that a temporary form is successfully
    // converted to a normal form.
  }

  onUpdateForm(formId: string) {
    // Called to notify the form provider to update a specified form.
  }

  onFormEvent(formId: string, message: string) {
    // 注意：FormExtensionAbility在触发生命周期回调时被拉起，仅能在后台存在5秒
    // 建议下载能快速下载完成的小文件，如在5秒内未下载完成，则此次网络图片无法刷新至卡片页面上
    let params: Record<string, string> = JSON.parse(message)
    Logger.info(TAG, "url is:" + params.info);
    let tempDir = this.context.getApplicationContext().tempDir;
    let fileName = 'file' + Date.now();
    let tmpFile = tempDir + '/' + fileName;
    let imgMap: Record<string, number> = {};

    class FormDataClass {
      // 卡片需要显示图片场景, 必须和下列字段formImages 中的key fileName 相同。
      imgName: string = fileName;
      // 卡片需要显示图片场景, 必填字段(formImages 不可缺省或改名), fileName 对应 fd
      formImages: Record<string, number> = imgMap;
    }

    let httpRequest = http.createHttp()
    httpRequest.request(params.info, async (err, data) => {
      if (!err && data.responseCode == http.ResponseCode.OK) {
        try {
          let imgFile = fileIo.openSync(tmpFile, fileIo.OpenMode.READ_WRITE | fileIo.OpenMode.CREATE);
          imgMap[fileName] = imgFile.fd;
          try {
            let writeLen: number = await fileIo.write(imgFile.fd, data.result as ArrayBuffer);
            Logger.info(TAG, "write data to file succeed and size is:" + writeLen);
            Logger.info(TAG, 'ArkTSCard download complete:' + tmpFile);
            try {
              let formData = new FormDataClass();
              let formInfo = formBindingData.createFormBindingData(formData);
              await formProvider.updateForm(formId, formInfo);
              Logger.info(TAG, 'FormAbility updateForm success.');
            } catch (error) {
              Logger.error(TAG, `FormAbility updateForm failed: ${JSON.stringify(error)}`);
            }
          } catch (err) {
            Logger.error(TAG,
              "write data to file failed with error message: " + err.message + ", error code: " + err.code);
          } finally {
            fileIo.closeSync(imgFile);
          }
          ;
        } catch (e) {
          Logger.error(TAG, `openSync failed: ${JSON.stringify(e as BusinessError)}`);
        }

      } else {
        Logger.error(TAG, `ArkTSCard download task failed. Cause: ${JSON.stringify(err)}`);
      }
      httpRequest.destroy();
    })
  }

  onRemoveForm(formId: string) {
    // Called to notify the form provider that a specified form has been destroyed.
  }

  onAcquireFormState(want: Want) {
    // Called to return a {@link FormState} object.
    return formInfo.FormState.READY;
  }
};