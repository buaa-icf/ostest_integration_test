/**
 * Copyright (c) 2025 XBXyftx
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
import { axiosHttp } from '../http/AxiosHttp'
import { ServerStatus, SystemStatus } from '../../modules/server/ServerHelth'
import { logger } from '../../utils/logger/logger'

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
      return false
    }
    return false
  }
}

export const serverHealthApi = new ServerHealthAPI()

