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

import { deviceInfo } from '@kit.BasicServicesKit';
import { batteryInfo } from '@kit.BasicServicesKit';
import { sensor } from '@kit.SensorServiceKit';
import { camera } from '@kit.CameraKit';
import { common } from '@kit.AbilityKit';
import { BusinessError } from '@kit.BasicServicesKit';

class Item {
  name: string = ''
  value: string = ''

  constructor(name: string, value: string) {
    this.name = name;
    this.value = value;
  }
}

@Entry
@Component
struct BasicInfo {
  @State deviceInfoArray: Item[] = []
  @State batteryInfoArray: Item[] = []
  @State sensorInfoArray: Item[] = []
  @State cameraInfoArray: Item[] = []

  aboutToAppear(): void {
    this.getDeviceInfo();
    this.getCameraInfo();
    this.getBatteryInfo();
    this.getSensorInfo();
  }

  build() {
    Column() {
      Text('验机')
        .fontSize(32)
        .width('100%')
        .textAlign(TextAlign.Center)
        .margin(16)
      Scroll() {
        Column() {
          Text('设备信息')
            .fontSize(24)
            .width('100%')
            .backgroundColor('#CCCCCC')
            .padding(12)
          List() {
            ForEach(this.deviceInfoArray, (item: Item) => {
              ListItem() {
                Row() {
                  Text(item.name)
                    .fontSize(18)
                  Text(item.value)
                    .fontSize(18)
                }
                .margin({ top: 4, bottom: 4 })
                .justifyContent(FlexAlign.SpaceBetween)
                .width('100%')
              }
            })
          }
          .divider({ strokeWidth: 1, color: '#CCCCCC' })
          .width('90%')

          Text('相机')
            .fontSize(24)
            .width('100%')
            .backgroundColor('#CCCCCC')
            .padding(12)
          List() {
            ForEach(this.cameraInfoArray, (item: Item) => {
              ListItem() {
                Row() {
                  Text(item.name)
                    .fontSize(18)
                  Text(item.value)
                    .fontSize(18)
                }
                .margin({ top: 4, bottom: 4 })
                .justifyContent(FlexAlign.SpaceBetween)
                .width('100%')
              }
            })
          }
          .divider({ strokeWidth: 1, color: '#CCCCCC' })
          .width('90%')

          Text('电量信息')
            .fontSize(24)
            .width('100%')
            .backgroundColor('#CCCCCC')
            .padding(12)
          List() {
            ForEach(this.batteryInfoArray, (item: Item) => {
              ListItem() {
                Row() {
                  Text(item.name)
                    .fontSize(18)
                  Text(item.value)
                    .fontSize(18)
                }
                .margin({ top: 4, bottom: 4 })
                .justifyContent(FlexAlign.SpaceBetween)
                .width('100%')
              }
            })
          }
          .divider({ strokeWidth: 1, color: '#CCCCCC' })
          .width('90%')

          Text('传感器')
            .fontSize(24)
            .width('100%')
            .backgroundColor('#CCCCCC')
            .padding(12)
          List() {
            ForEach(this.sensorInfoArray, (item: Item) => {
              ListItem() {
                Row() {
                  Text(item.name)
                    .fontSize(18)
                  Text(item.value)
                    .fontSize(18)
                }
                .margin({ top: 4, bottom: 4 })
                .justifyContent(FlexAlign.SpaceBetween)
                .width('100%')
              }
            })
          }
          .divider({ strokeWidth: 1, color: '#CCCCCC' })
          .width('90%')
        }
      }
      .scrollBar(BarState.Off)
      .height('100%')
    }.margin({ bottom: 48 })
  }

  getDeviceInfo() {
    this.deviceInfoArray = [];
    this.deviceInfoArray.push(new Item('deviceType', deviceInfo.deviceType));
    this.deviceInfoArray.push(new Item('manufacture', deviceInfo.manufacture));
    this.deviceInfoArray.push(new Item('brand', deviceInfo.brand));
    this.deviceInfoArray.push(new Item('marketName', deviceInfo.marketName));
    this.deviceInfoArray.push(new Item('productSeries', deviceInfo.productSeries));
    this.deviceInfoArray.push(new Item('productModel', deviceInfo.productModel));
    this.deviceInfoArray.push(new Item('softwareModel', deviceInfo.softwareModel));
    this.deviceInfoArray.push(new Item('hardwareModel', deviceInfo.hardwareModel));
    this.deviceInfoArray.push(new Item('serial', deviceInfo.serial));
    this.deviceInfoArray.push(new Item('bootloaderVersion', deviceInfo.bootloaderVersion));
    this.deviceInfoArray.push(new Item('abiList', deviceInfo.abiList));
    this.deviceInfoArray.push(new Item('securityPatchTag', deviceInfo.securityPatchTag));
    this.deviceInfoArray.push(new Item('displayVersion', deviceInfo.displayVersion));
    this.deviceInfoArray.push(new Item('incrementalVersion', deviceInfo.incrementalVersion));
    this.deviceInfoArray.push(new Item('osReleaseType', deviceInfo.osReleaseType));
    this.deviceInfoArray.push(new Item('osFullName', deviceInfo.osFullName));
    this.deviceInfoArray.push(new Item('majorVersion', deviceInfo.majorVersion.toString()));
    this.deviceInfoArray.push(new Item('seniorVersion', deviceInfo.seniorVersion.toString()));
    this.deviceInfoArray.push(new Item('featureVersion', deviceInfo.featureVersion.toString()));
    this.deviceInfoArray.push(new Item('buildVersion', deviceInfo.buildVersion.toString()));
    this.deviceInfoArray.push(new Item('sdkApiVersion', deviceInfo.sdkApiVersion.toString()));
    this.deviceInfoArray.push(new Item('firstApiVersion', deviceInfo.firstApiVersion.toString()));
    this.deviceInfoArray.push(new Item('buildUser', deviceInfo.buildUser));
    this.deviceInfoArray.push(new Item('buildHost', deviceInfo.buildHost));
    this.deviceInfoArray.push(new Item('buildTime', deviceInfo.buildTime));
    this.deviceInfoArray.push(new Item('buildRootHash', deviceInfo.buildRootHash));
    this.deviceInfoArray.push(new Item('udid', deviceInfo.udid));
    this.deviceInfoArray.push(new Item('distributionOSName', deviceInfo.distributionOSName));
    this.deviceInfoArray.push(new Item('distributionOSVersion', deviceInfo.distributionOSVersion));
    this.deviceInfoArray.push(new Item('distributionOSApiVersion', deviceInfo.distributionOSApiVersion.toString()));
    this.deviceInfoArray.push(new Item('distributionOSReleaseType', deviceInfo.distributionOSReleaseType));
    this.deviceInfoArray.push(new Item('ODID', deviceInfo.ODID));
  }

  getCameraInfo() {
    let cameraManager = this.getCameraManager();
    let cameras: Array<camera.CameraDevice> = [];
    try {
      if (cameraManager !== undefined) {
        cameras = cameraManager.getSupportedCameras();
        for (let index = 0; index < cameras.length; index++) {
          let element = cameras[index];
          this.cameraInfoArray.push(new Item('ID', element.cameraId));
          this.cameraInfoArray.push(new Item('位置',
            `${element.cameraPosition}(0-相机位置未指定,1-后置相机,2-前置相机)`));
          this.cameraInfoArray.push(new Item('类型',
            `${element.cameraType}(0-相机类型未指定,1-广角相机,2-超广角相机,3-长焦相机,4-带景深信息的相机)`));
          this.cameraInfoArray.push(new Item('连接类型',
            `${element.connectionType}(0-内置相机,1-USB连接的相机,2-远程连接的相机)`));
          this.cameraInfoArray.push(new Item('方向', element.cameraOrientation.toString()));
          let modes = this.getSupportedSceneModes(cameraManager, element);
          this.cameraInfoArray.push(new Item('modes', `${modes}(1-普通拍照模式,2-普通录像模式,12-安全相机模式)`));
          for (let index = 0; index < modes.length; index++) {
            let mode = modes[index];
            let cameraOutputCapability: camera.CameraOutputCapability =
              cameraManager.getSupportedOutputCapability(element, mode);
            for (let index = 0; index < cameraOutputCapability.previewProfiles.length; index++) {
              let previewProfile = cameraOutputCapability.previewProfiles[index];
              this.cameraInfoArray.push(new Item(`mode[${mode}]previewProfiles format:`,
                `${previewProfile.format}(3-RGBA_888格式的图片,1003-YUV_420_SP格式的图片,2000-JPEG格式的图片,2001-YCBCR_P010格式的图片,2002-YCRCB_P010格式的图片)`));
              this.cameraInfoArray.push(new Item(`mode[${mode}]previewProfiles size:`,
                `${previewProfile.size.width}x${previewProfile.size.height}`));
            }
            for (let index = 0; index < cameraOutputCapability.photoProfiles.length; index++) {
              let photoProfiles = cameraOutputCapability.photoProfiles[index];
              this.cameraInfoArray.push(new Item(`mode[${mode}]photoProfiles format:`,
                photoProfiles.format.toString()));
              this.cameraInfoArray.push(new Item(`mode[${mode}]photoProfiles size:`,
                `${photoProfiles.size.width}x${photoProfiles.size.height}`));
            }
            for (let index = 0; index < cameraOutputCapability.videoProfiles.length; index++) {
              let videoProfiles = cameraOutputCapability.videoProfiles[index];
              this.cameraInfoArray.push(new Item(`mode[${mode}]videoProfiles frameRateRange:`,
                `${videoProfiles.frameRateRange.min}-${videoProfiles.frameRateRange.max}`));
              this.cameraInfoArray.push(new Item(`mode[${mode}]videoProfiles format:`,
                videoProfiles.format.toString()));
              this.cameraInfoArray.push(new Item(`mode[${mode}]videoProfiles size:`,
                `${videoProfiles.size.width}x${videoProfiles.size.height}`));
            }
            for (let index = 0; index < cameraOutputCapability.supportedMetadataObjectTypes.length; index++) {
              let supportedMetadataObjectTypes = cameraOutputCapability.supportedMetadataObjectTypes[index];
              this.cameraInfoArray.push(new Item(`mode[${mode}]supportedMetadataObjectTypes:`,
                supportedMetadataObjectTypes.toString()));
            }
          }
        }
      }
    } catch (error) {
      let err = error as BusinessError;
      console.error(`The getSupportedCameras call failed. error code: ${err.code}`);
    }
  }

  getSupportedSceneModes(cameraManager: camera.CameraManager, camera: camera.CameraDevice): Array<camera.SceneMode> {
    let modes: Array<camera.SceneMode> = [];
    try {
      modes = cameraManager.getSupportedSceneModes(camera);
    } catch (error) {
      let err = error as BusinessError;
      console.error(`The getSupportedSceneModes call failed. error code: ${err.code}`);
    }
    return modes;
  }

  getCameraManager(): camera.CameraManager | undefined {
    let cameraManager: camera.CameraManager | undefined = undefined;
    try {
      cameraManager = camera.getCameraManager(AppStorage.get('APPContext') as common.UIAbilityContext);
    } catch (error) {
      let err = error as BusinessError;
      console.error(`The getCameraManager call failed. error code: ${err.code}`);
    }
    return cameraManager;
  }

  getBatteryInfo() {
    this.batteryInfoArray = []
    this.batteryInfoArray.push(new Item('batterySOC', batteryInfo.batterySOC.toString()));
    this.batteryInfoArray.push(new Item('chargingStatus', batteryInfo.chargingStatus.toString()));
    this.batteryInfoArray.push(new Item('healthStatus', batteryInfo.healthStatus.toString()));
    this.batteryInfoArray.push(new Item('pluggedType', batteryInfo.pluggedType.toString()));
    this.batteryInfoArray.push(new Item('voltage', batteryInfo.voltage.toString()));
    this.batteryInfoArray.push(new Item('technology', batteryInfo.technology.toString()));
    this.batteryInfoArray.push(new Item('batteryTemperature', batteryInfo.batteryTemperature.toString()));
    this.batteryInfoArray.push(new Item('isBatteryPresent', batteryInfo.isBatteryPresent.toString()));
    this.batteryInfoArray.push(new Item('batteryCapacityLevel', batteryInfo.batteryCapacityLevel.toString()));
    this.batteryInfoArray.push(new Item('nowCurrent', batteryInfo.nowCurrent.toString()));
  }

  getSensorInfo() {
    this.sensorInfoArray = []
    try {
      sensor.once(sensor.SensorId.ACCELEROMETER, (data: sensor.AccelerometerResponse) => {
        this.sensorInfoArray.push(new Item('加速度传感器', `x:${data.x},y:${data.y},z:${data.z}`));
      });
    } catch (error) {
      let e: BusinessError = error as BusinessError;
      console.error(`Failed to invoke on. Code: ${e.code}, message: ${e.message}`);
      this.sensorInfoArray.push(new Item('加速度传感器', `ERROR:${e.code}`));
    }
    try {
      sensor.once(sensor.SensorId.AMBIENT_LIGHT, (data: sensor.LightResponse) => {
        console.info('Succeeded in invoking once. the ambient light intensity: ' + data.intensity);
        this.sensorInfoArray.push(new Item('光传感器', `intensity:${data.intensity}`));
      });
    } catch (error) {
      let e: BusinessError = error as BusinessError;
      console.error(`Failed to invoke once. Code: ${e.code}, message: ${e.message}`);
      this.sensorInfoArray.push(new Item('光传感器', `ERROR:${e.code}`));
    }
    try {
      sensor.once(sensor.SensorId.AMBIENT_TEMPERATURE, (data: sensor.AmbientTemperatureResponse) => {
        this.sensorInfoArray.push(new Item('温度传感器', `temperature:${data.temperature}`));
      });
    } catch (error) {
      let e: BusinessError = error as BusinessError;
      console.error(`Failed to invoke once. Code: ${e.code}, message: ${e.message}`);
      this.sensorInfoArray.push(new Item('温度传感器', `ERROR:${e.code}`));
    }
    try {
      sensor.once(sensor.SensorId.BAROMETER, (data: sensor.BarometerResponse) => {
        this.sensorInfoArray.push(new Item('气压传感器', `pressure:${data.pressure}`));
      });
    } catch (error) {
      let e: BusinessError = error as BusinessError;
      console.error(`Failed to invoke once. Code: ${e.code}, message: ${e.message}`);
      this.sensorInfoArray.push(new Item('气压传感器', `ERROR:${e.code}`));
    }
    try {
      sensor.once(sensor.SensorId.GRAVITY, (data: sensor.GravityResponse) => {
        this.sensorInfoArray.push(new Item('重力传感器', `x:${data.x},y:${data.y},z:${data.z}`));
      });
    } catch (error) {
      let e: BusinessError = error as BusinessError;
      console.error(`Failed to invoke once. Code: ${e.code}, message: ${e.message}`);
      this.sensorInfoArray.push(new Item('重力传感器', `ERROR:${e.code}`));
    }
    try {
      sensor.once(sensor.SensorId.GYROSCOPE, (data: sensor.GyroscopeResponse) => {
        this.sensorInfoArray.push(new Item('陀螺仪传感器', `x:${data.x},y:${data.y},z:${data.z}`));
      });
    } catch (error) {
      let e: BusinessError = error as BusinessError;
      console.error(`Failed to invoke once. Code: ${e.code}, message: ${e.message}`);
      this.sensorInfoArray.push(new Item('陀螺仪传感器', `ERROR:${e.code}`));
    }
    try {
      sensor.once(sensor.SensorId.HALL, (data: sensor.HallResponse) => {
        this.sensorInfoArray.push(new Item('霍尔传感器', `status:${data.status}`));
      });
    } catch (error) {
      let e: BusinessError = error as BusinessError;
      console.error(`Failed to invoke once. Code: ${e.code}, message: ${e.message}`);
      this.sensorInfoArray.push(new Item('霍尔传感器', `ERROR:${e.code}`));
    }
    try {
      sensor.once(sensor.SensorId.HEART_RATE, (data: sensor.HeartRateResponse) => {
        this.sensorInfoArray.push(new Item('心率传感器', `heartRate:${data.heartRate}`));
      });
    } catch (error) {
      let e: BusinessError = error as BusinessError;
      console.error(`Failed to invoke once. Code: ${e.code}, message: ${e.message}`);
      this.sensorInfoArray.push(new Item('心率传感器', `ERROR:${e.code}`));
    }
    try {
      sensor.once(sensor.SensorId.HUMIDITY, (data: sensor.HumidityResponse) => {
        console.info('Succeeded in invoking once. Humidity: ' + data.humidity);
        this.sensorInfoArray.push(new Item('湿度传感器', `heartRate:${data.humidity}`));
      });
    } catch (error) {
      let e: BusinessError = error as BusinessError;
      console.error(`Failed to invoke once. Code: ${e.code}, message: ${e.message}`);
      this.sensorInfoArray.push(new Item('湿度传感器', `ERROR:${e.code}`));
    }
    try {
      sensor.once(sensor.SensorId.LINEAR_ACCELEROMETER, (data: sensor.LinearAccelerometerResponse) => {
        this.sensorInfoArray.push(new Item('线性加速度传感器', `x:${data.x},y:${data.y},z:${data.z}`));
      });
    } catch (error) {
      let e: BusinessError = error as BusinessError;
      console.error(`Failed to invoke once. Code: ${e.code}, message: ${e.message}`);
      this.sensorInfoArray.push(new Item('线性加速度传感器', `ERROR:${e.code}`));
    }
    try {
      sensor.once(sensor.SensorId.MAGNETIC_FIELD, (data: sensor.MagneticFieldResponse) => {
        this.sensorInfoArray.push(new Item('磁场传感器', `x:${data.x},y:${data.y},z:${data.z}`));
      });
    } catch (error) {
      let e: BusinessError = error as BusinessError;
      console.error(`Failed to invoke once. Code: ${e.code}, message: ${e.message}`);
      this.sensorInfoArray.push(new Item('磁场传感器', `ERROR:${e.code}`));
    }
    try {
      sensor.once(sensor.SensorId.ORIENTATION, (data: sensor.OrientationResponse) => {
        this.sensorInfoArray.push(new Item('方向传感器', `beta:${data.beta},gamma:${data.gamma},alpha:${data.alpha}`));
      });
    } catch (error) {
      let e: BusinessError = error as BusinessError;
      console.error(`Failed to invoke once. Code: ${e.code}, message: ${e.message}`);
      this.sensorInfoArray.push(new Item('方向传感器', `ERROR:${e.code}`));
    }
    try {
      sensor.once(sensor.SensorId.PEDOMETER, (data: sensor.PedometerResponse) => {
        this.sensorInfoArray.push(new Item('计步器传感器', `steps:${data.steps}`));
      });
    } catch (error) {
      let e: BusinessError = error as BusinessError;
      console.error(`Failed to invoke once. Code: ${e.code}, message: ${e.message}`);
      this.sensorInfoArray.push(new Item('计步器传感器', `ERROR:${e.code}`));
    }
    try {
      sensor.once(sensor.SensorId.PEDOMETER_DETECTION, (data: sensor.PedometerDetectionResponse) => {
        this.sensorInfoArray.push(new Item('计步检测器传感器', `scalar:${data.scalar}`));
      });
    } catch (error) {
      let e: BusinessError = error as BusinessError;
      console.error(`Failed to invoke once. Code: ${e.code}, message: ${e.message}`);
      this.sensorInfoArray.push(new Item('计步检测器传感器', `ERROR:${e.code}`));
    }
    try {
      sensor.once(sensor.SensorId.PROXIMITY, (data: sensor.ProximityResponse) => {
        this.sensorInfoArray.push(new Item('接近光传感器', `distance:${data.distance}`));
      });
    } catch (error) {
      let e: BusinessError = error as BusinessError;
      console.error(`Failed to invoke once. Code: ${e.code}, message: ${e.message}`);
      this.sensorInfoArray.push(new Item('接近光传感器', `ERROR:${e.code}`));
    }
    try {
      sensor.once(sensor.SensorId.ROTATION_VECTOR, (data: sensor.RotationVectorResponse) => {
        this.sensorInfoArray.push(new Item('旋转矢量传感器', `x:${data.x},y:${data.y},z:${data.z},w:${data.w}`));
      });
    } catch (error) {
      let e: BusinessError = error as BusinessError;
      console.error(`Failed to invoke once. Code: ${e.code}, message: ${e.message}`);
      this.sensorInfoArray.push(new Item('旋转矢量传感器', `ERROR:${e.code}`));
    }
    try {
      sensor.once(sensor.SensorId.SIGNIFICANT_MOTION, (data: sensor.SignificantMotionResponse) => {
        this.sensorInfoArray.push(new Item('大幅动作检测传感器', `scalar:${data.scalar}`));
      });
    } catch (error) {
      let e: BusinessError = error as BusinessError;
      console.error(`Failed to invoke once. Code: ${e.code}, message: ${e.message}`);
      this.sensorInfoArray.push(new Item('大幅动作检测传感器', `ERROR:${e.code}`));
    }
    try {
      sensor.once(sensor.SensorId.WEAR_DETECTION, (data: sensor.WearDetectionResponse) => {
        this.sensorInfoArray.push(new Item('佩戴检测传感器', `value:${data.value}`));
      });
    } catch (error) {
      let e: BusinessError = error as BusinessError;
      console.error(`Failed to invoke once. Code: ${e.code}, message: ${e.message}`);
      this.sensorInfoArray.push(new Item('佩戴检测传感器', `ERROR:${e.code}`));
    }
  }
}