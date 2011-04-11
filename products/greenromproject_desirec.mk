# Inherit AOSP device configuration for desirec.
$(call inherit-product, device/htc/desirec/device_desirec.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/greenromproject/products/common_full.mk)

# Inherit apns list from common
$(call inherit-product, vendor/greenromproject/products/gsm.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := greenromproject_desirec
PRODUCT_BRAND := verizon
PRODUCT_DEVICE := desirec
PRODUCT_MODEL := ERIS
PRODUCT_MANUFACTURER := HTC
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_ID=GRI40 BUILD_DISPLAY_ID=GRI40 BUILD_FINGERPRINT=google/passion/passion:2.3.3/GRI40/102588:user/release-keys PRIVATE_BUILD_DESC="passion-user 2.3.3 GRI40 102588 release-keys"

# Use Prebuilt kernel from desirec device tree
PRODUCT_SPECIFIC_DEFINES += TARGET_PREBUILT_KERNEL=device/htc/desirec/kernel

# Extra overlay for Gallery3D orientation hack
PRODUCT_PACKAGE_OVERLAYS += vendor/greenromproject/overlay/heroc

# Enable Windows Media
WITH_WINDOWS_MEDIA := true
#
# Set ro.modversion
#
#lets Hijack this routine
GRP_RELEASE := GoVOLS
ifdef CYANOGEN_NIGHTLY
    PRODUCT_PROPERTY_OVERRIDES += \
        ro.modversion=CyanogenMod-7-$(shell date +%m%d%Y)-NIGHTLY-Eris
else
#hijack
    ifdef GRP_RELEASE
        PRODUCT_PROPERTY_OVERRIDES += \
            ro.modversion=GreenRomProject-presents-7.0.0-RC4-Eris-GRP
    else
        PRODUCT_PROPERTY_OVERRIDES += \
            ro.modversion=CyanogenMod-7.0.0-RC4-KANG-Eris
    endif
endif

#
# Copy dream/sapphire specific prebuilt files
#
PRODUCT_COPY_FILES +=  \
    vendor/greenromproject/prebuilt/mdpi/media/bootanimation.zip:system/media/bootanimation.zip
