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
import http from '@ohos.net.http'
import AppConstants from '../constants/AppConstants';
import emitter from '@ohos.events.emitter';
import PlayerManager from './PlayerManager';
import prompt from '@ohos.promptAction';
import AudioData from '../model/AudioData';
import PlayListData from '../model/PlayListData';
import PlayListGroupData from '../model/PlayListGroupData';
import Logger from '../utils/Logger';

// 单例对象 HttpManager
export default class HttpManager {
  private tag = 'HttpManager';
  private static instance: HttpManager;
  private PlayerManager: PlayerManager = AppStorage.get('PlayerManager') as PlayerManager;
  private httpRequest = http.createHttp();
  private csrfToken: string = '';
  private emitterOptions: emitter.Options = {
    priority: emitter.EventPriority.HIGH
  };

  private constructor() {
  }

  public static getInstance(): HttpManager {
    if (!HttpManager.instance) {
      HttpManager.instance = new HttpManager();
    }
    return HttpManager.instance;
  }

  //注册
  register(userName: string, pwd: string, pwd2: string) {
    if (userName.trim() === '' || pwd.trim() === '') {
      prompt.showToast({
        message: '用户名和密码不能为空！'
      })
      return;
    }
    if (pwd !== pwd2) {
      prompt.showToast({
        message: '两次密码输入不同！'
      })
      return;
    }
    try {
      this.httpRequest.request(AppStorage.get(AppConstants.SERVER_HOST_PROP) + AppConstants.CSRF_URL,
        (err: Error, data: http.HttpResponse) => {
          if (!err) {
            //Logger.info(this.tag, 'HttpResponse Result:' + data.result);
            try {
              const jsonObject: object = JSON.parse(data.result as string);
              this.csrfToken = jsonObject['csrf_token'];
              this.httpRequest.request(AppStorage.get(AppConstants.SERVER_HOST_PROP) + AppConstants.REGISTER_URL,
                {
                  method: http.RequestMethod.POST,
                  extraData: 'username=' + userName.trim() + '&password=' + pwd.trim(),
                  header: {
                    'content-Type': 'application/x-www-form-urlencoded',
                    'X-CSRFToken': this.csrfToken,
                    'Cookie': 'csrftoken=' + this.csrfToken + ';'
                  },
                },
                (err: Error, data: http.HttpResponse) => {
                  if (!err) {
                    //Logger.info(this.tag, 'HttpResponse Result:' + data.result);
                    if ((data.result as string).indexOf(AppConstants.REGISTER_FAILED) !== -1) {
                      prompt.showToast({
                        message: AppConstants.REGISTER_INFO_FAILED + data.result
                      })
                      return;
                    }
                    prompt.showToast({
                      message: AppConstants.REGISTER_INFO_SUCCESS
                    })
                    this.login(userName.trim(), pwd.trim());
                  } else {
                    Logger.info(this.tag, 'HttpResponse error:' + JSON.stringify(err));
                    prompt.showToast({
                      message: AppConstants.REGISTER_INFO_FAILED
                    })
                  }
                });
            } catch (err) {
              Logger.info(this.tag, 'HttpRequest error:' + JSON.stringify(err));
              prompt.showToast({
                message: AppConstants.REGISTER_INFO_FAILED
              })
            }
          } else {
            Logger.info(this.tag, 'HttpResponse error:' + JSON.stringify(err));
            prompt.showToast({
              message: AppConstants.REGISTER_INFO_FAILED
            })
          }
        });
    } catch (err) {
      Logger.info(this.tag, 'HttpRequest error:' + JSON.stringify(err));
      prompt.showToast({
        message: AppConstants.REGISTER_INFO_FAILED
      })
    }
  }

  //登录
  login(userName: string, pwd: string) {
    try {
      this.httpRequest.request(AppStorage.get(AppConstants.SERVER_HOST_PROP) + AppConstants.CSRF_URL,
        (err: Error, data: http.HttpResponse) => {
          if (!err) {
            //Logger.info(this.tag, 'HttpResponse Result:' + data.result);
            try {
              const jsonObject: object = JSON.parse(data.result as string);
              this.csrfToken = jsonObject['csrf_token'];
              this.httpRequest.request(AppStorage.get(AppConstants.SERVER_HOST_PROP) + AppConstants.LOGIN_URL,
                {
                  method: http.RequestMethod.POST,
                  extraData: 'username=' + userName + '&password=' + pwd,
                  header: {
                    'content-Type': 'application/x-www-form-urlencoded',
                    'X-CSRFToken': this.csrfToken,
                    'Cookie': 'csrftoken=' + this.csrfToken + ';'
                  },
                },
                (err: Error, data: http.HttpResponse) => {
                  if (!err) {
                    //Logger.info(this.tag, 'HttpResponse Result:' + data.result);
                    if (200 === data.responseCode) {
                      Logger.info(this.tag, 'HttpResponse code:' +
                      (data.result as string).indexOf(AppConstants.LOGIN_FAILED));
                      if ((data.result as string).indexOf(AppConstants.LOGIN_FAILED) !== -1) {
                        this.loginFailed();
                        return;
                      }

                      let loginCookie: string[] = data.header['set-cookie'];
                      let cookie: string = loginCookie.map(cookie => {
                        const parts = cookie.split('=');
                        return `${parts[0]}=${parts[1]}`;
                      }).join('; ')

                      AppStorage.setOrCreate(AppConstants.LOGIN_COOKIE, cookie);
                      AppStorage.setOrCreate(AppConstants.LOGIN_NAME, userName);

                      let eventData: emitter.EventData = {
                        data: {
                          "message": AppConstants.LOGIN_RESULT_SUCCESS,
                        }
                      };
                      emitter.emit(AppConstants.LOGIN_RESULT, this.emitterOptions, eventData);
                      this.getCustomListFromServer();
                    }
                  } else {
                    Logger.info(this.tag, 'HttpResponse error:' + JSON.stringify(err));
                    prompt.showToast({
                      message: JSON.stringify(err)
                    })
                    this.loginFailed();
                  }
                });
            } catch (error) {
              Logger.error(this.tag, "JSON :", error.message);
              this.loginFailed();
            }
          } else {
            Logger.info(this.tag, 'HttpResponse error:' + JSON.stringify(err));
            prompt.showToast({
              message: JSON.stringify(err)
            })
            this.loginFailed();
          }
        });
    } catch (err) {
      Logger.info(this.tag, 'HttpRequest error:' + JSON.stringify(err));
      this.loginFailed();
    }
  }

  loginFailed() {
    let eventData: emitter.EventData = {
      data: {
        "message": AppConstants.LOGIN_RESULT_FAILED,
      }
    };
    emitter.emit(AppConstants.LOGIN_RESULT, this.emitterOptions, eventData);
    prompt.showToast({
      message: AppConstants.LOGIN_INFO_FAILED
    })
  }

  //记录最近播放信息，并获取歌曲格式
  record_recent() {
    let loginCookie: string | undefined = AppStorage.get(AppConstants.LOGIN_COOKIE);
    if (loginCookie === '' || loginCookie === undefined) {
      return;
    }
    try {
      this.httpRequest.request(AppStorage.get(AppConstants.SERVER_HOST_PROP) + AppConstants.RECORD_RECENT_URL +
      this.PlayerManager.getItem().id,
        {
          method: http.RequestMethod.GET,
          header: {
            'Cookie': loginCookie
          }
        },
        (err: Error, data: http.HttpResponse) => {
          if (!err) {
            //Logger.info(this.tag, 'HttpResponse record_recent Result:' + data.result);
            try {
              const jsonObject: object = JSON.parse(data.result as string);
              this.PlayerManager.setItemQuality(jsonObject['message']);
              emitter.emit(AppConstants.DETAIL_UPDATE_FAVOR_AND_QUALITY, this.emitterOptions);
            } catch (err) {
              Logger.info(this.tag, 'HttpResponse error:' + JSON.stringify(err));
            }
            this.getRecentListFromServer();
          } else {
            Logger.info(this.tag, 'HttpResponse error:' + JSON.stringify(err));
            prompt.showToast({
              message: JSON.stringify(err)
            })
          }
        });
    } catch (err) {
      Logger.info(this.tag, 'HttpRequest error:' + JSON.stringify(err));
    }
  }

  //设置收藏
  set_favourite(itemToSet?: AudioData, alwaysSet?: boolean) {
    let loginCookie: string | undefined = AppStorage.get(AppConstants.LOGIN_COOKIE);
    if (loginCookie === undefined || loginCookie === AppConstants.LOGIN_COOKIE_NONE) {
      prompt.showToast({
        message: AppConstants.LOGIN_INFO_NO
      })
      return;
    }
    let msg: string = ''
    try {
      let item = this.PlayerManager.getItem();
      if (itemToSet !== undefined) {
        item = itemToSet;
      }
      let is_favor: string = item.isFavor ? '0' : '1';
      if (alwaysSet) {
        is_favor = '1';
      }
      Logger.info(this.tag, 'HttpResponse start:' + AppConstants.SET_FAVOURITE_URL + item.id + '/' + is_favor);
      this.httpRequest.request(AppStorage.get(AppConstants.SERVER_HOST_PROP) + AppConstants.SET_FAVOURITE_URL +
      item.id + '/' + is_favor,
        {
          method: http.RequestMethod.GET,
          header: {
            'Cookie': loginCookie
          }
        },
        (err: Error, data: http.HttpResponse) => {
          if (!err) {
            //Logger.info(this.tag, 'HttpResponse Result:' + data.result);
            try {
              const jsonObject: object = JSON.parse(data.result as string);
              switch (jsonObject["message"]) {
                case AppConstants.SET_FAVOURITE_ALREADY:
                case AppConstants.SET_FAVOURITE_SUCCESS:
                  item.isFavor = true;
                  break;
                case AppConstants.CANCEL_FAVOURITE_SUCCESS:
                case AppConstants.CANCEL_FAVOURITE_ALREADY:
                  item.isFavor = false;
                  break;
                default:
                  item.isFavor = false;
                  break;
              }
              this.PlayerManager.setItemFavor(item.isFavor);
              emitter.emit(AppConstants.DETAIL_UPDATE_FAVOR_AND_QUALITY, this.emitterOptions);
              prompt.showToast({
                message: jsonObject["message"]
              })
              this.getFavorListFromServer();
            } catch (error) {
              Logger.error(this.tag, "JSON :", error.message);
              msg = JSON.stringify(error);
            }
          } else {
            Logger.info(this.tag, 'HttpResponse error:' + JSON.stringify(err));
            prompt.showToast({
              message: JSON.stringify(err)
            })
          }
        });
    } catch (err) {
      Logger.info(this.tag, 'HttpRequest error:' + JSON.stringify(err));
      msg = JSON.stringify(err);
    }
    if (msg !== '') {
      prompt.showToast({
        message: msg
      })
    }
  }

  //歌曲加入歌单
  add_to_playlist(song_id: string, playlist_name: string) {
    let loginCookie: string | undefined = AppStorage.get(AppConstants.LOGIN_COOKIE);
    if (loginCookie === undefined || loginCookie === AppConstants.LOGIN_COOKIE_NONE) {
      prompt.showToast({
        message: AppConstants.LOGIN_INFO_NO
      })
      return;
    }
    let msg: string = ''
    try {
      Logger.info(this.tag, 'HttpResponse start:' + AppConstants.ADD_TO_PLAYLIST_URL + song_id + '/' + playlist_name);
      this.httpRequest.request(AppStorage.get(AppConstants.SERVER_HOST_PROP) + AppConstants.ADD_TO_PLAYLIST_URL +
        song_id + '/' + encodeURIComponent(playlist_name),
        {
          method: http.RequestMethod.GET,
          header: {
            'Cookie': loginCookie
          }
        },
        (err: Error, data: http.HttpResponse) => {
          if (!err) {
            //Logger.info(this.tag, 'HttpResponse Result:' + data.result);
            try {
              const jsonObject: object = JSON.parse(data.result as string);
              Logger.info(this.tag, 'HttpResponse msg:' + jsonObject["message"]);
              prompt.showToast({
                message: jsonObject["message"]
              })
              this.getCustomListFromServer();
            } catch (error) {
              Logger.error(this.tag, "JSON :", error.message);
              msg = JSON.stringify(error);
            }
          } else {
            Logger.info(this.tag, 'HttpResponse error:' + JSON.stringify(err));
            prompt.showToast({
              message: JSON.stringify(err)
            })
          }
        });
    } catch (err) {
      Logger.info(this.tag, 'HttpRequest error:' + JSON.stringify(err));
      msg = JSON.stringify(err);
    }
    Logger.info(this.tag, 'HttpRequest msg:' + msg);
    if (msg !== '') {
      prompt.showToast({
        message: msg
      })
    }
  }

  //从歌单删除歌曲
  removeSongFromList(song_id: string, playlist_name: string) {
    let loginCookie: string | undefined = AppStorage.get(AppConstants.LOGIN_COOKIE);
    if (loginCookie === undefined || loginCookie === AppConstants.LOGIN_COOKIE_NONE) {
      prompt.showToast({
        message: AppConstants.LOGIN_INFO_NO
      })
      return;
    }
    let msg: string = ''
    try {
      Logger.info(this.tag,
        'HttpResponse start:' + AppConstants.REMOVE_FROM_PLAYLIST_URL + song_id + '/' + playlist_name);
      this.httpRequest.request(AppStorage.get(AppConstants.SERVER_HOST_PROP) + AppConstants.REMOVE_FROM_PLAYLIST_URL +
        song_id + '/' + encodeURIComponent(playlist_name),
        {
          method: http.RequestMethod.GET,
          header: {
            'Cookie': loginCookie
          }
        },
        (err: Error, data: http.HttpResponse) => {
          if (!err) {
            //Logger.info(this.tag, 'HttpResponse Result:' + data.result);
            try {
              const jsonObject: object = JSON.parse(data.result as string);
              Logger.info(this.tag, 'HttpResponse msg:' + jsonObject["message"]);
              prompt.showToast({
                message: jsonObject["message"]
              })
              this.getCustomListFromServer();
            } catch (error) {
              Logger.error(this.tag, "JSON :", error.message);
              msg = JSON.stringify(error);
            }
          } else {
            Logger.info(this.tag, 'HttpResponse error:' + JSON.stringify(err));
            prompt.showToast({
              message: JSON.stringify(err)
            })
          }
        });
    } catch (err) {
      Logger.info(this.tag, 'HttpRequest error:' + JSON.stringify(err));
      msg = JSON.stringify(err);
    }
    Logger.info(this.tag, 'HttpRequest msg:' + msg);
    if (msg !== '') {
      prompt.showToast({
        message: msg
      })
    }
  }

  //获取推荐歌单
  getRecommendListFromServer() {
    try {
      this.httpRequest.request(AppStorage.get(AppConstants.SERVER_HOST_PROP) + AppConstants.RECOMMEND_LIST_URL,
        {
          method: http.RequestMethod.GET,
          header: {
            'Cookie': AppStorage.get(AppConstants.LOGIN_COOKIE)
          }
        },
        (err: Error, data: http.HttpResponse) => {
          if (!err) {
            //Logger.info(this.tag, 'HttpResponse getRecommendListFromServer Result:' + data.result);
            try {
              let isStart = true;
              const jsonObject: object = JSON.parse(data.result as string);
              Object.keys(jsonObject).forEach((key) => {
                let playingLists: PlayListData[] = [];
                Object.keys(jsonObject[key]).forEach((key1) => {
                  let aPlayingList: AudioData[] = [];
                  Object.keys(jsonObject[key][key1]).forEach((key2) => {
                    aPlayingList.push(new AudioData(
                      jsonObject[key][key1][key2].name,
                      jsonObject[key][key1][key2].singer,
                      jsonObject[key][key1][key2].id,
                      jsonObject[key][key1][key2].album,
                      jsonObject[key][key1][key2].year,
                      jsonObject[key][key1][key2].language
                    ));
                  })
                  let item = new PlayListData(key1, $r('app.media.icon'),
                    aPlayingList.length + AppConstants.LIST_SONG_COUNT,
                    aPlayingList, '')
                  playingLists.push(item);
                });
                let eventData: emitter.EventData = {
                  data: {
                    "message": AppConstants.UPDATE_USER_LIST_RECOMMEND,
                    "item": new PlayListGroupData(key, playingLists),
                    "isStart": isStart,
                  }
                };
                emitter.emit(AppConstants.UPDATE_USER_LIST, this.emitterOptions, eventData);
                isStart = false;
              });
            } catch (error) {
              Logger.error(this.tag, "JSON :", error.message);
            }
          } else {
            Logger.info(this.tag, 'HttpResponse error:' + JSON.stringify(err));
            prompt.showToast({
              message: JSON.stringify(err)
            })
          }
        });
    } catch (err) {
      Logger.info(this.tag, 'HttpRequest error:' + JSON.stringify(err));
      prompt.showToast({
        message: JSON.stringify(err)
      })
    }
  }

  //获取我的收藏
  getFavorListFromServer() {
    try {
      this.httpRequest.request(AppStorage.get(AppConstants.SERVER_HOST_PROP) + AppConstants.FAVOR_LIST_URL,
        {
          method: http.RequestMethod.GET,
          header: {
            'Cookie': AppStorage.get(AppConstants.LOGIN_COOKIE)
          }
        },
        (err: Error, data: http.HttpResponse) => {
          if (!err) {
            //Logger.info(this.tag, 'HttpResponse getFavorListFromServer Result:' + data.result);
            try {
              let aPlayingList: AudioData[] = Array<AudioData>();
              const jsonObject: object = JSON.parse(data.result as string);
              let item: PlayListData | undefined = undefined;
              if (jsonObject[AppConstants.LIST_SONG_FAVOURITE]) {
                Object.keys(jsonObject[AppConstants.LIST_SONG_FAVOURITE]).forEach((key) => {
                  aPlayingList.push(new AudioData(
                    jsonObject[AppConstants.LIST_SONG_FAVOURITE][key].name,
                    jsonObject[AppConstants.LIST_SONG_FAVOURITE][key].singer,
                    jsonObject[AppConstants.LIST_SONG_FAVOURITE][key].id,
                    jsonObject[AppConstants.LIST_SONG_FAVOURITE][key].album,
                    jsonObject[AppConstants.LIST_SONG_FAVOURITE][key].year,
                    jsonObject[AppConstants.LIST_SONG_FAVOURITE][key].language
                  )
                  );
                });
                item = new PlayListData(AppConstants.LIST_SONG_FAVOURITE, $r('app.media.icon'),
                  aPlayingList.length + AppConstants.LIST_SONG_COUNT,
                  aPlayingList, '')
              }
              this.PlayerManager.setFavourList(aPlayingList);
              let eventData: emitter.EventData = {
                data: {
                  "message": AppConstants.UPDATE_USER_LIST_FAVOR,
                  "item": item,
                }
              };
              emitter.emit(AppConstants.UPDATE_USER_LIST, this.emitterOptions, eventData);
            } catch (error) {
              Logger.error(this.tag, "JSON :", error.message);
            }
          } else {
            Logger.info(this.tag, 'HttpResponse error:' + JSON.stringify(err));
            prompt.showToast({
              message: JSON.stringify(err)
            })
          }
        });
    } catch (err) {
      Logger.info(this.tag, 'HttpRequest error:' + JSON.stringify(err));
      prompt.showToast({
        message: JSON.stringify(err)
      })
    }
  }

  //获取最近播放
  getRecentListFromServer() {
    try {
      this.httpRequest.request(AppStorage.get(AppConstants.SERVER_HOST_PROP) + AppConstants.RECENT_LIST_URL,
        {
          method: http.RequestMethod.GET,
          header: {
            'Cookie': AppStorage.get(AppConstants.LOGIN_COOKIE)
          }
        },
        (err: Error, data: http.HttpResponse) => {
          if (!err) {
            //Logger.info(this.tag, 'HttpResponse getRecentListFromServer Result:' + data.result);
            try {
              const jsonObject: object = JSON.parse(data.result as string);
              let isStart = true;
              Object.keys(jsonObject).forEach((key) => {
                let aPlayingList: AudioData[] = Array<AudioData>();
                Object.keys(jsonObject[key]).forEach((key2) => {
                  aPlayingList.push(new AudioData(
                    jsonObject[key][key2].name,
                    jsonObject[key][key2].singer,
                    jsonObject[key][key2].id,
                    jsonObject[key][key2].album,
                    jsonObject[key][key2].year,
                    jsonObject[key][key2].language
                  ));
                });

                let item = new PlayListData(key, $r('app.media.icon'),
                  aPlayingList.length + AppConstants.LIST_SONG_COUNT,
                  aPlayingList, '');
                let eventData: emitter.EventData = {
                  data: {
                    "message": AppConstants.UPDATE_USER_LIST_RECENT,
                    "item": item,
                    "isStart": isStart,
                  }
                };
                emitter.emit(AppConstants.UPDATE_USER_LIST, this.emitterOptions, eventData);
                isStart = false;
              });
            } catch (error) {
              Logger.error(this.tag, "JSON :", error.message);
            }
          } else {
            Logger.info(this.tag, 'HttpResponse error:' + JSON.stringify(err));
            prompt.showToast({
              message: JSON.stringify(err)
            })
          }
        });
    } catch (err) {
      Logger.info(this.tag, 'HttpRequest error:' + JSON.stringify(err));
      prompt.showToast({
        message: JSON.stringify(err)
      })
    }
  }

  //获取自定义歌单
  getCustomListFromServer() {
    try {
      this.httpRequest.request(AppStorage.get(AppConstants.SERVER_HOST_PROP) + AppConstants.CUSTOM_LIST_URL,
        {
          method: http.RequestMethod.GET,
          header: {
            'Cookie': AppStorage.get(AppConstants.LOGIN_COOKIE)
          }
        },
        (err: Error, data: http.HttpResponse) => {
          if (!err) {
            //Logger.info(this.tag, 'HttpResponse getCustomListFromServer Result:' + data.result);
            try {
              interface PlaylistItem {
                playlist_name: string;
                song: number;
                id: string;
                name: string;
                singer: string;
                language: string;
                year: string;
                album: string;
              }

              let jsonObject: PlaylistItem[] = JSON.parse(data.result as string);
              let groupedByPlaylistName = jsonObject.reduce((accumulator, item) => {
                if (!accumulator[item.playlist_name]) {
                  accumulator[item.playlist_name] = [];
                }
                accumulator[item.playlist_name].push(item);
                return accumulator;
              }, {} as Record<string, PlaylistItem[]>);
              const keys = Object.keys(groupedByPlaylistName);
              let isStart = true;
              keys.forEach((playlistName) => {
                let aPlayingList: AudioData[] = Array<AudioData>();
                groupedByPlaylistName[playlistName].forEach((song, index) => {
                  aPlayingList.push(new AudioData(song.name, song.singer, song.id, song.album, song.year,
                    song.language));
                });

                let item = new PlayListData(playlistName, $r('app.media.icon'),
                  aPlayingList.length + AppConstants.LIST_SONG_COUNT,
                  aPlayingList, '')
                item.isCustom = true;
                let eventData: emitter.EventData = {
                  data: {
                    "message": AppConstants.UPDATE_USER_LIST_CUSTOM,
                    "item": item,
                    "isStart": isStart,
                  }
                };
                emitter.emit(AppConstants.UPDATE_USER_LIST, this.emitterOptions, eventData);
                isStart = false;
              });
              this.getRecentListFromServer();
              this.getFavorListFromServer();
            } catch (error) {
              Logger.error(this.tag, "JSON :", error.message);
            }
          } else {
            Logger.info(this.tag, 'HttpResponse error:' + JSON.stringify(err));
            prompt.showToast({
              message: JSON.stringify(err)
            })
          }
        });
    } catch (err) {
      Logger.info(this.tag, 'HttpRequest error:' + JSON.stringify(err));
    }
  }

  //搜素歌曲
  searchSongsFromServer(search_word: string) {
    try {
      this.httpRequest.request(AppStorage.get(AppConstants.SERVER_HOST_PROP) + AppConstants.SEARCH_SONG_URL +
      encodeURIComponent(search_word),
        {
          method: http.RequestMethod.GET,
          header: {
            'Cookie': AppStorage.get(AppConstants.LOGIN_COOKIE)
          }
        },
        (err: Error, data: http.HttpResponse) => {
          if (!err) {
            //Logger.info(this.tag, 'HttpResponse searchSongsFromServer Result:' + data.result);
            try {
              const jsonObject: object = JSON.parse(data.result as string);
              let isStart = true;
              Object.keys(jsonObject).forEach((key) => {
                Object.keys(jsonObject[key]).forEach((key2) => {
                  let aPlayingList: AudioData[] = Array<AudioData>();
                  let aAudioItem = new AudioData(
                    jsonObject[key][key2].name,
                    jsonObject[key][key2].singer,
                    jsonObject[key][key2].id,
                    jsonObject[key][key2].album,
                    jsonObject[key][key2].year,
                    jsonObject[key][key2].language
                  )
                  aPlayingList.push(aAudioItem);
                  let item = new PlayListData(jsonObject[key][key2].name, $r('app.media.icon'), '', aPlayingList, '')
                  let eventData: emitter.EventData = {
                    data: {
                      "message": AppConstants.UPDATE_USER_LIST_SEARCH,
                      "item": item,
                      "isStart": isStart,
                    }
                  };
                  emitter.emit(AppConstants.UPDATE_USER_LIST, this.emitterOptions, eventData);
                  isStart = false;
                });
              });
            } catch (error) {
              Logger.error(this.tag, "JSON :", error.message);
            }
          } else {
            Logger.info(this.tag, 'HttpResponse error:' + JSON.stringify(err));
            prompt.showToast({
              message: JSON.stringify(err)
            })
          }
        });
    } catch (err) {
      Logger.info(this.tag, 'HttpRequest error:' + JSON.stringify(err));
    }
  }

  //查询歌词
  getLrc(id: string) {
    try {
      this.httpRequest.request(AppStorage.get(AppConstants.SERVER_HOST_PROP) + AppConstants.GET_SONG_LRC_URL + id,
        {
          method: http.RequestMethod.GET,
          header: {
            'Cookie': AppStorage.get(AppConstants.LOGIN_COOKIE)
          }
        },
        (err: Error, data: http.HttpResponse) => {
          if (!err) {
            //Logger.info(this.tag, 'HttpResponse getLrc Result:' + data.result);
            try {
              const jsonObject: object = JSON.parse(data.result as string);
              let id: string = jsonObject['id'];
              let lrc: string = jsonObject['lrc'];
              this.PlayerManager.setLrc(id, lrc);
            } catch (error) {
              Logger.error(this.tag, "JSON :", error.message);
            }
          } else {
            Logger.info(this.tag, 'HttpResponse error:' + JSON.stringify(err));
            prompt.showToast({
              message: JSON.stringify(err)
            })
          }
        });
    } catch (err) {
      Logger.info(this.tag, 'HttpRequest error:' + JSON.stringify(err));
    }
  }

  getAllSinger(start: number, end: number) {
    try {
      this.httpRequest.request(AppStorage.get(AppConstants.SERVER_HOST_PROP) + AppConstants.ALL_SINGERS_URL + start +
        '/' + end,
        {
          method: http.RequestMethod.GET,
          header: {
            'Cookie': AppStorage.get(AppConstants.LOGIN_COOKIE)
          }
        },
        (err: Error, data: http.HttpResponse) => {
          if (!err) {
            try {
              let jsonObject: object = JSON.parse(data.result as string);
              let playingLists: PlayListData[] = [];
              Object.keys(jsonObject).forEach((key) => {
                let item = new PlayListData(key, $r('app.media.icon'), '', [], '');
                item.count = jsonObject[key].count as number;
                item.indexer = jsonObject[key].indexer as string;
                playingLists.push(item);
              });
              let eventData: emitter.EventData = {
                data: {
                  "item": playingLists,
                }
              };
              emitter.emit(AppConstants.UPDATE_ALL_SINGER_LIST, this.emitterOptions, eventData);
            } catch (error) {
              Logger.error(this.tag, "JSON :", error.message);
            }
          } else {
            Logger.info(this.tag, 'HttpResponse getAllSinger error:' + JSON.stringify(err));
            prompt.showToast({
              message: JSON.stringify(err)
            })
          }
        });
    } catch (err) {
      Logger.info(this.tag, 'HttpRequest getAllSinger error:' + JSON.stringify(err));
      prompt.showToast({
        message: JSON.stringify(err)
      })
    }
  }

  getAllSongsBySinger(singerName: string) {
    try {
      this.httpRequest.request(AppStorage.get(AppConstants.SERVER_HOST_PROP) + AppConstants.ALL_SONGS_BY_SINGER_URL +
      encodeURIComponent(singerName),
        {
          method: http.RequestMethod.GET,
          header: {
            'Cookie': AppStorage.get(AppConstants.LOGIN_COOKIE)
          }
        },
        (err: Error, data: http.HttpResponse) => {
          if (!err) {
            try {
              const jsonObject: object = JSON.parse(data.result as string);
              Object.keys(jsonObject).forEach((key) => {
                let aPlayingList: AudioData[] = [];
                Object.keys(jsonObject[key]).forEach((key1) => {
                  aPlayingList.push(new AudioData(
                    jsonObject[key][key1].name,
                    jsonObject[key][key1].singer,
                    jsonObject[key][key1].id,
                    jsonObject[key][key1].album,
                    jsonObject[key][key1].year,
                    jsonObject[key][key1].language
                  ));
                })
                let aPlayListDataItem: PlayListData = new PlayListData(key, $r('app.media.icon'),
                  aPlayingList.length + AppConstants.LIST_SONG_COUNT,
                  aPlayingList, '')
                if (this.PlayerManager.getExploreList().title === aPlayListDataItem.title) {
                  this.PlayerManager.setExploreList(aPlayListDataItem);
                }
                let eventData: emitter.EventData = {
                  data: {
                    "item": aPlayListDataItem,
                  }
                };
                emitter.emit(AppConstants.UPDATE_ALL_SINGER_LIST_ITEM, this.emitterOptions, eventData);
              });
            } catch (error) {
              Logger.error(this.tag, "JSON :", error.message);
            }
          } else {
            Logger.info(this.tag, 'HttpResponse getAllSongsBySinger error:' + JSON.stringify(err));
            Logger.info(this.tag, singerName);
            prompt.showToast({
              message: JSON.stringify(err)
            })
          }
        });
    } catch (err) {
      Logger.info(this.tag, 'HttpRequest getAllSinger error:' + JSON.stringify(err));
      prompt.showToast({
        message: JSON.stringify(err)
      })
    }
  }
}
