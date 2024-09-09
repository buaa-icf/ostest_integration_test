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

@Entry
@Component
struct fontAttributePage23 {
  private surfaceId: string = ''
  private xComponentContext: Record<string, () => void> = {}
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
            .fontSize(20)
            .fontWeight(FontWeight.Bolder)
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
    }.width('100%')
  }
}