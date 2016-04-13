# Extracted with libbootimg
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x01000000 --tags_offset 0x00000100 --dt device/samsung/treltexx/dtb.img

# Kernel
TARGET_KERNEL_CONFIG := cm_exynos5433-trelte_defconfig

# RIL
BOARD_MODEM_TYPE := m7450

# Recovery
TARGET_OTA_ASSERT_DEVICE := tre3g,trelte,treltexx

# Inherit common board flags
include device/samsung/trelte-common/BoardConfigCommon.mk
