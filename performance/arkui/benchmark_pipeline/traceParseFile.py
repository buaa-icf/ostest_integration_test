#Copyright (c) 2023 Huawei Device Co., Ltd.
#Licensed under the Apache License, Version 2.0 (the "License");
#you may not use this file except in compliance with the License.
#You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
#Unless required by applicable law or agreed to in writing, software
#distributed under the License is distributed on an "AS IS" BASIS,
#WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#See the License for the specific language governing permissions and
#limitations under the License.

#!/usr/bin/python3 
import re
from xlutils.copy import *
from collections import deque
import argparse 
import xlrd
import os

description = "you should add parameter"                  
parser = argparse.ArgumentParser(description=description)       

##################参数设置##################
#要解析的ftrace文件                                                               
ftraceFileLabel="ftrace"
#解析文件中哪些tag，逗号分割
tagsLabel="tags"
#结果输出到的excel文件
outExcelFileLabel="ofile"
#结果输出在excel文件中的位置
outExcelFilePositionLabel="ofilePos"
tagDict={}
tagOri=""
ftraceFile=""
outExcelFile=""
outExcelFilePosition=""
parser.add_argument('--'+ftraceFileLabel,help = "The file of ftrace file")         
parser.add_argument('--'+tagsLabel,help = "tags,such as FlushLayoutTask,FlushTouchEvents,FlushAnimation,FlushBuild,FlushLayout,FlushRender,FlushMessages")    
parser.add_argument('--'+outExcelFileLabel,help = "Write the result to the file,it is a excel file")   
parser.add_argument('--'+outExcelFilePositionLabel,help = "Write the result to position of  the excel file")         
args = parser.parse_args() 

##################参数解析##################
d = args.__dict__
for key,value in d.items():
    if(key==ftraceFileLabel):
        ftraceFile=value
    if(key==tagsLabel):
        tagOri=value
        print("tags:",value) 
        for item in value.split(","):
            tagDict[item]=""
    if(key==outExcelFileLabel):
        outExcelFile=value
    if(key==outExcelFilePositionLabel):
        outExcelFilePosition=value
print("ftraceFile:",ftraceFile) 
print("tagDict:",tagDict)  
print("outExcelFile:",outExcelFile) 
print("outExcelFilePosition:",outExcelFilePosition) 

#ftraceFile="benchmark01_event_20231124_095849.ftrace"
#tagDict = {'FlushLayoutTask':'UITaskScheduler::FlushTask','FlushTouchEvents':'OnVsyncEvent','FlushAnimation':'OnVsyncEvent','FlushBuild':'OnVsyncEvent','FlushLayout':'OnVsyncEvent','FlushRender':'OnVsyncEvent','FlushMessages':'FlushVsync'}
print("show all tags and their parents")
print(tagDict.keys()) 
#可以传入，针对这个项目设死即可
taskAndId="benchmark"

##################开始解析ftrace文件##################
#当前任务中，所有未处理的全部放到栈中
currUnCompleteTagsQue = []
#指定需要处理的，已完成的tag
completeTagsDict = {}

#特殊处理
dispatchTouchEventPreDuration=0
dispatchTouchEventComplete=False
flushLayoutTaskMaxDuration=0
flushMessagesMaxDuration=0


#读取读取文件
with open(ftraceFile, 'r', errors='ignore') as file:
    for item in file:
        #在ftrace中是多进程一起记录，故各个进程必须独立解析
        #初步判断是当前任务
        isThisTask=item.find(taskAndId)!=-1    
        if(isThisTask):  
            #匹配task开始，解析各部分  
            beginMatchObj = re.match( r'(.*) .* .* ....\s+(\d+.\d+): .*: B.*H:(.*)', item, re.M|re.I)
            if beginMatchObj: 
                #tag开始时，进一步判断是当前任务，只有是当前任务数据才会处理
                bTask=beginMatchObj.group(1).strip()
                if(bTask.find(taskAndId)!=-1):
                    bTag=beginMatchObj.group(3).strip()
                    bTimestamp=beginMatchObj.group(2)
                    #print(">>>>∧     TAG info[%s] timestamp:[%s],push to stack" % (bTag,bTimestamp)) 
                    #当前task所有还未处理的tag，都保存下来
                    currUnCompleteTagsQue.append([bTag,bTimestamp])
            else:
                #匹配task结束，解析各部分  
                endMatchObj = re.match( r'(.*) .* .* ....\s+(\d+.\d+): .*: E.*', item, re.M|re.I)
                if endMatchObj:
                    
                    #tag收尾时，进一步判断是当前任务，只有是当前任务数据才会处理
                    eTask=endMatchObj.group(1).strip()
                    if(eTask.find(taskAndId)!=-1):
                        #栈顶弹出tag信息，跟当前tag尾部匹配组合
                        tagInfo=currUnCompleteTagsQue.pop()
                        
                        tagWithParam=tagInfo[0].strip()
                        startTimestamp=tagInfo[1]
                        endTimestamp=endMatchObj.group(2)
                        #print("    v<<<< TAG info[%s] timestamp:[%s], pop from stack" % (tagWithParam,endTimestamp))
                        #tag过滤。只处理指定的tag
                        for tag,value in  tagDict.items():  
                            if((tagWithParam.find(tag)==0)): 
                                #在初始化列表中找到需要记录的{tag}
                                duration=round((float(endTimestamp)-float(startTimestamp))*1000*1000 )                                  
                                
                                #判断这个{tag}是否已经有其他帧的记录
                                foundSameTag=False
                                for completeTag, completeDuration in  completeTagsDict.items(): 
                                    #有其他帧记录的话，时长求和，更新该{tag}的时长
                                    if(completeTag == tag):
                                        foundSameTag=True
                                        
                                        totalDuration=int(completeDuration)+duration 
                                        completeTagsDict[tag]=totalDuration
                                        print("update TAG[%s] total time:%d μs, currduration:%d μs, oriDuration:%d μs " % (tag,totalDuration,duration,completeDuration)) 
                                        print("completeTagsDict:" ,completeTagsDict)

                                        #特殊处理
                                        if(tag.find('FlushLayoutTask')==0): 
                                            if(flushLayoutTaskMaxDuration<duration):
                                                flushLayoutTaskMaxDuration=duration

                                        if(tag.find('FlushMessages')==0): 
                                            if(flushMessagesMaxDuration<duration):
                                                flushMessagesMaxDuration=duration
                                            
                                        if(tag.find('DispatchTouchEvent')==0): 
                                            if(dispatchTouchEventComplete is False): 
                                                completeTagsDict[tag]=0
                                                dispatchTouchEventComplete=True

                                        break

                                if(foundSameTag is False): 
                                    #没有过这个{tag}记录的话，添加记录 
                                    completeTagsDict[tag]=duration

                                    #特殊处理
                                    if(tag.find('FlushLayoutTask')==0): 
                                        if(flushLayoutTaskMaxDuration<duration):
                                            flushLayoutTaskMaxDuration=duration

                                    if(tag.find('FlushMessages')==0): 
                                        if(flushMessagesMaxDuration<duration):
                                            flushMessagesMaxDuration=duration
                                    
                                    if(tag.find('DispatchTouchEvent')==0): 
                                        completeTagsDict[tag]=0

                                    print("add TAG[%s] duration:%d μs" % (tag,duration))
                                    print("completeTagsDict:", completeTagsDict)
                                break

#相同tag时长求和
print("result:",completeTagsDict)

#特殊处理
for completeTag, completeDuration in  completeTagsDict.items(): 
    if(tag.find('FlushLayoutTask')==0): 
        completeTagsDict[tag]=flushLayoutTaskMaxDuration
    
    if(tag.find('FlushMessages')==0): 
        completeTagsDict[tag]=flushMessagesMaxDuration 


    
##################写结果到文件中##################
print("outExcelFile:",outExcelFile)
if(len(tagDict)==1):
    workbook = xlrd.open_workbook(outExcelFile, formatting_info=True)
    tempFileName="temp_xls_output_file.xls"
    new_workbook = copy(workbook) 
    write_save = new_workbook.get_sheet(0)
    outExcelFilePosArr=outExcelFilePosition.split(",")
    row=int(outExcelFilePosArr[0])
    column=int(outExcelFilePosArr[1])
    # 测试数据
    test_data=completeTagsDict[tagOri]
    write_save.write(row, column, test_data)
    
    # 读取基线数据
    work_sheet=workbook.sheets()[0]
    base_line_data=int(work_sheet.cell_value(row, column-1))
    # 测试数据与基线数据比对并写入结果
    result="Pass"
    # 如果测试数据大于基线数据
    if(test_data>base_line_data):
        # 不大于10%也算通过
        if(((test_data-base_line_data)/base_line_data)<=0.1):
            result="Pass"
        else:
            result="Fail"
    write_save.write(row, column+1, result)
    
    print("test_data=%d, base_line_data:%d, comparison_result=%s" % (test_data,base_line_data,result)) 

    new_workbook.save(tempFileName) 
    workbook.release_resources() 
    del workbook  

    os.remove(outExcelFile)
    os.rename(tempFileName, outExcelFile)
else:
    print("不符合tag只有一个的约定")  
print("!!!parse end!!!")
