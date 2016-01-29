#
# Copyright (C) 2014 The Android Open-Source Project
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

# Init
TARGET_INIT_VENDOR_LIB := libinit_msm
TARGET_LIBINIT_DEFINES_FILE := device/moto/falcon/init/init_falcon.cpp
TARGET_UNIFIED_DEVICE := true

TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := krait
TARGET_USE_QCOM_BIONIC_OPTIMIZATION := true

TARGET_NO_BOOTLOADER := true
TARGET_PREBUILT_KERNEL := device/moto/falcon/kernel
TARGET_KERNEL_SOURCE :=

BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_PAGESIZE :=  2048
BOARD_KERNEL_TAGS_OFFSET := 0x00000100
BOARD_RAMDISK_OFFSET     := 0x01000000

BOARD_KERNEL_CMDLINE := console=null androidboot.console=null androidboot.bootdevice=msm_sdcc.1 androidboot.hardware=qcom user_debug=31 msm_rtb.filter=0x37 vmalloc=400M utags.blkdev=/dev/block/platform/msm_sdcc.1/by-name/utags androidboot.selinux=permissive

BOARD_MKBOOTIMG_ARGS := --ramdisk_offset BOARD_RAMDISK_OFFSET --tags_offset BOARD_KERNEL_TAGS_OFFSET

TARGET_NO_RADIOIMAGE := true
TARGET_BOARD_PLATFORM := msm8226
TARGET_BOOTLOADER_BOARD_NAME := falcon
TARGET_NO_RPC := true

TARGET_BOARD_INFO_FILE := device/moto/falcon/board-info.txt

USE_OPENGL_RENDERER := true
VSYNC_EVENT_PHASE_OFFSET_NS := 7500000
SF_VSYNC_EVENT_PHASE_OFFSET_NS := 5000000
TARGET_USES_ION := true

TARGET_TOUCHBOOST_FREQUENCY := 1500
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 10485760
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 10485760
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1023410176
BOARD_USERDATAIMAGE_PARTITION_SIZE := 5930598400
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_NEEDS_LZMA_MINIGZIP := true

BOARD_CHARGER_ENABLE_SUSPEND := true

TARGET_RECOVERY_FSTAB = device/moto/falcon/fstab.qcom

TARGET_RELEASETOOLS_EXTENSIONS := device/moto/falcon

# Enable workaround for slow rom flash
BOARD_SUPPRESS_SECURE_ERASE := true

# TWRP
TW_CUSTOM_THEME := device/moto/falcon/twres
DEVICE_RESOLUTION := 720x1280
#TW_INCLUDE_L_CRYPTO := true
BOARD_HAS_NO_REAL_SDCARD := true
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
TW_SCREEN_BLANK_ON_BOOT := true
TW_BRIGHTNESS_PATH := "/sys/class/leds/lcd-backlight/brightness"

# MultiROM config. MultiROM also uses parts of TWRP config
#MR_DEVICE_SPECIFIC_VERSION := f
MR_ALLOW_NKK71_NOKEXEC_WORKAROUND := true
MR_INPUT_TYPE := type_b
MR_INIT_DEVICES := device/moto/falcon/multirom/mr_init_devices.c
MR_DPI := hdpi
MR_DPI_FONT := 160
MR_FSTAB := device/moto/falcon/twrp.fstab
MR_KEXEC_MEM_MIN := 0x05000000
MR_KEXEC_DTB := true
#MR_INFOS := device/moto/falcon/multirom/infos
MR_DEVICE_HOOKS := device/moto/falcon/multirom/mr_hooks.c
MR_DEVICE_HOOKS_VER := 5
MR_PIXEL_FORMAT := "RGBX_8888"
#MR_ENCRYPTION := true
#MR_ENCRYPTION_SETUP_SCRIPT := device/moto/falcon/multirom/mr_cp_crypto.sh
MR_USE_QCOM_OVERLAY := true
MR_QCOM_OVERLAY_HEADER := device/moto/falcon/multirom/mr_qcom_overlay.h
MR_QCOM_OVERLAY_CUSTOM_PIXEL_FORMAT := MDP_RGBX_8888
MR_DEVICE_VARIANTS := xt1031 xt1032 xt1033 xt1034 falcon_umts falcon_umtsds falcon_cdma falcon_retuaws falcon falcon_gpe
