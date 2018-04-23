#
# Copyright 2018 The Android Open Source Project
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

# This contains the module build definitions for the hardware-specific
# components for this device.
#
# As much as possible, those components should be built unconditionally,
# with device-specific names to avoid collisions, to avoid device-specific
# bitrot and build breakages. Building a component unconditionally does
# *not* include it on all devices, so it is safe even with hardware-specific
# components.

VENDOR_PATH := device/huawei/prague

TARGET_RECOVERY_DEVICE_DIRS := \
    $(VENDOR_PATH) \

# Arch
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_VARIANT := generic

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a15

# Board
TARGET_BOARD_PLATFORM := hi6250

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := hi6250
TARGET_NO_BOOTLOADER := true

# File System
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_SUPPRESS_SECURE_ERASE := true
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# Kernel
BOARD_KERNEL_CMDLINE := 
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x8000 --ramdisk_offset 0x01000000 --tags_offset 0x0100

TARGET_PREBUILT_KERNEL := device/huawei/prague/dummykernel

# Recovery
BOARD_CUSTOM_BOOTIMG_MK := device/huawei/prague/custombootimg.mk
RECOVERY_GRAPHICS_USE_LINELENGTH := true
RECOVERY_SDCARD_ON_DATA := true
RECOVERY_VARIANT := twrp
TARGET_RECOVERY_FSTAB := $(VENDOR_PATH)/recovery.fstab
TW_THEME := portrait_hdpi
TW_BRIGHTNESS_PATH := /sys/class/leds/lcd_backlight0/brightness
TW_CUSTOM_BATTERY_PATH := /sys/class/power_supply/Battery
TW_DEVICE_VERSION := 0
TW_EXCLUDE_DEFAULT_USB_INIT := true
TW_EXCLUDE_MTP := false
TW_EXCLUDE_SUPERSU := true
TW_INCLUDE_NTFS_3G := true

