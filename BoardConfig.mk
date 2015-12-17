# Extracted with libbootimg
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x01000000 --tags_offset 0x00000100 --dt device/samsung/trhpltexx/dtb.img

# Kernel
TARGET_KERNEL_CONFIG := cm_exynos5433-trhplte_defconfig

# RIL
BOARD_MODEM_TYPE := xmm7260

# Recovery
TARGET_OTA_ASSERT_DEVICE := trhplte,trhpltexx,treltexx

# Inherit common board flags
include device/samsung/treltexx/BoardConfigCommon.mk
