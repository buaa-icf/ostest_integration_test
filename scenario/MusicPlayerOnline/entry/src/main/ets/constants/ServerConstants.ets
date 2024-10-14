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
 * Common constants for Server features.
 */
export default class ServerConstants {
  /**
   * server host ,replace with your owen server address
   */
  static readonly SERVER_HOST = 'http://192.168.13.110:8000/';
  /**
   * custom list URL
   */
  static readonly CUSTOM_LIST_URL = this.SERVER_HOST + 'get_playlists';
  /**
   * search song
   */
  static readonly SEARCH_SONG_URL = this.SERVER_HOST + 'search_song/';
  /**
   * recommend list URL
   */
  static readonly RECOMMEND_LIST_URL = this.SERVER_HOST + 'get_recommend_playlists';
  /**
   * recent list URL
   */
  static readonly RECENT_LIST_URL = this.SERVER_HOST + 'get_recent_playlists';
  /**
   * favor list URL
   */
  static readonly FAVOR_LIST_URL = this.SERVER_HOST + 'get_favor_playlists';
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
   * set favourite
   */
  static readonly SET_FAVOURITE = this.SERVER_HOST + 'set_favourite/';
  /**
   * add song to playlist
   */
  static readonly ADD_TO_PLAYLIST = this.SERVER_HOST + 'add_to_playlist/';
  /**
   * Login URL
   */
  static readonly REGISTER_URL = this.SERVER_HOST + 'authentication/signup1/';
  static readonly LOGIN_URL = this.SERVER_HOST + 'authentication/login1/';
  static readonly CSRF_URL = this.SERVER_HOST + 'authentication/get-csrf-token/';
  /**
   * PLAYER STATE
   */
  static readonly PLAYER_STATE_IDLE = 'idle';
  static readonly PLAYER_STATE_INITIALIZED = 'initialized';
  static readonly PLAYER_STATE_PREPARED = 'prepared';
  static readonly PLAYER_STATE_PLAYING = 'playing';
  static readonly PLAYER_STATE_PAUSED = 'paused';
  static readonly PLAYER_STATE_COMPLETED = 'completed';
  static readonly PLAYER_STATE_STOPPED = 'stopped';
  static readonly PLAYER_STATE_RELEASED = 'released';
  static readonly PLAYER_STATE_UNKNOWN = 'unknown';

  /**
   * 首页播放状态更新消息
   */
  static readonly MAIN_UPDATE_TIME = 'MAIN_UPDATE_TIME';
  static readonly MAIN_UPDATE_STATE = 'MAIN_UPDATE_STATE';
  static readonly MAIN_SHOW_PLAYLIST = 'MAIN_SHOW_PLAYLIST';
  /**
   * 详情页播放状态更新消息
   */
  static readonly DETAIL_UPDATE_TIME = 'DETAIL_UPDATE_TIME';
  static readonly DETAIL_UPDATE_STATE = 'DETAIL_UPDATE_STATE';
  static readonly DETAIL_UPDATE_FAVOR_AND_QUALITY = 'DETAIL_UPDATE_FAVOR_AND_QUALITY';
  /**
   * 卡片更新消息
   */
  static readonly CARD_UPDATE_STATE = 'music.online.card.update';
  /**
   * 播放列表播放状态更新消息
   */
  static readonly PLAYLIST_UPDATE_STATE = 'PLAYLIST_UPDATE_STATE';
  static readonly PLAYLIST_UPDATE_CHANGED = 'PLAYLIST_UPDATE_CHANGED';

  //首页列表更新消息
  static readonly UPDATE_USER_LIST = 'UPDATE_USER_LIST';
  static readonly UPDATE_USER_LIST_RECOMMEND = 'UPDATE_USER_LIST_RECOMMEND';
  static readonly UPDATE_USER_LIST_CUSTOM = 'UPDATE_USER_LIST_CUSTOM';
  static readonly UPDATE_USER_LIST_RECENT = 'UPDATE_USER_LIST_RECENT';
  static readonly UPDATE_USER_LIST_FAVOR = 'UPDATE_USER_LIST_FAVOR';
  static readonly UPDATE_USER_LIST_SEARCH = 'UPDATE_USER_LIST_SEARCH';

  //首页登录更新消息
  static readonly LOGIN_RESULT = 'LOGIN_RESULT'
  static readonly LOGIN_RESULT_SUCCESS = 'LOGIN_RESULT_SUCCESS'
  static readonly LOGIN_RESULT_FAILED = 'LOGIN_RESULT_FAILED'
  /**
   * PLAYER LIST
   */
  static readonly LIST_SONG_COUNT = '首';
  static readonly LIST_SONG_NO_PLAYING = '点击或双击歌单';
  static readonly LIST_SONG_FAVOURITE = '我的收藏';
  static readonly LIST_SONG_RECENT = '最近播放';
  /**
   * PLAYER LOGIN
   */
  static readonly LOGIN_BUTTON_IN = '登录';
  static readonly LOGIN_BUTTON_OUT = '登出';
  static readonly LOGIN_INFO_NO = '未登录';
  static readonly LOGIN_INFO_ING = '···';
  static readonly LOGIN_INFO_FAILED = '登录失败';
  static readonly REGISTER_INFO_FAILED = '注册失败';
  static readonly REGISTER_INFO_SUCCESS = '注册成功，自动登录...';
  static readonly LOGIN_INFO_DONE = ' 你好！';
  static readonly SET_FAVOURITE_ALREADY  =  "重复收藏";
  static readonly SET_FAVOURITE_SUCCESS =  "收藏成功";
  static readonly CANCEL_FAVOURITE_SUCCESS =  "取消收藏成功";
  static readonly CANCEL_FAVOURITE_ALREADY =  "重复取消收藏";
  static readonly SEARCH_DEFAULT = '未搜索';
  static readonly SEARCHING = '搜索:';
  static readonly EMPTY_SEARCH_WORD = '不能搜索空字符';
  static readonly LOGIN_FAILED = 'login failed!';
  static readonly REGISTER_FAILED = 'signup failed!';
}
