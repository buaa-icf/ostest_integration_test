import worker from '@ohos.worker';
import batteryInfo from '@ohos.batteryInfo';
import deviceInfo from '@ohos.deviceInfo';
import bundleManager from '@ohos.bundle.bundleManager';
import tuanjie from 'libtuanjie.so';
import { TuanjieLog } from '../common/TuanjieLog';
import { PlayerPreference } from '../common/PlayerPref';
import { registerJSScriptToCSharp } from '../common/TuanjieJSScriptRegister';
import { SetToGlobalThis } from '../common/GlobalThisUtil';

TuanjieLog.debug("tuanjie.nativeSetWorker");
tuanjie.nativeSetWorker();

const workerPort = worker.workerPort
// This line makes workerPort available for native code
// not sure why, maybe compiler will optimize `const`
globalThis.workerPort = workerPort;

workerPort.onmessage = function (e) {
  var data = e.data;
  switch (data.type) {
    case 'SetGlobalThisContext':
      globalThis.context = data.data;
      globalThis.context.batteryInfo = batteryInfo;
      globalThis.context.playerPrefs = PlayerPreference;
      globalThis.context.deviceInfo = deviceInfo;
      globalThis.context.tuanjieJSScript = registerJSScriptToCSharp();
      bundleManager.getBundleInfoForSelf(bundleManager.BundleFlag.GET_BUNDLE_INFO_DEFAULT).then((data) => {
        globalThis.context.bundleInfo = data;
      });
      break;
    case 'Loop':
      console.log("message from main thread received!");
    //tuanjie.nativeDebugLoop();
      break;
    case 'SetDisplayInfo':
      var defaultDisplay = data.data;
      SetToGlobalThis('defaultDisplay', defaultDisplay);
      tuanjie.nativeOnDisplayChanged();
      break;
    case 'SoftInput_onTextChange':
      globalThis.softInputMsg = data.data;
      TuanjieLog.debug("CustomDialogController worker thread SoftInput_onTextChange " + data.data);
      tuanjie.nativeSetInputString();
      break;
    case 'SoftInput_onTextSelectionChange':
      tuanjie.nativeSetInputSelection(data.start, data.length);
      break;
    case 'SoftInput_accept':
      TuanjieLog.debug("CustomDialogController worker thread SoftInput_accept " + data.data);
      tuanjie.nativeSoftInputClosed();
      break;
    case 'SoftInput_cancel':
      // todo call tuanjie native api
      break;
    case 'OnSensor':
      var sensorData = data.data;
      var x = sensorData.get("x");
      var y = sensorData.get("y");
      var z = sensorData.get("z");

      //TuanjieLog.debug("----- ONSENSOR woker thread x=  " + x + " y= " + y + " z= " + z);
      globalThis.onSensor_type = sensorData.get("sensorType");
      globalThis.onSensor_x = x;
      globalThis.onSensor_y = y;
      globalThis.onSensor_z = z;
      tuanjie.nativeOnSensorChanged();
      break;
    case 'GetPermissionRequestResult':
      tuanjie.nativeGetPermissionRequestResult(data.permissions, data.results, data.onGranted, data.onDenied);
      break;
    case 'GetPermissionAuthorizeResult':
      tuanjie.nativeGetPermissionAuthorizeResult(data.permission, data.result, data.onAuthorized, data.onUnauthorized);
      break;
    case 'OnLocation':
      var locationData = data.location;
      var location = {
        latitude: locationData.latitude,
        longitude: locationData.longitude,
        altitude: locationData.altitude,
        accuracy: locationData.accuracy,
        speed: locationData.speed,
        timeStamp: locationData.timeStamp,
        direction: locationData.direction,
        timeSinceBoot: locationData.timeSinceBoot,
      }
      tuanjie.nativeOnLocationChange(location);
      break;
    default:
      TuanjieLog.error("TuanjieMainWorkerHandler: '%{public}s' unknown message", data.type);
  }
}
