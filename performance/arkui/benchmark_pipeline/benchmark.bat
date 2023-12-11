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

::变量声明
set testname=test
set tagname=tag
set rownum=0

::场景条件
echo Benchmark场景用例
echo 1：界面上Column中包含100个button，点击某一button【DispatchTouchEvent】
echo 2：界面上Column中包含100个button（使用自定义组件包裹）点击某一button【DispatchTouchEvent】
echo 3：界面上嵌套100层Column，最底层为button，点击button【DispatchTouchEvent】
echo 4：界面上嵌套100层Column（使用自定义组件包裹），最底层为button，点击button【DispatchTouchEvent】
echo ------------------
echo 5：界面上Column中包含100个button，启动应用【FlushLayoutTask】
echo 6：界面上Column中包含100个button（使用自定义组件包裹），启动应用【FlushLayoutTask】
echo 7：界面上嵌套100层Column，最底层为button，启动应用【FlushLayoutTask】
echo 8：界面上嵌套100层Column（使用自定义组件包裹），最底层为button，启动应用【FlushLayoutTask】
echo ------------------
echo 9：界面上Column中包含100个button，启动应用【FlushMessages】
echo 10：界面上Column中包含100个button（使用自定义组件包裹），启动应用【FlushMessages】
echo 11：界面上嵌套100层Column，最底层为button，启动应用【FlushMessages】
echo 12：界面上嵌套100层Column（使用自定义组件包裹），最底层为button，启动应用【FlushMessages】
echo ------------------
echo 13：两个页面，分别有100个image，两个页面之间跳转设置转场动画，页面1跳转页面2【FlushAnimation】
echo ------------------
echo 14：界面上包含100个image，所有image做缩放、选择动效，启动应用【FlushRenderTask】
echo ------------------
echo 15：界面上Column中包含100个button，点击button改变button文字【FlushDirtyNodeUpdate】
echo 16：界面上Column中包含100个button（使用自定义组件包裹），点击button改变button文字【FlushDirtyNodeUpdate】
echo ------------------
echo 17：界面上Column中包含100个button，点击button变为不可见【HandleVisibleAreaChangeEvent】
echo 18：界面上Column中包含100个button（使用自定义组件包裹），点击button变为不可见【HandleVisibleAreaChangeEvent】
echo ------------------
echo 19：界面上Column中包含100个button，点击button改变button宽高【HandleOnAreaChangeEvent】
echo 20：界面上Column中包含100个button（使用自定义组件包裹），点击button改变button宽高【HandleOnAreaChangeEvent】


echo ------------------
echo ------------------

::如果大于20就停止运行
if %mode% gtr 20 (
echo Benchmark场景用例已全部运行
pause
exit
)

::如果非自动运行
if %isAuto% equ 2 (set /P mode=请输入Benchmark场景用例编号：)
 
set rownum=%mode%

if %mode% equ 1 (
set testname=benchmark01_click_button
set tagname=DispatchTouchEvent
) else if %mode% equ 2 (
set testname=benchmark02_click_button
set tagname=DispatchTouchEvent
) else if %mode% equ 3 (
set testname=benchmark03_click_button
set tagname=DispatchTouchEvent
) else if %mode% equ 4 (
set testname=benchmark04_click_button
set tagname=DispatchTouchEvent
) else if %mode% equ 5 (
set testname=benchmark01_start_app
set tagname=FlushLayoutTask
) else if %mode% equ 6 (
set testname=benchmark02_start_app
set tagname=FlushLayoutTask
) else if %mode% equ 7 (
set testname=benchmark03_start_app
set tagname=FlushLayoutTask
) else if %mode% equ 8 (
set testname=benchmark04_start_app
set tagname=FlushLayoutTask
) else if %mode% equ 9 (
set testname=benchmark01_start_app
set tagname=FlushMessages
) else if %mode% equ 10 (
set testname=benchmark02_start_app
set tagname=FlushMessages
) else if %mode% equ 11 (
set testname=benchmark03_start_app
set tagname=FlushMessages
) else if %mode% equ 12 (
set testname=benchmark04_start_app
set tagname=FlushMessages
) else if %mode% equ 13 (
set testname=benchmark05_push_page
set tagname=FlushAnimation
) else if %mode% equ 14 (
set testname=benchmark06_start_app
set tagname=FlushRenderTask
) else if %mode% equ 15 (
set testname=benchmark07_change_title
set tagname=FlushDirtyNodeUpdate
) else if %mode% equ 16 (
set testname=benchmark08_change_title
set tagname=FlushDirtyNodeUpdate
) else if %mode% equ 17 (
set testname=benchmark09_change_visible
set tagname=HandleVisibleAreaChangeEvent
) else if %mode% equ 18 (
set testname=benchmark10_change_visible
set tagname=HandleVisibleAreaChangeEvent
) else if %mode% equ 19 (
set testname=benchmark11_change_size
set tagname=HandleOnAreaChangeEvent
) else if %mode% equ 20 (
set testname=benchmark12_change_size
set tagname=HandleOnAreaChangeEvent
)

@echo on


::获取年月日
set ymd=%date:~0,4%%date:~5,2%%date:~8,2%
for /f "tokens=* delims=" %%a in ("%ymd%") do set ymd=%%a
::获取小时数，9点以前补0
if %time:~0,2% leq 9 (set hour=0%time:~1,1%) else (set hour=%time:~0,2%)
::获取时分秒 
set minseco=%time:~3,2%%time:~6,2%
set hms=%hour%%minseco%
for /f "tokens=* delims=" %%a in ("%hms%") do set hms=%%a
::年月日_时分秒作为trace文件名
set tracefolder=trace_%ymd%
set filename=%testname%_%ymd%_%hms%.ftrace
if not exist %tracefolder% (mkdir %tracefolder%)


::运行自动化和bytrace
start cmd /c test.bat %testname%
timeout -nobreak 3
start cmd /c bytrace.bat %filename% %tracefolder% %tagname% %rownum% %mode% %isAuto%