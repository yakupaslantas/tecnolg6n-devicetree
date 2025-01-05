#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Twrp stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from TECNO-LG6n device
$(call inherit-product, device/tecno/lg6n/device.mk)

PRODUCT_DEVICE := lg6n
PRODUCT_NAME := twrp_lg6n
PRODUCT_BRAND := TECNO
PRODUCT_MODEL := TECNO LG6n
PRODUCT_MANUFACTURER := tecno

PRODUCT_GMS_CLIENTID_BASE := android-tecno

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="vnd_lg6n_h6924-user 12 SP1A.210812.016 623954 release-keys"

BUILD_FINGERPRINT := TECNO/LG6n-OP/TECNO-LG6n:12/SP1A.210812.016/240530V1262:user/release-keys
