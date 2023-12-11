:: Copyright (c) 2023 Huawei Device Co., Ltd.
:: Licensed under the Apache License, Version 2.0 (the "License");
:: you may not use this file except in compliance with the License.
:: You may obtain a copy of the License at
::
::  http://www.apache.org/licenses/LICENSE-2.0
::
:: Unless required by applicable law or agreed to in writing, software
:: distributed under the License is distributed on an "AS IS" BASIS,
:: WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
:: See the License for the specific language governing permissions and
:: limitations under the License.

@echo off

::是否自动运行全部用例
echo 1：自动运行全部场景用例
echo 2：选择具体场景用例运行

echo ------------------
echo ------------------
set /P isAuto=请选择场景用例运行模式：


::屏幕常亮，600是关闭
hdc shell power-shell setmode 602
::先卸载再安装
hdc app uninstall com.example.benchmark
hdc install Benchmark\entry\build\default\outputs\default\entry-default-signed.hap
hdc install Benchmark\entry\build\default\outputs\ohosTest\entry-ohosTest-signed.hap
::可挂载
hdc wait-for-device shell mount -o remount,rw /
hdc shell "setenforce 0"

::启动运行
set mode=1
start cmd /c benchmark.bat %isAuto% %mode%