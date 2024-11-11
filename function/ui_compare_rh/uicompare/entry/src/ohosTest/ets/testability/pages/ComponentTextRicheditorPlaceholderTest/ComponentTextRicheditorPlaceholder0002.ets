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
struct ComponentTextRicheditorPlaceholder0002 {
  controller: RichEditorController = new RichEditorController();
  options: RichEditorOptions = { controller: this.controller };

  build() {
    Row() {
      Column() {
        RichEditor(this.options)
          .placeholder('前面章节介绍了如何创建一个自定义组件。该自定义组件内部红结构固定，仅与使用方进行数据传递。 Ark UI还提供了一种更轻量的VI元素复用机制④vilder,④vilder所装饰的函数遵循 build()函数语法规则, 开发者可以将重复使用的UI元素抽象成一个方法，在build方法里调用。')
          .key('ComponentTextRicheditorPlaceholder0002')
          .borderWidth(1)
          .borderColor(Color.Red)
          .width(100)
          .height(300)
      }
      .width('100%')
      .height('100%')
    }
  }
}