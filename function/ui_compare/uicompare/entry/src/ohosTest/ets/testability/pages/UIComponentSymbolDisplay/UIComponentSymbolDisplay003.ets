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
struct UIComponentSymbolDisplay003 {
  @State m:string='sys.symbol.ohos_trash_circle'
  @State resources: Resource=$r(this.m)
  build() {
    Column() {
      Text("trash")
      Text() {
        SymbolSpan(this.resources)
          .renderingStrategy(1)
          .fontSize(200)
          .fontColor([Color.Green, Color.Yellow])
      }
      Button('change resource')
        .onClick(()=>{
          this.m='ohos_folder_badge_plus'
        })
        .id('symboldisplay003')
    }
  }
}