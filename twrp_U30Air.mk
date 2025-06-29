#
# Copyright (C) 2025 The Android Open Source Project
# Copyright (C) 2025 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common twrp stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from U30Air device
$(call inherit-product, device/zte/U30Air/device.mk)

PRODUCT_DEVICE := U30Air
PRODUCT_NAME := twrp_U30Air
PRODUCT_BRAND := ZTE
PRODUCT_MODEL := U30 Air
PRODUCT_MANUFACTURER := zte

PRODUCT_GMS_CLIENTID_BASE := android-zte

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="ums9620_2h10_feimao_native-user 13 TP1A.220624.014 20241127.203422 release-keys"

BUILD_FINGERPRINT := ZTE/U30Air/U30Air:13/TP1A.220624.014/20241127.203422:user/release-keys
