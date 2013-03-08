# Inherit common broodrom stuff
$(call inherit-product, vendor/broodrom/config/common.mk)

# Bring in all audio files
include frameworks/base/data/sounds/NewAudio.mk

# Include broodrom audio files
include vendor/broodrom/config/broodrom_audio.mk

# Default ringtone
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.ringtone=Orion.ogg \
    ro.config.notification_sound=Deneb.ogg \
    ro.config.alarm_alert=Hassium.ogg

PRODUCT_PACKAGES += \
  Mms

ifeq ($(TARGET_SCREEN_WIDTH) $(TARGET_SCREEN_HEIGHT),$(space))
    PRODUCT_COPY_FILES += \
        vendor/broodrom/prebuilt/common/bootanimation/320.zip:system/media/bootanimation.zip
endif
