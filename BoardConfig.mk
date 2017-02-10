-include vendor/xiaomi/hermes/BoardConfigVendor.mk

LOCAL_PATH := device/xiaomi/hermes

TARGET_SPECIFIC_HEADER_PATH := $(LOCAL_PATH)/include

USE_CAMERA_STUB := true

# Target & Board
TARGET_BOARD_PLATFORM := mt6795
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_NO_BOOTLOADER := true
TARGET_NO_FACTORYIMAGE := true

TARGET_KMODULES := true

# Assert
TARGET_OTA_ASSERT_DEVICE := hermes

# CPU
TARGET_BOOTLOADER_BOARD_NAME := mt6795

TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 := 
TARGET_CPU_VARIANT := generic
TARGET_CPU_SMP := true
TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53
TARGET_BOARD_SUFFIX := _64
TARGET_USES_64_BIT_BINDER := true

TARGET_CPU_CORTEX_A53 := true


# Kernel
TARGET_USES_64_BIT_BINDER := true
TARGET_IS_64_BIT := true
BOARD_KERNEL_CMDLINE := bootopt=64S3,32N2,64N2 androidboot.selinux=permissive
BOARD_KERNEL_BASE := 0x40078000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --base 0x40078000 --pagesize 2048 --kernel_offset 0x00008000 --ramdisk_offset 0x03f88000 --second_offset 0x00e88000 --tags_offset 0x0df88000 --board cofface
TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/prebuilt/kernel
BOARD_CUSTOM_BOOTIMG := true

# Image
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 20971520
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 20971520
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1610612736
BOARD_USERDATAIMAGE_PARTITION_SIZE := 13474725888
BOARD_FLASH_BLOCK_SIZE := 131072

BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_USERIMAGES_USE_EXT4 := true

# Recovery
#RECOVERY_VARIANT := twrp
#RECOVERY_VARIANT := carliv

# TWRP stuff
ifeq ($(RECOVERY_VARIANT), twrp)
TARGET_PREBUILT_RECOVERY_KERNEL := $(LOCAL_PATH)/prebuilt/kernel
TARGET_RECOVERY_PIXEL_FORMAT := "RGBA_8888"
DEVICE_RESOLUTION := 1080x1920
DEVICE_SCREEN_WIDTH := 1080
DEVICE_SCREEN_HEIGHT := 1920
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/mt_usb/musb-hdrc.0.auto/gadget/lun%d/file
TARGET_RECOVERY_LCD_BACKLIGHT_PATH := \"/sys/class/leds/lcd-backlight/brightness\"
BOARD_HAS_NO_SELECT_BUTTON := true
TW_NO_REBOOT_BOOTLOADER := true
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/recovery/etc/twrp.fstab
TW_THEME := portrait_hdpi
TW_BRIGHTNESS_PATH := /sys/class/leds/lcd-backlight/brightness
TW_CUSTOM_CPU_TEMP_PATH := /sys/devices/virtual/thermal/thermal_zone1/temp
TW_USE_MODEL_HARDWARE_ID_FOR_DEVICE_ID := true
RECOVERY_GRAPHICS_USE_LINELENGTH := true
RECOVERY_SDCARD_ON_DATA := true
TW_INTERNAL_STORAGE_PATH := "/data/media"
TW_INTERNAL_STORAGE_MOUNT_POINT := "data"
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
TW_DEFAULT_EXTERNAL_STORAGE := true
TW_MAX_BRIGHTNESS := 255
BOARD_SUPPRESS_SECURE_ERASE := true
TW_INCLUDE_CRYPTO := true
TW_CRYPTO_FS_TYPE := "ext4"
TW_CRYPTO_REAL_BLKDEV := "/dev/block/platform/mtk-msdc.0/by-name/userdata"
TW_CRYPTO_MNT_POINT := "/data"
TW_CRYPTO_FS_OPTIONS := "nosuid,nodev,noatime,discard,noauto_da_alloc,data =ordered"
TW_BRIGHTNESS_PATH := /sys/class/leds/lcd-backlight/brightness
TW_MAX_BRIGHTNESS := 255
TW_NO_USB_STORAGE := true
BOARD_USE_FRAMEBUFFER_ALPHA_CHANNEL := true
TARGET_DISABLE_TRIPLE_BUFFERING := false
TW_EXCLUDE_SUPERSU := true
TW_EXTRA_LANGUAGES := true
TW_BUILD_ZH_CN_SUPPORT := true
TW_DEFAULT_LANGUAGE := zh_CN
endif
# CWM
#TARGET_DISABLE_BOOT_VERIFY := true
#TARGET_AUTO_INSTALL_ZIP := true
RECOVERY_HAD_EXTERNAL_SDCARD := true
#TARGET_ADD_ROOT_PHONE := true
RECOVERY_SDCARD_ON_DATA := true
TARGET_DISABLE_SIGCHECK := true
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_23x41.h\"
#BOARD_HAS_NO_SELECT_BUTTON := true
#BOARD_RECOVERY_SWIPE := true
#BOARD_SUPPRESS_EMMC_WIPE := true
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/recovery/etc/recovery.fstab
#TARGET_RECOVERY_PIXEL_FORMAT := "RGBA_8888"
#TARGET_USERIMAGES_USE_EXT4 := true

ifeq ($(RECOVERY_VARIANT),carliv)
#VIBRATOR_TIMEOUT_FILE := /sys/devices/virtual/timed_output/vibrator/enable
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_10x18.h\"
DEVICE_RESOLUTION := 1080x1920
BOARD_HAS_MTK_CPU := true
BOARD_NEEDS_MTK_GETSIZE := true
endif

# SELinux
#BOARD_SEPOLICY_DIRS := \
#       device/xiaomi/hermes/sepolicy

#POLICYVERS := 29
