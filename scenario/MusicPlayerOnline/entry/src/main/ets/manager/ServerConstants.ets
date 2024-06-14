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
   * English songs URL
   */
  static readonly ENGLISH_SONGS_URL = this.SERVER_HOST + 'english_songs/';
  /**
   * Song Image URL
   */
  static readonly SONG_IMAGE_URL = this.SERVER_HOST + 'get_song_img/';
  /**
   * Play songs URL
   */
  static readonly PLAY_SONG_URL = this.SERVER_HOST + 'play_song1/';
  /**
   * get playlist
   */
  static readonly PLAY_LIST = this.SERVER_HOST + 'play_song1/';
  /**
   * Login URL
   */
  static readonly LOGIN_URL = this.SERVER_HOST + 'authentication/login1/';
  static readonly CSRF_URL = this.SERVER_HOST + 'authentication/get-csrf-token/';

  static readonly  PLAYER_STATE_IDLE = 'idle';
  static readonly  PLAYER_STATE_INITIALIZED = 'initialized'
  static readonly  PLAYER_STATE_PREPARED = 'prepared'
  static readonly  PLAYER_STATE_PLAYING = 'playing'
  static readonly  PLAYER_STATE_PAUSED = 'paused'
  static readonly  PLAYER_STATE_COMPLETED = 'completed'
  static readonly  PLAYER_STATE_STOPPED = 'stopped'
  static readonly  PLAYER_STATE_RELEASED = 'released'
  static readonly  PLAYER_STATE_UNKNOWN = 'unknown'

  static readonly  UPDATE_TIME_EVENT_ID = '1'
  static readonly  UPDATE_STATE_EVENT_ID = '2'
}

