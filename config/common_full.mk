# Inherit common broodrom stuff
$(call inherit-product, vendor/broodrom/config/common.mk)

# Bring in all audio files
include frameworks/base/data/sounds/NewAudio.mk

# Extra Ringtones
include frameworks/base/data/sounds/AudioPackageNewWave.mk

# Include broodrom audio files
include vendor/broodrom/config/broodrom_audio.mk

# Optional broodrom packages
PRODUCT_PACKAGES += \
    Galaxy4 \
    LiveWallpapersPicker
