#
# Copyright (C) 2019 The LineageOS Project
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

 # Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

 # Inherit from daisy device
$(call inherit-product, device/xiaomi/sakura/device.mk)

# Inherit some common RevengeOS stuff.
$(call inherit-product, vendor/revengeos/config/common.mk)
$(call inherit-product, vendor/revengeos/config/gsm.mk)

# Inherit some common AOSP stuff.
TARGET_GAPPS_ARCH := arm64
TARGET_BOOT_ANIMATION_RES := 1080
IS_PHONE := true
REVENGEOS_BUILDTYPE := OFFICIAL

 # Device identifier. This must come after all inclusions.
PRODUCT_NAME := revengeos_sakura
PRODUCT_DEVICE := sakura
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi 6 Pro
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE="sakura" \
    PRODUCT_NAME="sakura" \
    PRIVATE_BUILD_DESC="daisy-user 9 PKQ1.180917.001 V10.0.1.0.PDLMIFJ release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := "xiaomi/daisy/daisy_sprout:9/PKQ1.180917.001/V10.0.1.0.PDLMIFJ:user/release-keys"

TARGET_VENDOR := Xiaomi
TARGET_USE_GCAM := true
