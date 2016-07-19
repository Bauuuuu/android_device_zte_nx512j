# Copyright (C) 2014 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

$(call inherit-product, device/zte/nx512j/full_nx512j.mk)





PRODUCT_NAME := krexus_nx512j
BOARD_VENDOR := nubia
TARGET_VENDOR := nubia
PRODUCT_DEVICE := nx512j





PRODUCT_GMS_CLIENTID_BASE := android-zte

TARGET_VENDOR_PRODUCT_NAME := NX512J
TARGET_VENDOR_DEVICE_NAME := NX512J
PRODUCT_BUILD_PROP_OVERRIDES += TARGET_DEVICE=NX512J PRODUCT_NAME=NX512J


