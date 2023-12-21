# Copyright (c) 2023 Huawei Device Co., Ltd.
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

import openpyxl
from openpyxl.styles import Alignment

samples = []
components = []
file_contents = []
file_path = 'D:/BenchMark_tool/benchmark_next.ftrace'
content = "LoadJsWithModule Execute Page code : pages"
last_line_content = 'tracing_mark_write: trace_event_clock_sync: parent_ts'

workbook = openpyxl.Workbook()  # 创建工作簿
# worksheet = workbook.create_sheet(title='BenchMark')  # 创建工作表
worksheet = workbook.active  # 选择默认的表单
worksheet['A1'] = '组件名称'
worksheet['B1'] = '页面名称'
worksheet['C1'] = 'C++创建时间（单位ms）'
worksheet['D1'] = 'C++布局时间（单位ms）'
worksheet.column_dimensions['A'].width = 15
worksheet.column_dimensions['B'].width = 30
worksheet.column_dimensions['C'].width = 25 
worksheet.column_dimensions['D'].width = 25

# 获取sample
def find_samples(file_path, target):
    with open(file_path, 'r', encoding='ISO-8859-1') as file:
         lines = file.readlines()
         for i, line in enumerate(lines):
             file_contents.append(line)
             if target in line and 'Sample.abc' in line:
                line_split = line.split(': pages')[1].split('/')
                str = ''
                sample = ''
                if len(line_split) == 2:
                   str = 'text'
                   sample = line_split[1].strip() # 删除末尾空格
                else:
                   str = line_split[2]
                   sample = line_split[3].strip() # 删除末尾空格
                component = str[0].upper() + str[1:] # 首字母大写
                print("sample：", sample)
                print("component：", component)
                samples.append(sample)
                components.append(component)

find_samples(file_path, content)
# print("components.len：", len(components))
# print("samples.len：", len(samples))


# 返回内容所在的行数
def find_line_number(target):
    for i, line in enumerate(file_contents):
        if target in line:
            return i + 1
    return -1  # 返回-1表示未找到目标内容

# 返回内容所在的行数
def find_endline_number(target, num):
    for i, line in enumerate(file_contents):
        if target in line and i > num:
            return i + 1
    return -1  # 返回-1表示未找到目标内容

# 返回内容所在的行的完整内容
def find_line_str(target):
    for i, line in enumerate(file_contents):
        if target in line:
            return line
    return '' # 返回''表示未找到目标内容

# 返回起始行到结束行之间的内容
def find_line_start_end(start, end):
    result = file_contents[start:end]  # 获取从第start行到第end行的数据
    result_line = []
    for index,res in enumerate(result):
        if 'tracing_mark_write: B' in res:
            result_line.append(res)
        if 'tracing_mark_write: E' in res:
            result_line.append(res)    
    return result_line

# 循环过滤数据开始
for index,sample in enumerate(samples):
    print("sample：", sample)
    startLine = find_line_number('/' + samples[index])
    # print("startLine：", str(startLine))

    if index == (len(samples) - 1):
       endLine = find_line_number(last_line_content)
    else:
       endLine = find_endline_number('JsiDeclarativeEngine::LoadPageSource', startLine)
    # print("endLine：", endLine)

    result = find_line_start_end(startLine, endLine)
    # print('result长度：', len(result))

    def find_create(): # create的内容
        create = []
        for line in result:
            if 'Create[%s]' % components[index] in line:
                create.append(line)
        return create

    def find_measure(): # measure的内容
        measure = []
        for line in result:
            if 'Measure[%s]' % components[index] in line:
                measure.append(line)
        return measure

    def find_layout(): # layout的内容
        layout = []
        for line in result:
            if 'Layout[%s]' % components[index] in line:
                layout.append(line)
        return layout

    # print('create.len：', len(find_create()))
    # print('measure.len：', len(find_measure()))
    # print('layout.len：', len(find_layout()))

    # create数据
    createTimeTotal = 0 #create总时间
    for create_line_b in find_create():
        # print('create create_line_b：', create_line_b)
        create_line_e = ''
        result_e = result[result.index(create_line_b):]
        for indexRes, res in enumerate(result_e):
            # if indexRes > result.index(create_line_b) and 'tracing_mark_write: E|' in res:
            if 'tracing_mark_write: E|' in res:
                create_line_e = res
                break
        # print('create create_line_e：', create_line_e)
        start_index_b = str(create_line_b).find("....") + 4
        end_index_b = str(create_line_b).find(": tracing_mark_write")
        begin_time = float(create_line_b[start_index_b:end_index_b])
        start_index_e = str(create_line_e).find("....") + 4
        end_index_e = str(create_line_e).find(": tracing_mark_write")
        end_time = float(create_line_e[start_index_e:end_index_e])
        createTimeC = end_time*1000000 - begin_time*1000000
        createTimeTotal += createTimeC
    if samples[index] .find('Home') == -1 and samples[index] .find('Index.abc') == -1 and samples[index] .find('EntryView.abc') == -1 and samples[index] .find('RecentView.abc') == -1:
       worksheet['A%s' % str(index+2)] = components[index] 
       worksheet['B%s' % str(index+2)] = samples[index] 
    if createTimeTotal != 0:
       worksheet['C%s' % str(index+2)] = createTimeTotal / len(find_create()) / 1000
       print('%s create 平均时间：' % samples[index], createTimeTotal / len(find_create()))

    # measure数据begin
    measureTimeTotal = 0 # measure总时间
    measureTimeP = 0 # measure平均时间
    for measure_line_b in find_measure():
        # print('%s measure measure_line_b ：', measure_line_b)
        measure_line_e = ''
        result_e = result[result.index(measure_line_b):]
        for indexRes, res in enumerate(result_e):
            if 'tracing_mark_write: E|' in res:
                measure_line_e = res
                break
        # print('measure measure_line_e：', measure_line_e)
        start_index_b = str(measure_line_b).find("....") + 4
        end_index_b = str(measure_line_b).find(": tracing_mark_write")
        begin_time = float(measure_line_b[start_index_b:end_index_b])
        start_index_e = str(measure_line_e).find("....") + 4
        end_index_e = str(measure_line_e).find(": tracing_mark_write")
        end_time = float(measure_line_e[start_index_e:end_index_e])
        measureTimeC = end_time*1000000 - begin_time*1000000
        measureTimeTotal += measureTimeC
    if measureTimeTotal != 0 and len(find_measure()) != 0:
       measureTimeP = measureTimeTotal / len(find_measure())
       print('%s measure 平均时间：' % samples[index], measureTimeP)
    # measure数据end

    # layout数据begin
    layoutTimeTotal = 0 # layout总时间
    layoutTimeP = 0 # layout平均时间
    for layout_line_b in find_layout():
        # print('layout layout_line_b：', layout_line_b)
        layout_line_e = ''
        result_e = result[result.index(layout_line_b):]
        for indexRes, res in enumerate(result_e):
            if 'tracing_mark_write: E|' in res:
                layout_line_e = res
                break
        # print('layout layout_line_e: ', layout_line_e)
        start_index_b = str(layout_line_b).find("....") + 4
        end_index_b = str(layout_line_b).find(": tracing_mark_write")
        begin_time = float(layout_line_b[start_index_b:end_index_b])
        start_index_e = str(layout_line_e).find("....") + 4
        end_index_e = str(layout_line_e).find(": tracing_mark_write")
        end_time = float(layout_line_e[start_index_e:end_index_e])
        layoutTimeC = end_time*1000000 - begin_time*1000000
        layoutTimeTotal += layoutTimeC 
    if layoutTimeTotal != 0 and len(find_layout()) != 0:
       layoutTimeP = layoutTimeTotal / len(find_layout())
       print('%s layout 平均时间：' % samples[index], layoutTimeP)
    # layout数据end
    worksheet['D%s' % str(index+2)] = (measureTimeP + layoutTimeP) / 1000 # measure时间加layout时间

    print('--------------------------------------------------------------------------')
# 循环过滤数据结束
workbook.save(filename='BenchMark.xlsx')  # 保存工作簿  
