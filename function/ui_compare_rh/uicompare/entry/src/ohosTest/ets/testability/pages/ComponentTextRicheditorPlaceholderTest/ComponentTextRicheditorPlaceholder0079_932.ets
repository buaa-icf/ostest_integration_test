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


@Entry
@Component
struct ComponentTextRicheditorPlaceholder0079_932 {
  controller: RichEditorController = new RichEditorController();
  options: RichEditorOptions = { controller: this.controller };
  @State fontSize: number = 20;
  @State fontWeight: number = 100;
  @State fontFamily: string = '';
  @State fontColor: Color = Color.Red;
  @State fontStyle: FontStyle = FontStyle.Normal;
  @State fontValue: ResourceStr = '点击改变属性';

  build() {
    Column() {
      RichEditor(this.options)
        .placeholder('tips', {
        })
        .onReady(()=>{
          this.controller.addTextSpan('add span',{

          })
        })
        .borderWidth(1)
        .borderColor(Color.Red)
        .id('ComponentTextRicheditorPlaceholder0079_932')
        .width(100)
        .height(300)
      Button('changeFeature')
        .id('changeFeature')
        .width(100)
        .height(30)
        .onClick(() => {
          this.controller.deleteSpans({
          });
        })
    }
    .width('100%')
    .height('100%')
  }
}