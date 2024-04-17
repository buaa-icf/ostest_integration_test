@Entry
@Component
struct Index {
  @State message: string = 'Communication Wi-Fi Function Test';
  private cases: string[] = ['打开Wi-Fi','发现SSID','关闭Wi-Fi','连接（无密码）', '断开', '重新连接（无密码）', '连接（WEP）','重新连接（WEP）',
    '连接（WPA/WPA2）', '重新连接（WPA/WPA2）','连接（WPA-PSK）','重新连接（WPA-PSK）',
    '访问网站', '下载文件','自动连接','取消自动连接','删除记录后重新连接（有密码）','连接不广播SSID']

  build() {
    Row() {
      Column() {
        Text(this.message)
          .fontSize(20)
          .fontWeight(FontWeight.Bold)
          .margin(20)
        Button('执行全部用例')
          .fontSize(20)
          .fontWeight(FontWeight.Bold)
          .width('50%')
          .margin(20)
        List({ space: 20, initialIndex: 0 }) {
          ForEach(this.cases, (item: string) => {
            ListItem() {
              Text(item)
                .width('100%')
                .height(30)
                .fontSize(16)
                .textAlign(TextAlign.Center)
                .borderRadius(10)
                .borderWidth(1)
                .borderColor(Color.Blue)
                .backgroundColor(0xFFFFFF)
            }
          }, (item: string) => item)
        }.width('90%')
        .scrollBar(BarState.Off)
      }
      .width('100%')
    }
    .height('100%')
  }
}