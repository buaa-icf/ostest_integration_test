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
struct fontAttributeAndStyle30 {
  @State text:ResourceStr = "111111111"
  private clickNum1:number = 0
  private text_all:Array<string> = [
    "总有一条蜿蜒在童话镇里七彩的河",
    "%￥……@!*()&",
    "         "
  ]

  build() {
    Column() {
      TextArea({ placeholder: 'please input', text:this.text })
        .width(240)
        .height(60)
        .margin({top:50})

      Button("input")
        .id("fontAttributeAndStyle30")
        .fontSize(18)
        .onClick(()=>{
          if(this.clickNum1<3){
            this.text = this.text_all[this.clickNum1]
            this.clickNum1++
            if(this.clickNum1==3){
              this.clickNum1=0
            }
          }
        })
        .margin({top:50})
    }.width('100%')
  }
}