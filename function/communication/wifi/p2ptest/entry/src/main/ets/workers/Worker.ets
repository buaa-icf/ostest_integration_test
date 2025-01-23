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

import worker, { ThreadWorkerGlobalScope, MessageEvents, ErrorEvent } from '@ohos.worker';
import { BusinessError } from '@ohos.base';
import connection from '@ohos.net.connection';
import wifiManager from '@ohos.wifiManager';
import socket from '@ohos.net.socket';

export interface WorkerParam {
  cnt: number;
  packageSize: number;
  debug: boolean;
}

export interface WorkParam {
  cliButtText: string; //客户端按钮文本
  cliColor: Color; //客户端按钮颜色
  numArr: Array<number>; //发送数据次数
  packArr: Array<number>; //每次发包个数
  messArr: Array<number>; //每次发送的字节长
  cliCnt: number, //客户端总共发送次数
  cliPack: number; //客户端总共发包个数
  cliLen: number, //客户端总共发送字节长度
  cliBol: boolean //是否禁用按钮
}

let workParam: WorkParam = {
  cliButtText: '测试中...',
  cliColor: Color.Grey,
  numArr: [],
  packArr: [],
  messArr: [],
  cliCnt: 0,
  cliPack: 0,
  cliLen: 0,
  cliBol: false
}
let leng: number = 0;
let packNum: number = 0;
let logSym: boolean = false;

function print(msg: string) {
  if (logSym) {
    console.log(msg);
  }
}

const Sleep = (ms: number)=> {
  return new Promise<void> (resolve => setTimeout(resolve, ms))
}

const workerPort: ThreadWorkerGlobalScope = worker.workerPort;


workerPort.onmessage = (e: MessageEvents) => {
  // data：主线程发送的信息
  let data: string = e.data;
  print('worker.ets onmessage');
  let dataObject: WorkerParam = JSON.parse(data);
  logSym = dataObject.debug;
  print('dataObject is ' + JSON.stringify(dataObject));
  // 获取P2P连接信息
  wifiManager.getP2pLinkedInfo().then((value) => {
    print(`p2pinfo : ${JSON.stringify(value)}`)
  })
  // 获取WLAN连接信息
  wifiManager.getLinkedInfo().then((value) => {
    print(`linkinfo : ${JSON.stringify(value)}`)
  })
  // 获取默认激活的数据网络
  connection.getDefaultNet().then((netHandle: connection.NetHandle) => {
    // 获取netHandle对应的网络的连接信息
    connection.getConnectionProperties(netHandle,
      async (error: BusinessError, connectionProperties: connection.ConnectionProperties) => {
        if (error) {
          console.error(`Failed to get connection properties. Code:${error.code}, message:${error.message}`);
          return;
        }
        print("Succeeded to get connectionProperties: " + JSON.stringify(connectionProperties));
        let udp: socket.UDPSocket = socket.constructUDPSocketInstance();
        let udpextraoptions: socket.UDPExtraOptions = {
          receiveBufferSize: 1000,
          sendBufferSize: 1000,
          reuseAddress: false,
          socketTimeout: 6000,
          broadcast: true
        }
        // 目标地址信息
        let bindAddr: socket.NetAddress = {
          address: "0.0.0.0",
          port: 1101
        }
        // 绑定IP地址和端口
        udp.bind(bindAddr).then(() => {
          print(`bind success: ${JSON.stringify(bindAddr)}`);
        }).catch((err: BusinessError) => {
          console.log('bind fail, err: ' + JSON.stringify(err));
        })
        udp.on("message", (data) => {
          print(`udp receive: ${data}`);
        })
        udp.setExtraOptions(udpextraoptions, (err: BusinessError) => {
          console.log(`setExtraOptions res: ${JSON.stringify(err)}`);
        });
        let arrayBuffer = new ArrayBuffer(dataObject.packageSize);
        let data = new Uint8Array(arrayBuffer);
        for (let k = 0; k < dataObject.cnt; k++) {
          workParam.cliCnt++;
          for (let j = 0; j < 101; j++) {
            for (let i = 0; i < dataObject.packageSize; i++) {
              data[i] = j;
              if ((i === dataObject.packageSize - 1) && (j > 0) && (j < 101)) {
                leng += (data.length);
              }
            }
            if ((j > 0) && (j < 101)) {
              packNum++;
              workParam.cliPack++;
            }
            let sendOptions: socket.UDPSendOptions = {
              data: arrayBuffer,
              address: {
                address: connectionProperties.routes[0].gateway.address,
                port: 1101
              }
            }
            print(`udp.send: ${JSON.stringify(sendOptions)}`)
            udp.send(sendOptions, (err: BusinessError) => {
              if (err) {
                console.log(`udp send fail: ${JSON.stringify(err)}`);
                return;
              }
            });
            print(`===========第${k+1}次发送数据============`);
            print(`第${j}次发送: data[0]为${data[0]}, data.length为${data.length}`);
            print(`leng is ${leng}`);
            if (j === 1) {
              workParam.numArr.push(k+1);
            }
            if (j === 100) {
              workParam.packArr.push(packNum);
              workParam.messArr.push(leng);
              workParam.cliLen += leng;
              packNum = 0;
              leng =0;
            }
          }
          await Sleep(2000);
          print('wait 2s!')
          let paraStr = JSON.stringify(workParam);
          workerPort.postMessage(paraStr);
        }
        let arrayBuffer1 = new ArrayBuffer(32);
        let data1 = new Uint32Array(arrayBuffer1);
        data1[0] = 199;
        let sendOptions1: socket.UDPSendOptions = {
          data: arrayBuffer1,
          address: {
            address: connectionProperties.routes[0].gateway.address,
            port: 1101
          }
        }
        print(`udp.send: ${JSON.stringify(sendOptions1)}`);
        udp.send(sendOptions1, (err: BusinessError) => {
          if (err) {
            console.log(`udp send fail: ${JSON.stringify(err)}`);
            return;
          }
        });
        print(`===========发送结束信号============`);
        print(`data[0]为${data1[0]}, data.length为${data1.length}, data is ${data1}`);
        setTimeout(() => {
          print('delay 5s!');
          workParam.cliButtText = '测试客户端';
          workParam.cliColor = Color.Blue;
          workParam.cliBol = true;
          udp.off("message");
          print('取消订阅UDPSocket连接的接收消息事件!')
          // worker线程向主线程发送信息
          let paraStr = JSON.stringify(workParam);
          workerPort.postMessage(paraStr);
        }, 5000)
      })
  });
}


workerPort.onmessageerror = (e: MessageEvents) => {
}

workerPort.onerror = (e: ErrorEvent) => {
}