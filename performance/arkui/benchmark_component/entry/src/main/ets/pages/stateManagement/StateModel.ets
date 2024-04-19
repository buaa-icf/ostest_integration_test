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

export enum StateConstants {
  CREATE_STATE = 0,
  READ_STATE = 1,
  WRITE_STATE = 2,
  UI_CHANGE = 3
}

export class StateModel {
  private _stateType: number = 0
  private _isBindUI: Boolean = false

  constructor(stateType: number, isBindUI: Boolean) {
    this._stateType = stateType
    this._isBindUI = isBindUI
  }

  public set setStateType(value: number) {
    this._stateType = value
  }

  public get getStateType(): number {
    return this._stateType
  }

  public set isBindUI(value: Boolean) {
    this._isBindUI = value
  }

  public get isBindUI(): Boolean {
    return this._isBindUI
  }
}