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

import { promptAction } from '@kit.ArkUI';

@Entry
@Component
struct FunctionJiChuSR000HUB4K018 {

  build() {
    Row() {
      Column() {
        Button('promptAction.showToast_message超长')
          .id('FunctionJiChuSR000HUB4K0180')
          .onClick(() => {
            promptAction.showToast({
              message: "In the realm of collaborative projects, effective communication is paramount. It serves as the cornerstone for success, ensuring that all team members are aligned with the project's vision and goals. When communication is clear and transparent, it fosters an environment where ideas can flow freely, and misunderstandings are minimized. Team members can leverage their diverse skill sets to contribute to the project, knowing that their input is valued and will be heard. Moreover, good communication allows for the timely resolution of conflicts, which is crucial in maintaining team morale and momentum. It also enables the project to stay on track, as updates and changes can be disseminated quickly, keeping everyone informed and able to adapt accordingly. In essence, communication is not just a means to an end in team projects; it is the lifeblood that sustains the team's progress and unity towards achieving their collective objectives.\n",
              bottom: '80vp',
            })
          })
      }
    }
    .width('100%')
    .height('100%')
    .alignItems(VerticalAlign.Center)
    .justifyContent(FlexAlign.Center)
  }
}
