# Inherit common broodrom stuff
$(call inherit-product, vendor/broodrom/config/common_full.mk)

# Default ringtone
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.ringtone=InsertCoin.ogg \
    ro.config.notification_sound=Merope.ogg \
    ro.config.alarm_alert=Cesium.ogg

PRODUCT_PACKAGES += \
  Mms

# BT config
PRODUCT_COPY_FILES += \
    system/bluetooth/data/main.conf:system/etc/bluetooth/main.conf


ifeq ($(TARGET_SCREEN_WIDTH) $(TARGET_SCREEN_HEIGHT),$(space))
    PRODUCT_COPY_FILES += \
        vendor/broodrom/prebuilt/common/bootanimation/bootanimation.zip:system/media/bootanimation.zip
endif
