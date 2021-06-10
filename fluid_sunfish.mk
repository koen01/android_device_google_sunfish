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

# Include Fluid common configuration
$(call inherit-product, vendor/fluid/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/sunfish/aosp_sunfish.mk)

-include device/google/sunfish/device-lineage.mk

## Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_DEVICE := sunfish
PRODUCT_MODEL := Pixel 4a
PRODUCT_NAME := fluid_sunfish
TARGET_MANUFACTURER := Google

# Boot animation
TARGET_SCREEN_WIDTH := 1080
TARGET_SCREEN_HEIGHT := 2340

# Face Unlock
TARGET_FACE_UNLOCK_SUPPORTED := true

# Device specific stuff
TARGET_BOOT_ANIMATION := 1080
PRODUCT_GMS_CLIENTID_BASE := android-google
IS_PHONE := true
#TARGET_INCLUDE_GAPPS := true
#TARGET_INCLUDE_LIVE_WALLPAPERS := true
#TARGET_INCLUDE_STOCK_ARCORE := true
#TARGET_INCLUDE_GOOGLE_RECORDER := true

PRODUCT_PRODUCT_PROPERTIES += \
  ro.fluid.maintainer=koen01 \
  ro.fluid.cpu=SD730G \
  ro.product.system.model=Pixel 4a

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME="sunfish" \
    PRIVATE_BUILD_DESC="sunfish-user 11 RQ2A.210505.002 7246365 release-keys"

BUILD_FINGERPRINT := "google/sunfish/sunfish:11/RQ2A.210505.002/7246365:user/release-keys"

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.fingerprint=google/sunfish/sunfish:11/RQ2A.210505.002/7246365:user/release-keys

$(call inherit-product-if-exists, vendor/google/sunfish/sunfish-vendor.mk)

# Clearwater vendor
$(call inherit-product-if-exists, vendor/clearwater/clearwater.mk)

# pixelgapps
$(call inherit-product-if-exists, vendor/pixelgapps/pixel-gapps.mk)

