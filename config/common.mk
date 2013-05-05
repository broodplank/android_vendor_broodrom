PRODUCT_BRAND ?= broodROM Jellybean

PRODUCT_COPY_FILES += \
    vendor/broodrom/prebuilt/common/bootanimation/bootanimation.zip:system/media/bootanimation.zip


PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

PRODUCT_PROPERTY_OVERRIDES += \
    keyguard.no_require_sim=true \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.setupwizard.enterprise_mode=1 \
    ro.com.android.dateformat=MM-dd-yyyy \
    ro.com.android.dataroaming=false 

# init.d support
PRODUCT_COPY_FILES += \
    vendor/broodrom/prebuilt/common/etc/init.d/00broodparts:system/etc/init.d/00broodparts \
    vendor/broodrom/prebuilt/common/bin/sysinit:system/bin/sysinit

# broodROM Specific
PRODUCT_COPY_FILES += \
    vendor/broodrom/prebuilt/common/etc/hosts:system/etc/hosts \
    vendor/broodrom/prebuilt/common/etc/broodrom/adbnotify:system/etc/broodrom/adbnotify \
    vendor/broodrom/prebuilt/common/etc/broodrom/read_ahead_kb:system/etc/broodrom/read_ahead_kb \
    vendor/broodrom/prebuilt/common/etc/broodrom/scaling_governor:system/etc/broodrom/scaling_governor \
    vendor/broodrom/prebuilt/common/etc/broodrom/scaling_max_freq:system/etc/broodrom/scaling_max_freq \
    vendor/broodrom/prebuilt/common/etc/broodrom/scaling_min_freq:system/etc/broodrom/scaling_min_freq \
    vendor/broodrom/prebuilt/common/etc/broodrom/scheduler:system/etc/broodrom/scheduler \
    vendor/broodrom/prebuilt/common/etc/broodrom/govtweak:system/etc/broodrom/govtweak \
    vendor/broodrom/prebuilt/common/etc/broodrom/iotweak:system/etc/broodrom/iotweak \
    vendor/broodrom/prebuilt/common/etc/broodrom/nettweak:system/etc/broodrom/nettweak \
    vendor/broodrom/prebuilt/common/etc/broodrom/vmtweak:system/etc/broodrom/vmtweak \
    vendor/broodrom/prebuilt/common/etc/broodrom/vacuum:system/etc/broodrom/vacuum \
    vendor/broodrom/prebuilt/common/etc/broodrom/zipalign:system/etc/broodrom/zipalign \
    vendor/broodrom/prebuilt/common/xbin/zipalign:system/xbin/zipalign \
    vendor/broodrom/prebuilt/common/xbin/sqlite3:system/xbin/sqlite3 \
    vendor/broodrom/prebuilt/common/lib/libsqlite.so:system/lib/libsqlite.so \
    vendor/broodrom/prebuilt/common/lib/libsqlite_jni.so:system/lib/libsqlite_jni.so \
    vendor/broodrom/prebuilt/common/app/AngryGPS.apk:system/app/AngryGPS.apk \
    vendor/broodrom/prebuilt/common/app/FileManager.apk:system/app/FileManager.apk \
    vendor/broodrom/prebuilt/common/kernels/boot_oc.img:system/etc/broodrom/boot_oc.img \
    vendor/broodrom/prebuilt/common/kernels/boot_ocuv.img:system/etc/broodrom/boot_ocuv.img \
    vendor/broodrom/prebuilt/common/kernels/boot_nonoc.img:system/etc/broodrom/boot_nonoc.img 


# Compcache/Zram support
PRODUCT_COPY_FILES += \
    vendor/broodrom/prebuilt/common/bin/compcache:system/bin/compcache \
    vendor/broodrom/prebuilt/common/bin/handle_compcache:system/bin/handle_compcache

# Nam configuration script
PRODUCT_COPY_FILES += \
    vendor/broodrom/prebuilt/common/bin/modelid_cfg.sh:system/bin/modelid_cfg.sh

PRODUCT_COPY_FILES +=  \
    vendor/broodrom/proprietary/Term.apk:system/app/Term.apk \
    vendor/broodrom/proprietary/lib/armeabi/libjackpal-androidterm4.so:system/lib/libjackpal-androidterm4.so

# Bring in camera effects
PRODUCT_COPY_FILES +=  \
    vendor/broodrom/prebuilt/common/media/LMprec_508.emd:system/media/LMprec_508.emd \
    vendor/broodrom/prebuilt/common/media/PFFprec_600.emd:system/media/PFFprec_600.emd

# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# Don't export PS1 in /system/etc/mkshrc.
PRODUCT_COPY_FILES += \
    vendor/broodrom/prebuilt/common/etc/mkshrc:system/etc/mkshrc

# T-Mobile theme engine
include vendor/broodrom/config/themes_common.mk

# Required broodrom packages
PRODUCT_PACKAGES += \
    Camera \
    LatinIME \
    Superuser \
    su \
    VideoEditor \
    VoiceDialer \
    SoundRecorder \
    Basic \
    DSPManager \
    libcyanogen-dsp \
    openvpn \
    e2fsck \
    mke2fs \
    tune2fs \
    bash \
    vim \
    nano \
    htop \
    powertop \
    lsof \
    rsync

# Fix DSPManager Issue
PRODUCT_COPY_FILES += \
  vendor/broodrom/prebuilt/common/etc/audio_effects.conf:system/etc/audio_effects.conf

-include $(WORKSPACE)/hudson/image-auto-bits.mk
