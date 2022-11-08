#
# Copyright (C) 2022 The Android Open Source Project
# Copyright (C) 2022 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from CAP_sprout device
$(call inherit-product, device/hmd/CAP_sprout/device.mk)

PRODUCT_DEVICE := CAP_sprout
PRODUCT_NAME := omni_CAP_sprout
PRODUCT_BRAND := Nokia
PRODUCT_MODEL := Nokia 5.3
PRODUCT_MANUFACTURER := hmd

PRODUCT_GMS_CLIENTID_BASE := android-hmd

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="trinket-user 11 RKQ1.201004.002 145 release-keys"

BUILD_FINGERPRINT := Nokia/CaptainAmerica_00WW/CAP_sprout:11/RKQ1.201004.002/00WW_2_210:user/release-keys
