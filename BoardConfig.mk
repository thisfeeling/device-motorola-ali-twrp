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

#
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

DEVICE_TREE := device/motorola/ali

# Bootloader
TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM_GPU := qcom-adreno506
TARGET_BOOTLOADER_BOARD_NAME := SDM450

# Platform
TARGET_BOARD_PLATFORM := msm8953

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := cortex-a53

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53

# Kernel - prebuilt
TARGET_PREBUILT_KERNEL := $(DEVICE_TREE)/prebuilt/Image.gz-dtb

# Kernel
TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_HEADER_ARCH := arm64
BOARD_KERNEL_CMDLINE := androidboot.hardware=qcom ehci-hcd.park=3 androidboot.bootdevice=7824900.sdhci lpm_levels.sleep_disabled=1 vmalloc=350M androidboot.selinux=permissive
BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_OFFSET      := 0x00008000
BOARD_KERNEL_TAGS_OFFSET := 0x00000100
BOARD_KERNEL_IMAGE_NAME := Image.gz-dtb
BOARD_RAMDISK_OFFSET     := 0x01000000
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset $(BOARD_RAMDISK_OFFSET) --tags_offset $(BOARD_KERNEL_TAGS_OFFSET)
LZMA_RAMDISK_TARGETS := recovery

# Partitions
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_BOOTIMAGE_PARTITION_SIZE := 23068672
BOARD_CACHEIMAGE_PARTITION_SIZE := 268435456
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 23171072
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3271557120
BOARD_USERDATAIMAGE_PARTITION_SIZE := 26419903488
BOARD_VENDORIMAGE_PARTITION_SIZE := 671088640

# Qualcomm support
BOARD_USES_QCOM_HARDWARE := true
TARGET_RECOVERY_QCOM_RTC_FIX := true

# Recovery
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := ext4
OARD_SYSTEMIMAGE_PARTITION_TYPE     := ext4
TARGET_USES_MKE2FS := true

# TWRP Configuration
RECOVERY_SDCARD_ON_DATA := true
TW_EXCLUDE_DEFAULT_USB_INIT := true
TW_INCLUDE_FUSE_EXFAT := true
TW_INCLUDE_FUSE_NTFS := true
TW_INCLUDE_NTFS_3G := true  
TW_INPUT_BLACKLIST := "hbtp_vm"
TW_SCREEN_BLANK_ON_BOOT := true
TW_THEME := portrait_hdpi
TW_USE_TOOLBOX := true
TW_BRIGHTNESS_PATH := /sys/class/leds/lcd-backlight/brightness

TW_DEFAULT_BRIGHTNESS := 50   
TW_EXTRA_LANGUAGES := true
TW_DEFAULT_LANGUAGE := en
TW_EXCLUDE_SUPERSU := true
#TW_NO_LEGACY_PROPS := true
#TW_INCLUDE_CRYPTO := false
#TW_INCLUDE_FB2PNG := true    
TW_EXCLUDE_TWRPAPP := true
TW_INCLUDE_REPACKTOOLS := true
TW_HAS_EDL_MODE := false

# Security patch level
PLATFORM_VERSION := 16.1.0
PLATFORM_SECURITY_PATCH := 2030-01-01
VENDOR_SECURITY_PATCH := 2099-12-31

# For building with minimal manifest
ALLOW_MISSING_DEPENDENCIES := true
TARGET_USES_64_BIT_BINDER := true

# APEX
OVERRIDE_TARGET_FLATTEN_APEX := true
TARGET_SUPPORTS_64_BIT_APPS := true

# Workaround for error copying vendor files to recovery ramdisk
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_COPY_OUT_VENDOR := vendor

