#
# Copyright (C) 2022 The Android Open Source Project
# Copyright (C) 2022 The TWRP Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Release name
PRODUCT_RELEASE_NAME := Power_Armor14_Pro

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Installs gsi keys into ramdisk, to boot a developer GSI with verified boot.
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Virtual A/B OTA
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota.mk)

# Inherit from star device
$(call inherit-product, device/ulefone/Power_Armor14_Pro/device.mk)

# Inherit some common TWRP stuff.
$(call inherit-product, vendor/twrp/config/common.mk)


## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := Power_Armor14_Pro
PRODUCT_NAME := twrp_Power_Armor14_Pro
PRODUCT_BRAND := Ulefone
PRODUCT_MODEL := Power Armor14 Pro
PRODUCT_MANUFACTURER := Ulefone

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=Power_Armor14_Pro \
    PRODUCT_NAME=Power_Armor14_Pro \
    PRIVATE_BUILD_DESC="Power_Armor14_Pro-user 12 SP1A.210812.016 1648619267 release-keys"

BUILD_FINGERPRINT := Ulefone/Power_Armor14_Pro/Power_Armor14_Pro:12/SP1A.210812.016/1648619267:user/release-keys
