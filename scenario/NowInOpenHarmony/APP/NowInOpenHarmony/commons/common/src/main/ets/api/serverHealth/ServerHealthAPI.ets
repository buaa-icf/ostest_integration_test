import { axiosHttp } from '../http/AxiosHttp'
import { ServerStatus, SystemStatus } from '../../modules/server/ServerHelth'
import { logger } from '../../utils/logger/logger'
import { AppStorageV2, promptAction, PromptAction } from '@kit.ArkUI'
import { GetUIContext } from '../../modules/context/GetUIContext'

const ServerHealthAPI_TAG = 'ServerHealthAPI: '

class ServerHealthAPI {
  /**
   * 判断服务端数据更新状态，是否处于可获取状态。
   * @returns 服务端数据是否可获取
   */
  async isServerReady(): Promise<boolean> {
    try {
      const res = await axiosHttp.request<SystemStatus>({
        url: '/api/health',
      })
      logger.info(ServerHealthAPI_TAG + JSON.stringify(res))
      if (res.status === ServerStatus.preparing) {

        logger.warn(`${ServerHealthAPI_TAG}res.status = ${res.status}`)
        return false
      }else if (res.status === ServerStatus.healthy){
        return true
      }

    } catch (err) {
      logger.error(ServerHealthAPI_TAG+'err: ' + JSON.stringify(err))
    }
    return false
  }
}

export const serverHealthApi = new ServerHealthAPI()

