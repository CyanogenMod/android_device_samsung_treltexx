USE_CAMERA_STUB := true

LOCAL_PATH := device/samsung/treltexx

TARGET_ARCH := arm
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

# Platform
TARGET_BOARD_PLATFORM := exynos5
TARGET_SLSI_VARIANT := cm
TARGET_SOC := exynos5433

# Bionic Tuning
TARGET_USE_QCOM_BIONIC_OPTIMIZATION := true

# CPU
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a15

TARGET_BOOTLOADER_BOARD_NAME := universal5433

BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_PAGESIZE := 2048
#BOARD_KERNEL_CMDLINE := The bootloader ignores the cmdline from the boot.img
BOARD_KERNEL_PREBUILT_DT := true
BOARD_KERNEL_SEPARATED_DT := true

# /proc/partitions * BLOCK_SIZE (512)
BOARD_BOOTIMAGE_PARTITION_SIZE := 7340032
BOARD_CACHEIMAGE_PARTITION_SIZE := 104857600
#HAX: real block size is too small to build a ROM
#BOARD_RECOVERYIMAGE_PARTITION_SIZE := 8388608
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 10485760
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1887436800
BOARD_USERDATAIMAGE_PARTITION_SIZE := 13514047488
BOARD_FLASH_BLOCK_SIZE := 131072

# PowerHAL
TARGET_POWERHAL_VARIANT := universal5433

# Kernel
TARGET_KERNEL_SOURCE := kernel/samsung/trelte

BOARD_HAS_NO_SELECT_BUTTON := true

# Use these flags if the board has a ext4 partition larger than 2gb
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_USERIMAGES_USE_EXT4 := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_BLUEDROID_VENDOR_CONF := $(LOCAL_PATH)/bluetooth/libbt_vndcfg.txt
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(LOCAL_PATH)/bluetooth

# Camera
BOARD_NEEDS_MEMORYHEAPION := true
BOARD_USE_SAMSUNG_CAMERAFORMAT_NV21 := true
COMMON_GLOBAL_CFLAGS += -DDISABLE_HW_ID_MATCH_CHECK
COMMON_GLOBAL_CFLAGS += -DSAMSUNG_CAMERA_HARDWARE

# Graphics
USE_OPENGL_RENDERER := true
OVERRIDE_RS_DRIVER := libRSDriverArm.so

# frameworks/native/services/surfaceflinger
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3

# Exynos display
BOARD_USES_VIRTUAL_DISPLAY := true

# HWCServices
BOARD_USES_HWC_SERVICES := true

# HDMI
BOARD_USES_NEW_HDMI := true
BOARD_USES_GSC_VIDEO := true

# FIMG2D
BOARD_USES_SKIA_FIMGAPI := true
BOARD_USES_FB_PHY_LINEAR := true

# (G)SCALER
BOARD_USES_SCALER := true
BOARD_USES_DT := true
BOARD_USES_DT_SHORTNAME := true

# Keymaster
BOARD_USES_TRUST_KEYMASTER := true

# Samsung LSI OpenMAX
COMMON_GLOBAL_CFLAGS += -DUSE_NATIVE_SEC_NV12TILED

# Samsung OpenMAX Video
BOARD_USE_STOREMETADATA := true
BOARD_USE_METADATABUFFERTYPE := true
BOARD_USE_DMA_BUF := true
BOARD_USE_ANB_OUTBUF_SHARE := true
BOARD_USE_IMPROVED_BUFFER := true
BOARD_USE_NON_CACHED_GRAPHICBUFFER := true
BOARD_USE_GSC_RGB_ENCODER := true
BOARD_USE_CSC_HW := true
BOARD_USE_QOS_CTRL := false
BOARD_USE_S3D_SUPPORT := true
BOARD_USE_VP8ENC_SUPPORT := true

# HEVC support in libvideocodec
#BOARD_USE_HEVC_HWIP := true
#BOARD_USE_HEVCDEC_SUPPORT := true

# Include path
TARGET_SPECIFIC_HEADER_PATH := $(LOCAL_PATH)/include

# Hardware
BOARD_HARDWARE_CLASS += device/samsung/treltexx/cmhw

# WIFI
BOARD_WPA_SUPPLICANT_DRIVER      := NL80211
WPA_SUPPLICANT_VERSION           := VER_0_8_X
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_HOSTAPD_DRIVER             := NL80211
BOARD_HOSTAPD_PRIVATE_LIB        := lib_driver_cmd_bcmdhd
BOARD_WLAN_DEVICE                := bcmdhd
WIFI_DRIVER_FW_PATH_PARAM        := "/sys/module/dhd/parameters/firmware_path"
WIFI_DRIVER_NVRAM_PATH_PARAM     := "/sys/module/dhd/parameters/nvram_path"
WIFI_DRIVER_NVRAM_PATH           := "/etc/wifi/nvram_net.txt"
WIFI_DRIVER_FW_PATH_STA          := "/etc/wifi/bcmdhd_sta.bin"
WIFI_DRIVER_FW_PATH_AP           := "/etc/wifi/bcmdhd_apsta.bin"

# Webkit
ENABLE_WEBGL := true

# WFD
BOARD_USES_WFD := true

# Wifi Macloader
BOARD_HAVE_SAMSUNG_WIFI := true

# Charger/Healthd
BOARD_CHARGING_MODE_BOOTING_LPM := /sys/class/power_supply/battery/batt_lp_charging
BOARD_CHARGER_ENABLE_SUSPEND := true
BOARD_CHARGER_SHOW_PERCENTAGE := true
RED_LED_PATH := "/sys/class/leds/led_r/brightness"
GREEN_LED_PATH := "/sys/class/leds/led_g/brightness"
BLUE_LED_PATH := "/sys/class/leds/led_b/brightness"
BACKLIGHT_PATH := "/sys/class/backlight/panel/brightness"
CHARGING_ENABLED_PATH := /sys/class/power_supply/battery/batt_lp_charging

# RIL
BOARD_VENDOR := samsung
BOARD_PROVIDES_LIBRIL := true
TARGET_IGNORE_RO_BOOT_REVISION := true

# RIL.java overwrite
BOARD_RIL_CLASS := ../../../$(LOCAL_PATH)/ril

# Recovery
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/rootdir/etc/fstab.universal5433

# SELinux
BOARD_SEPOLICY_DIRS := \
	device/samsung/treltexx/sepolicy
