(function(){function r(e,n,t){function o(i,f){if(!n[i]){if(!e[i]){var c="function"==typeof require&&require;if(!f&&c)return c(i,!0);if(u)return u(i,!0);var a=new Error("Cannot find module '"+i+"'");throw a.code="MODULE_NOT_FOUND",a}var p=n[i]={exports:{}};e[i][0].call(p.exports,function(r){var n=e[i][1][r];return o(n||r)},p,p.exports,r,e,n,t)}return n[i].exports}for(var u="function"==typeof require&&require,i=0;i<t.length;i++)o(t[i]);return o}return r})()({1:[function(require,module,exports){
    "use strict";
    
    /****************************************************************************
     Copyright (c) 2018 Xiamen Yaji Software Co., Ltd.
    
     https://www.cocos.com/
    
     Permission is hereby granted, free of charge, to any person obtaining a copy
     of this software and associated engine source code (the "Software"), a limited,
      worldwide, royalty-free, non-assignable, revocable and non-exclusive license
     to use Cocos Creator solely to develop games on your target platforms. You shall
      not use Cocos Creator software for developing other software or tools that's
      used for developing games. You are not granted to publish, distribute,
      sublicense, and/or sell copies of Cocos Creator.
    
     The software or tools in this License Agreement are licensed, not sold.
     Xiamen Yaji Software Co., Ltd. reserves all rights not expressly granted to you.
    
     THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
     IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
     FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
     AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
     LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
     OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
     THE SOFTWARE.
     ****************************************************************************/
    require('./jsb-assets-manager.js');
    require('./jsb-game.js');
    require('./jsb-gfx.js');
    require('./jsb-loader.js');
    if (window.oh) {
      require('./jsb-videoplayer-openharmony.js');
    } else {
      require('./jsb-videoplayer.js');
    }
    require('./jsb-webview.js');
    require('./jsb-editbox.js');
    require('./jsb-editor-support.js');
    require('./jsb-spine-skeleton.js');
    require('./jsb-dragonbones.js');
    if (cc.physics && cc.physics.PhysicsSystem.PHYSICS_PHYSX) {
      require('./jsb-physics.js');
    }
    
    },{"./jsb-assets-manager.js":2,"./jsb-dragonbones.js":4,"./jsb-editbox.js":5,"./jsb-editor-support.js":6,"./jsb-game.js":8,"./jsb-gfx.js":9,"./jsb-loader.js":10,"./jsb-physics.js":11,"./jsb-spine-skeleton.js":12,"./jsb-videoplayer-openharmony.js":13,"./jsb-videoplayer.js":14,"./jsb-webview.js":15}],2:[function(require,module,exports){
    "use strict";
    
    /*
     * Copyright (c) 2018 Xiamen Yaji Software Co., Ltd.
     *
     * Permission is hereby granted, free of charge, to any person obtaining a copy
     * of this software and associated documentation files (the "Software"), to deal
     * in the Software without restriction, including without limitation the rights
     * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
     * copies of the Software, and to permit persons to whom the Software is
     * furnished to do so, subject to the following conditions:
     *
     * The above copyright notice and this permission notice shall be included in
     * all copies or substantial portions of the Software.
     *
     * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
     * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
     * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
     * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
     * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
     * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
     * THE SOFTWARE.
     */
    
    if (jsb.AssetsManager) {
      jsb.AssetsManager.State = {
        UNINITED: 0,
        UNCHECKED: 1,
        PREDOWNLOAD_VERSION: 2,
        DOWNLOADING_VERSION: 3,
        VERSION_LOADED: 4,
        PREDOWNLOAD_MANIFEST: 5,
        DOWNLOADING_MANIFEST: 6,
        MANIFEST_LOADED: 7,
        NEED_UPDATE: 8,
        READY_TO_UPDATE: 9,
        UPDATING: 10,
        UNZIPPING: 11,
        UP_TO_DATE: 12,
        FAIL_TO_UPDATE: 13
      };
      jsb.Manifest.DownloadState = {
        UNSTARTED: 0,
        DOWNLOADING: 1,
        SUCCESSED: 2,
        UNMARKED: 3
      };
      jsb.EventAssetsManager.ERROR_NO_LOCAL_MANIFEST = 0;
      jsb.EventAssetsManager.ERROR_DOWNLOAD_MANIFEST = 1;
      jsb.EventAssetsManager.ERROR_PARSE_MANIFEST = 2;
      jsb.EventAssetsManager.NEW_VERSION_FOUND = 3;
      jsb.EventAssetsManager.ALREADY_UP_TO_DATE = 4;
      jsb.EventAssetsManager.UPDATE_PROGRESSION = 5;
      jsb.EventAssetsManager.ASSET_UPDATED = 6;
      jsb.EventAssetsManager.ERROR_UPDATING = 7;
      jsb.EventAssetsManager.UPDATE_FINISHED = 8;
      jsb.EventAssetsManager.UPDATE_FAILED = 9;
      jsb.EventAssetsManager.ERROR_DECOMPRESS = 10;
    }
    
    },{}],3:[function(require,module,exports){
    "use strict";
    
    /****************************************************************************
     Copyright (c) 2020 Xiamen Yaji Software Co., Ltd.
     https://www.cocos.com/
     Permission is hereby granted, free of charge, to any person obtaining a copy
     of cache-manager software and associated engine source code (the "Software"), a limited,
      worldwide, royalty-free, non-assignable, revocable and non-exclusive license
     to use Cocos Creator solely to develop games on your target platforms. You shall
      not use Cocos Creator software for developing other software or tools that's
      used for developing games. You are not granted to publish, distribute,
      sublicense, and/or sell copies of Cocos Creator.
     The software or tools in cache-manager License Agreement are licensed, not sold.
     Xiamen Yaji Software Co., Ltd. reserves all rights not expressly granted to you.
     THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
     IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
     FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
     AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
     LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
     OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
     THE SOFTWARE.
     ****************************************************************************/
    const {
      getUserDataPath,
      readJsonSync,
      makeDirSync,
      writeFileSync,
      deleteFile,
      rmdirSync
    } = require('./jsb-fs-utils');
    let writeCacheFileList = null;
    let cleaning = false;
    const REGEX = /^\w+:\/\/.*/;
    const cacheManager = {
      cacheDir: 'gamecaches',
      cachedFileName: 'cacheList.json',
      deleteInterval: 500,
      writeFileInterval: 2000,
      cachedFiles: null,
      version: '1.1',
      getCache(url) {
        this.updateLastTime(url);
        return this.cachedFiles.has(url) ? `${this.cacheDir}/${this.cachedFiles.get(url).url}` : '';
      },
      getTemp(url) {
        return '';
      },
      init() {
        this.cacheDir = `${getUserDataPath()}/${this.cacheDir}`;
        const cacheFilePath = `${this.cacheDir}/${this.cachedFileName}`;
        const result = readJsonSync(cacheFilePath);
        if (result instanceof Error || !result.version || result.version !== this.version) {
          if (!(result instanceof Error)) rmdirSync(this.cacheDir, true);
          this.cachedFiles = new cc.AssetManager.Cache();
          makeDirSync(this.cacheDir, true);
          writeFileSync(cacheFilePath, JSON.stringify({
            files: this.cachedFiles._map,
            version: this.version
          }), 'utf8');
        } else {
          this.cachedFiles = new cc.AssetManager.Cache(result.files);
        }
      },
      updateLastTime(url) {
        if (this.cachedFiles.has(url)) {
          const cache = this.cachedFiles.get(url);
          cache.lastTime = Date.now();
        }
      },
      _write() {
        writeCacheFileList = null;
        writeFileSync(`${this.cacheDir}/${this.cachedFileName}`, JSON.stringify({
          files: this.cachedFiles._map,
          version: this.version
        }), 'utf8');
      },
      writeCacheFile() {
        if (!writeCacheFileList) {
          writeCacheFileList = setTimeout(this._write.bind(this), this.writeFileInterval);
        }
      },
      cacheFile(id, url, cacheBundleRoot) {
        this.cachedFiles.add(id, {
          bundle: cacheBundleRoot,
          url,
          lastTime: Date.now()
        });
        this.writeCacheFile();
      },
      clearCache() {
        rmdirSync(this.cacheDir, true);
        this.cachedFiles = new cc.AssetManager.Cache();
        makeDirSync(this.cacheDir, true);
        clearTimeout(writeCacheFileList);
        this._write();
        cc.assetManager.bundles.forEach(bundle => {
          if (REGEX.test(bundle.base)) this.makeBundleFolder(bundle.name);
        });
      },
      clearLRU() {
        if (cleaning) return;
        cleaning = true;
        const caches = [];
        const self = this;
        this.cachedFiles.forEach((val, key) => {
          if (val.bundle === 'internal') return;
          caches.push({
            originUrl: key,
            url: this.getCache(key),
            lastTime: val.lastTime
          });
        });
        caches.sort((a, b) => a.lastTime - b.lastTime);
        caches.length = Math.floor(caches.length / 3);
        if (caches.length === 0) return;
        for (let i = 0, l = caches.length; i < l; i++) {
          this.cachedFiles.remove(caches[i].originUrl);
        }
        clearTimeout(writeCacheFileList);
        this._write();
        function deferredDelete() {
          const item = caches.pop();
          deleteFile(item.url);
          if (caches.length > 0) {
            setTimeout(deferredDelete, self.deleteInterval);
          } else {
            cleaning = false;
          }
        }
        setTimeout(deferredDelete, self.deleteInterval);
      },
      removeCache(url) {
        if (this.cachedFiles.has(url)) {
          const path = this.getCache(url);
          this.cachedFiles.remove(url);
          clearTimeout(writeCacheFileList);
          this._write();
          deleteFile(path);
        }
      },
      makeBundleFolder(bundleName) {
        makeDirSync(`${this.cacheDir}/${bundleName}`, true);
      }
    };
    cc.assetManager.cacheManager = module.exports = cacheManager;
    
    },{"./jsb-fs-utils":7}],4:[function(require,module,exports){
    "use strict";
    
    /****************************************************************************
     Copyright (c) 2018 Xiamen Yaji Software Co., Ltd.
    
     http://www.cocos.com
    
     Permission is hereby granted, free of charge, to any person obtaining a copy
     of this software and associated engine source code (the "Software"), a limited,
      worldwide, royalty-free, non-assignable, revocable and non-exclusive license
     to use Cocos Creator solely to develop games on your target platforms. You shall
      not use Cocos Creator software for developing other software or tools that's
      used for developing games. You are not granted to publish, distribute,
      sublicense, and/or sell copies of Cocos Creator.
    
     The software or tools in this License Agreement are licensed, not sold.
     Xiamen Yaji Software Co., Ltd. reserves all rights not expressly granted to you.
    
     THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
     IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
     FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
     AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
     LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
     OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
     THE SOFTWARE.
     ****************************************************************************/
    const cacheManager = require('./jsb-cache-manager');
    
    // @ts-expect-error jsb polyfills
    (function () {
      if (globalThis.dragonBones === undefined || globalThis.middleware === undefined) return;
      const ArmatureDisplayComponent = cc.internal.ArmatureDisplay;
      if (ArmatureDisplayComponent === undefined) return;
      const dragonBones = globalThis.dragonBones;
      const middleware = globalThis.middleware;
    
      // dragonbones global time scale.
      Object.defineProperty(dragonBones, 'timeScale', {
        get() {
          return this._timeScale;
        },
        set(value) {
          this._timeScale = value;
          const factory = this.CCFactory.getInstance();
          factory.setTimeScale(value);
        },
        configurable: true
      });
      middleware.generateGetSet(dragonBones);
      const _slotColor = cc.color(0, 0, 255, 255);
      const _boneColor = cc.color(255, 0, 0, 255);
      const _originColor = cc.color(0, 255, 0, 255);
    
      ////////////////////////////////////////////////////////////
      // override dragonBones library by native dragonBones
      ////////////////////////////////////////////////////////////
      //--------------------
      // adapt event name
      //--------------------
      dragonBones.EventObject.START = 'start';
      dragonBones.EventObject.LOOP_COMPLETE = 'loopComplete';
      dragonBones.EventObject.COMPLETE = 'complete';
      dragonBones.EventObject.FADE_IN = 'fadeIn';
      dragonBones.EventObject.FADE_IN_COMPLETE = 'fadeInComplete';
      dragonBones.EventObject.FADE_OUT = 'fadeOut';
      dragonBones.EventObject.FADE_OUT_COMPLETE = 'fadeOutComplete';
      dragonBones.EventObject.FRAME_EVENT = 'frameEvent';
      dragonBones.EventObject.SOUND_EVENT = 'soundEvent';
      dragonBones.DragonBones = {
        ANGLE_TO_RADIAN: Math.PI / 180,
        RADIAN_TO_ANGLE: 180 / Math.PI
      };
    
      //-------------------
      // native factory
      //-------------------
    
      const factoryProto = dragonBones.CCFactory.prototype;
      factoryProto.createArmatureNode = function (comp, armatureName, node) {
        node = node || new cc.Node();
        let display = node.getComponent(ArmatureDisplayComponent);
        if (!display) {
          display = node.addComponent(ArmatureDisplayComponent);
        }
        node.name = armatureName;
        display._armatureName = armatureName;
        display._dragonAsset = comp.dragonAsset;
        display._dragonAtlasAsset = comp.dragonAtlasAsset;
        display._init();
        return display;
      };
      const _replaceSkin = factoryProto.replaceSkin;
      factoryProto.replaceSkin = function (armatrue, skinData, isOverride, exclude) {
        if (isOverride === undefined) isOverride = false;
        exclude = exclude || [];
        _replaceSkin.call(this, armatrue, skinData, isOverride, exclude);
      };
      const _changeSkin = factoryProto.changeSkin;
      factoryProto.changeSkin = function (armatrue, skinData, exclude) {
        _changeSkin.call(this, armatrue, skinData, exclude);
      };
      dragonBones.CCFactory.getInstance = function () {
        return dragonBones.CCFactory.getFactory();
      };
    
      //-------------------
      // native animation state
      //-------------------
      const animationStateProto = dragonBones.AnimationState.prototype;
      const _isPlaying = animationStateProto.isPlaying;
      Object.defineProperty(animationStateProto, 'isPlaying', {
        get() {
          return _isPlaying.call(this);
        }
      });
    
      //-------------------
      // native armature
      //-------------------
      const armatureProto = dragonBones.Armature.prototype;
      armatureProto.addEventListener = function (eventType, listener, target) {
        this.__persistentDisplay__ = this.getDisplay();
        this.__persistentDisplay__.on(eventType, listener, target);
      };
      armatureProto.removeEventListener = function (eventType, listener, target) {
        this.__persistentDisplay__ = this.getDisplay();
        this.__persistentDisplay__.off(eventType, listener, target);
      };
    
      //--------------------------
      // native CCArmatureDisplay
      //--------------------------
      const nativeArmatureDisplayProto = dragonBones.CCArmatureDisplay.prototype;
      Object.defineProperty(nativeArmatureDisplayProto, 'node', {
        get() {
          return this;
        }
      });
      nativeArmatureDisplayProto.getRootNode = function () {
        const rootDisplay = this.getRootDisplay();
        return rootDisplay && rootDisplay._ccNode;
      };
      nativeArmatureDisplayProto.convertToWorldSpace = function (point) {
        let newPos = this.convertToRootSpace(point.x, point.y);
        newPos = cc.v3(newPos.x, newPos.y, 0);
        const ccNode = this.getRootNode();
        if (!ccNode) return newPos;
        const finalPos = ccNode._uiProps.uiTransformComp.convertToWorldSpaceAR(newPos);
        return finalPos;
      };
      nativeArmatureDisplayProto.initEvent = function () {
        if (this._eventTarget) {
          return;
        }
        this._eventTarget = new cc.EventTarget();
        this.setDBEventCallback(function (eventObject) {
          this._eventTarget.emit(eventObject.type, eventObject);
        });
      };
      nativeArmatureDisplayProto.on = function (type, listener, target) {
        this.initEvent();
        this._eventTarget.on(type, listener, target);
        this.addDBEventListener(type, listener);
      };
      nativeArmatureDisplayProto.off = function (type, listener, target) {
        this.initEvent();
        this._eventTarget.off(type, listener, target);
        this.removeDBEventListener(type, listener);
      };
      nativeArmatureDisplayProto.once = function (type, listener, target) {
        this.initEvent();
        this._eventTarget.once(type, listener, target);
        this.addDBEventListener(type, listener);
      };
    
      ////////////////////////////////////////////////////////////
      // override DragonBonesAtlasAsset
      ////////////////////////////////////////////////////////////
      const dbAtlas = cc.internal.DragonBonesAtlasAsset.prototype;
      let _gTextureIdx = 1;
      const _textureKeyMap = {};
      const _textureMap = new WeakMap();
      const _textureIdx2Name = {};
      dbAtlas.removeRecordTexture = function (texture) {
        if (!texture) return;
        delete _textureIdx2Name[texture.image.url];
        const index = texture.__textureIndex__;
        if (index) {
          const texKey = _textureKeyMap[index];
          if (texKey && _textureMap.has(texKey)) {
            _textureMap.delete(texKey);
            delete _textureKeyMap[index];
          }
        }
      };
      dbAtlas.recordTexture = function () {
        if (this._texture && this._oldTexture !== this._texture) {
          this.removeRecordTexture(this._oldTexture);
          const texKey = _textureKeyMap[_gTextureIdx] = {
            key: _gTextureIdx
          };
          _textureMap.set(texKey, this._texture);
          this._oldTexture = this._texture;
          this._texture.__textureIndex__ = _gTextureIdx;
          _gTextureIdx++;
        }
      };
      dbAtlas.getTextureByIndex = function (textureIdx) {
        const texKey = _textureKeyMap[textureIdx];
        if (!texKey) return null;
        return _textureMap.get(texKey);
      };
      dbAtlas.updateTextureAtlasData = function (factory) {
        const url = this._texture.image.url;
        const preAtlasInfo = _textureIdx2Name[url];
        let index;
    
        // If the texture has store the atlas info before,then get native atlas object,and
        // update script texture map.
        if (preAtlasInfo) {
          index = preAtlasInfo.index;
          this._textureAtlasData = factory.getTextureAtlasDataByIndex(preAtlasInfo.name, index);
          const texKey = _textureKeyMap[preAtlasInfo.index];
          _textureMap.set(texKey, this._texture);
          this._texture.__textureIndex__ = index;
          // If script has store the atlas info,but native has no atlas object,then
          // still new native texture2d object,but no call recordTexture to increase
          // textureIndex.
          if (this._textureAtlasData) {
            return;
          }
        } else {
          this.recordTexture();
        }
        index = this._texture.__textureIndex__;
        this.jsbTexture = new middleware.Texture2D();
        this.jsbTexture.setRealTextureIndex(index);
        this.jsbTexture.setPixelsWide(this._texture.width);
        this.jsbTexture.setPixelsHigh(this._texture.height);
        this.jsbTexture.setRealTexture(this._texture);
        this._textureAtlasData = factory.parseTextureAtlasData(this.atlasJson, this.jsbTexture, this._uuid);
        _textureIdx2Name[url] = {
          name: this._textureAtlasData.name,
          index
        };
      };
      dbAtlas.init = function (factory) {
        this._factory = factory;
    
        // If create by manual, uuid is empty.
        if (!this._uuid) {
          const atlasJsonObj = JSON.parse(this.atlasJson);
          this._uuid = atlasJsonObj.name;
        }
        if (this._textureAtlasData) {
          factory.addTextureAtlasData(this._textureAtlasData, this._uuid);
        } else {
          this.updateTextureAtlasData(factory);
        }
      };
      dbAtlas._clear = function (dontRecordTexture) {
        if (this._factory) {
          this._factory.removeTextureAtlasData(this._uuid, true);
          this._factory.removeDragonBonesDataByUUID(this._uuid, true);
        }
        this._textureAtlasData = null;
        if (!dontRecordTexture) {
          this.recordTexture();
        }
      };
      dbAtlas.destroy = function () {
        this.removeRecordTexture(this._texture);
        this._clear(true);
        cc.Asset.prototype.destroy.call(this);
      };
    
      ////////////////////////////////////////////////////////////
      // override DragonBonesAsset
      ////////////////////////////////////////////////////////////
      const dbAsset = cc.internal.DragonBonesAsset.prototype;
      dbAsset.init = function (factory, atlasUUID) {
        this._factory = factory || dragonBones.CCFactory.getInstance();
    
        // If create by manual, uuid is empty.
        // Only support json format, if remote load dbbin, must set uuid by manual.
        if (!this._uuid && this.dragonBonesJson) {
          const rawData = JSON.parse(this.dragonBonesJson);
          this._uuid = rawData.name;
        }
        const armatureKey = `${this._uuid}#${atlasUUID}`;
        const dragonBonesData = this._factory.getDragonBonesData(armatureKey);
        if (dragonBonesData) return armatureKey;
        let filePath = null;
        if (this.dragonBonesJson) {
          filePath = this.dragonBonesJson;
        } else {
          filePath = cacheManager.getCache(this.nativeUrl) || this.nativeUrl;
        }
        this._factory.parseDragonBonesDataByPath(filePath, armatureKey);
        return armatureKey;
      };
      const armatureCacheMgr = dragonBones.ArmatureCacheMgr.getInstance();
      dragonBones.armatureCacheMgr = armatureCacheMgr;
      dbAsset._clear = function () {
        if (this._factory) {
          this._factory.removeDragonBonesDataByUUID(this._uuid, true);
        }
        armatureCacheMgr.removeArmatureCache(this._uuid);
      };
    
      ////////////////////////////////////////////////////////////
      // override ArmatureDisplay
      ////////////////////////////////////////////////////////////
      const superProto = cc.internal.UIRenderer.prototype;
      const armatureDisplayProto = cc.internal.ArmatureDisplay.prototype;
      const AnimationCacheMode = cc.internal.ArmatureDisplay.AnimationCacheMode;
      const armatureSystem = cc.internal.ArmatureSystem;
      armatureDisplayProto.initFactory = function () {
        this._factory = dragonBones.CCFactory.getFactory();
      };
      Object.defineProperty(armatureDisplayProto, 'armatureName', {
        get() {
          return this._armatureName;
        },
        set(value) {
          this._armatureName = value;
          const animNames = this.getAnimationNames(this._armatureName);
          if (!this.animationName || animNames.indexOf(this.animationName) < 0) {
            this.animationName = '';
          }
          const oldArmature = this._armature;
          if (this._armature) {
            if (!this.isAnimationCached()) {
              this._factory.remove(this._armature);
            }
            this._armature = null;
          }
          this._nativeDisplay = null;
          this._refresh();
          if (oldArmature && oldArmature !== this._armature) {
            oldArmature.dispose();
          }
          if (this._armature && !this.isAnimationCached() && this.shouldSchedule) {
            this._factory.add(this._armature);
          }
        },
        visible: false
      });
      Object.defineProperty(armatureDisplayProto, 'premultipliedAlpha', {
        get() {
          if (this._premultipliedAlpha === undefined) {
            return false;
          }
          return this._premultipliedAlpha;
        },
        set(value) {
          this._premultipliedAlpha = value;
          if (this._nativeDisplay) {
            this._nativeDisplay.setOpacityModifyRGB(this._premultipliedAlpha);
          }
        }
      });
      const _initDebugDraw = armatureDisplayProto._initDebugDraw;
      armatureDisplayProto._initDebugDraw = function () {
        _initDebugDraw.call(this);
        if (this._armature && !this.isAnimationCached()) {
          this._nativeDisplay.setDebugBonesEnabled(this.debugBones);
        }
      };
      armatureDisplayProto._buildArmature = function () {
        if (!this.dragonAsset || !this.dragonAtlasAsset || !this.armatureName) {
          return;
        }
        if (this._nativeDisplay) {
          this._nativeDisplay.dispose();
          this._nativeDisplay._comp = null;
          this._nativeDisplay = null;
        }
        const atlasUUID = this.dragonAtlasAsset._uuid;
        this._armatureKey = this.dragonAsset.init(this._factory, atlasUUID);
        if (this.isAnimationCached()) {
          const isShare = this._cacheMode === AnimationCacheMode.SHARED_CACHE;
          this._nativeDisplay = new dragonBones.CCArmatureCacheDisplay(this.armatureName, this._armatureKey, atlasUUID, isShare);
          if (this.shouldSchedule) this._nativeDisplay.beginSchedule();
          this._armature = this._nativeDisplay.armature();
        } else {
          this._nativeDisplay = this._factory.buildArmatureDisplay(this.armatureName, this._armatureKey, '', atlasUUID);
          if (!this._nativeDisplay) {
            return;
          }
          this._nativeDisplay.setDebugBonesEnabled(this.debugBones);
          this._armature = this._nativeDisplay.armature();
          this._armature.animation.timeScale = this.timeScale;
          if (this.shouldSchedule) this._factory.add(this._armature);
        }
    
        // add all event into native display
        const callbackTable = this._eventTarget._callbackTable;
        // just use to adapt to native api
        const emptyHandle = function () {};
        for (const key in callbackTable) {
          const list = callbackTable[key];
          if (!list || !list.callbackInfos || !list.callbackInfos.length) continue;
          if (this.isAnimationCached()) {
            this._nativeDisplay.addDBEventListener(key);
          } else {
            this._nativeDisplay.addDBEventListener(key, emptyHandle);
          }
        }
        this._preCacheMode = this._cacheMode;
        this._nativeDisplay._ccNode = this.node;
        this._nativeDisplay._comp = this;
        this._nativeDisplay._eventTarget = this._eventTarget;
        this._sharedBufferOffset = this._nativeDisplay.getSharedBufferOffset();
        this._sharedBufferOffset[0] = 0;
        this._useAttach = false;
        this._nativeDisplay.setOpacityModifyRGB(this.premultipliedAlpha);
        const compColor = this.color;
        this._nativeDisplay.setColor(compColor.r, compColor.g, compColor.b, compColor.a);
        this._nativeDisplay.setDBEventCallback(function (eventObject) {
          this._eventTarget.emit(eventObject.type, eventObject);
        });
        const materialTemplate = this.getMaterialTemplate();
        this._nativeDisplay.setMaterial(materialTemplate);
        this._nativeDisplay.setRenderEntity(this._renderEntity.nativeObj);
        this.attachUtil.init(this);
        if (this._armature) {
          const armatureData = this._armature.armatureData;
          const aabb = armatureData.aABB;
          this.node._uiProps.uiTransformComp.setContentSize(aabb.width, aabb.height);
        }
        if (this.animationName) {
          this.playAnimation(this.animationName, this.playTimes);
        }
        this.markForUpdateRenderData();
      };
      armatureDisplayProto._updateColor = function () {
        if (this._nativeDisplay) {
          const compColor = this.color;
          this._nativeDisplay.setColor(compColor.r, compColor.g, compColor.b, compColor.a);
        }
      };
      armatureDisplayProto.playAnimation = function (animName, playTimes) {
        this.playTimes = playTimes === undefined ? -1 : playTimes;
        this.animationName = animName;
        if (this._nativeDisplay) {
          if (this.isAnimationCached()) {
            return this._nativeDisplay.playAnimation(animName, this.playTimes);
          } else if (this._armature) {
            return this._armature.animation.play(animName, this.playTimes);
          }
        }
        return null;
      };
      armatureDisplayProto.updateAnimationCache = function (animName) {
        if (!this.isAnimationCached()) return;
        if (this._nativeDisplay) {
          if (animName) {
            this._nativeDisplay.updateAnimationCache(animName);
          } else {
            this._nativeDisplay.updateAllAnimationCache();
          }
        }
      };
      armatureDisplayProto.invalidAnimationCache = function () {
        if (!this.isAnimationCached()) return;
        if (this._nativeDisplay) {
          this._nativeDisplay.updateAllAnimationCache();
        }
      };
      const _onEnable = superProto.onEnable;
      armatureDisplayProto.onEnable = function () {
        if (_onEnable) {
          _onEnable.call(this);
        }
        this.shouldSchedule = true;
        if (this._armature) {
          if (this.isAnimationCached()) {
            this._nativeDisplay.onEnable();
          } else {
            this._factory.add(this._armature);
          }
        }
        this._flushAssembler();
        armatureSystem.getInstance().add(this);
        middleware.retain();
      };
      const _onDisable = superProto.onDisable;
      armatureDisplayProto.onDisable = function () {
        if (_onDisable) {
          _onDisable.call(this);
        }
        if (this._armature && !this.isAnimationCached()) {
          this._factory.remove(this._armature);
        }
        armatureSystem.getInstance().remove(this);
        middleware.release();
      };
      const _updateMaterial = armatureDisplayProto.updateMaterial;
      armatureDisplayProto.updateMaterial = function () {
        _updateMaterial.call(this);
        if (this._nativeDisplay) {
          const mat = this.getMaterialTemplate();
          this._nativeDisplay.setMaterial(mat);
        }
      };
      armatureDisplayProto.once = function (eventType, listener, target) {
        if (this._nativeDisplay) {
          if (this.isAnimationCached()) {
            this._nativeDisplay.addDBEventListener(eventType);
          } else {
            this._nativeDisplay.addDBEventListener(eventType, listener);
          }
        }
        this._eventTarget.once(eventType, listener, target);
      };
      armatureDisplayProto.addEventListener = function (eventType, listener, target) {
        if (this._nativeDisplay) {
          if (this.isAnimationCached()) {
            this._nativeDisplay.addDBEventListener(eventType);
          } else {
            this._nativeDisplay.addDBEventListener(eventType, listener);
          }
        }
        this._eventTarget.on(eventType, listener, target);
      };
      armatureDisplayProto.removeEventListener = function (eventType, listener, target) {
        if (this._nativeDisplay) {
          if (this.isAnimationCached()) {
            this._nativeDisplay.removeDBEventListener(eventType);
          } else {
            this._nativeDisplay.removeDBEventListener(eventType, listener);
          }
        }
        this._eventTarget.off(eventType, listener, target);
      };
      const _onDestroy = armatureDisplayProto.onDestroy;
      armatureDisplayProto.onDestroy = function () {
        _onDestroy.call(this);
        if (this._nativeDisplay) {
          this._nativeDisplay.dispose();
          this._nativeDisplay._comp = null;
          this._nativeDisplay = null;
        }
      };
      armatureDisplayProto.setAnimationCacheMode = function (cacheMode) {
        if (this._preCacheMode !== cacheMode) {
          this._cacheMode = cacheMode;
          this._buildArmature();
          if (this._armature && !this.isAnimationCached() && this.shouldSchedule) {
            this._factory.add(this._armature);
          }
          this._updateSocketBindings();
          this.markForUpdateRenderData();
        }
      };
      armatureDisplayProto.updateAnimation = function () {
        const nativeDisplay = this._nativeDisplay;
        if (!nativeDisplay) return;
        const node = this.node;
        if (!node) return;
        if (this.__preColor__ === undefined || !this.color.equals(this.__preColor__)) {
          const compColor = this.color;
          nativeDisplay.setColor(compColor.r, compColor.g, compColor.b, compColor.a);
          this.__preColor__ = compColor;
        }
        const socketNodes = this.socketNodes;
        if (!this._useAttach && socketNodes.size > 0) {
          this._useAttach = true;
          nativeDisplay.setAttachEnabled(true);
        }
        this.markForUpdateRenderData();
        if (!this.isAnimationCached() && this._debugDraw && this.debugBones) {
          const nativeDisplay = this._nativeDisplay;
          this._debugData = this._debugData || nativeDisplay.getDebugData();
          if (!this._debugData) return;
          const graphics = this._debugDraw;
          graphics.clear();
          const debugData = this._debugData;
          let debugIdx = 0;
          graphics.lineWidth = 5;
          graphics.strokeColor = _boneColor;
          graphics.fillColor = _slotColor; // Root bone color is same as slot color.
    
          const debugBonesLen = debugData[debugIdx++];
          for (let i = 0; i < debugBonesLen; i += 4) {
            const bx = debugData[debugIdx++];
            const by = debugData[debugIdx++];
            const x = debugData[debugIdx++];
            const y = debugData[debugIdx++];
    
            // Bone lengths.
            graphics.moveTo(bx, by);
            graphics.lineTo(x, y);
            graphics.stroke();
    
            // Bone origins.
            graphics.circle(bx, by, Math.PI * 2);
            graphics.fill();
            if (i === 0) {
              graphics.fillColor = _originColor;
            }
          }
        }
      };
      const _tempAttachMat4 = cc.mat4();
      armatureDisplayProto._render = function () {};
      armatureDisplayProto._updateBatch = function () {
        if (this.nativeDisplay) {
          this.nativeDisplay.setBatchEnabled(this.enableBatch);
          this.markForUpdateRenderData();
        }
      };
      armatureDisplayProto.syncAttachedNode = function () {
        const nativeDisplay = this._nativeDisplay;
        if (!nativeDisplay) return;
        const sharedBufferOffset = this._sharedBufferOffset;
        if (!sharedBufferOffset) return;
        const sockets = this.sockets;
        if (sockets.length > 0) {
          const attachInfoMgr = middleware.attachInfoMgr;
          const attachInfo = attachInfoMgr.attachInfo;
          const attachInfoOffset = sharedBufferOffset[0];
          // reset attach info offset
          sharedBufferOffset[0] = 0;
          const socketNodes = this.socketNodes;
          for (let l = sockets.length - 1; l >= 0; l--) {
            const sock = sockets[l];
            const boneNode = sock.target;
            const boneIdx = sock.boneIndex;
            if (!boneNode) continue;
            // Node has been destroy
            if (!boneNode.isValid) {
              socketNodes.delete(sock.path);
              sockets.splice(l, 1);
              continue;
            }
            const tm = _tempAttachMat4;
            const matOffset = attachInfoOffset + boneIdx * 16;
            tm.m00 = attachInfo[matOffset];
            tm.m01 = attachInfo[matOffset + 1];
            tm.m04 = attachInfo[matOffset + 4];
            tm.m05 = attachInfo[matOffset + 5];
            tm.m12 = attachInfo[matOffset + 12];
            tm.m13 = attachInfo[matOffset + 13];
            boneNode.matrix = tm;
          }
        }
      };
    
      //////////////////////////////////////////
      // assembler
      const assembler = cc.internal.DragonBonesAssembler;
    
      // eslint-disable-next-line no-unused-vars
      assembler.createData = function (comp) {};
      assembler.updateRenderData = function (comp) {
        comp._render();
      };
    
      // eslint-disable-next-line no-unused-vars
      assembler.fillBuffers = function (comp, renderer) {};
    })();
    
    },{"./jsb-cache-manager":3}],5:[function(require,module,exports){
    "use strict";
    
    /****************************************************************************
     Copyright (c) 2018 Xiamen Yaji Software Co., Ltd.
    
     https://www.cocos.com/
    
     Permission is hereby granted, free of charge, to any person obtaining a copy
     of this software and associated engine source code (the "Software"), a limited,
      worldwide, royalty-free, non-assignable, revocable and non-exclusive license
     to use Cocos Creator solely to develop games on your target platforms. You shall
      not use Cocos Creator software for developing other software or tools that's
      used for developing games. You are not granted to publish, distribute,
      sublicense, and/or sell copies of Cocos Creator.
    
     The software or tools in this License Agreement are licensed, not sold.
     Xiamen Yaji Software Co., Ltd. reserves all rights not expressly granted to you.
    
     THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
     IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
     FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
     AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
     LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
     OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
     THE SOFTWARE.
     ****************************************************************************/
    
    (function () {
      if (!(cc && cc.internal && cc.internal.EditBox)) {
        return;
      }
      const EditBox = cc.internal.EditBox;
      const KeyboardReturnType = EditBox.KeyboardReturnType;
      const InputMode = EditBox.InputMode;
      const InputFlag = EditBox.InputFlag;
      const worldMat = cc.mat4();
      function getInputType(type) {
        switch (type) {
          case InputMode.EMAIL_ADDR:
            return 'email';
          case InputMode.NUMERIC:
          case InputMode.DECIMAL:
            return 'number';
          case InputMode.PHONE_NUMBER:
            return 'phone';
          case InputMode.URL:
            return 'url';
          case InputMode.SINGLE_LINE:
          case InputMode.ANY:
          default:
            return 'text';
        }
      }
      function getKeyboardReturnType(type) {
        switch (type) {
          case KeyboardReturnType.DEFAULT:
          case KeyboardReturnType.DONE:
            return 'done';
          case KeyboardReturnType.SEND:
            return 'send';
          case KeyboardReturnType.SEARCH:
            return 'search';
          case KeyboardReturnType.GO:
            return 'go';
          case KeyboardReturnType.NEXT:
            return 'next';
        }
        return 'done';
      }
      const BaseClass = EditBox._EditBoxImpl;
      class JsbEditBoxImpl extends BaseClass {
        init(delegate) {
          if (!delegate) {
            cc.error('EditBox init failed');
            return;
          }
          this._delegate = delegate;
        }
        beginEditing() {
          const self = this;
          const delegate = this._delegate;
          const multiline = delegate.inputMode === InputMode.ANY;
          const rect = this._getRect();
          this.setMaxLength(delegate.maxLength);
          let inputTypeString = getInputType(delegate.inputMode);
          if (delegate.inputFlag === InputFlag.PASSWORD) {
            inputTypeString = 'password';
          }
          function onConfirm(res) {
            delegate._editBoxEditingReturn();
          }
          function onInput(res) {
            if (res.value.length > self._maxLength) {
              res.value = res.value.slice(0, self._maxLength);
            }
            if (delegate.string !== res.value) {
              delegate._editBoxTextChanged(res.value);
            }
          }
          function onComplete(res) {
            self.endEditing();
          }
          jsb.inputBox.onInput(onInput);
          jsb.inputBox.onConfirm(onConfirm);
          jsb.inputBox.onComplete(onComplete);
          if (!cc.sys.isMobile) {
            delegate._hideLabels();
          }
          const editLabel = delegate.textLabel;
          jsb.inputBox.show({
            defaultValue: delegate.string,
            maxLength: self._maxLength,
            multiple: multiline,
            confirmHold: false,
            confirmType: getKeyboardReturnType(delegate.returnType),
            inputType: inputTypeString,
            originX: rect.x,
            originY: rect.y,
            width: rect.width,
            height: rect.height,
            isBold: editLabel.isBold,
            isItalic: editLabel.isItalic,
            isUnderline: editLabel.isUnderline,
            underlineColor: 0x00000000 /* Black */,
            fontSize: /**number */editLabel.fontSize,
            fontColor: /**number */editLabel.color.toRGBValue(),
            backColor: 0x00ffffff /*White*/,
            backgroundColor: delegate.placeholderLabel.color.toRGBValue(),
            textAlignment: /*left = 0, center = 1, right = 2*/editLabel.horizontalAlign
          });
          this._editing = true;
          delegate._editBoxEditingDidBegan();
        }
        endEditing() {
          this._editing = false;
          if (!cc.sys.isMobile) {
            this._delegate._showLabels();
          }
          jsb.inputBox.offConfirm();
          jsb.inputBox.offInput();
          jsb.inputBox.offComplete();
          jsb.inputBox.hide();
          this._delegate._editBoxEditingDidEnded();
        }
        setMaxLength(maxLength) {
          if (!isNaN(maxLength)) {
            if (maxLength < 0) {
              //we can't set Number.MAX_VALUE to input's maxLength property
              //so we use a magic number here, it should works at most use cases.
              maxLength = 65535;
            }
            this._maxLength = maxLength;
          }
        }
        _getRect() {
          const node = this._delegate.node;
          let viewScaleX = cc.view._scaleX;
          let viewScaleY = cc.view._scaleY;
          const dpr = jsb.device.getDevicePixelRatio() || 1;
          node.getWorldMatrix(worldMat);
          const transform = node._uiProps.uiTransformComp;
          const vec3 = cc.v3();
          let width = 0;
          let height = 0;
          if (transform) {
            const contentSize = transform.contentSize;
            const anchorPoint = transform.anchorPoint;
            width = contentSize.width;
            height = contentSize.height;
            vec3.x = -anchorPoint.x * width;
            vec3.y = -anchorPoint.y * height;
          }
          const translate = new cc.Mat4();
          cc.Mat4.fromTranslation(translate, vec3);
          cc.Mat4.multiply(worldMat, translate, worldMat);
          viewScaleX /= dpr;
          viewScaleY /= dpr;
          const finalScaleX = worldMat.m00 * viewScaleX;
          const finaleScaleY = worldMat.m05 * viewScaleY;
          const viewportRect = cc.view._viewportRect;
          const offsetX = viewportRect.x / dpr;
          const offsetY = viewportRect.y / dpr;
          return {
            x: worldMat.m12 * viewScaleX + offsetX,
            y: worldMat.m13 * viewScaleY + offsetY,
            width: width * finalScaleX,
            height: height * finaleScaleY
          };
        }
      }
      EditBox._EditBoxImpl = JsbEditBoxImpl;
    })();
    
    },{}],6:[function(require,module,exports){
    "use strict";
    
    /****************************************************************************
     Copyright (c) 2018 Xiamen Yaji Software Co., Ltd.
    
     http://www.cocos.com
    
     Permission is hereby granted, free of charge, to any person obtaining a copy
     of this software and associated engine source code (the "Software"), a limited,
      worldwide, royalty-free, non-assignable, revocable and non-exclusive license
     to use Cocos Creator solely to develop games on your target platforms. You shall
      not use Cocos Creator software for developing other software or tools that's
      used for developing games. You are not granted to publish, distribute,
      sublicense, and/or sell copies of Cocos Creator.
    
     The software or tools in this License Agreement are licensed, not sold.
     Xiamen Yaji Software Co., Ltd. reserves all rights not expressly granted to you.
    
     THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
     IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
     FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
     AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
     LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
     OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
     THE SOFTWARE.
     ****************************************************************************/
    
    // @ts-expect-error jsb polyfills
    (function () {
      if (!globalThis.middleware) return;
      const middleware = globalThis.middleware;
      const middlewareMgr = middleware.MiddlewareManager.getInstance();
      let reference = 0;
      const director = cc.director;
      const game = cc.game;
      middleware.reset = function () {
        middleware.preRenderComponent = null;
        middleware.preRenderBufferIndex = 0;
        middleware.indicesStart = 0;
        middleware.resetIndicesStart = false;
      };
      middleware.reset();
      middleware.retain = function () {
        reference++;
      };
      middleware.release = function () {
        if (reference === 0) {
          cc.warn('middleware reference error: reference count should be greater than 0');
          return;
        }
        reference--;
      };
      director.on(cc.Director.EVENT_BEFORE_UPDATE, () => {
        if (reference === 0) return;
        middlewareMgr.update(game.deltaTime);
      });
      director.on(cc.Director.EVENT_BEFORE_DRAW, () => {
        if (reference === 0) return;
        middlewareMgr.render(game.deltaTime);
    
        // reset render order
        middleware.reset();
    
        //const batcher2D = director.root.batcher2D;
        if (globalThis.dragonBones) {
          const armaSystem = cc.internal.ArmatureSystem.getInstance();
          armaSystem.prepareRenderData();
        }
        if (globalThis.spine) {
          const skeletonSystem = cc.internal.SpineSkeletonSystem.getInstance();
          skeletonSystem.prepareRenderData();
        }
      });
      const attachInfoMgr = middlewareMgr.getAttachInfoMgr();
      attachInfoMgr.attachInfo = attachInfoMgr.getSharedBuffer();
      attachInfoMgr.setResizeCallback(function () {
        this.attachInfo = this.getSharedBuffer();
      });
      middleware.attachInfoMgr = attachInfoMgr;
    
      // generate get set function
      middleware.generateGetSet = function (moduleObj) {
        for (const classKey in moduleObj) {
          const classProto = moduleObj[classKey] && moduleObj[classKey].prototype;
          if (!classProto) continue;
          for (const getName in classProto) {
            const getPos = getName.search(/^get/);
            if (getPos === -1) continue;
            let propName = getName.replace(/^get/, '');
            const nameArr = propName.split('');
            const lowerFirst = nameArr[0].toLowerCase();
            const upperFirst = nameArr[0].toUpperCase();
            nameArr.splice(0, 1);
            const left = nameArr.join('');
            propName = lowerFirst + left;
            const setName = `set${upperFirst}${left}`;
            // eslint-disable-next-line no-prototype-builtins
            if (classProto.hasOwnProperty(propName)) continue;
            const setFunc = classProto[setName];
            const hasSetFunc = typeof setFunc === 'function';
            if (hasSetFunc) {
              Object.defineProperty(classProto, propName, {
                get() {
                  return this[getName]();
                },
                set(val) {
                  this[setName](val);
                },
                configurable: true
              });
            } else {
              Object.defineProperty(classProto, propName, {
                get() {
                  return this[getName]();
                },
                configurable: true
              });
            }
          }
        }
      };
    })();
    
    },{}],7:[function(require,module,exports){
    "use strict";
    
    /****************************************************************************
     Copyright (c) 2017-2020 Xiamen Yaji Software Co., Ltd.
     https://www.cocos.com/
     Permission is hereby granted, free of charge, to any person obtaining a copy
     of fsUtils software and associated engine source code (the "Software"), a limited,
      worldwide, royalty-free, non-assignable, revocable and non-exclusive license
     to use Cocos Creator solely to develop games on your target platforms. You shall
      not use Cocos Creator software for developing other software or tools that's
      used for developing games. You are not granted to publish, distribute,
      sublicense, and/or sell copies of Cocos Creator.
     The software or tools in fsUtils License Agreement are licensed, not sold.
     Xiamen Yaji Software Co., Ltd. reserves all rights not expressly granted to you.
     THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
     IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
     FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
     AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
     LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
     OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
     THE SOFTWARE.
     ****************************************************************************/
    
    const fs = jsb.fileUtils;
    let jsb_downloader = null;
    const downloading = new cc.AssetManager.Cache();
    let tempDir = '';
    jsb.Downloader.prototype._ctor = function () {
      this.__nativeRefs = {};
    };
    const fsUtils = {
      fs,
      initJsbDownloader(jsbDownloaderMaxTasks, jsbDownloaderTimeout) {
        jsb_downloader = new jsb.Downloader({
          countOfMaxProcessingTasks: jsbDownloaderMaxTasks || 32,
          timeoutInSeconds: jsbDownloaderTimeout || 30,
          tempFileNameSuffix: '.tmp'
        });
        tempDir = `${fsUtils.getUserDataPath()}/temp`;
        !fs.isDirectoryExist(tempDir) && fs.createDirectory(tempDir);
        jsb_downloader.onSuccess = task => {
          if (!downloading.has(task.requestURL)) return;
          const {
            onComplete
          } = downloading.remove(task.requestURL);
          onComplete && onComplete(null, task.storagePath);
        };
        jsb_downloader.onError = (task, errorCode, errorCodeInternal, errorStr) => {
          if (!downloading.has(task.requestURL)) return;
          const {
            onComplete
          } = downloading.remove(task.requestURL);
          cc.error(`Download file failed: path: ${task.requestURL} message: ${errorStr}, ${errorCode}`);
          onComplete(new Error(errorStr), null);
        };
        jsb_downloader.onProgress = (task, bytesReceived, totalBytesReceived, totalBytesExpected) => {
          if (!downloading.has(task.requestURL)) return;
          const {
            onProgress
          } = downloading.get(task.requestURL);
          onProgress && onProgress(totalBytesReceived, totalBytesExpected);
        };
      },
      getUserDataPath() {
        return fs.getWritablePath().replace(/[\/\\]*$/, '');
      },
      checkFsValid() {
        if (!fs) {
          cc.warn('can not get the file system!');
          return false;
        }
        return true;
      },
      deleteFile(filePath, onComplete) {
        const result = fs.removeFile(filePath);
        if (result === true) {
          onComplete && onComplete(null);
        } else {
          cc.warn(`Delete file failed: path: ${filePath}`);
          onComplete && onComplete(new Error('delete file failed'));
        }
      },
      downloadFile(remoteUrl, filePath, header, onProgress, onComplete) {
        downloading.add(remoteUrl, {
          onProgress,
          onComplete
        });
        let storagePath = filePath;
        if (!storagePath) storagePath = `${tempDir}/${performance.now()}${cc.path.extname(remoteUrl)}`;
        jsb_downloader.createDownloadTask(remoteUrl, storagePath, header);
      },
      saveFile(srcPath, destPath, onComplete) {
        let err = null;
        const result = fs.writeDataToFile(fs.getDataFromFile(srcPath), destPath);
        fs.removeFile(srcPath);
        if (!result) {
          err = new Error(`Save file failed: path: ${srcPath}`);
          cc.warn(err.message);
        }
        onComplete && onComplete(err);
      },
      copyFile(srcPath, destPath, onComplete) {
        let err = null;
        const result = fs.writeDataToFile(fs.getDataFromFile(srcPath), destPath);
        if (!result) {
          err = new Error(`Copy file failed: path: ${srcPath}`);
          cc.warn(err.message);
        }
        onComplete && onComplete(err);
      },
      writeFile(path, data, encoding, onComplete) {
        let result = null;
        let err = null;
        if (encoding === 'utf-8' || encoding === 'utf8') {
          result = fs.writeStringToFile(data, path);
        } else {
          result = fs.writeDataToFile(data, path);
        }
        if (!result) {
          err = new Error(`Write file failed: path: ${path}`);
          cc.warn(err.message);
        }
        onComplete && onComplete(err);
      },
      writeFileSync(path, data, encoding) {
        let result = null;
        if (encoding === 'utf-8' || encoding === 'utf8') {
          result = fs.writeStringToFile(data, path);
        } else {
          result = fs.writeDataToFile(data, path);
        }
        if (!result) {
          cc.warn(`Write file failed: path: ${path}`);
          return new Error(`Write file failed: path: ${path}`);
        }
      },
      readFile(filePath, encoding, onComplete) {
        let content = null;
        let err = null;
        if (encoding === 'utf-8' || encoding === 'utf8') {
          content = fs.getStringFromFile(filePath);
        } else {
          content = fs.getDataFromFile(filePath);
        }
        if (!content) {
          err = new Error(`Read file failed: path: ${filePath}`);
          cc.warn(err.message);
        }
        onComplete && onComplete(err, content);
      },
      readDir(filePath, onComplete) {
        let files = null;
        let err = null;
        try {
          files = fs.listFiles(filePath);
        } catch (e) {
          cc.warn(`Read dir failed: path: ${filePath} message: ${e.message}`);
          err = new Error(e.message);
        }
        onComplete && onComplete(err, files);
      },
      readText(filePath, onComplete) {
        fsUtils.readFile(filePath, 'utf8', onComplete);
      },
      readArrayBuffer(filePath, onComplete) {
        fsUtils.readFile(filePath, '', onComplete);
      },
      readJson(filePath, onComplete) {
        fsUtils.readFile(filePath, 'utf8', (err, text) => {
          let out = null;
          if (!err) {
            try {
              out = JSON.parse(text);
            } catch (e) {
              cc.warn(`Read json failed: path: ${filePath} message: ${e.message}`);
              err = new Error(e.message);
            }
          }
          onComplete && onComplete(err, out);
        });
      },
      readJsonSync(path) {
        try {
          const str = fs.getStringFromFile(path);
          return JSON.parse(str);
        } catch (e) {
          cc.warn(`Read json failed: path: ${path} message: ${e.message}`);
          return new Error(e.message);
        }
      },
      makeDirSync(path, recursive) {
        const result = fs.createDirectory(path);
        if (!result) {
          cc.warn(`Make directory failed: path: ${path}`);
          return new Error(`Make directory failed: path: ${path}`);
        }
      },
      rmdirSync(dirPath, recursive) {
        const result = fs.removeDirectory(dirPath);
        if (!result) {
          cc.warn(`rm directory failed: path: ${dirPath}`);
          return new Error(`rm directory failed: path: ${dirPath}`);
        }
      },
      exists(filePath, onComplete) {
        const result = fs.isFileExist(filePath);
        onComplete && onComplete(result);
      },
      loadSubpackage(name, onProgress, onComplete) {
        throw new Error('not implement');
      }
    };
    globalThis.fsUtils = module.exports = fsUtils;
    
    },{}],8:[function(require,module,exports){
    "use strict";
    
    /****************************************************************************
     Copyright (c) 2018 Xiamen Yaji Software Co., Ltd.
    
     https://www.cocos.com/
    
     Permission is hereby granted, free of charge, to any person obtaining a copy
     of this software and associated engine source code (the "Software"), a limited,
      worldwide, royalty-free, non-assignable, revocable and non-exclusive license
     to use Cocos Creator solely to develop games on your target platforms. You shall
      not use Cocos Creator software for developing other software or tools that's
      used for developing games. You are not granted to publish, distribute,
      sublicense, and/or sell copies of Cocos Creator.
    
     The software or tools in this License Agreement are licensed, not sold.
     Xiamen Yaji Software Co., Ltd. reserves all rights not expressly granted to you.
    
     THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
     IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
     FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
     AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
     LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
     OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
     THE SOFTWARE.
     ****************************************************************************/
    
    cc.game.restart = function () {
      // Need to clear scene, or native object destructor won't be invoke.
      cc.director.getScene().destroy();
      cc.Object._deferredDestroy();
      __restartVM();
    };
    jsb.onError(function (location, message, stack) {
      console.error(location, message, stack);
    });
    jsb.onMemoryWarning = function () {
      cc.game.emit(cc.Game.EVENT_LOW_MEMORY);
    };
    
    },{}],9:[function(require,module,exports){
    "use strict";
    
    /****************************************************************************
     Copyright (c) 2020 Xiamen Yaji Software Co., Ltd.
    
     https://www.cocos.com/
    
     Permission is hereby granted, free of charge, to any person obtaining a copy
     of this software and associated engine source code (the "Software"), a limited,
      worldwide, royalty-free, non-assignable, revocable and non-exclusive license
     to use Cocos Creator solely to develop games on your target platforms. You shall
      not use Cocos Creator software for developing other software or tools that's
      used for developing games. You are not granted to publish, distribute,
      sublicense, and/or sell copies of Cocos Creator.
    
     The software or tools in this License Agreement are licensed, not sold.
     Xiamen Yaji Software Co., Ltd. reserves all rights not expressly granted to you.
    
     THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
     IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
     FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
     AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
     LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
     OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
     THE SOFTWARE.
     ****************************************************************************/
    
    /* global gfx */
    
    const deviceProto = gfx.Device.prototype;
    const swapchainProto = gfx.Swapchain.prototype;
    const bufferProto = gfx.Buffer.prototype;
    const textureProto = gfx.Texture.prototype;
    const descriptorSetProto = gfx.DescriptorSet.prototype;
    const jsbWindow = require('../jsbWindow');
    ///////////////////////////// handle different paradigms /////////////////////////////
    
    const oldCopyTexImagesToTextureFunc = deviceProto.copyTexImagesToTexture;
    deviceProto.copyTexImagesToTexture = function (texImages, texture, regions) {
      const images = [];
      if (texImages) {
        for (let i = 0; i < texImages.length; ++i) {
          const texImage = texImages[i];
          if (texImage instanceof jsbWindow.HTMLCanvasElement) {
            // Refer to HTMLCanvasElement and ImageData implementation
            images.push(texImage._data.data);
          } else if (texImage instanceof jsbWindow.HTMLImageElement) {
            // Refer to HTMLImageElement implementation
            images.push(texImage._data);
          } else {
            console.log('copyTexImagesToTexture: Convert texImages to data buffers failed');
            return;
          }
        }
      }
      oldCopyTexImagesToTextureFunc.call(this, images, texture, regions);
    };
    const oldDeviceCreateSwapchainFunc = deviceProto.createSwapchain;
    deviceProto.createSwapchain = function (info) {
      info.windowHandle = jsbWindow.windowHandle;
      return oldDeviceCreateSwapchainFunc.call(this, info);
    };
    const oldSwapchainInitializeFunc = swapchainProto.initialize;
    swapchainProto.initialize = function (info) {
      info.windowHandle = jsbWindow.windowHandler;
      oldSwapchainInitializeFunc.call(this, info);
    };
    const oldUpdate = bufferProto.update;
    bufferProto.update = function (buffer, size) {
      if (buffer.byteLength === 0) return;
      let buffSize;
      if (this.cachedUsage & 0x40) {
        // BufferUsageBit.INDIRECT
        // It is a IIndirectBuffer object.
        const {
          drawInfos
        } = buffer;
        buffer = new Uint32Array(drawInfos.length * 7);
        let baseIndex = 0;
        let drawInfo;
        for (let i = 0; i < drawInfos.length; ++i) {
          baseIndex = i * 7;
          drawInfo = drawInfos[i];
          buffer[baseIndex] = drawInfo.vertexCount;
          buffer[baseIndex + 1] = drawInfo.firstVertex;
          buffer[baseIndex + 2] = drawInfo.indexCount;
          buffer[baseIndex + 3] = drawInfo.firstIndex;
          buffer[baseIndex + 4] = drawInfo.vertexOffset;
          buffer[baseIndex + 5] = drawInfo.instanceCount;
          buffer[baseIndex + 6] = drawInfo.firstInstance;
        }
        buffSize = buffer.byteLength;
      } else if (size !== undefined) {
        buffSize = size;
      } else {
        buffSize = buffer.byteLength;
      }
      oldUpdate.call(this, buffer, buffSize);
    };
    const oldDeviceCreateBufferFun = deviceProto.createBuffer;
    deviceProto.createBuffer = function (info) {
      let buffer;
      if (info.buffer) {
        buffer = oldDeviceCreateBufferFun.call(this, info, true);
      } else {
        buffer = oldDeviceCreateBufferFun.call(this, info, false);
      }
      buffer.cachedUsage = info.usage;
      return buffer;
    };
    const oldBufferInitializeFunc = bufferProto.initialize;
    bufferProto.initialize = function (info) {
      if (info.buffer) {
        oldBufferInitializeFunc.call(this, info, true);
      } else {
        oldBufferInitializeFunc.call(this, info, false);
      }
    };
    const oldDeviceCreateTextureFun = deviceProto.createTexture;
    deviceProto.createTexture = function (info) {
      if (info.texture) {
        return oldDeviceCreateTextureFun.call(this, info, true);
      }
      return oldDeviceCreateTextureFun.call(this, info, false);
    };
    const oldTextureInitializeFunc = textureProto.initialize;
    textureProto.initialize = function (info) {
      if (info.texture) {
        oldTextureInitializeFunc.call(this, info, true);
      } else {
        oldTextureInitializeFunc.call(this, info, false);
      }
    };
    
    ///////////////////////////// optimizations /////////////////////////////
    
    // Cache dirty to avoid invoking gfx.DescriptorSet.update().
    descriptorSetProto.bindBuffer = function (binding, buffer, index) {
      this.dirtyJSB = descriptorSetProto.bindBufferJSB.call(this, binding, buffer, index || 0);
    };
    descriptorSetProto.bindSampler = function (binding, sampler, index) {
      this.dirtyJSB = descriptorSetProto.bindSamplerJSB.call(this, binding, sampler, index || 0);
    };
    descriptorSetProto.bindTexture = function (bindding, texture, index, flags) {
      this.dirtyJSB = descriptorSetProto.bindTextureJSB.call(this, bindding, texture, index || 0, flags || 0);
    };
    const oldDSUpdate = descriptorSetProto.update;
    descriptorSetProto.update = function () {
      if (!this.dirtyJSB) return;
      oldDSUpdate.call(this);
      this.dirtyJSB = false;
    };
    Object.defineProperty(deviceProto, 'uboOffsetAlignment', {
      get() {
        if (this.cachedUboOffsetAlignment === undefined) {
          this.cachedUboOffsetAlignment = this.getUboOffsetAlignment();
        }
        return this.cachedUboOffsetAlignment;
      }
    });
    
    },{"../jsbWindow":16}],10:[function(require,module,exports){
    "use strict";
    
    /****************************************************************************
     Copyright (c) 2013-2016 Chukong Technologies Inc.
     Copyright (c) 2017-2020 Xiamen Yaji Software Co., Ltd.
    
     https://www.cocos.com/
    
     Permission is hereby granted, free of charge, to any person obtaining a copy
     of this software and associated engine source code (the "Software"), a limited,
      worldwide, royalty-free, non-assignable, revocable and  non-exclusive license
     to use Cocos Creator solely to develop games on your target platforms. You shall
      not use Cocos Creator software for developing other software or tools that's
      used for developing games. You are not granted to publish, distribute,
      sublicense, and/or sell copies of Cocos Creator.
    
     The software or tools in this License Agreement are licensed, not sold.
     Xiamen Yaji Software Co., Ltd. reserves all rights not expressly granted to you.
    
     THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
     IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
     FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
     AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
     LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
     OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
     THE SOFTWARE.
     ****************************************************************************/
    
    const jsbWindow = require('../jsbWindow');
    const cacheManager = require('./jsb-cache-manager');
    const {
      downloadFile,
      readText,
      readArrayBuffer,
      readJson,
      getUserDataPath,
      initJsbDownloader
    } = require('./jsb-fs-utils');
    const REGEX = /^\w+:\/\/.*/;
    const downloader = cc.assetManager.downloader;
    const parser = cc.assetManager.parser;
    const presets = cc.assetManager.presets;
    downloader.maxConcurrency = 30;
    downloader.maxRequestsPerFrame = 60;
    presets.preload.maxConcurrency = 15;
    presets.preload.maxRequestsPerFrame = 30;
    presets.scene.maxConcurrency = 32;
    presets.scene.maxRequestsPerFrame = 64;
    presets.bundle.maxConcurrency = 32;
    presets.bundle.maxRequestsPerFrame = 64;
    let suffix = 0;
    const failureMap = {};
    const maxRetryCountFromBreakpoint = 5;
    const loadedScripts = {};
    function downloadScript(url, options, onComplete) {
      if (typeof options === 'function') {
        onComplete = options;
        options = null;
      }
      if (loadedScripts[url]) return onComplete && onComplete();
      download(url, (src, options, onComplete) => {
        if (window.oh && window.scriptEngineType === 'napi') {
          // TODO(qgh):OpenHarmony does not currently support dynamic require expressions
          window.oh.loadModule(src);
        } else if (__EDITOR__) {
          // in editor mode,require is from electron,__require is from engine
          globalThis.__require(src);
        } else {
          globalThis.require(src);
        }
        loadedScripts[url] = true;
        onComplete && onComplete(null);
      }, options, options.onFileProgress, onComplete);
    }
    function download(url, func, options, onFileProgress, onComplete) {
      const result = transformUrl(url, options);
      if (result.inLocal) {
        func(result.url, options, onComplete);
      } else if (result.inCache) {
        cacheManager.updateLastTime(url);
        func(result.url, options, (err, data) => {
          if (err) {
            cacheManager.removeCache(url);
          }
          onComplete(err, data);
        });
      } else {
        const time = Date.now();
        let storagePath = '';
        const failureRecord = failureMap[url];
        if (failureRecord) {
          storagePath = failureRecord.storagePath;
        } else if (options.__cacheBundleRoot__) {
          storagePath = `${options.__cacheBundleRoot__}/${time}${suffix++}${cc.path.extname(url)}`;
        } else {
          storagePath = `${time}${suffix++}${cc.path.extname(url)}`;
        }
        downloadFile(url, `${cacheManager.cacheDir}/${storagePath}`, options.header, onFileProgress, (err, path) => {
          if (err) {
            if (failureRecord) {
              failureRecord.retryCount++;
              if (failureRecord.retryCount >= maxRetryCountFromBreakpoint) {
                delete failureMap[url];
              }
            } else {
              failureMap[url] = {
                retryCount: 0,
                storagePath
              };
            }
            onComplete(err, null);
            return;
          }
          delete failureMap[url];
          func(path, options, (err, data) => {
            if (!err) {
              cacheManager.cacheFile(url, storagePath, options.__cacheBundleRoot__);
            }
            onComplete(err, data);
          });
        });
      }
    }
    function transformUrl(url, options) {
      let inLocal = false;
      let inCache = false;
      if (REGEX.test(url) && !url.startsWith('file://')) {
        if (options.reload) {
          return {
            url
          };
        } else {
          const cache = cacheManager.getCache(url);
          if (cache) {
            inCache = true;
            url = cache;
          }
        }
      } else {
        inLocal = true;
        if (url.startsWith('file://')) {
          url = url.replace(/^file:\/\//, '');
        }
      }
      return {
        url,
        inLocal,
        inCache
      };
    }
    function doNothing(content, options, onComplete) {
      onComplete(null, content);
    }
    function downloadAsset(url, options, onComplete) {
      download(url, doNothing, options, options.onFileProgress, onComplete);
    }
    function _getFontFamily(fontHandle) {
      const ttfIndex = fontHandle.lastIndexOf('.ttf');
      if (ttfIndex === -1) return fontHandle;
      const slashPos = fontHandle.lastIndexOf('/');
      let fontFamilyName;
      if (slashPos === -1) {
        fontFamilyName = `${fontHandle.substring(0, ttfIndex)}_LABEL`;
      } else {
        fontFamilyName = `${fontHandle.substring(slashPos + 1, ttfIndex)}_LABEL`;
      }
      if (fontFamilyName.indexOf(' ') !== -1) {
        fontFamilyName = `"${fontFamilyName}"`;
      }
      return fontFamilyName;
    }
    function parseText(url, options, onComplete) {
      readText(url, onComplete);
    }
    function parseJson(url, options, onComplete) {
      readJson(url, onComplete);
    }
    function downloadText(url, options, onComplete) {
      download(url, parseText, options, options.onFileProgress, onComplete);
    }
    function parseArrayBuffer(url, options, onComplete) {
      readArrayBuffer(url, onComplete);
    }
    function downloadJson(url, options, onComplete) {
      download(url, parseJson, options, options.onFileProgress, onComplete);
    }
    function downloadBundle(nameOrUrl, options, onComplete) {
      const bundleName = cc.path.basename(nameOrUrl);
      const version = options.version || downloader.bundleVers[bundleName];
      let url;
      if (REGEX.test(nameOrUrl) || nameOrUrl.startsWith(getUserDataPath())) {
        url = nameOrUrl;
        cacheManager.makeBundleFolder(bundleName);
      } else if (downloader.remoteBundles.indexOf(bundleName) !== -1) {
        url = `${downloader.remoteServerAddress}remote/${bundleName}`;
        cacheManager.makeBundleFolder(bundleName);
      } else {
        url = `assets/${bundleName}`;
      }
      const config = `${url}/cc.config.${version ? `${version}.` : ''}json`;
      options.__cacheBundleRoot__ = bundleName;
      downloadJson(config, options, (err, response) => {
        if (err) {
          return onComplete(err, null);
        }
        const out = response;
        out && (out.base = `${url}/`);
        if (out.hasPreloadScript) {
          const js = `${url}/index.${version ? `${version}.` : ''}${out.encrypted ? 'jsc' : `js`}`;
          downloadScript(js, options, err => {
            if (err) {
              return onComplete(err, null);
            }
            onComplete(null, out);
          });
        } else {
          onComplete(null, out);
        }
      });
    }
    function downloadArrayBuffer(url, options, onComplete) {
      download(url, parseArrayBuffer, options, options.onFileProgress, onComplete);
    }
    function loadFont(url, options, onComplete) {
      const fontFamilyName = _getFontFamily(url);
      const fontFace = new jsbWindow.FontFace(fontFamilyName, `url('${url}')`);
      jsbWindow.document.fonts.add(fontFace);
      fontFace.load();
      fontFace.loaded.then(() => {
        onComplete(null, fontFamilyName);
      }, () => {
        cc.warnID(4933, fontFamilyName);
        onComplete(null, fontFamilyName);
      });
    }
    const originParsePlist = parser.parsePlist;
    const parsePlist = function (url, options, onComplete) {
      readText(url, (err, file) => {
        if (err) return onComplete(err);
        originParsePlist(file, options, onComplete);
      });
    };
    parser.parsePVRTex = downloader.downloadDomImage;
    parser.parsePKMTex = downloader.downloadDomImage;
    parser.parseASTCTex = downloader.downloadDomImage;
    parser.parsePlist = parsePlist;
    downloader.downloadScript = downloadScript;
    downloader._downloadArrayBuffer = downloadArrayBuffer;
    downloader._downloadJson = downloadJson;
    function loadAudioPlayer(url, options, onComplete) {
      cc.AudioPlayer.load(url).then(player => {
        const audioMeta = {
          player,
          url,
          duration: player.duration,
          type: player.type
        };
        onComplete(null, audioMeta);
      }).catch(err => {
        onComplete(err);
      });
    }
    downloader.register({
      // JS
      '.js': downloadScript,
      '.jsc': downloadScript,
      // Images
      '.png': downloadAsset,
      '.jpg': downloadAsset,
      '.bmp': downloadAsset,
      '.jpeg': downloadAsset,
      '.gif': downloadAsset,
      '.ico': downloadAsset,
      '.tiff': downloadAsset,
      '.webp': downloadAsset,
      '.image': downloadAsset,
      '.pvr': downloadAsset,
      '.pkm': downloadAsset,
      '.astc': downloadAsset,
      // Audio
      '.mp3': downloadAsset,
      '.ogg': downloadAsset,
      '.wav': downloadAsset,
      '.m4a': downloadAsset,
      // Video
      '.mp4': downloadAsset,
      '.avi': downloadAsset,
      '.mov': downloadAsset,
      '.mpg': downloadAsset,
      '.mpeg': downloadAsset,
      '.rm': downloadAsset,
      '.rmvb': downloadAsset,
      // Text
      '.txt': downloadAsset,
      '.xml': downloadAsset,
      '.vsh': downloadAsset,
      '.fsh': downloadAsset,
      '.atlas': downloadAsset,
      '.tmx': downloadAsset,
      '.tsx': downloadAsset,
      '.fnt': downloadAsset,
      '.plist': downloadAsset,
      '.json': downloadJson,
      '.ExportJson': downloadAsset,
      '.binary': downloadAsset,
      '.bin': downloadAsset,
      '.dbbin': downloadAsset,
      '.skel': downloadAsset,
      // Font
      '.font': downloadAsset,
      '.eot': downloadAsset,
      '.ttf': downloadAsset,
      '.woff': downloadAsset,
      '.svg': downloadAsset,
      '.ttc': downloadAsset,
      bundle: downloadBundle,
      default: downloadText
    });