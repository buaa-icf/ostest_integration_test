/*
 * Copyright (C) 2024 Huawei Device Co., Ltd.
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
import AccessibilityExtensionAbility, { AccessibilityEvent } from '@ohos.application.AccessibilityExtensionAbility';

class AccessibilityExtAbility extends AccessibilityExtensionAbility {
    /**
     * Called when your accessibility service is successfully connected to the OS. You can implement
     * this method to perform subsequent initialization operations.
     */
    onConnect() {
        console.log("[AccessibilityExtAbility] onConnect");
    }

    /**
     * Called when your accessibility service is successfully disconnected to the OS.
     */
    onDisconnect() {
        console.log("[AccessibilityExtAbility] onDisconnect");
    }

    /**
     * Called when an accessibility event occurs, such as when the user touches the application interface.
     * @param event Indicates an accessibility event.
     */
    onAccessibilityEvent(accessibilityEvent: AccessibilityEvent) {
        console.log("[AccessibilityExtAbility] onAccessibilityEvent type: " + accessibilityEvent.eventType);
    }
}

export default AccessibilityExtAbility;