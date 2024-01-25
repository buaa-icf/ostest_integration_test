#Copyright (c) 2023 Shenzhen Kaihong Digital Industry Development Co., Ltd.
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
#!/bin/sh

declare -A testSets
testSets["crypto-md5"]="./SunSpider/"
testSets["crypto-sha1"]="./SunSpider/"
testSets["crypto-aes"]="./SunSpider/"
testSets["base64"]="./SunSpider/"
testSets["box2d"]="./Octane/"
testSets["richards"]="./Octane/"
testSets["raytrace"]="./Octane/"
testSets["navier-stoke"]="./Octane/"
testSets["deltablue"]="./Octane/"

target="rk3568"
maindir="../../../../../../../../.."
${maindir}/out/${target}/clang_x64/arkcompiler/ets_frontend/es2abc ./BenchmarkMeasure.ts --merge-abc --module --output ./BenchmarkMeasure.abc
export LD_LIBRARY_PATH=${maindir}/out/${target}/clang_x64/lib.unstripped/clang_x64/arkcompiler/ets_runtime:${maindir}/out/${target}/clang_x64/lib.unstripped/clang_x64/test/test:${maindir}/out/${target}/clang_x64/lib.unstripped/clang_x64/thirdparty/icu:prebuilts/clang/ohos/linux-x86_64/llvm/lib:${maindir}/out/${target}/clang_x64/lib.unstripped/clang_x64/thirdparty/zlib

if [ -z "$1" ]; then
    for key in ${!testSets[@]};do
        ts_file=${testSets[${key}]}${key}.ts
        file_name=${key}
        abc_file=${testSets[${key}]}${key}.abc
        #echo ${ts_file}
        echo "---building ts:"${file_name}"---"
        #echo ${abc_file}
        ${maindir}/out/${target}/clang_x64/arkcompiler/ets_frontend/es2abc ${ts_file} --type-extractor --type-dts-builtin --module --merge-abc --extension=ts --output ${abc_file}
        ${maindir}/out/${target}/clang_x64/exe.unstripped/clang_x64/arkcompiler/ets_runtime/ark_aot_compiler --builtins-dts=${maindir}/arkcompiler/ets_runtime/ecmascript/ts_types/lib_ark_builtins.d.abc --aot-file=${file_name} ${abc_file}
        echo "---run ts:"${file_name}"---"
        ${maindir}/out/${target}/clang_x64/exe.unstripped/clang_x64/arkcompiler/ets_runtime/ark_js_vm --icu-data-path "${maindir}/third_party/icu/ohos_icu4j/data" --log-level=info --asm-interpreter=true --entry-point=${file_name} --aot-file=${file_name} ${abc_file}
    done
else
    case_name=$1
    if [ -n "${testSets[${case_name}]}" ]; then
        ts_file=${testSets[${case_name}]}${case_name}.ts
        file_name=${case_name}
        abc_file=${testSets[${case_name}]}${case_name}.abc
        #echo ${ts_file}
        echo "---building ts:"${file_name}"---"
        #echo ${abc_file}
        ${maindir}/out/${target}/clang_x64/arkcompiler/ets_frontend/es2abc ${ts_file} --type-extractor --type-dts-builtin --module --merge-abc --extension=ts --output ${abc_file}
        ${maindir}/out/${target}/clang_x64/exe.unstripped/clang_x64/arkcompiler/ets_runtime/ark_aot_compiler --builtins-dts=${maindir}/arkcompiler/ets_runtime/ecmascript/ts_types/lib_ark_builtins.d.abc --aot-file=${file_name} ${abc_file}
        echo "---run ts:"${file_name}"---"
        ${maindir}/out/${target}/clang_x64/exe.unstripped/clang_x64/arkcompiler/ets_runtime/ark_js_vm --icu-data-path "${maindir}/third_party/icu/ohos_icu4j/data" --log-level=info --asm-interpreter=true --entry-point=${file_name} --aot-file=${file_name} ${abc_file}
    else
        echo "${case_name} does't exist in cases"
    fi
fi
echo "---clear files---"
rm -f *.ai *.an
find . -name "*.abc" -type f -delete
