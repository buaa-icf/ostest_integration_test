#  Copyright (c) 2023-2024 Shenzhen Kaihong Digital Industry Development Co., Ltd.
#  Licensed under the Apache License, Version 2.0 (the "License");
#  you may not use this file except in compliance with the License.
#  You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
#  Unless required by applicable law or agreed to in writing, software
#  distributed under the License is distributed on an "AS IS" BASIS,
#  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#  See the License for the specific language governing permissions and
#  limitations under the License.

import os
import shutil
import subprocess
from datetime import datetime

# 测试hap上传目录
src_dir = '..\\..\\release\\scenario\\1.0.0\\'
# 测试hap拷贝存放目录
testcase_dir = 'testcases\\'
# 测试报告存放目录
reports_dir = 'reports\\'
# 前置命令
reserved_commands = []
# 设定基础命令和testcases目录
base_command = '.\\hdc_std install '


# 预置测试hap
def copy_testcases():
    # 确保目标目录存在，如果不存在则创建
    if not os.path.exists(testcase_dir):
        os.makedirs(testcase_dir)
    # 遍历源目录中的文件和子目录
    for root, dirs, files in os.walk(src_dir):
        # 构造相对于源目录的相对路径
        rel_path = os.path.relpath(root, src_dir)
        # 计算目标路径
        dest_path = os.path.join(testcase_dir, rel_path)
        # 如果目标路径不存在，创建它
        if not os.path.exists(dest_path):
            os.makedirs(dest_path)
        # 复制文件
        for file in files:
            src_file = os.path.join(root, file)
            dst_file = os.path.join(dest_path, file)
            # copy2保留元数据
            shutil.copy2(src_file, dst_file)


# 批量生成install命令
def generate_install_commands():
    # 遍历testcases目录下的所有文件
    for filename in os.listdir(testcase_dir):
        if filename.endswith('.hap'):  # 确保只处理.hap文件
            # 拼接完整的命令
            full_path = os.path.join(testcase_dir, filename)
            command = base_command + full_path
            reserved_commands.append(command)


# 批量生成运行测试的命令
def generate_run_commands():
    # 遍历testcases目录下的所有文件
    for filename in os.listdir(testcase_dir):
        # 检查文件是否以.hap结尾且不以App结尾
        if filename.endswith('.hap') and not filename.endswith('App.hap'):
            # 提取文件名（不包括.hap扩展名）
            filename_without_ext = os.path.splitext(filename)[0]
            # 生成命令
            command = f".\\hdc_std.exe shell aa test -b ohos.samples.{filename_without_ext} -m entry_test -s unittest " \
                      f"/ets/testrunner/OpenHarmonyTestRunner -s timeout 15000"
            # 将命令添加到列表中
            reserved_commands.append(command)
        else:
            continue


# 创建测试报告文件
def generate_report():
    if not os.path.exists(reports_dir):
        os.makedirs(reports_dir)
    # 获取当前时间
    now = datetime.now()
    # 格式化时间，格式为年-月-日-时-分-秒
    formatted_time = now.strftime("%Y-%m-%d-%H-%M-%S")
    new_folder_path = os.path.join(reports_dir, formatted_time)
    # 创建新的文件夹
    try:
        # 如果reports文件夹不存在，os.makedirs会创建它，包括任何必要的父目录
        os.makedirs(new_folder_path)
        print(f"文件夹 '{new_folder_path}' 已成功创建。")
        # 获取hilog
        subprocess.Popen(f".\\hdc_std.exe hilog >> .\\{new_folder_path}\\deviceLog.log",
                         shell=True,
                         stdout=subprocess.PIPE,
                         stderr=subprocess.PIPE)
    except OSError as e:
        # 如果文件夹已存在，则打印错误消息并继续
        if e.errno == os.errno.EEXIST:
            print(f"文件夹 '{new_folder_path}' 已存在。")
        else:
            # 对于其他类型的错误，重新抛出异常
            raise


# 执行命令
def run_commands():
    print('reserved_commands is :', reserved_commands)
    for cmd in reserved_commands:
        # 如果是执行测试的命令 先创建测试报告文件
        if cmd.startswith('.\\hdc_std.exe shell aa test'):
            generate_report()
        # 使用shell=True来在shell中执行命令，注意这可能会带来安全风险
        # 如果命令来自不可信的源，请避免使用shell=True
        process = subprocess.Popen(cmd, shell=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
        # 获取命令输出和错误
        stdout, stderr = process.communicate()
        # 输出命令执行结果
        print(f"Command '{cmd}' executed with return code {process.returncode}")
        if stdout:
            print("Standard Output:")
            print(stdout.decode('utf-8'))
        if stderr:
            print("Standard Error:")
            print(stderr.decode('utf-8'))


if __name__ == "__main__":
    copy_testcases()
    generate_install_commands()
    generate_run_commands()
    run_commands()



