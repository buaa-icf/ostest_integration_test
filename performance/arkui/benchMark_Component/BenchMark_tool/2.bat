:: Copyright (c) 2023 Huawei Device Co., Ltd.
:: Licensed under the Apache License, Version 2.0 (the "License");
:: you may not use this file except in compliance with the License.
:: You may obtain a copy of the License at
::
::     http://www.apache.org/licenses/LICENSE-2.0
::
:: Unless required by applicable law or agreed to in writing, software
:: distributed under the License is distributed on an "AS IS" BASIS,
:: WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
:: See the License for the specific language governing permissions and
:: limitations under the License.

hdc app install -r entry-default-signed.hap
hdc app install -r entry-ohosTest-signed.hap
hdc shell aa test -b cn.openharmony.benchmarksample -m entry_test -s unittest /ets/testrunner/OpenHarmonyTestRunner -s class ActsAbilityTest -s timeout 6000000


pause