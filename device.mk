LOCAL_PATH := device/samsung/treltexx

# Flat device tree
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/dtb.img:dt.img

# Ramdisk
PRODUCT_PACKAGES += \
    init.modem.rc

# audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/audio/mixer_paths.xml:system/etc/mixer_paths.xml

# bluetooth
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/bluetooth/bt_vendor.conf:system/etc/bluetooth/bt_vendor.conf

# call the proprietary setup
$(call inherit-product-if-exists, vendor/samsung/treltexx/treltexx-vendor.mk)
