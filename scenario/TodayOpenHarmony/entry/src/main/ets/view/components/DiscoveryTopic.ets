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

// DiscoveryTopic.ets
import promptAction from '@ohos.promptAction';
@Component
export struct DiscoveryTopic {
  @Prop topics: string[]; // 接收父组件传递的字符串数组
  @State isPressed: boolean = false;
  @State showDetail: boolean = false
  @State currentTopic: string = ''
  @State discussions: string[] = ['欢迎参与讨论！']
  @State newMessage: string = ''; // 新增消息输入状态
  @State isLoading: boolean = false;
  @State private activeType: string = '全部'  // 添加 @State 装饰器

  private switchType(type: string) {
    this.activeType = type
    this.topics = this.generateSortedTopics(type) // 按类型生成排序话题
  }

  private generateSortedTopics(type: string): string[] {
    const base = ["游戏","AI","web","TV","编程","工具"]
    return [...base]
      .sort((a,b) => {
        if(type === '热门')
          return Math.random() > 0.6 ? -1 : 1 // 热门类型更高概率保留前位
        return Math.random() > 0.5 ? 1 : -1  // 最新类型完全随机
      })
      .slice(0,6)
  }

  build() {
    Column() {
      // 始终显示话题列表
      this.BuildTopicList()

      // 叠加层方式显示讨论区
      if (this.showDetail) {
        this.BuildTopicDetail()
      }
    }
    .width('100%')
    .height('auto')
    .backgroundColor('#FFFFFF')
    .margin({ left: 12, right: 12, bottom: 8 })
    .borderRadius(16)
    .shadow({ radius: 12, color: '#10000000', offsetX: 2, offsetY: 4 })
  }

  @Builder
  BuildTopicList() {
    Column() {
      Row() {
        Text($r('app.string.hot_topics'))
          .fontSize(20)
          .fontColor('#1A1A1A')
          .layoutWeight(1)

        // 在每日更新后添加时间显示
        Text(`🔁每日更新 ${new Date().getHours().toString().padStart(2,'0')}:${new Date().getMinutes().toString().padStart(2,'0')}`)
          .fontSize(14)
          .fontColor('#888888')
          .margin({ right: 8 })
      }
      .width('90%')
      .margin({ top: 12, bottom: 8 })

      // 新增分类栏
      Row() {
        ForEach(['全部', '热门', '最新'], (type: string) => {
          Button(type)
            .type(ButtonType.Capsule)
            .borderRadius(8)
            .fontColor(this.activeType === type ? '#FFF' : '#0A58F1') // 动态文字颜色
            .backgroundColor(
              this.activeType === type ? '#0A58F1' : '#F0F6FF'  // 选中原蓝，未选中淡蓝
            )
            .border({
              width: 1,
              color: this.activeType === type ? 'transparent' : '#0A58F133' // 浅蓝边框
            })
            .padding({ left: 12, right: 12 }) // 紧凑间距
            .stateEffect(true) // 保留按压效果
            .margin({ right: 8 })
            .onClick(() => this.switchType(type))
        }, (type:string) => type)  // 添加键生成函数
      }
      .width('60%')
      .margin({ bottom: -25 })

      // 横向滚动容器
        Scroll() {
          Row() {
            ForEach(this.topics, (item: string) => {
              Text(`${this.getTopicIcon(item)}#${item}`)
                .fontSize(14)
                .fontColor('#0A58F1')
                .padding({ left: 12, right: 12, top: 2 })
                .backgroundColor('#F0F6FF')
                .borderRadius(20)
                .margin({ right: 6,bottom:-20 })
                .opacity(this.isPressed ? 0.8 : 1)// 按压透明度变化
                .onClick(() => this.showTopicDialog(item)) // 点击弹出确认框

              Text(`${Math.floor(Math.random()*5000)}人参与 ▲${Math.floor(Math.random()*300)}`)
                .fontSize(12)
                .fontColor('#666666')
                .margin({ bottom:-20 })
            }, (item: string) => item)
          }
          .padding({ left: 24, right: 24})
        }
        .scrollable(ScrollDirection.Horizontal) // 设置横向滚动
        .scrollBar(BarState.On) // 始终显示滚动条
        .scrollBarWidth(6) // 加宽滚动条
        .height(100)

      Row() {
        Button($r('app.string.refresh'))
          .type(ButtonType.Capsule)
          .margin({ left: '30%' })
          .width(80)
          .height(28)
          .backgroundColor('#F0F6FF')
          .fontColor('#0A58F1')
          .onClick(() => this.refreshTopics())

        Text($r('app.string.explore_more'))
          .fontSize(12)
          .fontColor('#999999')
          .margin({ left: 8 })
       }
      .width('90%')
      .margin({ top: 8, bottom: 12 })
      .alignItems(VerticalAlign.Center)
    }
     .width('100%')
     .padding(8)
     .backgroundColor('#FFFFFF')
     .margin({ top: 12, bottom: 12 })
  }

  private refreshTopics() {
    // 添加加载状态
    this.isLoading = true;

    // 模拟延迟加载
    setTimeout(() => {
      this.topics = this.generateRandomTopics();
      this.isLoading = false;
      promptAction.showToast({ message: '发现'+ this.topics.length +'个新话题' })
    }, 800)
  }

  // 新增图标匹配方法
  private getTopicIcon(topic: string):string {
    const icons: Record<string, string> = {  // 声明键值类型
      'AI前沿':'🤖',
      '游戏':'🎮',
      '移动开发':'💻',
      '鸿蒙开发':'🛠️',
      '编程':'💻',
      'TV':'📺',
      '工具':'🔨',
    };
    return (icons as Record<string, string>)[topic] || '🔥';  // 类型断言
  }

  // 添加随机话题生成方法
  private generateRandomTopics() {
    const baseTopics = ["游戏","AI","web","TV","编程","工具"];
    return [...baseTopics].sort(() => Math.random() - 0.5)
      .slice(0,6)
      .map(item => item)
  }

  // 构建讨论区
  @Builder
  BuildTopicDetail() {
    Stack() {
      Column(){
      // 半透明遮罩层
      Blank()
        .backgroundColor('#80000000')
        .onClick(() => {
          this.showDetail = false;
          this.currentTopic = '';
        })
        .width('100%')
        .height('100%')
      }
      .width('100%')
      .height('100%')

      Column() {
      // 标题栏
        Row({ space: 8 }) {
          Text(`#${this.currentTopic}`)
            .fontSize(20)
            .layoutWeight(1)
            .fontColor('#1A1A1A')

        Image($r('app.media.back'))
          .width(24)
          .height(24)
          .margin({ right: 8 })
          .onClick(() => {
            this.showDetail = false;
            this.currentTopic = '';
          })
      }
        .padding(16)
        .width('100%')

        Scroll() {
          // 讨论区
          Column({ space: 8 }) {
            ForEach(this.discussions, (msg: string) => {
              Text(msg)
                .width('92%')
                .fontSize(14)
                .padding(12)
                .backgroundColor('#F5F5F5')
                .borderRadius(8)
                .fontColor('#333333')
                .margin({ left: 16, right: 16 }) // 左右留出滚动条空间
            })
          }
          .width('100%')
          .padding({ bottom: 16 })
        }
        .scrollBar(BarState.On) // 强制显示滚动条
        .scrollBarWidth(6)
        .scrollBarColor('#0A58F1') // 设置滚动条颜色
        .edgeEffect(EdgeEffect.Spring) // 添加滚动回弹效果
        .height('50%') // 固定高度触发滚动
        .layoutWeight(1)
        .margin({ bottom: 8 })

      // 发送区域
        Row({ space: 12 }) {
          TextInput({ placeholder: $r('app.string.say_something'), text: this.newMessage })
            .placeholderColor('#999999')
            .fontSize(16)
            .fontColor('#999')
            .layoutWeight(1)
            .padding(10)
            .height(40)
            .backgroundColor('#FFFFFF')
            .borderRadius(8)
            .onChange((value: string) => {
              this.newMessage = value
            })

          Button($r('app.string.send'))
            .width(80)
            .height(40)
            .backgroundColor('#0A58F1')
            .fontColor(Color.White)
            .onClick(() => this.handleSend())
        }
        .padding({ left: 16, right: 16, bottom: 20 })
        .width('100%')
      }
      .width('90%')
      .height('85%')
      .backgroundColor('#FFFFFF')
      .borderRadius(16)
      .margin({ top: '7.5%', bottom: '7.5%' })
      .shadow({ radius: 24, color: '#40000000' })
      .align(Alignment.Top)
      .position({ x: '5%', y: '7.5%' })
      }
      .position({ x: 0, y: 0 })
      .width('100%')
      .height('100%')
      .zIndex(1001) // 确保弹窗置顶
    }

  private handleSend() {
    if (this.newMessage.trim().length > 0) {
      // 更新讨论列表
      this.discussions = [...this.discussions, this.newMessage]
      // 清空输入框
      this.newMessage = ''
    } else {
      promptAction.showToast({ message: $r('app.string.message_empty'), duration: 2000 })
    }
  }

  // 显示确认弹窗
  private showTopicDialog(item: string) {
    promptAction.showDialog({
      title: $r('app.string.enter_topic'),
      message: `查看 ${item} 的讨论？`,
      buttons: [
        { text: $r('app.string.cancel'), color: '#666' },
        { text: $r('app.string.confirm'), color: '#0A58F1' }
      ]
    }).then(result => {
      if (result.index === 1) {
        this.currentTopic = item;
        this.showDetail = true;
        this.newMessage = '' // 重置输入状态
      }
    })
  }
}