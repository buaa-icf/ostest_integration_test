/*
 * Copyright (c) 2025 Shenzhen Kaihong Digital Industry Development Co., Ltd.
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


// EditProfilePage.ets
import router from '@ohos.router'
import abilityAccessCtrl from '@ohos.abilityAccessCtrl';
import common from '@ohos.app.ability.common';
import promptAction from '@ohos.promptAction';
import picker from '@ohos.file.picker';
import { UserViewModel } from '../viewmodel/UserVM';

interface UserInfo {
  avatar: string|Resource
  nickname: string
  bio: string
}

let globalUserVM: UserViewModel | null = null;

@Entry
@Component
struct EditProfilePage {
  @Provide('userVM') userVM: UserViewModel =
    UserViewModel.getInstance(getContext() as common.UIAbilityContext);
  build() {
    Column() {
      EditProfilePageContent()
    }
    .width('100%')  // 必须设置有效尺寸
    .height('100%')
    .padding(12)
    .backgroundColor('#FFFFFF')
  }
}

@Component
struct EditProfilePageContent {
  @Consume('userVM') userVM: UserViewModel;
  @State userInfo: UserInfo = {
    avatar: $r('app.media.logo'),
    nickname: '',
    bio: ''
  } as UserInfo

  aboutToAppear() {
    // 从 ViewModel 初始化数据
    this.userInfo = {
      avatar: this.userVM.userInfo.avatar,
      nickname: this.userVM.userInfo.nickname,
      bio: this.userVM.userInfo.bio
    };
}
  build() {
    Column() {
      Row() {
        Image($r('app.media.back'))
          .onClick(() => router.back())
          .margin(12)
          .width(24)
          .height(24)

        Text('编辑资料')
          .fontSize(20)
          .fontColor('#333')
          .margin({ left: 12 })
      }
      .width('100%')
      .justifyContent(FlexAlign.Start)

      // 头像上传
      Image(this.userInfo.avatar )
        .onClick(() => this.handleAvatarSelect())
        .width(80)
        .aspectRatio(1)

      TextInput({
        placeholder: $r('app.string.nickname_placeholder'), // 使用资源引用
        text: this.userInfo.nickname
      })
        .fontSize(16)
        .fontColor('#333333')  // 字体颜色
        .placeholderColor('#999999')  // placeholder颜色
        .height(48)
        .width('90%')
        .margin({ top: 20 })
        .padding(8)
        .backgroundColor('#F5F5F5')  // 输入框背景色
        .borderRadius(24)
        .onChange(value => this.userInfo.nickname = value)

      TextInput({
        placeholder: $r('app.string.bio_placeholder'),
        text: this.userInfo.bio
      })
        .fontSize(16)
        .fontColor('#333333')
        .placeholderColor('#999999')
        .height(96)
        .width('90%')
        .margin({ top: 12 })
        .padding(8)
        .backgroundColor('#F5F5F5')
        .borderRadius(24)
        .onChange(value => this.userInfo.bio = value)

      Button('保存')
        .onClick(() => this.saveChanges())
    }
  }
  // 保存修改
  private  async saveChanges() {
    if (!this.userInfo.nickname.trim()) {
      promptAction.showToast({ message: '昵称不能为空' });
      return;
    }
    // 触发返回并传递新数据
    try {
        // 通过 ViewModel 更新数据
        this.userVM.updateUserInfo({
          avatar: this.userInfo.avatar,
          nickname: this.userInfo.nickname,
          bio: this.userInfo.bio
        });

      router.back({
        url: 'pages/UserProfilePage',
        params: { timestamp: new Date().getTime() } // 用时间戳确保每次参数不同
      });

        promptAction.showToast({ message: '保存成功' });
      } catch (error) {
        console.error('保存失败:', error);
        promptAction.showToast({ message: '保存失败' });
      }
    }

    // 头像选择处理
  private async handleAvatarSelect() {
    try {
      const atManager = abilityAccessCtrl.createAtManager();
      await atManager.requestPermissionsFromUser(
        getContext() as common.UIAbilityContext,
        ['ohos.permission.READ_IMAGEVIDEO', 'ohos.permission.CAMERA']
      );
      // 低版本兼容弹窗方案
      const res = await promptAction.showDialog({
        title: '图片来源',
        buttons: [
          { text: '拍照', color: '#0A59F7' },
          { text: '相册选择', color: '#FFF' },
          { text: '取消', color: '#FF0000' }
        ]
      })

      // 新增头像路径处理逻辑
      if (res.index === 0) {
        // 调用相机拍照
        const photoPicker = new picker.PhotoViewPicker();
        const result = await photoPicker.select({
          maxSelectNumber: 1,
          MIMEType: picker.PhotoViewMIMETypes.IMAGE_TYPE
        });
        if (result?.photoUris?.[0]) {
          this.userInfo.avatar = result.photoUris[0];
        }
      } else if (res.index === 1) {
        // 从相册选择
        const imagePicker = new picker.PhotoViewPicker();
        const result = await imagePicker.select({
          maxSelectNumber: 1,
          MIMEType: picker.PhotoViewMIMETypes.IMAGE_TYPE
        });
        if (result?.photoUris?.[0]) {
          this.userInfo.avatar = result.photoUris[0];
        }
      }
    } catch (error) {
      console.error(`操作失败: ${JSON.stringify(error)}`)
    }
  }
}