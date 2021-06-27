#
# Copyright (C) 2020 The LineageOS Project
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
#

# Inherit some common evolution stuff.
$(call inherit-product, vendor/evolution/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/sunfish/aosp_sunfish.mk)

-include device/google/sunfish/device-lineage.mk

## Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_DEVICE := sunfish
PRODUCT_MODEL := Pixel 4a
PRODUCT_NAME := evolution_sunfish
TARGET_MANUFACTURER := Google

# Boot animation and other stuff
TARGET_BOOT_ANIMATION_RES := 1440
TARGET_FACE_UNLOCK_SUPPORTED := true
DEVICE_REQUIRES_CARRIER_APPS := false

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=sunfish \
    PRIVATE_BUILD_DESC="sunfish-user 11 RQ3A.210605.005 7349499 release-keys" \

BUILD_FINGERPRINT := google/sunfish/sunfish:11/RQ3A.210605.005/7349499:user/release-keys

$(call inherit-product, vendor/google/sunfish/sunfish-vendor.mk)
