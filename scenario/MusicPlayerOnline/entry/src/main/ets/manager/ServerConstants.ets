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

/**
 * Common constants for all features.
 */
export default class ServerConstants {
  /**
   * server host ,replace with your owen server address
   */
  static readonly SERVER_HOST = 'http://192.168.62.240:8000/';
  /**
   * All songs URL
   */
  static readonly ALL_SONGS_URL = this.SERVER_HOST + 'all_songs1/';
  /**
   * custom list URL
   */
  static readonly CUSTOM_LIST_URL = this.SERVER_HOST + 'get_playlists/';
  /**
   * custom list URL
   */
  static readonly RECOMMEND_LIST_URL = this.SERVER_HOST + 'get_recommend_playlists/';
  /**
   * English songs URL
   */
  static readonly ENGLISH_SONGS_URL = this.SERVER_HOST + 'english_songs/';
  /**
   * Recent songs URL
   */
  static readonly RECENT_SONGS_URL = this.SERVER_HOST + 'recent_songs/';
  /**
   * Song Image URL
   */
  static readonly SONG_IMAGE_URL = this.SERVER_HOST + 'get_song_img/';
  /**
   * Play songs URL
   */
  static readonly PLAY_SONG_URL = this.SERVER_HOST + 'play_song1/';
  /**
   * record recent
   */
  static readonly RECORD_RECENT = this.SERVER_HOST + 'record_recent/';
  /**
   * Login URL
   */
  static readonly LOGIN_URL = this.SERVER_HOST + 'authentication/login1/';
  static readonly CSRF_URL = this.SERVER_HOST + 'authentication/get-csrf-token/';
  /**
   * PLAYER STATE
   */
  static readonly PLAYER_STATE_IDLE = 'idle';
  static readonly PLAYER_STATE_INITIALIZED = 'initialized'
  static readonly PLAYER_STATE_PREPARED = 'prepared'
  static readonly PLAYER_STATE_PLAYING = 'playing'
  static readonly PLAYER_STATE_PAUSED = 'paused'
  static readonly PLAYER_STATE_COMPLETED = 'completed'
  static readonly PLAYER_STATE_STOPPED = 'stopped'
  static readonly PLAYER_STATE_RELEASED = 'released'
  static readonly PLAYER_STATE_UNKNOWN = 'unknown'
  /**
   * PLAYER UPDATE
   */
  static readonly UPDATE_TIME_EVENT_ID = '1'
  static readonly UPDATE_STATE_EVENT_ID = '2'
  /**
   * PLAYER LIST
   */
  static readonly LIST_SONG_COUNT = '首';
  static readonly LIST_SONG_NO_PLAYING = '没有播放';
  static readonly LIST_SONG_FAVOURITE = '我的收藏';
  /**
   * PLAYER LOGIN
   */
  static readonly LOGIN_BUTTON_IN = '登录';
  static readonly LOGIN_BUTTON_OUT = '登出';
  static readonly LOGIN_INFO_NO = '未登录';
  static readonly LOGIN_INFO_ING = '正在登录...';
  static readonly LOGIN_INFO_FAILED = '登录失败';
  static readonly LOGIN_INFO_DONE = ' 你好！';
  static readonly TEST_ACCOUNT_USER = 'test';
  static readonly TEST_ACCOUNT_PWD = 'kh123456'
}

