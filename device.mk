#
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

LOCAL_PATH := device/ulefone/Power_Armor14_Pro

# Enable project quotas and casefolding for emulated storage without sdcardfs
$(call inherit-product, $(SRC_TARGET_DIR)/product/emulated_storage.mk)

PRODUCT_PROPERTY_OVERRIDES += \
    ro.crypto.dm_default_key.options_format.version=2 \
    ro.crypto.volume.filenames_mode=aes-256-cts \
    ro.crypto.volume.metadata.method=dm-default-key \
    ro.crypto.volume.options=::v2

# Dynamic Partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# VNDK
PRODUCT_TARGET_VNDK_VERSION := 30

# API
PRODUCT_SHIPPING_API_LEVEL := 30

PRODUCT_PLATFORM := mt6768

# A/B
AB_OTA_UPDATER := true

AB_OTA_PARTITIONS += \
    boot \
    dtbo \
    lk \
    preloader \
    product \
    system \
    odm \
    vbmeta \
    vbmeta_system \
    vbmeta_vendor \
    vendor \
    vendor_boot

AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_system=true \
    POSTINSTALL_PATH_system=system/bin/otapreopt_script \
    FILESYSTEM_TYPE_system=ext4 \
    POSTINSTALL_OPTIONAL_system=true

# VIRTUAL A/B
ENABLE_VIRTUAL_AB := true

# Boot control HAL
PRODUCT_PACKAGES += \
    android.hardware.boot@1.0-impl-1.2-mtkimpl.so \
    android.hardware.boot@1.2-impl-recovery \
    android.hardware.boot@1.2-mtkimpl.recovery \
    android.hardware.boot@1.2-mtkimpl \
    android.hardware.boot@1.2-impl \
    android.hardware.boot@1.2-service

PRODUCT_PACKAGES_DEBUG += \
    update_engine_client \
    bootctrl

PRODUCT_PACKAGES += \
    otapreopt_script \
    update_engine \
    update_verifier \
    update_engine_sideload

# MTK PlPath Utils
PRODUCT_PACKAGES += \
	mtk_plpath_utils \
	mtk_plpath_utils.recovery

# fastbootd stuff
PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.0-impl-mock \
    android.hardware.fastboot@1.0-impl-mock.recovery \
    android.hardware.fastboot@1.1-impl-mock \
    android.hardware.fastboot@1.1-impl-mock.recovery \
    fastbootd

# health Hal
PRODUCT_PACKAGES += \
    android.hardware.health@2.1-impl \
    android.hardware.health@2.1-service \
    libhealthd.$(PRODUCT_PLATFORM)

# Keystore
PRODUCT_PACKAGES += \
    android.system.keystore2

# Keymint
PRODUCT_PACKAGES += \
    android.hardware.security.keymint \
    android.hardware.security.secureclock \
    android.hardware.security.sharedsecret

# Drm
PRODUCT_PACKAGES += \
    android.hardware.drm@1.4

# Keymaster
PRODUCT_PACKAGES += \
    android.hardware.keymaster@4.1

# Additional target Libraries
TARGET_RECOVERY_DEVICE_MODULES += \
    android.hardware.keymaster@4.1
    
TW_RECOVERY_ADDITIONAL_RELINK_LIBRARY_FILES += \
    $(TARGET_OUT_SHARED_LIBRARIES)/android.hardware.keymaster@4.1.so

TW_OVERRIDE_SYSTEM_PROPS := \
    "ro.build.product;ro.build.fingerprint;ro.build.version.incremental;ro.product.device=ro.product.system.device;ro.product.model=ro.product.system.model;ro.product.name=ro.product.system.name"

# Apex libraries
PRODUCT_HOST_PACKAGES += \
    libandroidicu
#    libicuuc
