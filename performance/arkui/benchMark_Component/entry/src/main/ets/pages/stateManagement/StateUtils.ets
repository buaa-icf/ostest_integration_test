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

import { TimeHelper } from '../../util/TimeHelper';
import { StateConstants, StateModel } from './StateModel';

export class StateUtils {
  static isType(type: boolean, timeHelper: TimeHelper) {
    if (type) {
      return true
    } else {
      timeHelper.printStateTime(false, 1, new StateModel(StateConstants.UI_CHANGE, true))
      return false
    }
  }
}