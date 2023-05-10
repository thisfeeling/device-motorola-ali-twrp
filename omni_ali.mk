#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from ali device
$(call inherit-product, device/motorola/ali/device.mk)

PRODUCT_DEVICE := ali
PRODUCT_NAME := omni_ali
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto g(6)
PRODUCT_MANUFACTURER := motorola

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="ali_retail-user 9 PPSS29.55-37-7-10 c25e release-keys"

BUILD_FINGERPRINT := motorola/ali_retail/ali:9/PPSS29.55-37-7-10/c25e:user/release-keys
