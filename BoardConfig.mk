#
# Copyright (C) 2016 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

DEVICE_PATH := device/zte/nx512j

include device/cyanogen/msm8916-common/BoardConfigCommon.mk

include device/zte/nx512j/board/*.mk

# Assert
TARGET_OTA_ASSERT_DEVICE := nx512J,NX512J,Nx512J,NX512j

# inherit from the proprietary version
-include vendor/zte/nx512j/BoardConfigVendor.mk
