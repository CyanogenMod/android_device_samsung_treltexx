LOCAL_PATH := device/samsung/treltexx

# FLAT DEVICE TREE
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/dtb.img:dt.img

# RAMDISK
PRODUCT_PACKAGES += \
    init.modem.rc

# AUDIO
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/audio/mixer_paths.xml:system/etc/mixer_paths.xml

# BLUETOOTH
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/bluetooth/bt_vendor.conf:system/etc/bluetooth/bt_vendor.conf

# call the proprietary setup
$(call inherit-product-if-exists, vendor/samsung/treltexx/treltexx-vendor.mk)
