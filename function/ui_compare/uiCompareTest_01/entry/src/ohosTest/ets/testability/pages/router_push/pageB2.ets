/**
 * Copyright (c) 2025 Shenzhen Kaihong Digital Industry Development Co., Ltd.
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

import { BusinessError } from '@kit.BasicServicesKit';

@Entry
@Component
struct PageB2 {
  @State message: string = 'PageB'

  async routePush(targetUrl:string) {
    this.getUIContext().getRouter().pushUrl({
      url: targetUrl
    })
      .then(() => {
        console.info('succeeded');
      })
      .catch((error: BusinessError) => {
        console.error(`pushUrl failed, code is ${error.code}, message is ${error.message}`);
      })
  }

  build() {
    Column() {
      Text(this.message)
        .fontSize(50)
        .fontWeight(FontWeight.Bold)

      Button('Push PageC')
        .margin({top:30})
        .height(40)
        .id('PageB_Button1')
        .onClick(()=>{
          this.routePush('testability/pages/router_push/pageC')
        })

      Button('Back PageA')
        .margin({top:30})
        .height(40)
        .id('PageB_Button2')
        .onClick(()=>{
          this.routePush('testability/pages/router_push/pageA')
        })
    }
  }

  pageTransition() {
    PageTransitionEnter({ type: RouteType.None, duration: 0 })
    PageTransitionExit({ type: RouteType.None, duration: 0 })
  }
}
