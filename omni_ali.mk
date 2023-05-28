#
# Copyright 2021 The Android Open Source Project
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/pb/config/common.mk)

# Properties for decryption
PRODUCT_PROPERTY_OVERRIDES += \
    ro.hardware.keystore=msm8953 \
    ro.hardware.gatekeeper=msm8953 \
    ro.hardware.bootctrl=msm8953 \
    ro.build.system_root_image=false

# Device identifier. This must come after all inclusions
PRODUCT_NAME := omni_ali
PRODUCT_BRAND := Motorola
PRODUCT_DEVICE := ali
PRODUCT_MODEL := Moto G(6)
PRODUCT_MANUFACTURER := Motorola
PRODUCT_GMS_CLIENTID_BASE := Android-Motorola
