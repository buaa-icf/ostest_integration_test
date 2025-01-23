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

import wifiManager from '@ohos.wifiManager';
import { BusinessError } from '@ohos.base';
import { WorkerParam, WorkParam } from '.././workers/Worker';
import socket from '@ohos.net.socket';
import worker, { MessageEvents, ErrorEvent } from '@ohos.worker';

@Component
export struct TitleBar {
  private title!: string;
  build() {
    Column() {
      Row() {
        Text(this.title)
          .fontSize(20)
          .layoutWeight(1)
          .margin({ left: 16 })
          .align(Alignment.Start)
        Blank()
      }
      .height(56)
      .width('100%')
    }
  }
}

@Extend(Column)
function backgroundStyle() {
  .width('100%')
  .padding(12)
  .borderRadius(16)
  .backgroundColor(Color.White)
  .justifyContent(FlexAlign.SpaceAround)
}

@Entry
@Component
struct Index {
  @State cliButText: string = '测试客户端';
  @State serButText: string = '测试服务端';
  @State serEnabled: boolean = true;
  @State sendCnt: string = '100'; //传输次数
  @State cntIndex: number = 1;
  @State packageSize: string = '1024'; //包长
  @State packageIndex: number = 1;
  @State logButColor: Color = Color.White;
  @State serColor: Color = Color.Blue;
  @State debug: boolean = false;
  @State logCnt: number = 0;
  @State numberArray: number[] = []; //服务端接收次序
  @State messageArr: Array<number> = []; //服务端收包字长数组
  @State deltaDateArr: Array<number> = []; //服务端收包时间数组
  @State packageNumArr: Array<number> = []; //服务端收包个数数组
  @State velocityArr: Array<number> = []; //传输速率数组
  @State acceptNum: number = 0; //服务端收包次数
  @State packageNum: number = 0; //服务端收包个数
  @State len: number = 0; //服务端每次收到字长
  @State deltaDate: number = 0; //服务端每次收包时间
  @State velocity: number = 0;
  @State zeroLength: number = 0; //服务端接收的0的字长
  @State oneItem: number = 0; //数组中1的索引
  @State workParam: WorkParam = {
    cliButtText: '测试客户端',
    cliColor: Color.Blue,
    numArr: [],
    packArr: [],
    messArr: [],
    cliCnt: 0,
    cliPack: 0,
    cliLen: 0,
    cliBol: true
  }
  @State starttime: number = 0;
  @State endtime: number = 0;
  @State recvSize: number = 0; //服务端接收总字长
  @State recvDuration: number = 0; //服务端总计时
  @State recvPackageNum: number = 0;
  @State listDirection: Axis = Axis.Vertical;
  @State space: number = 10;
  @State strokeWidth: number = 0;
  @State color: string = '#409EFF';
  @State barState: BarState = BarState.Auto;
  @State scrollBarWidth: number = 0;
  @State scrollBarColor: Color = Color.Blue;
  @State initIndex: number = AppStorage.get<number>('listSampleInitIndex') || 0;
  @State edgeEffect: EdgeEffect = EdgeEffect.Spring;
  @State isChainAnimation: boolean = false;
  @State multiSelectable: boolean = false;
  @State lanes: number = 1;
  @State alignListItem: ListItemAlign = ListItemAlign.Center;
  private controller: Scroller = new Scroller();
  private dataArr: Uint8Array = new Uint8Array();
  udp: socket.UDPSocket = socket.constructUDPSocketInstance(); // 创建一个UDPSocket对象
  private udpextraoptions: socket.UDPExtraOptions = {
  receiveBufferSize: 1000,
  sendBufferSize: 1000,
  reuseAddress: false,
  socketTimeout: 6000,
  broadcast: true
  }

  print(msg: string) {
    if (this.debug) {
      console.log(msg);
    }
  }

  recvP2pPersistentGroupChangeFunc = () => {
    console.info("p2p persistent group change receive event");
    // 永久组创建好后需要处理的业务
    this.getCurrentP2P();
    this.createUdpSocket();
  }

  getCurrentP2P() {
    let ipinfo = wifiManager.getIpInfo(); // 获取IP信息
    this.print(`ipinfo: ${JSON.stringify(ipinfo)}`);
    this.print(`ipaddr: ${this.intToIp(ipinfo.ipAddress)}`);
    // 获取P2P连接信息
    wifiManager.getP2pLinkedInfo().then((p2pInfo) => {
      this.print(`p2plinkedinfo: ${JSON.stringify(p2pInfo)}`);
    })
    // 获取P2P当前组信息
    wifiManager.getCurrentGroup().then((data: wifiManager.WifiP2pGroupInfo) => {
      this.print(`get current P2P group: ${JSON.stringify(data)}`);
      if (data.isP2pGo && data.groupName === 'ANOV') {
        this.print(`WifiP2pGroupInfo is: ${JSON.stringify(data)}`);
      }
    })
      .catch((err: BusinessError) => {
        console.log(`getCurrentGroup: ${JSON.stringify(err)}`);
      })
  }

  createUdpSocket() {
    // 设置UDPSocket连接的其他属性
    this.udp.setExtraOptions(this.udpextraoptions, (err: BusinessError) => {
      console.log(`setExtraOptions res: ${JSON.stringify(err)}`);
    });
    // 目标地址信息
    let bindAddr: socket.NetAddress = {
      address: "0.0.0.0",
      port: 1101
    }
    this.udp.on('message', (data) => {
      this.onMessage(data.message);
    })
    // 订阅UDPSocket连接的数据包消息事件
    this.udp.on('listening', () => {
      this.print("on listening success");
    });
    // 订阅UDPSocket连接的error事件
    this.udp.on('error', (err) => {
      console.log(`on udp err: ${JSON.stringify(err)}`);
    })
    // 绑定IP地址和端口
    this.udp.bind(bindAddr).then(() => {
      this.print(`bind success: ${JSON.stringify(bindAddr)}`);
    }).catch((err: BusinessError) => {
      console.log('bind fail, err: ' + JSON.stringify(err));
    })
  }

  // 转IP地址
  intToIp(int: number) {
    // 将整数转换为32位二进制字符串
    const binaryString = int.toString(2).padStart(32, '0');

    // 分割二进制字符串为四个8位的段
    const octet1 = binaryString.substring(0, 8);
    const octet2 = binaryString.substring(8, 16);
    const octet3 = binaryString.substring(16, 24);
    const octet4 = binaryString.substring(24, 32);

    // 将每个8位的段转换为十进制数
    const octet1Dec = Number.parseInt(octet1, 2);
    const octet2Dec = Number.parseInt(octet2, 2);
    const octet3Dec = Number.parseInt(octet3, 2);
    const octet4Dec = Number.parseInt(octet4, 2);

    // 组合四个十进制数成为IP地址
    const ipAddress = `${octet1Dec}.${octet2Dec}.${octet3Dec}.${octet4Dec}`;

    return ipAddress;
  }

  printMess() {
    this.print(`============第${this.acceptNum}次接收数据============`);
    this.print(`data[0] = ${this.dataArr[0]}, data.length is ${this.dataArr.length}`);
    this.print(`this.len is ${this.len}`);
  }

  startInit() {
    this.starttime = new Date().getTime();
    this.acceptNum++;
  }

  endCalculate() {
    this.endtime = new Date().getTime();
    this.deltaDate = this.endtime - this.starttime;
    this.len += this.dataArr.length;
    this.velocity = this.len * 1000 / (this.deltaDate * 1024);
    this.packageNum++;
    this.printMess();
    this.print(`endtime is ${this.endtime}`);
    this.print(`this.deltaDate is ${this.deltaDate}`);
    this.numberArray.push(this.acceptNum);
    this.packageNumArr.push(this.packageNum);
    this.messageArr.push(this.len);
    this.deltaDateArr.push(this.deltaDate);
    this.velocityArr.push(this.velocity);
    this.recvDuration += this.deltaDate; //总计时
    this.recvSize += this.len; //总字长
    this.recvPackageNum += this.packageNum; //总收包
    this.starttime = 0;
    this.endtime = 0;
    this.len = 0;
    this.packageNum = 0;
  }

  onMessage(dataBuffer: ArrayBuffer) {
    this.dataArr = new Uint8Array(dataBuffer);
    if (this.dataArr[0] === 0) {
      this.startInit();
      this.printMess();
      return;
    }
    if (this.dataArr[0] === 100) {
      this.endCalculate();
      return;
    }
    if (this.dataArr[0] === 199) {
      this.serButText = '测试服务端';
      this.serColor = Color.Blue;
      this.serEnabled = true;
      wifiManager.removeGroup();
      this.print('移除群组!');
      this.udp.close();
      this.print('关闭UDPSocket连接!');
      return;
    }
    this.len += this.dataArr.length;
    this.packageNum++;
    this.printMess();
  }

  build() {
    Flex({ direction: FlexDirection.Column, alignItems: ItemAlign.Center, justifyContent: FlexAlign.Start }) {
      TitleBar({ title: 'wifiP2P测试' })
        .flexGrow(0)
        .onClick(() => {
          this.logCnt++;
          if (this.logCnt % 2 === 0) {
            this.debug = false;
          } else {
            this.debug = true;
          }
          if (this.debug) {
            this.logButColor = Color.Pink;
          } else {
            this.logButColor = Color.White;
          }
        })
        .backgroundColor(this.logButColor)

      // tab页签
      Column() {
        Tabs({ barPosition: BarPosition.Start }) {
          // 子页签：WaterFlow控制
          TabContent() {
            Column() {
              Row() {
                Text('次数')
                Select([{ value: '1'}, { value: '10' }, { value: '100' }, { value: '1000' }])
                  .value(this.sendCnt)
                  .backgroundColor(Color.White)
                  .borderRadius(19)
                  .constraintSize({ minWidth: 100 })
                  .selected(this.cntIndex)
                  .onSelect((index, value) => {
                    this.cntIndex = index;
                    this.sendCnt = value;
                  })
                  .width(50)
                  .margin(10)
                  .borderRadius(2)

                Text('长度')
                Select([{ value: '10' }, { value: '1024' }, { value: '4096' }])
                  .value(this.packageSize)
                  .backgroundColor(Color.White)
                  .borderRadius(19)
                  .constraintSize({ minWidth: 100 })
                  .selected(this.packageIndex)
                  .onSelect((index, value) => {
                    this.packageIndex = index;
                    this.packageSize = value;
                  })
                  .margin(10)
                  .borderRadius(2)
              }

              // 客户端按钮
              Button(this.workParam.cliButtText)
                .height(50)
                .width('80%')
                .onClick(() => {
                  this.workParam.cliButtText = '测试中......';
                  this.workParam.cliBol = false;
                  this.workParam.cliColor = Color.Grey;
                  this.acceptNum = 0;
                  this.len = 0;
                  this.numberArray.length = 0;//服务端切至客户端清除收包信息列表
                  this.workParam.numArr.length = 0;
                  this.workParam.cliCnt = 0;
                  this.workParam.cliPack = 0;
                  this.workParam.cliLen = 0;
                  this.workParam.cliBol = false;
                  // 主线程中创建Worker对象
                  const workerInstance = new worker.ThreadWorker('entry/ets/workers/Worker.ets');
                  let workerParam: WorkerParam = {
                    cnt: Number(this.sendCnt),
                    packageSize: Number(this.packageSize),
                    debug: this.debug
                  }
                  let paramStr = JSON.stringify(workerParam);
                  // 主线程向worker线程传递信息
                  workerInstance.postMessage(paramStr);
                  // 主线程接收worker线程信息
                  workerInstance.onmessage = (e: MessageEvents): void => {
                    this.print('main thread onmessage');
                    // data：worker线程发送的信息
                    let data: WorkParam = JSON.parse(e.data)
                    this.workParam = data;
                  }
                  workerInstance.onerror = (err: ErrorEvent) => {
                    this.print('main error message ' + err.message);
                  }
                })
                .backgroundColor(this.workParam.cliColor)
                .enabled(this.workParam.cliBol)
                .stateEffect(true)
            }
            .height('100%')
          }.tabBar(new SubTabBarStyle($r('app.string.wifiP2P_client')))

          // 子页签：WaterFlow属性
          TabContent() {
            Column() {
              //服务端按钮
              Button(this.serButText)
                .height(50)
                .width('80%')
                .onClick(() => {
                  this.serButText = '测试中......';
                  this.serEnabled = false;
                  this.serColor = Color.Grey;
                  this.workParam.cliCnt = 0;
                  this.workParam.cliPack = 0;
                  this.workParam.cliLen = 0;
                  this.workParam.numArr.length = 0;
                  this.workParam.packArr.length = 0;
                  this.workParam.messArr.length = 0;
                  this.messageArr.length = 0;
                  this.numberArray.length = 0;
                  this.deltaDateArr.length = 0;
                  this.packageNumArr.length = 0;
                  this.velocityArr.length = 0;
                  this.messageArr.length = 0;
                  this.len = 0;
                  this.packageNum = 0;
                  this.recvSize = 0;
                  this.recvDuration = 0;
                  this.recvPackageNum = 0;
                  this.acceptNum = 0;
                  wifiManager.on("p2pPersistentGroupChange", this.recvP2pPersistentGroupChangeFunc);
                  try {
                    let config: wifiManager.WifiP2PConfig = {
                      deviceAddress: "11:33:11:44:77:44",
                      deviceAddressType: 1, // 设备地址类型，0：随机；1：真实地址；
                      netId: -1, // 临时创建群组，-1：临时组；-2：永久组；
                      passphrase: "11223344",
                      groupName: "ANOV",
                      goBand: 1 // 信道带宽 2.4GHz
                    }
                    wifiManager.createGroup(config);
                  } catch(error) {
                    console.error("failed:" + JSON.stringify(error));
                  }
                })
                .backgroundColor(this.serColor)
                .enabled(this.serEnabled)
                .stateEffect(true)
            }
            .height('100%')
          }.tabBar(new SubTabBarStyle($r('app.string.wifiP2P_server')))
        }
        .vertical(false)
        .scrollable(true)
        .barMode(BarMode.Fixed)
        .backgroundColor(Color.Pink)
        .onChange((index: number) => {
          console.info(index.toString())
        })
        .width('100%')
        .backgroundColor(0xF1F3F5)
      }
      .height('30%')
      .width('100%')

      // List
      Column() {
        //客户端发送信息列表
        List({ scroller: this.controller, initialIndex: this.initIndex, space: this.space }) {
          ForEach(this.workParam.numArr, (item: number, index: number) => {
            ListItem() {
              Column() {
                Text(`第${ this.workParam.numArr[item-1] }次，发包${ this.workParam.packArr[item-1] }个，长${
                this.workParam.messArr[item-1] }字节`)
                  .margin(5)
                  .width('90%')
                  .align(Alignment.Center)
                  .textAlign(TextAlign.Center)
              }
              .width('100%')
              .backgroundColor('#0d000000')
              .height(40)
            }
          })
        }

        //服务端接收信息列表
        List({ scroller: this.controller, initialIndex: this.initIndex, space: this.space }) {
          ForEach(this.numberArray, (item: number, index: number) => {
            ListItem() {
              Column() {
                Text(`第${this.numberArray[item-1]}次，收包${ this.packageNumArr[item-1] }个，长${this.messageArr[item-1]}字节`)
                  .margin(5)
                  .width('90%')
                  .align(Alignment.TopStart)
                  .textAlign(TextAlign.Start)
                Text(`用时${this.deltaDateArr[item-1]}毫秒，速度${ Math.round(this.velocityArr[item-1]) } KB/s`)
                  .margin(5)
                  .width('90%')
                  .align(Alignment.BottomEnd)
                  .textAlign(TextAlign.End)
              }
              .width('100%')
              .backgroundColor('#0d000000')
              .height(60)
            }
          })
        }
        .alignListItem(this.alignListItem)
        .height('100%')
        .width('100%')
        .listDirection(this.listDirection)
        .scrollBar(this.barState)
        .scrollBarColor(this.scrollBarColor)
        .scrollBarWidth(this.scrollBarWidth)
        .edgeEffect(this.edgeEffect)
        .multiSelectable(this.multiSelectable)
        .chainAnimation(this.isChainAnimation)
        .lanes(this.lanes)
        .divider(
          {
            strokeWidth: this.strokeWidth,
            color: this.color
          }
        )
      }
      .padding({ left: 12, right: 12 })
      .backgroundStyle()
      .height('40%')
      .width('100%')
      .flexGrow(0)

      Column() {
        if (this.acceptNum !== 0) {
          Text() {
            Span(`共测试次数: ${this.acceptNum}`)
          }

          Text(`共收到字节: ${this.recvSize}字节`)
            .textAlign(TextAlign.Start)
            .fontColor(Color.Gray)

          Text(`共收到包数: ${this.recvPackageNum}`)
            .textAlign(TextAlign.Start)
            .fontColor(Color.Gray)

          Text(`总计时: ${(this.recvDuration * 0.001).toFixed(6)}s`)
            .textAlign(TextAlign.Start)
            .fontColor(Color.Gray)

          Text(`平均速度：${Math.round(this.recvSize * 1000 / (this.recvDuration * 1024))}KB/s`)
            .textAlign(TextAlign.Start)
            .fontColor(Color.Gray)
        }

        if (this.workParam.cliCnt !== 0) {
          Text() {
            Span(`共测试次数: ${this.workParam.cliCnt}`)
          }

          Text(`共发送包数: ${this.workParam.cliPack}`)
            .textAlign(TextAlign.Start)
            .fontColor(Color.Gray)

          Text(`共发送字节: ${this.workParam.cliLen}字节`)
            .textAlign(TextAlign.Start)
            .fontColor(Color.Gray)
        }
      }
      .height('16%')
      .width('100%')
      .padding({left:12})
      .alignItems(HorizontalAlign.Start)
      .justifyContent(FlexAlign.Center)
      .flexGrow(0)
    }
    .padding({ left: 12, right: 12 })
    .height('100%')
    .width('100%')
    .backgroundColor('$color:index_background')
  }
}