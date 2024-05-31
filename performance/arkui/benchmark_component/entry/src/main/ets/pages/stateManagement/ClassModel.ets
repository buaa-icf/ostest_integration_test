/*
 * Copyright (c) 2023 Huawei Device Co., Ltd.
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

export  class ClassModel {
  public value: string;
  public value1: number;
  public value2: boolean;
  public value3: ESObject;
  public value4: string[];
  public value5: number[];
  public value6: boolean[];
  public value7: ESObject[];
  public value8: string;
  public value9: number;
  public value10: boolean;
  public value11: ESObject;
  public value12: string[];
  public value13: number[];
  public value14: boolean[];
  public value15: ESObject[];
  public value16: string;
  public value17: number;
  public value18: boolean;
  public value19: ESObject;

  constructor(value: string, value1: number, value2: boolean, value3: ESObject, value4: string[], value5: number[],
              value6: boolean[], value7: ESObject[], value8: string, value9: number, value10: boolean,
              value11: ESObject, value12: string[], value13: number[], value14: boolean[], value15: ESObject[],
              value16: string, value17: number, value18: boolean, value19: ESObject) {
    this.value = value;
    this.value1 = value1;
    this.value2 = value2;
    this.value3 = value3;
    this.value4 = value4;
    this.value5 = value5;
    this.value6 = value6;
    this.value7 = value7;
    this.value8 = value8;
    this.value9 = value9;
    this.value10 = value10;
    this.value11 = value11;
    this.value12 = value12;
    this.value13 = value13;
    this.value14 = value14;
    this.value15 = value15;
    this.value16 = value16;
    this.value17 = value17;
    this.value18 = value18;
    this.value19 = value19;
  }
}

export let classModel: ClassModel = new ClassModel('value1', 1, false, 'any1', ['valueArr1', 'valueArr2', 'valueArr3'],
  [0, 1, 2, 3], [false, true, false, false], ['any1', 0, 2, false], 'value1', 1, false, 'any1',
  ['valueArr1', 'valueArr2', 'valueArr3'], [0, 1, 2, 3], [false, true, false, false], ['any1', 0, 2, false],
  'value1', 1, false, 'any1')
export let classModel1: ClassModel = new ClassModel('value2', 0, true, 'any2', ['valueArr2', 'valueArr3', 'valueArr4'],
  [0, 5, 3, 7], [true, false, true, true], ['any1', 0, 2, false], 'value1', 1, false, 'any1',
  ['valueArr1', 'valueArr2', 'valueArr3'], [0, 1, 2, 3], [false, true, false, false], ['any1', 0, 2, false],
  'value1', 1, false, 'any1')
export let classModel2: ClassModel = new ClassModel('value3', 100, true, 'any100', ['valueArr1', 'valueArr2', 'valueArr3'],
  [0, 1, 2, 3], [false, true, false, false], ['any1', 0, 2, false], 'value1', 1, false, 'any1',
  ['valueArr1', 'valueArr2', 'valueArr3'], [0, 1, 2, 3], [false, true, false, false], ['any1', 0, 2, false],
  'value1', 1, false, 'any1')
export let classModel3: ClassModel = new ClassModel('value4', 200, true, 'any500', ['valueArr5', 'valueArr2', 'valueArr3'],
  [0, 1, 2, 3], [false, true, false, false], ['any1', 0, 2, false], 'value1', 1, false, 'any1',
  ['valueArr1', 'valueArr2', 'valueArr3'], [0, 1, 2, 3], [false, true, false, false], ['any1', 0, 2, false],
  'value1', 1, false, 'any1')

export let booleanArr:boolean[]=[true,false,true,false,true,false,true,false,true,false]
export let classModelArr:ClassModel[]=[classModel,classModel1,classModel2,classModel,classModel,classModel,classModel,
  classModel,classModel,classModel]
export let numberArr:number[]=[14,15,16,17,18,19,20,21,22,23]
export let objectArr:Object[]=['昊晖','予升','璠智','晟松','欣辰','晓卿','万奕','扬茜','轩宁','少辰']
export let stringArr:string[]=['昊晖','予升','璠智','晟松','欣辰','晓卿','万奕','扬茜','轩宁','少辰']

export class TrackClassModel{
  @Track public value:string;
  @Track public value1:number;
  @Track public value2:boolean;
  public value3:ESObject;
  @Track public value4:string[];
  @Track public value5:number[];
  @Track public value6:boolean[];
  public value7:ESObject[];
  public value8:string;
  public value9:number;
  public value10:boolean;
  public value11:ESObject;
  public value12:string[];
  public value13:number[];
  public value14:boolean[];
  public value15:ESObject[];
  public value16:string;
  public value17:number;
  public value18:boolean;
  public value19:ESObject;

  constructor(value: string, value1: number, value2: boolean, value3: ESObject, value4: string[], value5: number[],
              value6: boolean[], value7: ESObject[], value8: string, value9: number, value10: boolean,
              value11: ESObject, value12: string[], value13: number[], value14: boolean[], value15: ESObject[],
              value16: string, value17: number, value18: boolean, value19: ESObject) {
    this.value = value;
    this.value1 = value1;
    this.value2 = value2;
    this.value3 = value3;
    this.value4 = value4;
    this.value5 = value5;
    this.value6 = value6;
    this.value7 = value7;
    this.value8 = value8;
    this.value9 = value9;
    this.value10 = value10;
    this.value11 = value11;
    this.value12 = value12;
    this.value13 = value13;
    this.value14 = value14;
    this.value15 = value15;
    this.value16 = value16;
    this.value17 = value17;
    this.value18 = value18;
    this.value19 = value19;
  }
}

export let trackClassModel:TrackClassModel = new TrackClassModel('value1',1,false,'any1',['valueArr1','valueArr2','valueArr3'],
  [0,1,2,3],[false,true,false,false],['any1',0,2,false],'value1',1,false,'any1',
  ['valueArr1','valueArr2','valueArr3'],[0,1,2,3],[false,true,false,false],['any1',0,2,false],
  'value1',1,false,'any1')

export enum LanguageEnum {
  English = 'Hello World',
  Chinese = '你好， 世界',
  French = 'Bonjour le monde',
  German = 'Hallo Welt',
  Japanese = 'こんにちは、世界',
  Thailand = 'สวัสดีโลก',
  Vietnam = 'Xin chào thế giới',
  Greece = 'Γειά σου κόσμε',
  Russian = 'Привет, мир',
  Korea = '안녕하세요 세계',
  Mongols = 'Сайн уу, дэлхий',
}

export let enumArr:LanguageEnum[]=[LanguageEnum.English,LanguageEnum.Chinese,LanguageEnum.English,
  LanguageEnum.Chinese,LanguageEnum.English,LanguageEnum.Chinese,LanguageEnum.English,LanguageEnum.Chinese,
  LanguageEnum.English,LanguageEnum.Chinese]