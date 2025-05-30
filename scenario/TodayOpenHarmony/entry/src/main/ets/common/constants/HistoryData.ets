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


export interface HistoryRecord {
  time: string;
  event: string;
  duration:string;
  thumbnail:string|Resource;
  link:string
}
export const HistoryData: HistoryRecord[] = [
  {
    time: "2023-08-16 10:43",
    event: "OpenHarmony创新赛赛事宣讲会",
    duration:"2小时",
    thumbnail: $r('app.media.history1'),
    link:'https://www.bilibili.com/video/BV1Mr4y1d7mt/?spm_id_from=333.999.0.0&vd_source=760258cf1def8725d4362a5910a17682'
  },
  {
    time: "2023-08-16 10:42",
    event: "学习RK3568的编译与烧录",
    duration:"43分钟",
    thumbnail: $r('app.media.history2'),
    link:'https://www.bilibili.com/video/BV1dp4y1g7Ve/?spm_id_from=333.999.0.0&vd_source=7698a9a8f356782831d27fbc26289bf5'
  },
  {
    time: "2023-05-17 09:39",
    event: "学习DAYU200开发板入门",
    duration:"55分钟",
    thumbnail: $r('app.media.history3'),
    link:'https://www.bilibili.com/video/BV19z4y187fi/'
  }
];