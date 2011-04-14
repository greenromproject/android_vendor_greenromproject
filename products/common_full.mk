# Inherit common CM stuff
$(call inherit-product, vendor/greenromproject/products/common.mk)

# Bring in all audio files
include frameworks/base/data/sounds/AllAudio.mk

# Theme packages
include vendor/greenromproject/products/themes.mk

# Include extra dictionaries for LatinIME
PRODUCT_PACKAGE_OVERLAYS += vendor/greenromproject/overlay/dictionaries

# Default ringtone
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.ringtone=Playa.ogg \
    ro.config.notification_sound=regulus.ogg \
    ro.config.alarm_alert=Alarm_Beep_03.ogg
