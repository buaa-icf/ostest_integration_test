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

import { TimeHelper } from '../../../util/TimeHelper'

@Entry
@Component
struct MenuFirstExpendSample {
  timeHelper: TimeHelper = new TimeHelper('MenuFirstExpendSample');
  build() {
      Button('change First Expend')
        .id('MenuFirstChangeExpend')
        .margin('5vp')
        .bindMenu(this.SubFirstMenu())
  }

  @Builder
  SubFirstMenu(){
    if (this.timeHelper.printTime(true)) {
    }
    Menu() {
      MenuItem({
        startIcon: $r("app.media.app_icon"),
        content: "一级菜单",
        endIcon: $r("app.media.app_icon"),
        builder: ():void=>this.SubSecondMenu()
      }).id('MenuFirstChangeExpendSencond')
    }
    if (this.timeHelper.printTime(false)) {
    }
  }

  @Builder
  SubSecondMenu() {
    Menu() {
      MenuItem({
        startIcon: $r("app.media.app_icon"),
        content: "二级菜单",
        endIcon: $r("app.media.app_icon"),
        builder: ():void=>this.SubThirdMenu()})
    }.id('MenuFirstChangeExpendThird')
  }

  @Builder
  SubThirdMenu() {
    Menu() {
      MenuItem({
        content: "三级菜单",
      })
    }
  }



}