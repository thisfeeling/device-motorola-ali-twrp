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

# Inherit from the common Open Source product configuration
$(call inherit-product, build/target/product/embedded.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

PRODUCT_NAME := omni_ali
PRODUCT_BRAND := Motorola
PRODUCT_DEVICE := ali
PRODUCT_MODEL := Moto G(6)
PRODUCT_MANUFACTURER := Motorola
PRODUCT_GMS_CLIENTID_BASE := Android-Motorola
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="ali_retail-user 9 PPSS29.55-37-7-10 c25e release-keys"

BUILD_FINGERPRINT := motorola/ali_retail/ali:9/PPSS29.55-37-7-10/c25e:user/release-keys
