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
import { LengthMetrics, LengthUnit } from '@ohos.arkui.node';


@Entry
@Component
struct ComponentLayoutCommonPixel017 {

  build() {
    Column({ space: 5 }) {
      WaterFlow(){
        FlowItem(){
          Text("0").width(30.3).height(80.5).borderWidth(1)
        }
        FlowItem(){
          Text("1").width(100.3).height(80.4).borderWidth(1)
        }
        FlowItem(){
          Text("2").width(30.2).height(80.5).borderWidth(1)
        }
        FlowItem(){
          Text("3").width(30.4).height(80.4).borderWidth(1)
        }
        FlowItem(){
          Text("4").width(30.8).height(80.5).borderWidth(1)
        }
        FlowItem(){
          Text("5").width(30.8).height(80.4).borderWidth(1)
        }
        FlowItem(){
          Text("6").width(30.2).height(80.5).borderWidth(1)
        }
        FlowItem(){
          Text("7").width(30.2).height(80.4).borderWidth(1)
        }
      }
    }.width('100%')
  }
}