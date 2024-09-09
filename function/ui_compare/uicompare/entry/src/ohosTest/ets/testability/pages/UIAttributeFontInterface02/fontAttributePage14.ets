/**
 * Copyright (c) 2024 Shenzhen Kaihong Digital Industry Development Co., Ltd.
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
import Utils from '../../../test/model/Utils'

@Entry
@Component
struct fontAttributePage14 {
  private surfaceId: string = ''
  private xComponentContext: Record<string, () => void> = {}
  @State spanFontSize014:string = ""
  xComponentController: XComponentController = new XComponentController()

  build() {
    Column() {
      XComponent({
        id: 'xcomponent',
        type: XComponentType.NODE,
        controller: this.xComponentController
      }){
        Text() {
          Span("Hello world")
            .fontSize("10fp")
            .id("fontAttribute_span_014")
        }
        .margin({top:50})
      }
      .onLoad(() => {
        this.xComponentController.setXComponentSurfaceSize({ surfaceWidth: 1920, surfaceHeight: 1080 })
        this.surfaceId = this.xComponentController.getXComponentSurfaceId()
        this.xComponentContext = this.xComponentController.getXComponentContext() as Record<string, () => void>
      })
      .width('200px')
      .height('300px')
      .backgroundColor(Color.White)

      Text(this.spanFontSize014)
        .fontSize(24)
        .margin({top:30})

      Button()
        .onClick(async ()=>{
          let strJson1 = getInspectorByKey('ratingFocusText01');
          let obj1: ESObject = JSON.parse(strJson1);
          await Utils.sleep(1000);
          console.info("[SUB_ACE_UI_COMPONENT_BUTTON_RATING_CUSTOMIZINGS_0080] obj1.$attrs.fontSize is: " + obj1.$attrs.fontSize);
          this.spanFontSize014 = JSON.stringify(obj1.$attrs.fontSize)
        })
    }.width('100%')
  }
}