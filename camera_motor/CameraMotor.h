/*
 * Copyright (C) 2019 The LineageOS Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
#ifndef VENDOR_PA_CAMERA_MOTOR_V1_0_H
#define VENDOR_PA_CAMERA_MOTOR_V1_0_H

#include <vendor/pa/camera/motor/1.0/ICameraMotor.h>

#include <android-base/unique_fd.h>

namespace vendor {
namespace pa {
namespace camera {
namespace motor {
namespace V1_0 {
namespace implementation {

using ::android::hardware::hidl_string;
using ::android::hardware::Return;
using ::android::hardware::Void;

class CameraMotor : public ICameraMotor {
  public:
    CameraMotor();

    Return<void> onConnect(const hidl_string& cameraId) override;
    Return<void> onDisconnect(const hidl_string& cameraId) override;

  private:
    android::base::unique_fd motor_fd_;
};

}  // namespace implementation
}  // namespace V1_0
}  // namespace motor
}  // namespace camera
}  // namespace pa
}  // namespace vendor

#endif  // VENDOR_pa_CAMERA_MOTOR_V1_0_H