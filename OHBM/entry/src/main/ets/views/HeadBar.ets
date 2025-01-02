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

import { promptAction } from '@kit.ArkUI';
/**
 * List item information component.
 */
@Component
export default struct HeadBar {
  private title: string = 'OpenHarmony BenchMarks'
  private isSetting: boolean = true;

  build() {
    Row() {
      if (!this.isSetting) {
        Navigator({ target: 'pages/Index', type: NavigationType.Back }) {
          Image($r('app.media.chevron_down'))
            .height(36)
            .margin(8)
            .rotate({ angle: 90 })
        }
      }
      if (this.isSetting){
        Text(){
          Span('O').fontSize(20).fontColor(Color.Orange)
          Span('pen').fontSize(20).fontColor(Color.White)
          Span('H').fontSize(20).fontColor(Color.Orange)
          Span('armony ').fontSize(20).fontColor(Color.White)
          Span('B').fontSize(20).fontColor(Color.Orange)
          Span('ench').fontSize(20).fontColor(Color.White)
          Span('M').fontSize(20).fontColor(Color.Orange)
          Span('arks').fontSize(20).fontColor(Color.White)
        }.margin(8)
      }else{
        Text(this.title)
          .fontSize( 24)
          .margin(8)
          .fontColor(Color.White)
      }

      Image($r('app.media.gearshape'))
        .height(36)
        .margin(8)
        .clickEffect({ level: ClickEffectLevel.MIDDLE, scale: 0.6 })
        .onClick(()=>{
          promptAction.showToast({
            message: 'Developed by sunlian@kaihong.com',
            duration: 5000
          });
        })
    }
    .backgroundColor('#66aaff')
    .width('100%')
    .justifyContent(FlexAlign.SpaceBetween)
  }
}