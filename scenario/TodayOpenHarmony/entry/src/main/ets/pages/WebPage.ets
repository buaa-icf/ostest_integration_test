/*
 * Copyright (c) 2025 Shenzhen Kaihong Digital Industry Development Co., Ltd.
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

// WebPage.ets
import router from '@ohos.router';
import { webview } from '@kit.ArkWeb';
import prompt from '@ohos.promptAction';

@Entry
@Component
struct WebPage {
  @State url: string = ''
  controller: webview.WebviewController = new webview.WebviewController()

  aboutToAppear() {
    // 获取路由参数
    const params = router.getParams() as Record<string, string>
    if (!params?.url) {
      console.error('[ERROR] 未接收到URL参数')
      router.back() // 无参数时返回
      return
    }

    try {
      const decodedUrl = decodeURIComponent(params.url)
      this.url = decodedUrl.startsWith('http') ? decodedUrl : `https://${decodedUrl}`
      console.log('[DEBUG] 最终加载URL:', this.url)
    } catch (err) {
      console.error('[ERROR] URL解析失败:', err)
      router.back()
    }
  }

  @State isLoading: boolean = true;

  build() {
    Column() {
      // 顶部导航栏
      Row() {
        Image($r('app.media.back'))
          .width(24)
          .height(24)
          .onClick(() => router.back())

        Text(this.url)// 直接显示 URL
          .fontSize(14)
          .margin({ left: 12 })
          .maxLines(1)
          .textOverflow({ overflow: TextOverflow.Ellipsis })
      }
      .padding(12)
      .backgroundColor('#F0F0F0')

      // 加载状态提示
      if (this.isLoading) {
        LoadingProgress()
          .width(50)
          .height(50)
          .margin({ top: 20 })
      }

      // WebView容器
      Web({
        src: this.url,
        controller: this.controller
      })
        .width('100%')
        .height('100%')
        .onPageBegin(() => {
          this.isLoading = true;
        })
        .onPageEnd(() => {
          this.isLoading = false;
        })
        .onErrorReceive((err) => {
          console.error('[ERROR] 网页加载失败:', JSON.stringify(err));
          prompt.showToast({ message: '加载失败，请检查网络或网址' });
        })
    }
    .height('100%')
  }
}