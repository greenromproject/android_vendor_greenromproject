#
# GRP device specific apps must be defined before common_full.mk
USE_ADW := GoVOLS
SMALL_BOOTANIM := GoVOLS

# Inherit AOSP device configuration for dream_sapphire.
$(call inherit-product, device/htc/dream_sapphire/full_dream_sapphire.mk)

# Inherit some common stuff.
$(call inherit-product, vendor/greenromproject/products/common.mk)

# Include GSM-only stuff
$(call inherit-product, vendor/greenromproject/products/gsm.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := greenromproject_dream_sapphire
PRODUCT_BRAND := google
PRODUCT_DEVICE := dream_sapphire
PRODUCT_MODEL := Dream/Sapphire
PRODUCT_MANUFACTURER := HTC
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_ID=FRG83 BUILD_DISPLAY_ID=GRJ22 BUILD_FINGERPRINT=tmobile/opal/sapphire/sapphire:2.2.1/FRG83/60505:user/release-keys PRIVATE_BUILD_DESC="opal-user 2.2.1 FRG83 60505 release-keys"

# Build kernel
#PRODUCT_SPECIFIC_DEFINES += TARGET_PREBUILT_KERNEL=
#PRODUCT_SPECIFIC_DEFINES += TARGET_KERNEL_DIR=kernel-msm
#PRODUCT_SPECIFIC_DEFINES += TARGET_KERNEL_CONFIG=greenromproject_msm_defconfig

# Extra DS overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/greenromproject/overlay/dream_sapphire

# This file is used to install the correct audio profile when booted
PRODUCT_COPY_FILES += \
    vendor/greenromproject/prebuilt/dream_sapphire/etc/init.d/02audio_profile:system/etc/init.d/02audio_profile

# Enable Compcache by default on D/S
PRODUCT_PROPERTY_OVERRIDES += \
    ro.compcache.default=18


# Use the audio profile hack
WITH_DS_HTCACOUSTIC_HACK := true

#
# Copy DS specific prebuilt files
#
PRODUCT_COPY_FILES +=  \
    vendor/greenromproject/prebuilt/dream_sapphire/etc/AudioPara_dream.csv:system/etc/AudioPara_dream.csv \
    vendor/greenromproject/prebuilt/dream_sapphire/etc/AudioPara_sapphire.csv:system/etc/AudioPara_sapphire.csv
