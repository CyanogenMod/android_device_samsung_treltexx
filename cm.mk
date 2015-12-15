# Inherit device configuration
$(call inherit-product, device/samsung/trhpltexx/device.mk)
$(call inherit-product, device/samsung/treltexx/device-common.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit nfc enhanced configuration
$(call inherit-product, vendor/cm/config/nfc_enhanced.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := cm_trhpltexx
PRODUCT_DEVICE := trhpltexx
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-N910U
PRODUCT_MANUFACTURER := samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=trhpltexx
