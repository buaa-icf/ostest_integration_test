(function(){function r(e,n,t){function o(i,f){if(!n[i]){if(!e[i]){var c="function"==typeof require&&require;if(!f&&c)return c(i,!0);if(u)return u(i,!0);var a=new Error("Cannot find module '"+i+"'");throw a.code="MODULE_NOT_FOUND",a}var p=n[i]={exports:{}};e[i][0].call(p.exports,function(r){var n=e[i][1][r];return o(n||r)},p,p.exports,r,e,n,t)}return n[i].exports}for(var u="function"==typeof require&&require,i=0;i<t.length;i++)o(t[i]);return o}return r})()({1:[function(require,module,exports){
    // shim for using process in browser
    var process = module.exports = {};
    
    // cached from whatever global is present so that test runners that stub it
    // don't break things.  But we need to wrap it in a try catch in case it is
    // wrapped in strict mode code which doesn't define any globals.  It's inside a
    // function because try/catches deoptimize in certain engines.
    
    var cachedSetTimeout;
    var cachedClearTimeout;
    
    function defaultSetTimout() {
        throw new Error('setTimeout has not been defined');
    }
    function defaultClearTimeout () {
        throw new Error('clearTimeout has not been defined');
    }
    (function () {
        try {
            if (typeof setTimeout === 'function') {
                cachedSetTimeout = setTimeout;
            } else {
                cachedSetTimeout = defaultSetTimout;
            }
        } catch (e) {
            cachedSetTimeout = defaultSetTimout;
        }
        try {
            if (typeof clearTimeout === 'function') {
                cachedClearTimeout = clearTimeout;
            } else {
                cachedClearTimeout = defaultClearTimeout;
            }
        } catch (e) {
            cachedClearTimeout = defaultClearTimeout;
        }
    } ())
    function runTimeout(fun) {
        if (cachedSetTimeout === setTimeout) {
            //normal enviroments in sane situations
            return setTimeout(fun, 0);
        }
        // if setTimeout wasn't available but was latter defined
        if ((cachedSetTimeout === defaultSetTimout || !cachedSetTimeout) && setTimeout) {
            cachedSetTimeout = setTimeout;
            return setTimeout(fun, 0);
        }
        try {
            // when when somebody has screwed with setTimeout but no I.E. maddness
            return cachedSetTimeout(fun, 0);
        } catch(e){
            try {
                // When we are in I.E. but the script has been evaled so I.E. doesn't trust the global object when called normally
                return cachedSetTimeout.call(null, fun, 0);
            } catch(e){
                // same as above but when it's a version of I.E. that must have the global object for 'this', hopfully our context correct otherwise it will throw a global error
                return cachedSetTimeout.call(this, fun, 0);
            }
        }
    
    
    }
    function runClearTimeout(marker) {
        if (cachedClearTimeout === clearTimeout) {
            //normal enviroments in sane situations
            return clearTimeout(marker);
        }
        // if clearTimeout wasn't available but was latter defined
        if ((cachedClearTimeout === defaultClearTimeout || !cachedClearTimeout) && clearTimeout) {
            cachedClearTimeout = clearTimeout;
            return clearTimeout(marker);
        }
        try {
            // when when somebody has screwed with setTimeout but no I.E. maddness
            return cachedClearTimeout(marker);
        } catch (e){
            try {
                // When we are in I.E. but the script has been evaled so I.E. doesn't  trust the global object when called normally
                return cachedClearTimeout.call(null, marker);
            } catch (e){
                // same as above but when it's a version of I.E. that must have the global object for 'this', hopfully our context correct otherwise it will throw a global error.
                // Some versions of I.E. have different rules for clearTimeout vs setTimeout
                return cachedClearTimeout.call(this, marker);
            }
        }
    
    
    
    }
    var queue = [];
    var draining = false;
    var currentQueue;
    var queueIndex = -1;
    
    function cleanUpNextTick() {
        if (!draining || !currentQueue) {
            return;
        }
        draining = false;
        if (currentQueue.length) {
            queue = currentQueue.concat(queue);
        } else {
            queueIndex = -1;
        }
        if (queue.length) {
            drainQueue();
        }
    }
    
    function drainQueue() {
        if (draining) {
            return;
        }
        var timeout = runTimeout(cleanUpNextTick);
        draining = true;
    
        var len = queue.length;
        while(len) {
            currentQueue = queue;
            queue = [];
            while (++queueIndex < len) {
                if (currentQueue) {
                    currentQueue[queueIndex].run();
                }
            }
            queueIndex = -1;
            len = queue.length;
        }
        currentQueue = null;
        draining = false;
        runClearTimeout(timeout);
    }
    
    process.nextTick = function (fun) {
        var args = new Array(arguments.length - 1);
        if (arguments.length > 1) {
            for (var i = 1; i < arguments.length; i++) {
                args[i - 1] = arguments[i];
            }
        }
        queue.push(new Item(fun, args));
        if (queue.length === 1 && !draining) {
            runTimeout(drainQueue);
        }
    };
    
    // v8 likes predictible objects
    function Item(fun, array) {
        this.fun = fun;
        this.array = array;
    }
    Item.prototype.run = function () {
        this.fun.apply(null, this.array);
    };
    process.title = 'browser';
    process.browser = true;
    process.env = {};
    process.argv = [];
    process.version = ''; // empty string to avoid regexp issues
    process.versions = {};
    
    function noop() {}
    
    process.on = noop;
    process.addListener = noop;
    process.once = noop;
    process.off = noop;
    process.removeListener = noop;
    process.removeAllListeners = noop;
    process.emit = noop;
    process.prependListener = noop;
    process.prependOnceListener = noop;
    
    process.listeners = function (name) { return [] }
    
    process.binding = function (name) {
        throw new Error('process.binding is not supported');
    };
    
    process.cwd = function () { return '/' };
    process.chdir = function (dir) {
        throw new Error('process.chdir is not supported');
    };
    process.umask = function() { return 0; };
    
    },{}],2:[function(require,module,exports){
    (function (setImmediate,clearImmediate){(function (){
    var nextTick = require('process/browser.js').nextTick;
    var apply = Function.prototype.apply;
    var slice = Array.prototype.slice;
    var immediateIds = {};
    var nextImmediateId = 0;
    
    // DOM APIs, for completeness
    
    exports.setTimeout = function() {
      return new Timeout(apply.call(setTimeout, window, arguments), clearTimeout);
    };
    exports.setInterval = function() {
      return new Timeout(apply.call(setInterval, window, arguments), clearInterval);
    };
    exports.clearTimeout =
    exports.clearInterval = function(timeout) { timeout.close(); };
    
    function Timeout(id, clearFn) {
      this._id = id;
      this._clearFn = clearFn;
    }
    Timeout.prototype.unref = Timeout.prototype.ref = function() {};
    Timeout.prototype.close = function() {
      this._clearFn.call(window, this._id);
    };
    
    // Does not start the time, just sets up the members needed.
    exports.enroll = function(item, msecs) {
      clearTimeout(item._idleTimeoutId);
      item._idleTimeout = msecs;
    };
    
    exports.unenroll = function(item) {
      clearTimeout(item._idleTimeoutId);
      item._idleTimeout = -1;
    };
    
    exports._unrefActive = exports.active = function(item) {
      clearTimeout(item._idleTimeoutId);
    
      var msecs = item._idleTimeout;
      if (msecs >= 0) {
        item._idleTimeoutId = setTimeout(function onTimeout() {
          if (item._onTimeout)
            item._onTimeout();
        }, msecs);
      }
    };
    
    // That's not how node.js implements it but the exposed api is the same.
    exports.setImmediate = typeof setImmediate === "function" ? setImmediate : function(fn) {
      var id = nextImmediateId++;
      var args = arguments.length < 2 ? false : slice.call(arguments, 1);
    
      immediateIds[id] = true;
    
      nextTick(function onNextTick() {
        if (immediateIds[id]) {
          // fn.call() is faster so we optimize for the common use-case
          // @see http://jsperf.com/call-apply-segu
          if (args) {
            fn.apply(null, args);
          } else {
            fn.call(null);
          }
          // Prevent ids from leaking
          exports.clearImmediate(id);
        }
      });
    
      return id;
    };
    
    exports.clearImmediate = typeof clearImmediate === "function" ? clearImmediate : function(id) {
      delete immediateIds[id];
    };
    }).call(this)}).call(this,require("timers").setImmediate,require("timers").clearImmediate)
    },{"process/browser.js":1,"timers":2}],3:[function(require,module,exports){
    (function (global){(function (){
    "use strict";
    
    /* Blob.js
     * A Blob implementation.
     * 2017-11-15
     *
     * By Eli Grey, http://eligrey.com
     * By Devin Samarin, https://github.com/dsamarin
     * License: MIT
     *   See https://github.com/eligrey/Blob.js/blob/master/LICENSE.md
     */
    
    /*global self, unescape */
    /*jslint bitwise: true, regexp: true, confusion: true, es5: true, vars: true, white: true,
      plusplus: true */
    
    /*! @source http://purl.eligrey.com/github/Blob.js/blob/master/Blob.js */
    
    (function (global) {
      (function (factory) {
        if (typeof define === 'function' && define.amd) {
          // AMD. Register as an anonymous module.
          define(['exports'], factory);
        } else if (typeof exports === 'object' && typeof exports.nodeName !== 'string') {
          // CommonJS
          factory(exports);
        } else {
          // Browser globals
          factory(global);
        }
      })(exports => {
        exports.URL = global.URL || global.webkitURL;
        if (global.Blob && global.URL) {
          try {
            new Blob();
            return;
          } catch (e) {}
        }
    
        // Internally we use a BlobBuilder implementation to base Blob off of
        // in order to support older browsers that only have BlobBuilder
        const BlobBuilder = global.BlobBuilder || global.WebKitBlobBuilder || global.MozBlobBuilder || function () {
          const get_class = function (object) {
            return Object.prototype.toString.call(object).match(/^\[object\s(.*)\]$/)[1];
          };
          const FakeBlobBuilder = function BlobBuilder() {
            this.data = [];
          };
          const FakeBlob = function Blob(data, type, encoding) {
            this.data = data;
            this.size = data.length;
            this.type = type;
            this.encoding = encoding;
          };
          const FBB_proto = FakeBlobBuilder.prototype;
          const FB_proto = FakeBlob.prototype;
          const FileReaderSync = global.FileReaderSync;
          const FileException = function (type) {
            this.code = this[this.name = type];
          };
          const file_ex_codes = ('NOT_FOUND_ERR SECURITY_ERR ABORT_ERR NOT_READABLE_ERR ENCODING_ERR ' + 'NO_MODIFICATION_ALLOWED_ERR INVALID_STATE_ERR SYNTAX_ERR').split(' ');
          let file_ex_code = file_ex_codes.length;
          const real_URL = global.URL || global.webkitURL || exports;
          const real_create_object_URL = real_URL.createObjectURL;
          const real_revoke_object_URL = real_URL.revokeObjectURL;
          let URL = real_URL;
          const btoa = global.btoa;
          const atob = global.atob;
          const ArrayBuffer = global.ArrayBuffer;
          const Uint8Array = global.Uint8Array;
          const origin = /^[\w-]+:\/*\[?[\w\.:-]+\]?(?::[0-9]+)?/;
          FakeBlob.fake = FB_proto.fake = true;
          while (file_ex_code--) {
            FileException.prototype[file_ex_codes[file_ex_code]] = file_ex_code + 1;
          }
          // Polyfill URL
          if (!real_URL.createObjectURL) {
            URL = exports.URL = function (uri) {
              const uri_info = document.createElementNS('http://www.w3.org/1999/xhtml', 'a');
              let uri_origin;
              uri_info.href = uri;
              if (!('origin' in uri_info)) {
                if (uri_info.protocol.toLowerCase() === 'data:') {
                  uri_info.origin = null;
                } else {
                  uri_origin = uri.match(origin);
                  uri_info.origin = uri_origin && uri_origin[1];
                }
              }
              return uri_info;
            };
          }
          URL.createObjectURL = function (blob) {
            let type = blob.type;
            let data_URI_header;
            if (type === null) {
              type = 'application/octet-stream';
            }
            if (blob instanceof FakeBlob) {
              data_URI_header = `data:${type}`;
              if (blob.encoding === 'base64') {
                return `${data_URI_header};base64,${blob.data}`;
              } else if (blob.encoding === 'URI') {
                return `${data_URI_header},${decodeURIComponent(blob.data)}`;
              }
              if (btoa) {
                return `${data_URI_header};base64,${btoa(blob.data)}`;
              } else {
                return `${data_URI_header},${encodeURIComponent(blob.data)}`;
              }
            } else if (real_create_object_URL) {
              return real_create_object_URL.call(real_URL, blob);
            }
          };
          URL.revokeObjectURL = function (object_URL) {
            if (object_URL.substring(0, 5) !== 'data:' && real_revoke_object_URL) {
              real_revoke_object_URL.call(real_URL, object_URL);
            }
          };
          FBB_proto.append = function (data /*, endings*/) {
            const bb = this.data;
            // decode data to a binary string
            if (Uint8Array && (data instanceof ArrayBuffer || data instanceof Uint8Array)) {
              let str = '';
              const buf = new Uint8Array(data);
              let i = 0;
              const buf_len = buf.length;
              for (; i < buf_len; i++) {
                str += String.fromCharCode(buf[i]);
              }
              bb.push(str);
            } else if (get_class(data) === 'Blob' || get_class(data) === 'File') {
              if (FileReaderSync) {
                const fr = new FileReaderSync();
                bb.push(fr.readAsBinaryString(data));
              } else {
                // async FileReader won't work as BlobBuilder is sync
                throw new FileException('NOT_READABLE_ERR');
              }
            } else if (data instanceof FakeBlob) {
              if (data.encoding === 'base64' && atob) {
                bb.push(atob(data.data));
              } else if (data.encoding === 'URI') {
                bb.push(decodeURIComponent(data.data));
              } else if (data.encoding === 'raw') {
                bb.push(data.data);
              }
            } else {
              if (typeof data !== 'string') {
                data += ''; // convert unsupported types to strings
              }
              // decode UTF-16 to binary string
              bb.push(unescape(encodeURIComponent(data)));
            }
          };
          FBB_proto.getBlob = function (type) {
            if (!arguments.length) {
              type = null;
            }
            return new FakeBlob(this.data.join(''), type, 'raw');
          };
          FBB_proto.toString = function () {
            return '[object BlobBuilder]';
          };
          FB_proto.slice = function (start, end, type) {
            const args = arguments.length;
            if (args < 3) {
              type = null;
            }
            return new FakeBlob(this.data.slice(start, args > 1 ? end : this.data.length), type, this.encoding);
          };
          FB_proto.toString = function () {
            return '[object Blob]';
          };
          FB_proto.close = function () {
            this.size = 0;
            delete this.data;
          };
          return FakeBlobBuilder;
        }();
        exports.Blob = function (blobParts, options) {
          const type = options ? options.type || '' : '';
          const builder = new BlobBuilder();
          if (blobParts) {
            for (let i = 0, len = blobParts.length; i < len; i++) {
              if (Uint8Array && blobParts[i] instanceof Uint8Array) {
                builder.append(blobParts[i].buffer);
              } else {
                builder.append(blobParts[i]);
              }
            }
          }
          const blob = builder.getBlob(type);
          if (!blob.slice && blob.webkitSlice) {
            blob.slice = blob.webkitSlice;
          }
          return blob;
        };
        const getPrototypeOf = Object.getPrototypeOf || function (object) {
          return object.__proto__;
        };
        exports.Blob.prototype = getPrototypeOf(new exports.Blob());
      });
    })(typeof self !== 'undefined' && self || typeof window !== 'undefined' && window || typeof global !== 'undefined' && global || typeof globalThis !== 'undefined' && globalThis || (void 0).content || void 0);
    
    }).call(this)}).call(this,typeof global !== "undefined" ? global : typeof self !== "undefined" ? self : typeof window !== "undefined" ? window : {})
    },{}],4:[function(require,module,exports){
    "use strict";
    
    !function () {
      function e(e) {
        this.message = e;
      }
      var t = "undefined" != typeof exports ? exports : "undefined" != typeof self ? self : $.global,
        r = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=";
      e.prototype = new Error(), e.prototype.name = "InvalidCharacterError", t.btoa || (t.btoa = function (t) {
        for (var o, n, a = String(t), i = 0, f = r, c = ""; a.charAt(0 | i) || (f = "=", i % 1); c += f.charAt(63 & o >> 8 - i % 1 * 8)) {
          if (n = a.charCodeAt(i += .75), n > 255) throw new e("'btoa' failed: The string to be encoded contains characters outside of the Latin1 range.");
          o = o << 8 | n;
        }
        return c;
      }), t.atob || (t.atob = function (t) {
        var o = String(t).replace(/[=]+$/, "");
        if (o.length % 4 == 1) throw new e("'atob' failed: The string to be decoded is not correctly encoded.");
        for (var n, a, i = 0, f = 0, c = ""; a = o.charAt(f++); ~a && (n = i % 4 ? 64 * n + a : a, i++ % 4) ? c += String.fromCharCode(255 & n >> (-2 * i & 6)) : 0) a = r.indexOf(a);
        return c;
      });
    }();
    
    },{}],5:[function(require,module,exports){
    "use strict";
    
    globalThis.__EDITOR__ = globalThis.process && 'electron' in globalThis.process.versions;
    require('./wasm');
    const jsbWindow = require('../jsbWindow');
    jsb.device = jsb.Device; // cc namespace will be reset to {} in creator, use jsb namespace instead.
    
    const {
      btoa,
      atob
    } = require('./base64/base64.min');
    jsbWindow.btoa = btoa;
    jsbWindow.atob = atob;
    const {
      Blob,
      URL
    } = require('./Blob');
    jsbWindow.Blob = Blob;
    jsbWindow.URL = URL;
    jsbWindow.DOMParser = require('./xmldom/dom-parser').DOMParser;
    jsbWindow.XMLHttpRequest = jsb.XMLHttpRequest;
    jsbWindow.SocketIO = jsb.SocketIO;
    jsbWindow.WebSocket = jsb.WebSocket;
    require('./jsb_prepare');
    require('./jsb-adapter');
    require('./jsb_audioengine');
    require('./jsb_input');
    let _oldRequestFrameCallback = null;
    let _requestAnimationFrameID = 0;
    const _requestAnimationFrameCallbacks = {};
    let _firstTick = true;
    jsbWindow.requestAnimationFrame = function (cb) {
      const id = ++_requestAnimationFrameID;
      _requestAnimationFrameCallbacks[id] = cb;
      return id;
    };
    jsbWindow.cancelAnimationFrame = function (id) {
      delete _requestAnimationFrameCallbacks[id];
    };
    function tick(nowMilliSeconds) {
      if (_firstTick) {
        _firstTick = false;
        if (jsbWindow.onload) {
          const event = new Event('load');
          event._target = globalThis;
          jsbWindow.onload(event);
        }
      }
      fireTimeout(nowMilliSeconds);
      for (const id in _requestAnimationFrameCallbacks) {
        _oldRequestFrameCallback = _requestAnimationFrameCallbacks[id];
        if (_oldRequestFrameCallback) {
          delete _requestAnimationFrameCallbacks[id];
          _oldRequestFrameCallback(nowMilliSeconds);
        }
      }
    }
    let _timeoutIDIndex = 0;
    class TimeoutInfo {
      constructor(cb, delay, isRepeat, target, args) {
        this.cb = cb;
        this.id = ++_timeoutIDIndex;
        this.start = performance.now();
        this.delay = delay;
        this.isRepeat = isRepeat;
        this.target = target;
        this.args = args;
      }
    }
    const _timeoutInfos = {};
    function fireTimeout(nowMilliSeconds) {
      let info;
      for (const id in _timeoutInfos) {
        info = _timeoutInfos[id];
        if (info && info.cb) {
          if (nowMilliSeconds - info.start >= info.delay) {
            // console.log(`fireTimeout: id ${id}, start: ${info.start}, delay: ${info.delay}, now: ${nowMilliSeconds}`);
            if (typeof info.cb === 'string') {
              Function(info.cb)();
            } else if (typeof info.cb === 'function') {
              info.cb.apply(info.target, info.args);
            }
            if (info.isRepeat) {
              info.start = nowMilliSeconds;
            } else {
              delete _timeoutInfos[id];
            }
          }
        }
      }
    }
    function createTimeoutInfo(prevFuncArgs, isRepeat) {
      const cb = prevFuncArgs[0];
      if (!cb) {
        console.error('createTimeoutInfo doesn\'t pass a callback ...');
        return 0;
      }
      const delay = prevFuncArgs.length > 1 ? prevFuncArgs[1] : 0;
      let args;
      if (prevFuncArgs.length > 2) {
        args = Array.prototype.slice.call(prevFuncArgs, 2);
      }
      const info = new TimeoutInfo(cb, delay, isRepeat, this, args);
      _timeoutInfos[info.id] = info;
      return info.id;
    }
    if (window.oh && window.scriptEngineType === 'napi') {
      console.log(`Openharmony with napi has alreay implemented setTimeout/setInterval`);
    } else {
      // In openharmony, the setTimeout function will conflict with the timer of the worker thread and cause a crash,
      // so you need to use the default timer
      jsbWindow.setTimeout = function (cb) {
        return createTimeoutInfo(arguments, false);
      };
      jsbWindow.clearTimeout = function (id) {
        delete _timeoutInfos[id];
      };
      jsbWindow.setInterval = function (cb) {
        return createTimeoutInfo(arguments, true);
      };
      jsbWindow.clearInterval = jsbWindow.clearTimeout;
    }
    jsbWindow.alert = console.error.bind(console);
    
    // File utils (Temporary, won't be accessible)
    if (typeof jsb.FileUtils !== 'undefined') {
      jsb.fileUtils = jsb.FileUtils.getInstance();
      delete jsb.FileUtils;
    }
    jsbWindow.XMLHttpRequest.prototype.addEventListener = function (eventName, listener, options) {
      this[`on${eventName}`] = listener;
    };
    jsbWindow.XMLHttpRequest.prototype.removeEventListener = function (eventName, listener, options) {
      this[`on${eventName}`] = null;
    };
    
    // SocketIO
    if (jsbWindow.SocketIO) {
      jsbWindow.io = jsbWindow.SocketIO;
      jsbWindow.SocketIO.prototype._Emit = jsbWindow.SocketIO.prototype.emit;
      jsbWindow.SocketIO.prototype.emit = function (uri, delegate) {
        if (typeof delegate === 'object') {
          delegate = JSON.stringify(delegate);
        }
        this._Emit(uri, delegate);
      };
    }
    jsbWindow.gameTick = tick;
    
    // generate get set function
    jsb.generateGetSet = function (moduleObj) {
      for (const classKey in moduleObj) {
        const classProto = moduleObj[classKey] && moduleObj[classKey].prototype;
        if (!classProto) continue;
        for (const getName in classProto) {
          const getPos = getName.search(/^get/);
          if (getPos == -1) continue;
          let propName = getName.replace(/^get/, '');
          const nameArr = propName.split('');
          const lowerFirst = nameArr[0].toLowerCase();
          const upperFirst = nameArr[0].toUpperCase();
          nameArr.splice(0, 1);
          const left = nameArr.join('');
          propName = lowerFirst + left;
          const setName = `set${upperFirst}${left}`;
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
    for (const key in jsbWindow) {
      if (globalThis[key] === undefined) {
        globalThis[key] = jsbWindow[key];
      }
    }
    if (typeof globalThis.window === 'undefined') {
      globalThis.window = globalThis;
    }
    
    // promise polyfill relies on setTimeout implementation
    require('./promise.min');
    
    },{"../jsbWindow":44,"./Blob":3,"./base64/base64.min":4,"./jsb-adapter":30,"./jsb_audioengine":35,"./jsb_input":36,"./jsb_prepare":37,"./promise.min":38,"./wasm":39,"./xmldom/dom-parser":40}],6:[function(require,module,exports){
    "use strict";
    
    const ImageData = require('./ImageData');
    class Context2DAttribute {
      constructor() {
        this.lineWidth = undefined;
        this.lineJoin = undefined;
        this.fillStyle = undefined;
        this.font = undefined;
        this.lineCap = undefined;
        this.textAlign = undefined;
        this.textBaseline = undefined;
        this.strokeStyle = undefined;
        this.globalCompositeOperation = undefined;
        this.shadowBlur = undefined;
        this.shadowColor = undefined;
        this.shadowOffsetX = undefined;
        this.shadowOffsetY = undefined;
      }
    }
    jsb.CanvasRenderingContext2D.prototype._ctor = function () {
      this.__nativeRefs = {};
    };
    class CanvasRenderingContext2D {
      constructor(width, height) {
        this._nativeObj = new jsb.CanvasRenderingContext2D(width, height);
        this._attris = new Context2DAttribute();
      }
    
      // Do not cache width and height, as they will change buffer and sync to JS.
      get width() {
        return this._nativeObj.width;
      }
      set width(val) {
        this._nativeObj.width = val;
      }
      get height() {
        return this._nativeObj.height;
      }
      set height(val) {
        this._nativeObj.height = val;
      }
      get lineWidth() {
        return this._attris.lineWidth;
      }
      set lineWidth(val) {
        this._attris.lineWidth = val;
      }
      get lineJoin() {
        return this._attris.lineJoin;
      }
      set lineJoin(val) {
        this._attris.lineJoin = val;
      }
      get fillStyle() {
        return this._attris.fillStyle;
      }
      set fillStyle(val) {
        this._attris.fillStyle = val;
      }
      get font() {
        return this._attris.font;
      }
      set font(val) {
        this._attris.font = val;
      }
      get lineCap() {
        return this._attris.lineCap;
      }
      set lineCap(val) {
        this._attris.lineCap = val;
      }
      get textAlign() {
        return this._attris.textAlign;
      }
      set textAlign(val) {
        this._attris.textAlign = val;
      }
      get textBaseline() {
        return this._attris.textBaseline;
      }
      set textBaseline(val) {
        this._attris.textBaseline = val;
      }
      get strokeStyle() {
        return this._attris.strokeStyle;
      }
      set strokeStyle(val) {
        this._attris.strokeStyle = val;
      }
      get globalCompositeOperation() {
        return this._attris.globalCompositeOperation;
      }
      set globalCompositeOperation(val) {
        this._attris.globalCompositeOperation = val;
      }
      get shadowBlur() {
        return this._attris.shadowBlur;
      }
      set shadowBlur(val) {
        this._attris.shadowBlur = val;
      }
      get shadowColor() {
        return this._attris.shadowColor;
      }
      set shadowColor(val) {
        this._attris.shadowColor = val;
      }
      get shadowOffsetX() {
        return this._attris.shadowOffsetX;
      }
      set shadowOffsetX(val) {
        this._attris.shadowOffsetX = val;
      }
      get shadowOffsetY() {
        return this._attris.shadowOffsetY;
      }
      set shadowOffsetY(val) {
        this._attris.shadowOffsetY = val;
      }
      restore() {
        this._nativeObj.restore();
      }
      moveTo(x, y) {
        this._nativeObj.moveTo(x, y);
      }
      lineTo(x, y) {
        this._nativeObj.lineTo(x, y);
      }
      setTransform(a, b, c, d, e, f) {
        this._nativeObj.setTransform(a, b, c, d, e, f);
      }
      stroke() {
        this._canvas._dataInner = null;
        this._nativeObj.stroke();
      }
      measureText(text) {
        return this._nativeObj.measureText(text, this._attris);
      }
      fill() {
        this._canvas._dataInner = null;
        this._nativeObj.fill();
      }
      _fillImageData(data, width, height, offsetX, offsetY) {
        this._canvas._dataInner = null;
        this._nativeObj._fillImageData(data, width, height, offsetX, offsetY);
      }
      scale(x, y) {
        this._nativeObj.scale(x, y);
      }
      clearRect(x, y, width, height) {
        this._canvas._dataInner = null;
        this._nativeObj.clearRect(x, y, width, height);
      }
      transform(a, b, c, d, e, f) {
        this._nativeObj.transform(a, b, c, d, e, f);
      }
      fillText(text, x, y, maxWidth) {
        this._canvas._dataInner = null;
        this._nativeObj.fillText(text, x, y, maxWidth, this._attris);
      }
      strokeText(text, x, y, maxWidth) {
        this._canvas._dataInner = null;
        this._nativeObj.strokeText(text, x, y, maxWidth, this._attris);
      }
      save() {
        this._nativeObj.save();
      }
      fillRect(x, y, width, height) {
        this._canvas._dataInner = null;
        this._nativeObj.fillRect(x, y, width, height, this._attris);
      }
      fetchData() {
        if (typeof this._nativeObj.fetchData !== 'undefined') {
          this._nativeObj.fetchData();
        }
      }
      rotate(angle) {
        this._nativeObj.rotate(angle);
      }
      beginPath() {
        this._nativeObj.beginPath();
      }
      rect(x, y, width, height) {
        this._nativeObj.rect(x, y, width, height);
      }
      translate(x, y) {
        this._nativeObj.translate(x, y);
      }
      createLinearGradient(x0, y0, x1, y1) {
        return this._nativeObj.createLinearGradient(x0, y0, x1, y1);
      }
      closePath() {
        this._nativeObj.closePath();
      }
    
      // void ctx.putImageData(imagedata, dx, dy);
      // void ctx.putImageData(imagedata, dx, dy, dirtyX, dirtyY, dirtyWidth, dirtyHeight);
      putImageData(imageData, dx, dy, dirtyX, dirtyY, dirtyWidth, dirtyHeight) {
        this._canvas._data = imageData;
      }
    
      // ImageData ctx.createImageData(imagedata);
      // ImageData ctx.createImageData(width, height);
      createImageData(args1, args2) {
        if (typeof args1 === 'number' && typeof args2 === 'number') {
          return new ImageData(args1, args2);
        } else if (args1 instanceof ImageData) {
          return new ImageData(args1.data, args1.width, args1.height);
        }
      }
    
      // Comment it seems it is not used.
      // // ImageData ctx.getImageData(sx, sy, sw, sh);
      // getImageData (sx, sy, sw, sh) {
      //     var canvasWidth = this._canvas._width;
      //     var canvasHeight = this._canvas._height;
      //     var canvasBuffer = this._canvas._data.data;
      //     // image rect may bigger that canvas rect
      //     var maxValidSH = (sh + sy) < canvasHeight ? sh : (canvasHeight - sy);
      //     var maxValidSW = (sw + sx) < canvasWidth ? sw : (canvasWidth - sx);
      //     var imgBuffer = new Uint8ClampedArray(sw * sh * 4);
      //     for (var y = 0; y < maxValidSH; y++) {
      //         for (var x = 0; x < maxValidSW; x++) {
      //             var canvasPos = (y + sy) * canvasWidth + (x + sx);
      //             var imgPos = y * sw + x;
      //             imgBuffer[imgPos * 4 + 0] = canvasBuffer[canvasPos * 4 + 0];
      //             imgBuffer[imgPos * 4 + 1] = canvasBuffer[canvasPos * 4 + 1];
      //             imgBuffer[imgPos * 4 + 2] = canvasBuffer[canvasPos * 4 + 2];
      //             imgBuffer[imgPos * 4 + 3] = canvasBuffer[canvasPos * 4 + 3];
      //         }
      //     }
      //     return new ImageData(imgBuffer, sw, sh);
      // }
    
      _setCanvasBufferUpdatedCallback(func) {
        this._nativeObj._setCanvasBufferUpdatedCallback(func);
      }
    }
    module.exports = CanvasRenderingContext2D;
    
    },{"./ImageData":22}],7:[function(require,module,exports){
    "use strict";
    
    class DOMRect {
      constructor(x, y, width, height) {
        this.x = x ? x : 0;
        this.y = y ? y : 0;
        this.width = width ? width : 0;
        this.height = height ? height : 0;
        this.left = this.x;
        this.top = this.y;
        this.right = this.x + this.width;
        this.bottom = this.y + this.height;
      }
    }
    module.exports = DOMRect;
    
    },{}],8:[function(require,module,exports){
    "use strict";
    
    const Event = require('./Event');
    class DeviceMotionEvent extends Event {
      constructor(initArgs) {
        super('devicemotion');
        if (initArgs) {
          this._acceleration = initArgs.acceleration ? initArgs.acceleration : {
            x: 0,
            y: 0,
            z: 0
          };
          this._accelerationIncludingGravity = initArgs.accelerationIncludingGravity ? initArgs.accelerationIncludingGravity : {
            x: 0,
            y: 0,
            z: 0
          };
          this._rotationRate = initArgs.rotationRate ? initArgs.rotationRate : {
            alpha: 0,
            beta: 0,
            gamma: 0
          };
          this._interval = initArgs.interval;
        } else {
          this._acceleration = {
            x: 0,
            y: 0,
            z: 0
          };
          this._accelerationIncludingGravity = {
            x: 0,
            y: 0,
            z: 0
          };
          this._rotationRate = {
            alpha: 0,
            beta: 0,
            gamma: 0
          };
          this._interval = 0;
        }
      }
      get acceleration() {
        return this._acceleration;
      }
      get accelerationIncludingGravity() {
        return this._accelerationIncludingGravity;
      }
      get rotationRate() {
        return this._rotationRate;
      }
      get interval() {
        return this._interval;
      }
    }
    module.exports = DeviceMotionEvent;
    
    },{"./Event":10}],9:[function(require,module,exports){
    "use strict";
    
    const Node = require('./Node');
    const DOMRect = require('./DOMRect');
    const jsbWindow = require('../../jsbWindow');
    class Element extends Node {
      constructor() {
        super();
        this.className = '';
        this.children = [];
        this.clientLeft = 0;
        this.clientTop = 0;
        this.scrollLeft = 0;
        this.scrollTop = 0;
      }
      get clientWidth() {
        return 0;
      }
      get clientHeight() {
        return 0;
      }
      getBoundingClientRect() {
        return new DOMRect(0, 0, jsbWindow.innerWidth, jsbWindow.innerHeight);
      }
    
      // attrName is a string that names the attribute to be removed from element.
      removeAttribute(attrName) {}
    }
    module.exports = Element;
    
    },{"../../jsbWindow":44,"./DOMRect":7,"./Node":26}],10:[function(require,module,exports){
    "use strict";
    
    /**
     * @see https://dom.spec.whatwg.org/#interface-event
     * @private
     */
    /**
     * The event wrapper.
     * @constructor
     * @param {EventTarget} eventTarget The event target of this dispatching.
     * @param {Event|{type:string}} event The original event to wrap.
     */
    class Event {
      constructor(type, eventInit) {
        this._type = type;
        this._target = null;
        this._eventPhase = 2;
        this._currentTarget = null;
        this._canceled = false;
        this._stopped = false; // The flag to stop propagation immediately.
        this._passiveListener = null;
        this._timeStamp = Date.now();
      }
    
      /**
       * The type of this event.
       * @type {string}
       */
      get type() {
        return this._type;
      }
    
      /**
       * The target of this event.
       * @type {EventTarget}
       */
      get target() {
        return this._target;
      }
    
      /**
       * The target of this event.
       * @type {EventTarget}
       */
      get currentTarget() {
        return this._currentTarget;
      }
      get isTrusted() {
        // https://heycam.github.io/webidl/#Unforgeable
        return false;
      }
      get timeStamp() {
        return this._timeStamp;
      }
    
      /**
       * @returns {EventTarget[]} The composed path of this event.
       */
      composedPath() {
        const currentTarget = this._currentTarget;
        if (currentTarget === null) {
          return [];
        }
        return [currentTarget];
      }
    
      /**
       * The target of this event.
       * @type {number}
       */
      get eventPhase() {
        return this._eventPhase;
      }
    
      /**
       * Stop event bubbling.
       * @returns {void}
       */
      stopPropagation() {}
    
      /**
       * Stop event bubbling.
       * @returns {void}
       */
      stopImmediatePropagation() {
        this._stopped = true;
      }
    
      /**
       * The flag to be bubbling.
       * @type {boolean}
       */
      get bubbles() {
        return false;
      }
    
      /**
       * The flag to be cancelable.
       * @type {boolean}
       */
      get cancelable() {
        return true;
      }
    
      /**
       * Cancel this event.
       * @returns {void}
       */
      preventDefault() {
        if (this._passiveListener !== null) {
          console.warn("Event#preventDefault() was called from a passive listener:", this._passiveListener);
          return;
        }
        if (!this.cancelable) {
          return;
        }
        this._canceled = true;
      }
    
      /**
       * The flag to indicate cancellation state.
       * @type {boolean}
       */
      get defaultPrevented() {
        return this._canceled;
      }
    
      /**
       * The flag to be composed.
       * @type {boolean}
       */
      get composed() {
        return false;
      }
    
      /**
       * The unix time of this event.
       * @type {number}
       */
      get timeStamp() {
        return this._timeStamp;
      }
    }
    
    /**
     * Constant of NONE.
     * @type {number}
     */
    Event.NONE = 0;
    
    /**
     * Constant of CAPTURING_PHASE.
     * @type {number}
     */
    Event.CAPTURING_PHASE = 1;
    
    /**
     * Constant of AT_TARGET.
     * @type {number}
     */
    Event.AT_TARGET = 2;
    
    /**
     * Constant of BUBBLING_PHASE.
     * @type {number}
     */
    Event.BUBBLING_PHASE = 3;
    module.exports = Event;
    
    },{}],11:[function(require,module,exports){
    "use strict";
    
    var __targetID = 0;
    var __listenerMap = {
      touch: {},
      mouse: {},
      keyboard: {},
      devicemotion: {}
    };
    var __listenerCountMap = {
      touch: 0,
      mouse: 0,
      keyboard: 0,
      devicemotion: 0
    };
    var __enableCallbackMap = {
      touch: null,
      mouse: null,
      keyboard: null,
      //FIXME: Cocos Creator invokes addEventListener('devicemotion') when engine initializes, it will active sensor hardware.
      // In that case, CPU and temperature cost will increase. Therefore, we require developer to invoke 'jsb.device.setMotionEnabled(true)'
      // on native platforms since most games will not listen motion event.
      devicemotion: null
      // devicemotion: function() {
      //     jsb.device.setMotionEnabled(true);
      // }
    };
    
    var __disableCallbackMap = {
      touch: null,
      mouse: null,
      //FIXME: Cocos Creator invokes addEventListener('devicemotion') when engine initializes, it will active sensor hardware.
      // In that case, CPU and temperature cost will increase. Therefore, we require developer to invoke 'jsb.device.setMotionEnabled(true)'
      // on native platforms since most games will not listen motion event.
      keyboard: null,
      devicemotion: null
      // devicemotion: function() {
      //     jsb.device.setMotionEnabled(false);
      // }
    };
    
    const __handleEventNames = {
      touch: ['touchstart', 'touchmove', 'touchend', 'touchcancel'],
      mouse: ['mousedown', 'mousemove', 'mouseup', 'mousewheel'],
      keyboard: ['keydown', 'keyup', 'keypress'],
      devicemotion: ['devicemotion']
    };
    
    // Listener types
    const CAPTURE = 1;
    const BUBBLE = 2;
    const ATTRIBUTE = 3;
    
    /**
     * Check whether a given value is an object or not.
     * @param {any} x The value to check.
     * @returns {boolean} `true` if the value is an object.
     */
    function isObject(x) {
      return x && typeof x === "object"; //eslint-disable-line no-restricted-syntax
    }
    
    /**
     * EventTarget.
     *
     * - This is constructor if no arguments.
     * - This is a function which returns a CustomEventTarget constructor if there are arguments.
     *
     * For example:
     *
     *     class A extends EventTarget {}
     */
    class EventTarget {
      constructor() {
        this._targetID = ++__targetID;
        this._listenerCount = {
          touch: 0,
          mouse: 0,
          keyboard: 0,
          devicemotion: 0
        };
        this._listeners = new Map();
      }
      _associateSystemEventListener(eventName) {
        var handleEventNames;
        for (var key in __handleEventNames) {
          handleEventNames = __handleEventNames[key];
          if (handleEventNames.indexOf(eventName) > -1) {
            if (__enableCallbackMap[key] && __listenerCountMap[key] === 0) {
              __enableCallbackMap[key]();
            }
            if (this._listenerCount[key] === 0) __listenerMap[key][this._targetID] = this;
            ++this._listenerCount[key];
            ++__listenerCountMap[key];
            break;
          }
        }
      }
      _dissociateSystemEventListener(eventName) {
        var handleEventNames;
        for (var key in __handleEventNames) {
          handleEventNames = __handleEventNames[key];
          if (handleEventNames.indexOf(eventName) > -1) {
            if (this._listenerCount[key] <= 0) delete __listenerMap[key][this._targetID];
            --__listenerCountMap[key];
            if (__disableCallbackMap[key] && __listenerCountMap[key] === 0) {
              __disableCallbackMap[key]();
            }
            break;
          }
        }
      }
    
      /**
       * Add a given listener to this event target.
       * @param {string} eventName The event name to add.
       * @param {Function} listener The listener to add.
       * @param {boolean|{capture?:boolean,passive?:boolean,once?:boolean}} [options] The options for this listener.
       * @returns {boolean} `true` if the listener was added actually.
       */
      addEventListener(eventName, listener, options) {
        if (!listener) {
          return false;
        }
        if (typeof listener !== "function" && !isObject(listener)) {
          throw new TypeError("'listener' should be a function or an object.");
        }
        const listeners = this._listeners;
        const optionsIsObj = isObject(options);
        const capture = optionsIsObj ? Boolean(options.capture) : Boolean(options);
        const listenerType = capture ? CAPTURE : BUBBLE;
        const newNode = {
          listener,
          listenerType,
          passive: optionsIsObj && Boolean(options.passive),
          once: optionsIsObj && Boolean(options.once),
          next: null
        };
    
        // Set it as the first node if the first node is null.
        let node = listeners.get(eventName);
        if (node === undefined) {
          listeners.set(eventName, newNode);
          this._associateSystemEventListener(eventName);
          return true;
        }
    
        // Traverse to the tail while checking duplication..
        let prev = null;
        while (node) {
          if (node.listener === listener && node.listenerType === listenerType) {
            // Should ignore duplication.
            return false;
          }
          prev = node;
          node = node.next;
        }
    
        // Add it.
        prev.next = newNode;
        this._associateSystemEventListener(eventName);
        return true;
      }
    
      /**
       * Remove a given listener from this event target.
       * @param {string} eventName The event name to remove.
       * @param {Function} listener The listener to remove.
       * @param {boolean|{capture?:boolean,passive?:boolean,once?:boolean}} [options] The options for this listener.
       * @returns {boolean} `true` if the listener was removed actually.
       */
      removeEventListener(eventName, listener, options) {
        if (!listener) {
          return false;
        }
        const listeners = this._listeners;
        const capture = isObject(options) ? Boolean(options.capture) : Boolean(options);
        const listenerType = capture ? CAPTURE : BUBBLE;
        let prev = null;
        let node = listeners.get(eventName);
        while (node) {
          if (node.listener === listener && node.listenerType === listenerType) {
            if (prev) {
              prev.next = node.next;
            } else if (node.next) {
              listeners.set(eventName, node.next);
            } else {
              listeners.delete(eventName);
            }
            this._dissociateSystemEventListener(eventName);
            return true;
          }
          prev = node;
          node = node.next;
        }
        return false;
      }
    
      /**
       * Dispatch a given event.
       * @param {Event|{type:string}} event The event to dispatch.
       * @returns {boolean} `false` if canceled.
       */
      dispatchEvent(event) {
        if (!event || typeof event.type !== "string") {
          throw new TypeError("\"event.type\" should be a string.");
        }
        const eventName = event.type;
        var onFunc = this['on' + eventName];
        if (onFunc && typeof onFunc === 'function') {
          event._target = event._currentTarget = this;
          onFunc.call(this, event);
          event._target = event._currentTarget = null;
          event._eventPhase = 0;
          event._passiveListener = null;
          if (event.defaultPrevented) return false;
        }
    
        // If listeners aren't registered, terminate.
        const listeners = this._listeners;
        let node = listeners.get(eventName);
        if (!node) {
          return true;
        }
        event._target = event._currentTarget = this;
    
        // This doesn't process capturing phase and bubbling phase.
        // This isn't participating in a tree.
        let prev = null;
        while (node) {
          // Remove this listener if it's once
          if (node.once) {
            if (prev) {
              prev.next = node.next;
            } else if (node.next) {
              listeners.set(eventName, node.next);
            } else {
              listeners.delete(eventName);
            }
          } else {
            prev = node;
          }
    
          // Call this listener
          event._passiveListener = node.passive ? node.listener : null;
          if (typeof node.listener === "function") {
            node.listener.call(this, event);
          }
    
          // Break if `event.stopImmediatePropagation` was called.
          if (event._stopped) {
            break;
          }
          node = node.next;
        }
        event._target = event._currentTarget = null;
        event._eventPhase = 0;
        event._passiveListener = null;
        return !event.defaultPrevented;
      }
    }
    module.exports = EventTarget;
    
    },{}],12:[function(require,module,exports){
    "use strict";
    
    const EventTarget = require('./EventTarget');
    const Event = require('./Event');
    const jsbWindow = require('../../jsbWindow');
    class FileReader extends EventTarget {
      construct() {
        this.result = null;
      }
    
      // Aborts the read operation. Upon return, the readyState will be DONE.
      abort() {}
    
      // Starts reading the contents of the specified Blob, once finished, the result attribute contains an ArrayBuffer representing the file's data.
      readAsArrayBuffer() {}
    
      // Starts reading the contents of the specified Blob, once finished, the result attribute contains a data: URL representing the file's data.
      readAsDataURL(blob) {
        this.result = `data:image/png;base64,${jsbWindow.btoa(blob)}`;
        const event = new Event('load');
        this.dispatchEvent(event);
      }
    
      // Starts reading the contents of the specified Blob, once finished, the result attribute contains the contents of the file as a text string.
      readAsText() {}
    }
    module.exports = FileReader;
    
    },{"../../jsbWindow":44,"./Event":10,"./EventTarget":11}],13:[function(require,module,exports){
    "use strict";
    
    class FontFace {
      constructor(family, source, descriptors) {
        this.family = family;
        this.source = source;
        this.descriptors = descriptors;
        this._status = 'unloaded';
        this._loaded = new Promise((resolve, reject) => {
          this._resolveCB = resolve;
          this._rejectCB = reject;
        });
      }
      load() {
        // class FontFaceSet, add(fontFace) have done the load work
      }
      get status() {
        return this._status;
      }
      get loaded() {
        return this._loaded;
      }
    }
    module.exports = FontFace;
    
    },{}],14:[function(require,module,exports){
    "use strict";
    
    const EventTarget = require('./EventTarget');
    const Event = require('./Event');
    class FontFaceSet extends EventTarget {
      constructor() {
        super();
        this._status = 'loading';
      }
      get status() {
        return this._status;
      }
      set onloading(listener) {
        this.addEventListener('loading', listener);
      }
      set onloadingdone(listener) {
        this.addEventListener('loadingdone', listener);
      }
      set onloadingerror(listener) {
        this.addEventListener('loadingerror', listener);
      }
      add(fontFace) {
        this._status = fontFace._status = 'loading';
        this.dispatchEvent(new Event('loading'));
        // Call native binding method to set the ttf font to native platform.
        let family = jsb.loadFont(fontFace.family, fontFace.source);
        setTimeout(() => {
          if (family) {
            fontFace._status = this._status = 'loaded';
            fontFace._resolveCB();
            this.dispatchEvent(new Event('loadingdone'));
          } else {
            fontFace._status = this._status = 'error';
            fontFace._rejectCB();
            this.dispatchEvent(new Event('loadingerror'));
          }
        }, 0);
      }
      clear() {}
      delete() {}
      load() {}
      ready() {}
    }
    module.exports = FontFaceSet;
    
    },{"./Event":10,"./EventTarget":11}],15:[function(require,module,exports){
    "use strict";
    
    const HTMLElement = require('./HTMLElement');
    const ImageData = require('./ImageData');
    const DOMRect = require('./DOMRect');
    const CanvasRenderingContext2D = require('./CanvasRenderingContext2D');
    const jsbWindow = require('../../jsbWindow');
    const clamp = function (value) {
      value = Math.round(value);
      return value < 0 ? 0 : value < 255 ? value : 255;
    };
    class CanvasGradient {
      constructor() {
        console.log('==> CanvasGradient constructor');
      }
      addColorStop(offset, color) {
        console.log('==> CanvasGradient addColorStop');
      }
    }
    class TextMetrics {
      constructor(width) {
        this._width = width;
      }
      get width() {
        return this._width;
      }
    }
    class HTMLCanvasElement extends HTMLElement {
      constructor(width, height) {
        super('canvas');
        this.id = 'glcanvas';
        this.type = 'canvas';
        this.top = 0;
        this.left = 0;
        this._width = width ? Math.ceil(width) : 0;
        this._height = height ? Math.ceil(height) : 0;
        this._context2D = null;
        this._dataInner = null;
      }
    
      //REFINE: implement opts.
      getContext(name, opts) {
        const self = this;
        if (name === '2d') {
          if (!this._context2D) {
            this._context2D = new CanvasRenderingContext2D(this._width, this._height);
            this._context2D._canvas = this;
            this._context2D._setCanvasBufferUpdatedCallback(data => {
              // FIXME: Canvas's data will take 2x memory size, one in C++, another is obtained by Uint8Array here.
              self._dataInner = new ImageData(data, self._width, self._height);
            });
          }
          return this._context2D;
        }
        return null;
      }
      get _data() {
        if (this._context2D === null) {
          return null;
        }
        if (!this._dataInner) {
          this._context2D.fetchData();
        }
        return this._dataInner;
      }
      set _data(data) {
        this._dataInner = data;
      }
      set width(width) {
        width = Math.ceil(width);
        if (this._width !== width) {
          this._dataInner = null;
          this._width = width;
          if (this._context2D) {
            this._context2D.width = width;
          }
        }
      }
      get width() {
        return this._width;
      }
      set height(height) {
        height = Math.ceil(height);
        if (this._height !== height) {
          this._dataInner = null;
          this._height = height;
          if (this._context2D) {
            this._context2D.height = height;
          }
        }
      }
      get height() {
        return this._height;
      }
      get clientWidth() {
        return jsbWindow.innerWidth;
      }
      get clientHeight() {
        return jsbWindow.innerHeight;
      }
      get data() {
        if (this._data) {
          return this._data.data;
        }
        return null;
      }
      getBoundingClientRect() {
        return new DOMRect(0, 0, jsbWindow.innerWidth, jsbWindow.innerHeight);
      }
      requestPointerLock() {
        jsb.setCursorEnabled(false);
      }
    }
    module.exports = HTMLCanvasElement;
    
    },{"../../jsbWindow":44,"./CanvasRenderingContext2D":6,"./DOMRect":7,"./HTMLElement":16,"./ImageData":22}],16:[function(require,module,exports){
    "use strict";
    
    const Element = require('./Element');
    const {
      noop
    } = require('./util');
    const jsbWindow = require('../../jsbWindow');
    class HTMLElement extends Element {
      constructor(tagName = '') {
        super();
        this.tagName = tagName.toUpperCase();
        this.className = '';
        this.children = [];
        this.style = {
          width: `${jsbWindow.innerWidth}px`,
          height: `${jsbWindow.innerHeight}px`
        };
        this.innerHTML = '';
        this.parentElement = jsbWindow.__canvas;
      }
      setAttribute(name, value) {
        this[name] = value;
      }
      getAttribute(name) {
        return this[name];
      }
      focus() {}
    }
    module.exports = HTMLElement;
    
    },{"../../jsbWindow":44,"./Element":9,"./util":33}],17:[function(require,module,exports){
    "use strict";
    
    function _defineProperty(obj, key, value) { key = _toPropertyKey(key); if (key in obj) { Object.defineProperty(obj, key, { value: value, enumerable: true, configurable: true, writable: true }); } else { obj[key] = value; } return obj; }
    function _toPropertyKey(arg) { var key = _toPrimitive(arg, "string"); return typeof key === "symbol" ? key : String(key); }
    function _toPrimitive(input, hint) { if (typeof input !== "object" || input === null) return input; var prim = input[Symbol.toPrimitive]; if (prim !== undefined) { var res = prim.call(input, hint || "default"); if (typeof res !== "object") return res; throw new TypeError("@@toPrimitive must return a primitive value."); } return (hint === "string" ? String : Number)(input); }
    const HTMLElement = require('./HTMLElement');
    const Event = require('./Event');
    class HTMLImageElement extends HTMLElement {
      constructor(width, height, isCalledFromImage) {
        if (!isCalledFromImage) {
          throw new TypeError("Illegal constructor, use 'new Image(w, h); instead!'");
        }
        super('img');
        _defineProperty(this, "_mipmapLevelDataSize", []);
        this.width = width ? width : 0;
        this.height = height ? height : 0;
        this._data = null;
        this._src = null;
        this.complete = false;
        this.crossOrigin = null;
      }
      destroy() {
        if (this._data) {
          jsb.destroyImage(this._data);
          this._data = null;
        }
        this._src = null;
      }
      set src(src) {
        this._src = src;
        if (src === '') return;
        jsb.loadImage(src, info => {
          if (!info) {
            this._data = null;
            var event = new Event('error');
            this.dispatchEvent(event);
            return;
          }
          this.width = this.naturalWidth = info.width;
          this.height = this.naturalHeight = info.height;
          this._data = info.data;
          this.complete = true;
          this._mipmapLevelDataSize = info.mipmapLevelDataSize;
          var event = new Event('load');
          this.dispatchEvent(event);
        });
      }
      get src() {
        return this._src;
      }
      get clientWidth() {
        return this.width;
      }
      get clientHeight() {
        return this.height;
      }
      getBoundingClientRect() {
        return new DOMRect(0, 0, this.width, this.height);
      }
    }
    module.exports = HTMLImageElement;
    
    },{"./Event":10,"./HTMLElement":16}],18:[function(require,module,exports){
    "use strict";
    
    const HTMLElement = require('./HTMLElement');
    const MediaError = require('./MediaError');
    const HAVE_NOTHING = 0;
    const HAVE_METADATA = 1;
    const HAVE_CURRENT_DATA = 2;
    const HAVE_FUTURE_DATA = 3;
    const HAVE_ENOUGH_DATA = 4;
    class HTMLMediaElement extends HTMLElement {
      constructor(type) {
        super(type);
        this._volume = 1.0;
        this._duration = 0;
        this._isEnded = false;
        this._isMute = false;
        this._readyState = HAVE_NOTHING;
        this._error = new MediaError();
      }
      addTextTrack() {}
      captureStream() {}
      fastSeek() {}
      load() {}
      pause() {}
      play() {}
      canPlayType(mediaType) {
        return '';
      }
      set volume(volume) {
        this._volume = volume;
      }
      get volume() {
        return this._volume;
      }
      get duration() {
        return this._duration;
      }
      get ended() {
        return this._isEnded;
      }
      get muted() {
        return this._isMute;
      }
      get readyState() {
        return this._readyState;
      }
      get error() {
        return this._error;
      }
      get currentTime() {
        return 0;
      }
    }
    module.exports = HTMLMediaElement;
    
    },{"./HTMLElement":16,"./MediaError":24}],19:[function(require,module,exports){
    "use strict";
    
    const HTMLElement = require('./HTMLElement');
    const Event = require('./Event');
    const _importmaps = [];
    class HTMLScriptElement extends HTMLElement {
      constructor(width, height) {
        super('script');
      }
      set type(type) {
        if (type === "systemjs-importmap") {
          if (_importmaps.indexOf(this) === -1) {
            _importmaps.push(this);
          }
        }
      }
      set src(url) {
        setTimeout(() => {
          require(url);
          this.dispatchEvent(new Event('load'));
        }, 0);
      }
    }
    HTMLScriptElement._getAllScriptElementsSystemJSImportType = function () {
      return _importmaps;
    };
    module.exports = HTMLScriptElement;
    
    },{"./Event":10,"./HTMLElement":16}],20:[function(require,module,exports){
    "use strict";
    
    const HTMLMediaElement = require('./HTMLMediaElement');
    class HTMLVideoElement extends HTMLMediaElement {
      constructor() {
        super('video');
      }
      canPlayType(type) {
        if (type === 'video/mp4') return true;
        return false;
      }
    }
    module.exports = HTMLVideoElement;
    
    },{"./HTMLMediaElement":18}],21:[function(require,module,exports){
    "use strict";
    
    let HTMLImageElement = require('./HTMLImageElement');
    class Image extends HTMLImageElement {
      constructor(width, height) {
        super(width, height, true);
      }
    }
    module.exports = Image;
    
    },{"./HTMLImageElement":17}],22:[function(require,module,exports){
    "use strict";
    
    class ImageData {
      // var imageData = new ImageData(array, width, height);
      // var imageData = new ImageData(width, height);
      constructor(array, width, height) {
        if (typeof array === 'number' && typeof width == 'number') {
          height = width;
          width = array;
          array = null;
        }
        if (array === null) {
          this._data = new Uint8ClampedArray(width * height * 4);
        } else {
          this._data = array;
        }
        this._width = width;
        this._height = height;
      }
      get data() {
        return this._data;
      }
      get width() {
        return this._width;
      }
      get height() {
        return this._height;
      }
    }
    module.exports = ImageData;
    
    },{}],23:[function(require,module,exports){
    "use strict";
    
    const Event = require('./Event');
    const __numberShiftMap = {
      '48': ')',
      // 0
      '49': '!',
      // 1
      '50': '@',
      // 2
      '51': '#',
      // 3
      '52': '$',
      // 4
      '53': '%',
      // 5
      '54': '^',
      // 6
      '55': '&',
      // 7
      '56': '*',
      // 8
      '57': '(' // 9
    };